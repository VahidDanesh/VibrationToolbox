% startup.m
% Add necessary directories to MATLAB path

% Get current folder path
rootDir = fileparts(mfilename('fullpath'));

% Add source code and subdirectories to path
addpath(genpath(fullfile(rootDir)));

% Notify user
disp('Vibration Toolbox paths added.');