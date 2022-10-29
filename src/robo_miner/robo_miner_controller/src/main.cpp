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
    
    std::vector<MoveType> movesList;
    MoveCallTimeout timeout = std::chrono::seconds(1);
    auto ControllerNode = std::make_shared<RoboMoveClientNode>("RoboMoveController");

    //FIXME The first call is always a dummy one. For some reason the first call always fails. Timeout and wait did not help, so it is not due to service being down
    movesList.push_back(MoveType::FORWARD);
    movesList.push_back(MoveType::FORWARD);
    movesList.push_back(MoveType::ROTATE_RIGHT);
    movesList.push_back(MoveType::FORWARD);
    movesList.push_back(MoveType::FORWARD);

    for(MoveType item : movesList) {
        auto response = ControllerNode->CallRoboMoveService(item, timeout);
        
        if(response!=nullptr){
            auto test = response->robot_position_response.surrounding_tiles;
            if(!test.empty()){
                for (auto i: test){
                    printf("Tile: %d\n", i);
                }
            }
        }
    }
    
    rclcpp::shutdown();
    return 0;
}