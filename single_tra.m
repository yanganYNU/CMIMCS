function h=single_tra(i,segment, distance, t)
% 读取txt文件
% 输入：1、txt文件        
% 输出：1、一个一行n列的字符数组
%           2、字符行数
line( segment(i,1)+distance(1,:), segment(i,2)+distance(2,:) );
h = line(segment(i,1),segment(i,2),'linestyle','none','marker','o','markerfacecolor','b');
fprintf('第%d个点到第%d个点\n',i,i+1);
fprintf('P%d(%.2f, %.2f)--->',i,segment(i,1),segment(i,2));
fprintf('P%d(%.2f, %.2f)\n',i+1,segment(i+1,1),segment(i+1,2));
fprintf('横坐标变化大小：dx=%.2f\n',segment(i,3));
fprintf('纵坐标变化大小：dy=%.2f\n',segment(i,4));
fprintf('斜率：k=%f\n',segment(i,5));
fprintf('线段长度：L=%.2f\n',segment(i,6));
fprintf('单条线段实际运动位移：Δs=%.2f\n',distance(end));
fprintf('单条线段运动时间：Δt=%.2f\n',t(end));
fprintf('x方向速度：vx=%.2f\ny方向速度：vy=%.2f\n',segment(i,9),segment(i,10));
fprintf('合速度：V=%.2f\n',segment(i,11));

if i<( length( segment(:,17) )-1 )
    fprintf('夹角大小：θ%d=%d°\n',i,segment(i,7));
    if (segment(i,7)==180)
        fprintf('直线段，继续加速\n\n');
    elseif (segment(i,7)>=165) &&(segment(i,7)<180)
        fprintf('大于165°的角，不用减速，当作直线段处理\n\n');
    elseif (segment(i,7)>90) &&(segment(i,7)<165)
        fprintf('钝角，应该做适当减速处理\n\n');
    elseif (segment(i,7)==90)
        fprintf('直角，应该做明显减速处理\n\n');
    elseif (segment(i,7)>=0) &&(segment(i,7)<90)
        fprintf('锐角，应该做明显减速处理\n\n');
    end
else
    fprintf('最后一条线段不需要前瞻角度\n\n');
end
end