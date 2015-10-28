global p
global c
p = 0;
c = 0;

global p0
global c0
p0 = 0;
c0 = 0;

global sizesnake
global sizeladder
sizesnake = 10;
sizeladder = 4;

green = 3;
red   = 5;

global c_player
global c_ai
c_player = green;
c_ai     = red;

global s_player
global s_ai
s_player = 'o'
s_ai     = 'x'

// sleeptime in ms
global sleeptime
sleeptime = 100

// linspace duration
global lin_space
lin_space = 50

// safety flag
global sf_continue
sf_snake  = %F;
sf_ladder = %F;

// finally clear console and screen
clf;
clc;
