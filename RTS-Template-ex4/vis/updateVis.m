function vis = updateVis(vis,reset,L1,L2,S1,S2,S3,S4,S5,S6,S7,CP1,LED1,M1CCW,M1CW,M2,M3,M4E,M4R,M5B,M5F,V1,V2,V3,V4,VMOT,PutPiece,TakePiece,p1,p2,p3,p4,p5)
% tic
    %set(0, 'CurrentFigure', vis.fig);
    
    %%Update IO
    vis.L1=L1;
    vis.L2=L2;
    vis.S1=S1;
    vis.S2=S2;
    vis.S3=S3;
    vis.S4=S4;
    vis.S5=S5;
    vis.S6=S6;
    vis.S7=S7;
    %%Output
    vis.CP1=CP1;
    vis.LED1=LED1;
    vis.M1CCW=M1CCW;
    vis.M1CW=M1CW;
    vis.M2=M2;
    vis.M3=M3;
    vis.M4E=M4E;
    vis.M4R=M4R;
    vis.M5B=M5B;
    vis.M5F=M5F;
    vis.V1=V1;
    vis.V2=V2;
    vis.V3=V3;
    vis.V4=V4;
    vis.VMOT=VMOT;
    %%Simulation
    vis.PutPiece=PutPiece;
    vis.TakePiece=TakePiece;
    vis.p1=p1;
    vis.p2=p2;
    vis.p3=p3;
    vis.p4=p4;
    vis.p5=p5;
    
    %%Oven
    vis=updateOven(vis);
      
    %%Gripper
    vis=updateGripper(vis);
        
    %%Turntable
    updateTurntable(vis);
    
    %%Conveyor
    vis=updateConveyor(vis);
    
%     %%Workpiece
    inputFree=true;
    firstFree=-1;
    for j=1:length(vis.Workpiece)
        inputFree=and(inputFree,vis.Workpiece(j).param.station~=0);
        if firstFree==-1 && vis.Workpiece(j).param.station==-1
            firstFree=j;
        end
    end
    if reset
        for i=1:length(vis.Workpiece)
            set(vis.Workpiece(i).hgt,'Visible',false);
            set(vis.Workpiece(i).gfx.wp,'FaceColor',grayOff);
            vis.Workpiece(i).param.station=-1;
            vis.Workpiece(i).move.Matrix(1:3,4)=[-140 0 0]';
        end
    end
    if vis.PutPiece && inputFree && firstFree > 0 && min([max([vis.p1 0]) 1])==0
        vis.Workpiece(firstFree).param.station=0;
%         vis.Workpiece(firstFree).move.Matrix(1:3,4)=[-140 0 0]';
        set(vis.Workpiece(firstFree).hgt,'Visible',true);
    end
    for i=1:length(vis.Workpiece)
        if vis.Workpiece(i).param.station>=0
            vis=updateWorkpiece(vis,i);
        end
    end
            
    drawnow
% toc
end

function color=yellowOn
    color='#ff8000';
end
function color=yellowOff
    color='#ffffab';
end
function color=greenOn
    color='#00ff00';
end
function color=greenOff
    color='#008000';
end
function color=grayOn
    color='#303030';
end
function color=grayOff
    color='#808080';
end

function vis = updateOven(vis)
    if ~vis.L2
        set(vis.Oven.gfx.L2,'FaceColor',yellowOn);
        set(vis.Oven.gfx.L2Line,'Visible',false);
    else
        set(vis.Oven.gfx.L2,'FaceColor',yellowOff);
        set(vis.Oven.gfx.L2Line,'Visible',true);
    end
    if vis.V3
        set(vis.Oven.gfx.V3,'FaceColor',yellowOn);
        set(vis.Oven.gfx.Door,'Visible',false);
    else
        set(vis.Oven.gfx.V3,'FaceColor',yellowOff);
        set(vis.Oven.gfx.Door,'Visible',true);
    end
    if vis.S6
        set(vis.Oven.gfx.S6,'FaceColor',yellowOn);
    else
        set(vis.Oven.gfx.S6,'FaceColor',yellowOff);
    end
    if vis.S5
        set(vis.Oven.gfx.S5,'FaceColor',yellowOn);
    else
        set(vis.Oven.gfx.S5,'FaceColor',yellowOff);
    end
    if vis.CP1
        set(vis.Oven.gfx.CP1,'FaceColor',yellowOn);
    else
        set(vis.Oven.gfx.CP1,'FaceColor',yellowOff);
    end
    if vis.LED1
        set(vis.Oven.gfx.LED1,'FaceColor',yellowOn);
    else
        set(vis.Oven.gfx.LED1,'FaceColor',yellowOff);
    end
    if vis.M4E
        set(vis.Oven.gfx.M4E,'FaceColor',yellowOn);
    else
        set(vis.Oven.gfx.M4E,'FaceColor',yellowOff);
    end
    if vis.M4R
        set(vis.Oven.gfx.M4R,'FaceColor',yellowOn);
    else
        set(vis.Oven.gfx.M4R,'FaceColor',yellowOff);
    end
    if vis.M4E || vis.M4R
