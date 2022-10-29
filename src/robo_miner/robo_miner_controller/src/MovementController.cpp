//#include "MinerControllerExternalBridge.h"
#include "MovementController.h"

constexpr auto ROBOT_MOVE_SERVICE = "move_robot";

RoboMoveClientNode::RoboMoveClientNode(const char* NodeName) : Node(NodeName) {
    RCLCPP_INFO(this->get_logger(), "Initialised Controller Node!");
}

RobotMoveResponse RoboMoveClientNode::CallRoboMoveService(const MoveType& commandReceived, MoveCallTimeout timeout){ 
    auto client = this->create_client<RobotMove>(ROBOT_MOVE_SERVICE, rmw_qos_profile_services_default);
    auto request = std::make_shared<RobotMove::Request>();
    
    request->robot_move_type.move_type = getMoveTypeField(commandReceived);
    this->future_object = client->async_send_request(request);

    while(!client->wait_for_service(std::chrono::seconds(1))){
        RCLCPP_WARN(this->get_logger(), "RoboMove service is not yet up! Waiting patiently...kind of...");
    }

    RCLCPP_INFO(this->get_logger(), "Executing move of type: %d", request->robot_move_type.move_type);
    if (rclcpp::spin_until_future_complete(this->get_node_base_interface(), future_object, timeout) == rclcpp::FutureReturnCode::SUCCESS) {
        //sleep(2);
        return future_object.get();
    }
    else {
        RCLCPP_ERROR(this->get_logger(), "Could not retrieve response from Robo Controller service!");
        return nullptr;
    }
}
