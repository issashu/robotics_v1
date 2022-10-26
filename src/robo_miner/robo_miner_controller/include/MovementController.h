#ifndef MOVEMENT_CONTROLLER_H
#define MOVEMENT_CONTROLLER_H

#include "rclcpp/rclcpp.hpp"
#include <std_msgs/msg/empty.hpp>
#include <std_msgs/msg/string.hpp>
#include "robo_miner_interfaces/srv/robot_move.hpp"
#include "robo_miner_common/message_helpers/RoboMinerMessageHelpers.h"

using RobotMove = robo_miner_interfaces::srv::RobotMove;
using RobotMoveResponse = std::shared_ptr<robo_miner_interfaces::srv::RobotMove_Response>;
using RobotMoveFuture = rclcpp::Client<RobotMove>::SharedFuture;

class RoboMoveClientNode : public rclcpp::Node {

public:
    RoboMoveClientNode (const MoveType& move); 

    RobotMoveFuture CallRoboMoveService(); 

private:
    MoveType commandReceived;
};

#endif //MOVEMENT_CONTROLLER_H