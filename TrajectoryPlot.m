% function TrajectoryPlot()
% Решение ПЗК
L = constants();
for i=1:1:length(q(1,:))
    XYZ(:,i)=Fk(q(3,i),q(2,i),q(1,i),L)
end
plot3(XYZ(1,:),XYZ(2,:),XYZ(3,:))
xlabel('OX')
ylabel('OY')
zlabel('OZ')
grid on
% XYZ = Fk(0, 0, 0, L)
%     plot3(app.UIAxes7,XYZ(:,1),XYZ(:,2),XYZ(:,3));
%     xlabel(app.UIAxes7,'OX');
%     ylabel(app.UIAxes7,'OY');
%     zlabel(app.UIAxes7,'OZ');
%     grid(app.UIAxes7,'on');
% end
% %% Слева - теоретическая траектория, справа - практияески пилученная 
% figure
% subplot(1,2,1),plot3(XYZ(:,1),XYZ(:,2),XYZ(:,3))
% xlabel('OX')
% ylabel('OY')
% zlabel('OZ')
% grid on
% subplot(1,2,2),plot3(x_s.data,y_s.data,z_s.data)
% xlabel('OX')
% ylabel('OY')
% zlabel('OZ')
% grid on
% 
% %% Наложение теоретической и практическое траетории друг на друга 
% figure
% plot3(XYZ(:,1),XYZ(:,2),XYZ(:,3))
% hold on
% plot3(x_s.data,y_s.data,z_s.data)
% xlabel('OX')
% ylabel('OY')
% zlabel('OZ')
% grid on


