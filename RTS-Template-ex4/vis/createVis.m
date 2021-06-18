function vis = createVis()
close all
% https://de.mathworks.com/matlabcentral/answers/246038-creating-a-2d-moving-object

%%%%%%%%%%%%%%Visualization Struct
%%Input
vis.L1=true;
vis.L2=true;
vis.S1=false;
vis.S2=false;
vis.S3=false;
vis.S4=false;
vis.S5=false;
vis.S6=false;
vis.S7=false;
%%Output
vis.CP1=false;
vis.LED1=false;
vis.M1CCW=false;
vis.M1CW=false;
vis.M2=false;
vis.M3=false;
vis.M4E=false;
vis.M4R=false;
vis.M5B=false;
vis.M5F=false;
vis.V1=false;
vis.V2=false;
vis.V3=false;
vis.V4=false;
vis.VMOT=0;
%%Simulation
vis.PutPiece=false;
vis.TakePiece=false;
vis.p1=0;
vis.p2=0;
vis.p3=0;
vis.p4=0;
vis.p5=0;
%%Graphics
vis.fig=figure('Name','Visualization','NumberTitle','off');


set(gca,'visible','off')
set(gca,'XColor', 'none','YColor','none')
% grid on

vis.Oven=createOven(0,0,0,'#e7e7e7');
vis.Gripper=createGripper(0,0,0,'#e7e7e7');
vis.Turntable=createTurntable(0,0,0,'#e7e7e7');
vis.Conveyor=createConveyor(0,0,0,'#e7e7e7');
for i=1:4
    vis.Workpiece(i)=createWorkpiece(0,0,'blue');
end
axis equal
% xlim([-300 1615])
% ylim([-265 490])
% ax = axis();
% set(findall(gcf,'-property','FontSize'),'FontSize',1*(1915/(ax(4)-ax(3))))

%https://de.mathworks.com/matlabcentral/answers/73450-fixed-size-text-that-zooms-scales-with-a-plot

%     h = zoom; 
%     set(h,'ActionPostCallback',@zoomCallBack);
%     set(h,'Enable','on');
% 
%     function zoomCallBack(~, evd)      
%         t_ax = axis(evd.Axes);
%         set(findall(gcf,'-property','FontSize'),'FontSize',1*(1915/(t_ax(4)-t_ax(3))))
%     end

end

