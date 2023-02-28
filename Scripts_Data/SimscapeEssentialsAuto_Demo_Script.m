%%  Simscape Essentials for Automotive Student Teams
%
% The repository introduces a set of models to get the automotive student teams started with physical modeling using Simscape. Referring to these models, students participating in competitions (Formula Student, BAJA, Solar Challenge, etc.) can perform powertrain simulations, develop thermal cooling system, battery cooling system, etc.
%
% Click on the links below to open the models.
%
% # Vehicle Longitudinal Motion: <matlab:open_system('longitudinalMotion'); longitudinalMotion.slx>
% # Electric Powertrain: <matlab:open_system('electricPowertrain'); electricPowertrain.slx>
% # Motor Cooling: <matlab:open_system('motorCooling'); motorCooling.slx>
%
% Copyright 2023 The MathWorks(TM), Inc.

%% Overview: Vehicle Longitudinal Motion
%
% Vehicle Longitudinal Motion: <matlab:open_system('longitudinalMotion'); longitudinalMotion.slx>
%
% The model simulates the vehicle motion on a terrain. It consists of a
% Simscape Vehicle Body block that represents a two-axle vehicle body in
% longitudinal motion. The model has been used as vehicle body to design to
% build the powertrain and the cooling system.
%
open_system('longitudinalMotion');
open_system('longitudinalMotion/Vehicle/Chassis and Tires')
set_param(find_system('longitudinalMotion','MatchFilter',@Simulink.match.allVariants,'FindAll', 'on','type','annotation','Tag','ModelFeatures'),'Interpreter','off')

%% Overview: Electric Powertrain
%
% Electric Powertrain: <matlab:open_system('electricPowertrain'); electricPowertrain.slx>
%
% The model simulates an electric vehicle model to track a reference drive
% cycle. It consists of a Simscape Motor and Drive (System Level) block to
% represents a generic motor and drive operating in torque-control mode, or
% equivalently current-control mode. Student teams can use this model to
% size the motor, battery and other electrical components and can also
% estimate the battery SOC and SOH.
%

open_system('electricPowertrain')
open_system('electricPowertrain/Vehicle/Electric Powertrain')

%% Overview: Motor Cooling
%
% Motor Cooling: <matlab:open_system('motorCooling'); motorCooling.slx>
%
% The model simulates a motor cooling system. It consists of Simscape™
% Fluids™ Thermal Liquid and Gas blocks to model the cooling circuit.
% Student teams can utilize this model to size the components of the
% cooling system.
%

open_system('motorCooling')

%%
open_system('motorCooling/Vehicle/Electric Powertrain/Motor Cooling System')

%%
bdclose all
close all
