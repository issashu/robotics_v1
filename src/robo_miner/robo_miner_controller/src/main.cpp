#include "rclcpp/rclcpp.hpp"
#include "MovementController.h"

/**
 * @brief Uses a vector of moves to send to the robot. If you need just one move, pass a 1 elem vector :)
 * 
 */
int main(int argc, char **argv) {
    rclcpp::init(argc, argv);
    std::vector<std::shared_ptr<RoboMoveClientNode>> movesList;

    auto node = std::make_shared<RoboMoveClientNode>(MoveType::FORWARD);
    auto node1 = std::make_shared<RoboMoveClientNode>(MoveType::ROTATE_RIGHT);
    auto node2 = std::make_shared<RoboMoveClientNode>(MoveType::FORWARD);
    auto node3 = std::make_shared<RoboMoveClientNode>(MoveType::FORWARD);
     
    movesList.push_back(node);
    movesList.push_back(node1);
    movesList.push_back(node2);
    movesList.push_back(node3);

    for(std::shared_ptr<RoboMoveClientNode> item : movesList){
        thread = rclcpp::spin(item);
    }
    
    rclcpp::shutdown();
    return 0;
}