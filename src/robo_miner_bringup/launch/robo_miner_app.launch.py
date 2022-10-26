import os

from launch import LaunchDescription
from launch_ros.actions import Node
from ament_index_python.packages import get_package_share_directory


def generate_launch_description():
    """
    Launch method to run all Robo Miner nodes at once in a single terminal

    :return: LaunchDescription object
    """
    launch_descriptor = LaunchDescription()

    #------------------GUI---------------------#

    gui_node_name = 'robo_miner_gui'
    gui_config = os.path.join(get_package_share_directory(gui_node_name),
        'config',
        'params.yaml'
    )

    print('[launch.py] - loading node ({0}) params from: ({1})'.format(gui_node_name, gui_config))

    robo_miner_gui_node = Node(
        package=gui_node_name,
        executable=gui_node_name,
        output='screen',
        emulate_tty=True,
        parameters=[gui_config]
    )

    #---------------CONTROLLER-----------------#

    controller_node_name = 'robo_miner_controller'
    
    print('[launch.py] - loading node ({0}) params from: N/A'.format(controller_node_name))

    robo_miner_controller_node = Node(
        package=controller_node_name,
        executable=controller_node_name,
        output='screen',
        emulate_tty=True,
        parameters=[]
    )

    launch_descriptor.add_action(robo_miner_gui_node)
    launch_descriptor.add_action(robo_miner_controller_node)

    return launch_descriptor
