% Script DrawDotFlags

function DrawDotFlags(flags, labels, count, xBonus, yBonus)
    yReduce = 0.5;

    for h=1:count
        flag = flags(:,:,h);

        yStart = (h-1)*-4+yBonus-2;
        
        % Draw rectangle
        color = [ flag(1) flag(2) flag(3) ];
        
        ys = [yStart*yReduce yStart*yReduce (yStart+3)*yReduce (yStart+3)*yReduce];
        xs = [xBonus xBonus+3 xBonus+3 xBonus];

        shape = fill(xs, ys, color);
        set(shape,'EdgeColor','none');
        
        % Draw circle
        color = [ flag(4) flag(5) flag(6) ];
        
        xs=linspace(-1,1,50);
        topYs=sqrt(1-xs.^2)*0.60;
        bottomYs=-1*topYs;
        
        xs=xs*0.60+xBonus+1.5;
        topYs=topYs+yBonus-0.25-2*(h-1);
        bottomYs=bottomYs+yBonus-0.25-2*(h-1);
        
        shape = fill(xs, topYs, color);
        set(shape,'EdgeColor','none');
         
        shape = fill(xs, bottomYs, color);
        set(shape,'EdgeColor','none');

        text(xBonus+3.5, (yStart+1.5)*yReduce, labels{h}); 
    end