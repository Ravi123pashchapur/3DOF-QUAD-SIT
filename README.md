# 3DOF-QUAD-SIT
This repo discus about the dynamics and control functionalities of 3DOF hover QUAD

## Step: 1
--> Install Matlab & Simulink 2020b or higher version.  
--> Clone the repo in your local directory and rename it to 3DOF hover

## Step: 2
--> Once you clone it copy the path and open Matlab  
--> You can see 3DOFQUAD.prj project file in current folder section, double click and open the project.  
--> Project will automatically load the simulation constant parameters.

## Step: 3
--> Open the Linear_State_Space_Model.slx simulink model and run it with different voltage input to check model behaivior.  
  
  ![image](https://github.com/Ravi123pashchapur/3DOF-QUAD-SIT/assets/56997905/4a213a8e-2b85-4a81-bfb9-4c17140286e6)  
    
--> Below Diagram shows few results of output  

Case:1 (Triggering Yaw motion)  
V_f = 2, V_b = 2, V_r = 1, and V_l = 1

![image](https://github.com/Ravi123pashchapur/3DOF-QUAD-SIT/assets/56997905/c3a82f1c-ef7c-4dbf-b96c-6432f2eb1250)  

Case:2 (Triggering Pitch motion)  
V_f = 2, V_b = -2, V_r = 2, and V_l = 2  

![image](https://github.com/Ravi123pashchapur/3DOF-QUAD-SIT/assets/56997905/17f39301-1e83-46e0-90b4-5618bb4cdb31)


Case:3 (Triggering Roll motion)  
V_f = 2, V_b = 2, V_r = 2, and V_l = -2  
![image](https://github.com/Ravi123pashchapur/3DOF-QUAD-SIT/assets/56997905/7cbdf7d2-47a5-406b-8a49-247591a40d09)  

## Step: 4 
--> Demonstartion of LQR controller is given in HoverQuadmodel_with_LQR_controller.slx, open and run the file  

![image](https://github.com/Ravi123pashchapur/3DOF-QUAD-SIT/assets/56997905/e2962e6b-d45c-4e6d-8354-36a390c7e93d)
 
--> Give the desire angles and see the response, for example, desired yaw step of ±5 degrees at 0.04 Hz, pitch step of ±2 degrees at 0.1 Hz frequency, and a roll angle step of ±2 degrees at 0.08 Hz is given as input and below diagram are the system state response.  

* Yaw output
![image](https://github.com/Ravi123pashchapur/3DOF-QUAD-SIT/assets/56997905/e028a4ac-7fe9-4944-a171-e0bb1deec399)  

* Pitch output
![image](https://github.com/Ravi123pashchapur/3DOF-QUAD-SIT/assets/56997905/1285a5b1-2714-414b-bc3f-72ecdd6c0c42)

* Roll output
![image](https://github.com/Ravi123pashchapur/3DOF-QUAD-SIT/assets/56997905/d64e311b-00ee-41c5-9dfc-d2cecbf50381)






  