%          vis.Oven.move.Matrix=makehgtform('translate',[0,min([max([vis.p1 0]) 1])*195,-1]);
         vis.Oven.move.Matrix=makehgtform('translate',[0,vis.p1*195,-1]);
    end
end

function vis = updateGripper(vis)
    if vis.V1
        set(vis.Gripper.gfx.V1,'FaceColor',yellowOn);
    else
        set(vis.Gripper.gfx.V1,'FaceColor',yellowOff);
    end
    if vis.V2
        set(vis.Gripper.gfx.V2,'FaceColor',yellowOn);
        %Scale von weißem Kreis
    else
        set(vis.Gripper.gfx.V2,'FaceColor',yellowOff);
    end
    if vis.S4
        set(vis.Gripper.gfx.S4,'FaceColor',yellowOn);
        %Scale von weißem Kreis
    else
        set(vis.Gripper.gfx.S4,'FaceColor',yellowOff);
    end
    if vis.S7
        set(vis.Gripper.gfx.S7,'FaceColor',yellowOn);
    else
        set(vis.Gripper.gfx.S7,'FaceColor',yellowOff);
    end
    if vis.M5F
        set(vis.Gripper.gfx.M5F,'FaceColor',yellowOn);
    else
        set(vis.Gripper.gfx.M5F,'FaceColor',yellowOff);
    end
    if vis.M5B
        set(vis.Gripper.gfx.M5B,'FaceColor',yellowOn);
    else
        set(vis.Gripper.gfx.M5B,'FaceColor',yellowOff);
    end
    if vis.M5F || vis.M5B
%          vis.Gripper.move.Matrix=makehgtform('translate',[-min([max([vis.p2 0]) 1])*747.5,0,-1]);
         vis.Gripper.move.Matrix=makehgtform('translate',[-vis.p2*747.5,0,-1]);
    end
end

function vis = updateTurntable(vis)
    if vis.S1
        set(vis.Turntable.gfx.S1,'FaceColor',yellowOn);
    else
        set(vis.Turntable.gfx.S1,'FaceColor',yellowOff);
    end
    if vis.S2
        set(vis.Turntable.gfx.S2,'FaceColor',yellowOn);
    else
        set(vis.Turntable.gfx.S2,'FaceColor',yellowOff);
    end
    if vis.S3
        set(vis.Turntable.gfx.S3,'FaceColor',yellowOn);
    else
        set(vis.Turntable.gfx.S3,'FaceColor',yellowOff);
    end
    if vis.M1CW
        set(vis.Turntable.gfx.M1CW,'FaceColor',yellowOn);
    else
        set(vis.Turntable.gfx.M1CW,'FaceColor',yellowOff);
    end
    if vis.M1CCW
        set(vis.Turntable.gfx.M1CCW,'FaceColor',yellowOn);
    else
        set(vis.Turntable.gfx.M1CCW,'FaceColor',yellowOff);
    end
    if vis.M3
        set(vis.Turntable.gfx.M3,'FaceColor',yellowOn);
    else
        set(vis.Turntable.gfx.M3,'FaceColor',yellowOff);
    end
    if vis.V4
        set(vis.Turntable.gfx.V4,'FaceColor',yellowOn);
    else
        set(vis.Turntable.gfx.V4,'FaceColor',yellowOff);
    end
%     vis.Turntable.extend.Matrix=makehgtform('translate',[0,-min([max([vis.p4 0]) 1])*165,1]);
    vis.Turntable.extend.Matrix=makehgtform('translate',[0,-vis.p4*165,1]);
    if vis.M1CW || vis.M1CCW
        tmp=makehgtform('translate',[-747.5,-200,-1]);
