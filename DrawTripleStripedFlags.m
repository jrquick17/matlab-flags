% Script DrawTripleStripedFlags

function DrawTripleStripedFlags(flags, labels, count, xBonus, yBonus)
    yReduce = 0.5;

    for h=1:count
        flag = flags(:,:,h);

        ystart = (h-1)*-4+yBonus;
        for y=ystart-2:ystart
            ys = [(y+0)*yReduce (y+0)*yReduce (y+1)*yReduce (y+1)*yReduce];

            for x=0+xBonus:2+xBonus
                xs = [x+0 x+1 x+1 x+0];

                k = ((-1*y--1*ystart)*9)+1+((x-xBonus)*3);

                color = [ flag(k) flag(k+1) flag(k+2) ];

                shape = fill(xs, ys, color);
                set(shape,'EdgeColor','none');

                if (y-yBonus == ystart-2 && x-xBonus == 2) 
                   text(x+1.5, (y+1.5)*yReduce, labels{h}); 
                end
            end
        end
    end