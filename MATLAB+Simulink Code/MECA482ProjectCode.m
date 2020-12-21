clear all; close all; clc
CopSim=remApi('remoteApi'); CopSim.simxFinish(-1); clientID=CopSim.simxStart('127.0.0.1',19999,true,true,5000,5);
if (clientID>-1)  
     disp('Connected');
     set_param('SystemModel','SimulationCommand','start') 
     h=[0,0];
        [r,h(1)]=CopSim.simxGetObjectHandle(clientID, 'RotateY0',CopSim.simx_opmode_blocking);
        [r,h(2)]=CopSim.simxGetObjectHandle(clientID, 'RotateX',CopSim.simx_opmode_blocking); 
     while true
     [res,retInts,retFloats,retStrings,retBuffer]=CopSim.simxCallScriptFunction(clientID,'Cam',CopSim.sim_scripttype_childscript,'CoordCalc',[],[],[],'',CopSim.simx_opmode_blocking);
     xc=retFloats(1); ycoord=retFloats(2);
     r_x=xc;
     set_param('SystemModel/Constant','Value',num2str(r_x));
     pause(.01); r_y=ycoord;
     set_param('SystemModel/Constant2','Value',num2str(r_y)); pause(.01);
     tx=get_param('SystemModel/To Workspace','RuntimeObject');
     aX= (tx.InputPort(1).Data * 10000);
     ty=get_param('SystemModel/To Workspace1','RuntimeObject');
     a1= (ty.InputPort(1).Data * 10000);
     CopSim.simxSetJointTargetPosition(clientID,h(2),aX,CopSim.simx_opmode_streaming)
     CopSim.simxSetJointTargetPosition(clientID,h(1),a1,CopSim.simx_opmode_streaming)
     end
else
      disp('Failed to connect to remote API');
end
    CopSim.delete();