%         tmp=makehgtform('zrotate',-deg2rad(min([max([vis.p3 0]) 1])*270))*tmp;
        tmp=makehgtform('zrotate',-deg2rad(vis.p3*270))*tmp; 
        tmp=makehgtform('translate',[747.5,200,-1])*tmp;
        vis.Turntable.rotate.Matrix=tmp;
    end
end

function vis = updateConveyor(vis)
    if ~vis.L1
        set(vis.Conveyor.gfx.L1,'FaceColor',yellowOn);
        set(vis.Conveyor.gfx.L1Line,'Visible',false);
    else
        set(vis.Conveyor.gfx.L1,'FaceColor',yellowOff);
        set(vis.Conveyor.gfx.L1Line,'Visible',true);
    end
    if vis.M2
        set(vis.Conveyor.gfx.M2,'FaceColor',yellowOn);
        set(vis.Conveyor.gfx.M2A,'FaceColor',yellowOn);
    else
        set(vis.Conveyor.gfx.M2,'FaceColor',yellowOff);
        set(vis.Conveyor.gfx.M2A,'FaceColor',yellowOff);
    end
%     vis.Conveyor.move.Matrix=makehgtform('translate',[0 -vis.p5 0]);
end

function vis = updateWorkpiece(vis,i)
    roundingError=0.05;
    tmpP1=min([max([vis.p1 0]) 1]);
    tmpP2=min([max([vis.p2 0]) 1]);
    tmpP3=min([max([vis.p3 0]) 1]);
    tmpP4=min([max([vis.p4 0]) 1]);
    tmpP5=min([max([vis.p5 0]) 1]);
    if vis.Workpiece(i).param.station == 0%OvenTray   
        vis.Workpiece(i).move.Matrix(2,4)=vis.Oven.move.Matrix(2,4);
        if tmpP2==1 && tmpP1==0 && vis.V2 && vis.V1
            vis.Workpiece(i).param.station=vis.Workpiece(i).param.station+1;
        end
    elseif vis.Workpiece(i).param.station == 1%Gripper
        if vis.V1
            vis.Workpiece(i).move.Matrix(1,4)=vis.Gripper.move.Matrix(1,4)+747.5;
        else
            if tmpP2==1&&tmpP1==0
                vis.Workpiece(i).param.station=vis.Workpiece(i).param.station-1;
            elseif tmpP2==0 && tmpP3==0
                vis.Workpiece(i).param.station=vis.Workpiece(i).param.station+1;
            else
                vis.Workpiece(i).param.station=255;
            end
        end
    elseif vis.Workpiece(i).param.station == 2%Turntable 
        tmp=makehgtform('translate',[0,-tmpP4*165-200,0]);
        tmp=makehgtform('zrotate',-deg2rad(tmpP3*270))*tmp; 
        tmp=makehgtform('translate',[747.5,200,0])*tmp;       
        vis.Workpiece(i).move.Matrix(1:3,4)=tmp(1:3,4);      
        if tmpP3==1&&tmpP4==1
            vis.Workpiece(i).param.station=vis.Workpiece(i).param.station+1;
        end
    elseif vis.Workpiece(i).param.station == 3%Conveyor
         vis.Workpiece(i).move.Matrix(2,4)=tmpP5*-260+(345/2+30);
         vis.Workpiece(i).move.Matrix(1,4)=1153.5;
        if ~vis.L1 && tmpP5==1%wait in exit
            vis.Workpiece(i).param.station=vis.Workpiece(i).param.station+1;
        end
    elseif vis.Workpiece(i).param.station == 4%%takeToken
            %remove
            if vis.L1
                set(vis.Workpiece(i).hgt,'Visible',false);
%                 set(vis.Workpiece(i).gfx.wp,'FaceColor',grayOff);
                vis.Workpiece(i).param.station=-1;
                vis.Workpiece(i).move.Matrix(1:3,4)=[0 0 0];  
            end
    elseif vis.Workpiece(i).param.station == 255%%token dropped
            set(vis.Workpiece(i).gfx.wp,'FaceColor',grayOff);   
    else     
        %remove
        set(vis.Workpiece(i).hgt,'Visible',false);
        set(vis.Workpiece(i).gfx.wp,'FaceColor','red');
        vis.Workpiece(i).param.station=-1;
        vis.Workpiece(i).move.Matrix(1:3,4)=[0 0 0];
    end

end