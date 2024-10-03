/*
 *    Copyright (C) 2024 by YOUR NAME HERE
 *
 *    This file is part of RoboComp
 *
 *    RoboComp is free software: you can redistribute it and/or modify
 *    it under the terms of the GNU General Public License as published by
 *    the Free Software Foundation, either version 3 of the License, or
 *    (at your option) any later version.
 *
 *    RoboComp is distributed in the hope that it will be useful,
 *    but WITHOUT ANY WARRANTY; without even the implied warranty of
 *    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *    GNU General Public License for more details.
 *
 *    You should have received a copy of the GNU General Public License
 *    along with RoboComp.  If not, see <http://www.gnu.org/licenses/>.
 */
#include "specificworker.h"

#include <rapplication/rapplication.h>

/**
* \brief Default constructor
*/
SpecificWorker::SpecificWorker(TuplePrx tprx, bool startup_check) : GenericWorker(tprx)
{
	this->startup_check_flag = startup_check;
	// Uncomment if there's too many debug messages
	// but it removes the possibility to see the messages
	// shown in the console with qDebug()
//	QLoggingCategory::setFilterRules("*.debug=false\n");
}

/**
* \brief Default destructor
*/
SpecificWorker::~SpecificWorker()
{
	std::cout << "Destroying SpecificWorker" << std::endl;
}

bool SpecificWorker::setParams(RoboCompCommonBehavior::ParameterList params)
{
//	THE FOLLOWING IS JUST AN EXAMPLE
//	To use innerModelPath parameter you should uncomment specificmonitor.cpp readConfig method content
//	try
//	{
//		RoboCompCommonBehavior::Parameter par = params.at("InnerModelPath");
//		std::string innermodel_path = par.value;
//		innerModel = std::make_shared(innermodel_path);
//	}
//	catch(const std::exception &e) { qFatal("Error reading config params"); }
	

	return true;
}

void SpecificWorker::initialize()
{
	std::cout << "Initialize worker" << std::endl;
	if(this->startup_check_flag)
	{
		this->startup_check();
	}
	else
	{

		#ifdef HIBERNATION_ENABLED
			hibernationChecker.start(500);
		#endif

		this->setPeriod(STATES::Compute, 100);
		//this->setPeriod(STATES::Emergency, 500);

	}

}

void SpecificWorker::compute()
{
    std::cout << "Compute worker" << std::endl;
	RoboCompLidar3D::TData ldata;

	try {
		ldata= this->lidar3d_proxy->getLidarData("bpearl", 0, 2*M_PI, 1);

	}catch (const Ice::Exception &e) {
		std::cout << e.what() << std::endl;
	}

    qDebug() << ldata.points.size();

	RoboCompLidar3D::TData anilloPuntos;
	//qDebug() << ldata.points[7000].z;
	for (auto &d :ldata.points){
		if(d.z > 0.2 && d.z < 0.25){
			anilloPuntos.points.push_back(d);
		}
	}
	float max = anilloPuntos.points[0].z;
	float min = anilloPuntos.points[0].z;

	for (int i=0; i<anilloPuntos.points.size(); i++){
		if (anilloPuntos.points[i].z > max){
			max = anilloPuntos.points[i].z;
		}
		if (anilloPuntos.points[i].z < min){
			min = anilloPuntos.points[i].z;
		}
	}
	qDebug() << "Max: " << max;
	qDebug() << "Min: " << min;

	qDebug() << anilloPuntos.points.size();
/*
	std::cout << "Compute worker" << std::endl;
	RoboCompLaser::TLaserData ldata;

	try {
		ldata= this->laser_proxy->getLaserData();
	}catch (const Ice::Exception &e) {
		std::cout << e.what() << std::endl;
	}

	for (auto &d :ldata){
		qDebug() << d.dist << d.angle;
	}
*/
/*
     float adv, side, rot=0.f;
	try {
		ldata = omnirobot_proxy->setSpeedBase(adv,side,rot);
	}catch (const Ice::Exception &e) {
		std::cout << e.what() << std::endl;
	}
*/

	
}

void SpecificWorker::emergency()
{
    std::cout << "Emergency worker" << std::endl;
	//computeCODE
	//
	//if (SUCCESSFUL)
    //  emmit goToRestore()
}

//Execute one when exiting to emergencyState
void SpecificWorker::restore()
{
    std::cout << "Restore worker" << std::endl;
	//computeCODE
	//Restore emergency component

}

int SpecificWorker::startup_check()
{
	std::cout << "Startup check" << std::endl;
	QTimer::singleShot(200, qApp, SLOT(quit()));
	return 0;
}




/**************************************/
// From the RoboCompLaser you can call this methods:
// this->laser_proxy->getLaserAndBStateData(...)
// this->laser_proxy->getLaserConfData(...)
// this->laser_proxy->getLaserData(...)

/**************************************/
// From the RoboCompLaser you can use this types:
// RoboCompLaser::LaserConfData
// RoboCompLaser::TData

/**************************************/
// From the RoboCompOmniRobot you can call this methods:
// this->omnirobot_proxy->correctOdometer(...)
// this->omnirobot_proxy->getBasePose(...)
// this->omnirobot_proxy->getBaseState(...)
// this->omnirobot_proxy->resetOdometer(...)
// this->omnirobot_proxy->setOdometer(...)
// this->omnirobot_proxy->setOdometerPose(...)
// this->omnirobot_proxy->setSpeedBase(...)
// this->omnirobot_proxy->stopBase(...)

/**************************************/
// From the RoboCompOmniRobot you can use this types:
// RoboCompOmniRobot::TMechParams

