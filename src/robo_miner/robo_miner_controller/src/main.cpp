#include "rclcpp/rclcpp.hpp"
#include "MovementController.h"

#ifdef _WIN32
#include <Windows.h>
#else
#include <unistd.h>
#endif

/**
 * @brief Uses a vector of moves to send to the robot. If you need just one move, pass a 1 elem vector :)
 * 
 */
int main(int argc, char **argv) {
    rclcpp::init(argc, argv);
    std::vector<std::shared_ptr<RoboMoveClientNode>> movesList;
    sleep(5);

    auto node = std::make_shared<RoboMoveClientNode>("Node", MoveType::FORWARD);
    auto node1 = std::make_shared<RoboMoveClientNode>("Node1", MoveType::ROTATE_RIGHT);
    auto node2 = std::make_shared<RoboMoveClientNode>("Node2", MoveType::FORWARD);
    auto node3 = std::make_shared<RoboMoveClientNode>("Node3", MoveType::FORWARD);
     
    movesList.push_back(node);
    movesList.push_back(node1);
    movesList.push_back(node2);
    movesList.push_back(node3);

    for(std::shared_ptr<RoboMoveClientNode> item : movesList) {
        if (rclcpp::spin_until_future_complete(item, item->CallRoboMoveService()) == rclcpp::FutureReturnCode::SUCCESS){
            sleep(2);
            continue;
        }
        else{
            printf("I am missing a logger! Yay!");

        }
    }
    
    rclcpp::shutdown();
    return 0;
}