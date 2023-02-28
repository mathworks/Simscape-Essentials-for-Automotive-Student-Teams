% Set path for Simscape Essentials for Automotive Student Teams 
% Copyright 2023 The MathWorks, Inc.

homedir = fileparts(which(mfilename));
addpath(homedir)
addpath([homedir filesep 'Scripts_Data'])
addpath([homedir filesep 'Utilities'])
addpath([homedir filesep 'Scripts_Data' filesep 'html'])
addpath([homedir filesep 'Models' filesep '1_longitudinal_motion'])
addpath([homedir filesep 'Models' filesep '1_longitudinal_motion' filesep 'Images'])
addpath([homedir filesep 'Models' filesep '2_electric_powertrain'])
addpath([homedir filesep 'Models' filesep '2_electric_powertrain' filesep 'Images'])
addpath([homedir filesep 'Models' filesep '3_motor_cooling'])
addpath([homedir filesep 'Models' filesep '3_motor_cooling' filesep 'Images'])

vehicleData
load fsDCycle

web('SimscapeEssentialsAuto_Demo_Script.html')