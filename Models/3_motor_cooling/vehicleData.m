%% Model Parameters: Physical Modeling Essentials for Automotive Student Teams

% Copyright 2023 The MathWorks, Inc.

%% Vehicle

vehicle.riderMass = 80; % kg
vehicle.vehicleMass = 250; %kg
vehicle.cgHeight = 254; % mm
vehicle.tireRollingRadius_cm = 40.64/2; %cm
vehicle.cd                   = 1.2;
vehicle.frontalArea          = 1.33; % m^2
vehicle.frontAxleDis = 1520; % mm
vehicle.rearAxleDis = 1400; % mm
vehicle.tireRollingCoeff     = 0.0136; 
vehicle.tireCoeffB = 12.13;
vehicle.tireCoeffC = 2.4012;
vehicle.tireCoeffD = 3.206;
vehicle.tireCoeffE = 1.12;
vehicle.tireInertia = 0.9; % kg*m^2
vehicle.tireRollResist = 0.005;


%% Brake
brake.padRadius = 280; % mm
brake.cylinderBore = 10; %mm
brake.sf = 0.35;
brake.cf = 0.3;
brake.frictionVel = 0.1;
brake.vfc = 0;
brake.rearPressure = 5e5; % N/m^2
brake.frontPressure = 1e6; % N/m^2


%% High Voltage Battery
%BatteryHVBasicParams

battery.voltage_V = 600;
battery.internal_R_Ohm = 0.002;
battery.cell_capacity  = 20; % A*hr
battery.init_soc       = 0.9; % A*hr

%% Reduction Gear
bevGear.gearRatio = 8;
bevGear.efficiency = 0.98;

%% Motor Drive
motorDrive.simplePmsmDrv_trqMax_Nm   = 10.5*4;    %*4 is AWD 
motorDrive.simplePmsmDrv_trqMin_Nm   = -10.5*4;
motorDrive.simplePmsmDrv_powMax_W    = 35e3*4; %*4 is AWD 
motorDrive.simplePmsmDrv_timeConst_s = 0.02;

motorDrive.simplePmsmDrv_spdVec_rpm = [100, 450, 800, 1150, 1500];
motorDrive.simplePmsmDrv_trqVec_Nm = [10, 45, 80, 115, 150];
motorDrive.simplePmsmDrv_LossTbl_W = ...
[ 16.02, 251,   872.8, 2230, 4998; ...
  29.77, 262,   875.7, 2217, 4950; ...
  45.35, 281.2, 900,   2217, 4796; ...
  62.14, 299,   924.8, 2191, 4567; ...
  81.1,  320.9, 943.1, 2146, 4379];

motorDrive.simplePmsmDrv_rotorInertia_kg_m2 = 3.93*0.01^2/3;
motorDrive.simplePmsmDrv_rotorDamping_Nm_per_radps = 1e-5;
motorDrive.simplePmsmDrv_initialRotorSpd_rpm = 0;

%motorDrive.spdCtl_trqMax_Nm = motorDrive.simplePmsmDrv_trqMax_Nm;

motorDrive.gearRatioCompensation = 6; %3/bevGear.gearRatio;
  % adjust the max motor speed

motorDrive.Kp = 0.1562;
motorDrive.Ki = 0.1562/4;

%% converter
converter.outputVoltage   = 350; % Volts
converter.maxSupplyCurrent = 200; % A
converter.outputPower      = motorDrive.simplePmsmDrv_powMax_W; % A
converter.droopPercent     = 2; % (0-100)

%% Driver & Environment

bevMotorSpdRef.tireRadius_cm = vehicle.tireRollingRadius_cm;
bevMotorSpdRef.reductionGearRatio = bevGear.gearRatio;

%% Motor Cooling System
%  Radiator tubes
cooling.n_tubes = 12;                % Number of tubes
cooling.w_radiator = 0.136;           % Radiator width [m]
cooling.h_tube = 0.27;         % Tube height [m]
cooling.L_tube = 7*0.27;  % Tube length [m]
cooling.area_primary = 0.3;
cooling.area_fins = 2;

cooling.cDrag = 2.5;
cooling.denAir = 1.2;

cooling.pumpFlowrate = 0.01; % kg/s
cooling.pumpArea = 0.1; % m^2;

cooling.pipe1Length = 0.6; % m
cooling.pipe1Dia = 0.01128; % m^2;

cooling.pipe2Length = 0.5; % m
cooling.pipe2Dia = cooling.pipe1Dia; % m^2;





