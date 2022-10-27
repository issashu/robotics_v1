//#include "MinerControllerExternalBridge.h"
#include "MovementController.h"

constexpr auto ROBOT_MOVE_SERVICE = "move_robot";

RoboMoveClientNode::RoboMoveClientNode(const char* NodeName,const MoveType& move)
: Node(NodeName), commandReceived(move) {
    RCLCPP_INFO(this->get_logger(), "Initialised with %d move", commandReceived);
}

RobotMoveFuture RoboMoveClientNode::CallRoboMoveService(){
    
    RobotMoveResponse response;
    
    auto client = this->create_client<RobotMove>(ROBOT_MOVE_SERVICE, rmw_qos_profile_services_default);

    while(!client->wait_for_service(std::chrono::seconds(1))){
        RCLCPP_WARN(this->get_logger(), "RoboMove service is not yet up! Waiting patiently...kind of...");
    }
    
    auto request = std::make_shared<RobotMove::Request>();

    request->robot_move_type.move_type = getMoveTypeField(commandReceived);
    RCLCPP_INFO(this->get_logger(), "Executing with move of type: %d", request->robot_move_type.move_type);

    auto future_object = client->async_send_request(request);
    
    return future_object;
}
