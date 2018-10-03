% Script P1_1
% Flag

%  Prep work
clc

close all
figure
axis equal off
hold on

%  Colors
red    = [ 1 0 0 ];
baby   = [ (137/256) (207/256) (240/256) ];
black  = [ 0 0 0 ];
blue   = [ 0 0 1 ];
green  = [ 0 1 0 ];
orange = [ 1 (165/255) 0 ];
yellow = [ 1 1 0 ];
white  = [ 1 1 1 ];

%  3 Horizontal Stripes
labels{1}     = {'Austria'};
flags         = [ red    red    red    white  white  white  red    red    red ];

labels{2}     = {'Bulgaria'};
flags(:,:,2)  = [ white  white  white  green  green  green  red    red    red ];

labels{3}     = {'Estonia'};
flags(:,:,3)  = [ blue   blue   blue   black  black  black  white  white  white ]; 

labels{4}     = {'Gabon'};
flags(:,:,4)  = [ green  green  green  yellow yellow yellow blue   blue   blue ];

labels{5}     = {'Germany'};
flags(:,:,5)  = [ black  black  black  red    red    red    yellow yellow yellow ];  

labels{6}    = {'Lithuania'};
flags(:,:,6) = [ yellow yellow yellow green  green  green  red    red    red ];  

labels{7}    = {'Luxembourg'};
flags(:,:,7) = [ red    red    red    white  white  white  baby   baby   baby ]; 

labels{8}    = {'Netherlands'};
flags(:,:,8) = [ red    red    red    white  white  white  blue   blue   blue ];  

labels{9}    = {'Russia'};
flags(:,:,9) = [ white  white  white  blue   blue   blue   red    red    red ];  

labels{10}    = {'Sierra Leone'};
flags(:,:,10) = [ green  green  green  white  white  white  blue   blue   blue ]; 

labels{11}    = {'Yemen'}; 
flags(:,:,11) = [ red    red    red    white  white  white  black  black  black ];

DrawTripleStripedFlags(flags, labels, 11, 0, 0);

%  3 Vertical Stripes
labels{1}     = {'Belguim'};
flags         = [ black  yellow red    black  yellow red    black  yellow red ];

labels{2}     = {'Chad'};
flags(:,:,2)  = [ blue   yellow red    blue   yellow red    blue   yellow red ];

labels{3}     = {'France'};
flags(:,:,3)  = [ blue   white  red    blue   white  red    blue   white  red ];

labels{4}     = {'Guinea'};
flags(:,:,4)  = [ red    yellow green  red    yellow green  red    yellow green ]; 

labels{5}     = {'Ireland'};
flags(:,:,5)  = [ green  white  orange green  white  orange green  white  orange ]; 

labels{6}     = {'Italy'};
flags(:,:,6)  = [ green  white  red    green  white  red    green  white  red ]; 

labels{7}     = {'Mali'};
flags(:,:,7)  = [ green  yellow red    green  yellow red    green  yellow red ]; 

labels{8}     = {'Nigeria'};
flags(:,:,8)  = [ green  white  green  green  white  green  green  white  green ];

labels{9}     = {'Romania'};
flags(:,:,9)  = [ blue   yellow red    blue   yellow red    blue   yellow red  ]; 
 
DrawTripleStripedFlags(flags, labels, 9, 8, 0);

labels{1}     = {'Bangladesh'};
flags         = [ green red ];

labels{2}     = {'Japan'};
flags(:,:,2)  = [ white red ];

DrawDotFlags(flags, labels, 2, -8, 0);

hold off
shg