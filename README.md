# Simscape Essentials for Automotive Student Teams
The submission introduces a set of models and supported video tutorials to get the automotive student teams started with [physical modeling](https://in.mathworks.com/help/simscape/physical-modeling.html) using [Simscape™](https://in.mathworks.com/products/simscape.html). Here is the link to the tutorial video series - [Simscape Essentials for Automotive Student Teams](https://www.youtube.com/playlist?list=PLn8PRpmsu08pYJYnUtYk_siS5e7HnU4uu). Referring to these models, students participating in competitions (Formula Student, BAJA competitions, Solar Challenge, etc.) can perform powertrain simulations, develop thermal cooling systems, battery cooling systems, etc.

The tutorial video series will help you get started with the fundamentals of vehicle development for student competitions like Formula Student using Simscape™. 
1. Longitudinal Vehicle Motion: https://youtu.be/FurgUbg_0zQ?si=uv-iPPJfcw1fOlvd
2. Electric Powertrain: https://youtu.be/GtxbWL_Z2Bc?si=YQjtTGli4VI9DZQQ
3. Motor Cooling System: https://youtu.be/pFKwL9Y5D6I?si=AQCCSlua1TcNIwxd 

![Simscape model of electric vehicle](<Scripts_Data/html/SimscapeEssentialsAuto_Demo_Script_03.png>)

View on MATLAB Online: [![Open in MATLAB Online](https://www.mathworks.com/images/responsive/global/open-in-matlab-online.svg)](https://matlab.mathworks.com/open/github/v1?repo=mathworks/Simscape-Essentials-for-Automotive-Student-Teams)

View on File Exchange: [![View Aircraft Performance Analyzer (APA) Live Task on File Exchange](
https://www.mathworks.com/matlabcentral/images/matlab-file-exchange.svg)](https://in.mathworks.com/matlabcentral/fileexchange/125445-simscape-essentials-for-automotive-student-teams)

## Note
Please note that the models in this submission are built using real physical components present in [Simscape](https://in.mathworks.com/products/simscape.html). However, if users want a complete vehicle framework that they can parameterize with their own data please check out the following products: [Powertrain Blockset™](https://www.mathworks.com/products/powertrain.html) and [Vehicle Dynamics Blockset™](https://in.mathworks.com/products/vehicle-dynamics.html). 

## Models
### longitudinalMotion.slx
The model simulates the vehicle motion on a terrain. It consists of a Simscape [Vehicle Body](https://in.mathworks.com/help/sdl/ref/vehiclebody.html) block that represents a two-axle vehicle body in longitudinal motion. The model has been used as vehicle body to design to build the powertrain and the cooling system. 

![Simscape model of vehicle chassis and wheels](<Scripts_Data/html/SimscapeEssentialsAuto_Demo_Script_01.png>)

Note: By default, all the models are built using Tire (Simple) block. To replace it with the Tire (Magic Formula) block follow the steps below:
- Open the "Vehicle" subsystem
- Open the "Chassis and Tires" subsystem
- Click the annotation "model with Magic Formula Tires." This will open the "chassisTires_lib" library.
- Replace the "Chassis and Tires" subsytem with the "Chassis and Tires Magic Formula" subsystem present in the "chassisTires_lib" library.

![Simscape model of vehicle chassis and wheels](<Scripts_Data/html/SimscapeEssentialsAuto_Demo_Gif_01.gif>)

### electricPowertrain.slx
The model simulates an electric vehicle model to track a reference drive cycle. It consists of a Simscape [Motor and Drive (System Level)](https://in.mathworks.com/help/sps/ref/motordrivesystemlevel.html) block to represents a generic motor and drive operating in torque-control mode, or equivalently current-control mode. Student teams can use this model to size the motor, battery and other electrical components and can also estimate the battery SOC and SOH.

![Simscape model of electric powertrain](<Scripts_Data/html/SimscapeEssentialsAuto_Demo_Script_02.png>)

Note: By default, all the models are built using Tire (Simple) block. To replace it with the Tire (Magic Formula) block follow the steps below:
- Open the "Vehicle" subsystem
- Open the "Chassis and Tires" subsystem
- Click the annotation "model with Magic Formula Tires." This will open the "chassisTires_lib" library.
- Replace the "Chassis and Tires" subsytem with the "Chassis and Tires Magic Formula" subsystem present in the "chassisTires_lib" library.

![Simscape model of vehicle chassis and wheels](<Scripts_Data/html/SimscapeEssentialsAuto_Demo_Gif_02.gif>)

### motorCooling.slx
The model simulates a motor cooling system. It consists of [Simscape™ Fluids™](https://in.mathworks.com/products/simscape-fluids.html) Thermal Liquid and Gas blocks to model the cooling circuit. Student teams can utilize this model to size the components of the cooling system. 

![Simscape model of motor cooling system](<Scripts_Data/html/SimscapeEssentialsAuto_Demo_Script_04.png>)

## How to open the models
Run the _startup_SimscapeEssentialsAuto_ script to open the HTML startup file. From the HTML page, users can select the model they want to run. 

## Additional resources for complete vehicle network
Models in this submission are built using real physical components present in [Simscape™](https://in.mathworks.com/products/simscape.html), and designed to help you learn how to use the schematic-based modeling language Simscape provides. Users can explore the complete vehicle framework examples, such as this [EV Reference Application](https://in.mathworks.com/help/autoblks/ug/electric-vehicle-reference-application.html) available in the following product: [Powertrain Blockset™](https://in.mathworks.com/products/powertrain.html). 

## Product Requirements
1. MATLAB®
2. Simulink®
3. Simscape™
4. Simscape™ Electrical™
5. Simscape™ Fluids™
6. Simscape™ Battery™
7. Simscape™ Driveline™
8. Powertrain Blockset™

