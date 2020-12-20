# BallOnPlateTeam8
This is a webpage documenting our MECA 482 semester project

Team: Courtney Boes, Riley Meyer, Justin Price, Frank Silva
# Project Overview
The ball on plate system is an expansion on the popular ball on beam system that is often used for control system projects. A ball is placed on a plate that is controlled in two dimensions typically by servo motors. The servo motors are controlled by either one or multiple PID controllers, with the objective of keeping the ball balanced on the plate. Because of COVID-19 restrictions, we are not going to have a physical implementation of this project. However, the mathematical model and simulation will still be developed and performed.

MATLAB/Simulink is going to be the resource utilized for developing the overall mathematical model for the system. CoppeliaSim will be used to perform the simulation.
# Developing a Mathematical Model
The theoretical ball and plate system is shown below in figure 1. The system would include a pair of servos with linkages connecting them to the plate to allow for manipulation of the plate's orientation. From the diagram we derived the nonlinear equation of motion of the ball on the plate, equation 1. From the geometry of the system in Figure 1 we derive equations 2 and 3. Equation 4 is the combination of equations 1, 2, and 3.

![alt text](https://github.com/MECA-482-BallOnPlate/BallOnPlateTeam8/blob/main/figures/figure1.PNG?raw=true)

In the following equations, (Equation 1-7), ẍ, ⍺ and θ are all functions of time, t.  
Variables: 				m=mass of the ball

					        h=height of servo arm
                  
					        rarm=radius of servo arm
                  
					        r=radius of the ball
                  
					        L=length of plate
                  
					        𝛼=angle of the plate
                  
					        θ=angle of the servo arm
                  
					        J=moment of inertia of the ball
          
![alt text](https://github.com/MECA-482-BallOnPlate/BallOnPlateTeam8/blob/main/equations/equation1.PNG?raw=true)

Another equation can be found by considering the geometry below in Figure 2.

![alt text](https://github.com/MECA-482-BallOnPlate/BallOnPlateTeam8/blob/main/figures/figure2.PNG?raw=true)

![alt text](https://github.com/MECA-482-BallOnPlate/BallOnPlateTeam8/blob/main/equations/equation2.PNG?raw=true)

Consider another geometry from Figure 1.  This one yields 

![alt text](https://github.com/MECA-482-BallOnPlate/BallOnPlateTeam8/blob/main/figures/figure3.PNG?raw=true)

![alt text](https://github.com/MECA-482-BallOnPlate/BallOnPlateTeam8/blob/main/equations/equation3.PNG?raw=true)

![alt text](https://github.com/MECA-482-BallOnPlate/BallOnPlateTeam8/blob/main/equations/equation4.PNG?raw=true)

Using small angle approximation making sin(θ(t))equivalent to θ(t). The resulting equation is shown below in Equation 5.

![alt text](https://github.com/MECA-482-BallOnPlate/BallOnPlateTeam8/blob/main/equations/equation5.PNG?raw=true)

Now take the Laplace Transform of Equation 5 to get Equation 6.

![alt text](https://github.com/MECA-482-BallOnPlate/BallOnPlateTeam8/blob/main/equations/equation6.PNG?raw=true)

Rearranging the variables yields Equation 7, the Transfer Function of one of the servo motors.

![alt text](https://github.com/MECA-482-BallOnPlate/BallOnPlateTeam8/blob/main/equations/equation7.PNG?raw=true)
