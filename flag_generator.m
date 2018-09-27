% Script flag_generator

clc

close all
figure
axis equal off
hold on

red    = [ 1 0 0 ];
baby   = [ (137/256) (207/256) (240/256) ];
black  = [ 0 0 0 ];
blue   = [ 0 0 1 ];
green  = [ 0 1 0 ];
orange = [ 1 (165/255) 0 ];
yellow = [ 1 1 0 ];
white  = [ 1 1 1 ];

N = 20;
yReduce = 0.5;

labels{1}     = {'Austria'};
flags         = [ red    red    red    white  white  white  red    red    red ];

labels{2}     = {'Belguim'};
flags(:,:,2)  = [ black  yellow red    black  yellow red    black  yellow red ];

labels{3}     = {'Bulgaria'};
flags(:,:,3)  = [ white  white  white  green  green  green  red    red    red ];

labels{4}     = {'Chad'};
flags(:,:,4)  = [ blue   yellow red    blue   yellow red    blue   yellow red ];

labels{5}     = {'Estonia'};
flags(:,:,5)  = [ blue   blue   blue   black  black  black  white  white  white ];

labels{6}     = {'France'};
flags(:,:,6)  = [ blue   white  red    blue   white  red    blue   white  red ];

labels{7}     = {'Gabon'};
flags(:,:,7)  = [ green  green  green  yellow yellow yellow blue   blue   blue ];

labels{8}     = {'Germany'};
flags(:,:,8)  = [ black  black  black  red    red    red    yellow yellow yellow ];

labels{9}     = {'Guinea'};
flags(:,:,9)  = [ red    yellow green  red    yellow green  red    yellow green ];

labels{10}    = {'Ireland'};
flags(:,:,10) = [ green  white  orange green  white  orange green  white  orange ];

labels{11}    = {'Italy'};
flags(:,:,11) = [ green  white  red    green  white  red    green  white  red ];

labels{12}    = {'Lithuania'};
flags(:,:,12) = [ yellow yellow yellow green  green  green  red    red    red ];

labels{13}    = {'Luxembourg'};
flags(:,:,13) = [ red    red    red    white  white  white  baby   baby   baby ];

labels{14}    = {'Mali'};
flags(:,:,14) = [ green  yellow red    green  yellow red    green  yellow red ];

labels{15}    = {'Netherlands'};
flags(:,:,15) = [ red    red    red    white  white  white  blue   blue   blue ];

labels{16}    = {'Nigeria'};
flags(:,:,16) = [ green  white  green  green  white  green  green  white  green ];

labels{17}    = {'Romania'};
flags(:,:,17) = [ blue   yellow red    blue   yellow red    blue   yellow red  ];

labels{18}    = {'Russia'};
flags(:,:,18) = [ white  white  white  blue   blue   blue   red    red    red ];

labels{19}    = {'Sierra Leone'};
flags(:,:,19) = [ green  green  green  white  white  white  blue   blue   blue ];

labels{N}    = {'Yemen'};
flags(:,:,N)  = [ red    red    red    white  white  white  black  black  black ];

for h=1:N
    flag = flags(:,:,h);

    ystart = (h-1)*-4;
    for y=ystart-2:ystart
        ys = [(y+0)*yReduce (y+0)*yReduce (y+1)*yReduce (y+1)*yReduce];

        for x=0:2
            xs = [x+0 x+1 x+1 x+0];

            k = ((-1*y--1*ystart)*9)+1+(x*3);

            color = [ flag(k) flag(k+1) flag(k+2) ];

            f = fill(xs, ys, color);
            f = set(f,'EdgeColor','none');

            if (y == ystart-2 && x == 2)
               text(x+1.5, (y+1.5)*yReduce, labels{h});
            end
        end
    end
end

hold off
shg