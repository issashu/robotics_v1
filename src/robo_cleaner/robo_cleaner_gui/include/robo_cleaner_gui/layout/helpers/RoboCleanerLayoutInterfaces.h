#ifndef ROBO_CLEANER_GUI_ROBOCLEANERLAYOUTINTERFACES_H_
#define ROBO_CLEANER_GUI_ROBOCLEANERLAYOUTINTERFACES_H_

//C system headers

//C++ system headers
#include <cstdint>
#include <vector>

//Other libraries headers
#include "robo_common/layout/helpers/RoboCommonLayoutInterfaces.h"

//Own components headers

//Forward declarations
class CollisionWatcher;

struct RoboCleanerLayoutInterface {
  RoboCommonLayoutInterface commonLayoutInterface;
};

struct RoboCleanerLayoutOutInterface {
  FinishRobotActCb finishRobotActCb;
  CollisionWatcher *collisionWatcher = nullptr;
};

#endif /* ROBO_CLEANER_GUI_ROBOCLEANERLAYOUTINTERFACES_H_ */
