function h=single_tra(i,segment, distance, t)
% ��ȡtxt�ļ�
% ���룺1��txt�ļ�        
% �����1��һ��һ��n�е��ַ�����
%           2���ַ�����
line( segment(i,1)+distance(1,:), segment(i,2)+distance(2,:) );
h = line(segment(i,1),segment(i,2),'linestyle','none','marker','o','markerfacecolor','b');
fprintf('��%d���㵽��%d����\n',i,i+1);
fprintf('P%d(%.2f, %.2f)--->',i,segment(i,1),segment(i,2));
fprintf('P%d(%.2f, %.2f)\n',i+1,segment(i+1,1),segment(i+1,2));
fprintf('������仯��С��dx=%.2f\n',segment(i,3));
fprintf('������仯��С��dy=%.2f\n',segment(i,4));
fprintf('б�ʣ�k=%f\n',segment(i,5));
fprintf('�߶γ��ȣ�L=%.2f\n',segment(i,6));
fprintf('�����߶�ʵ���˶�λ�ƣ���s=%.2f\n',distance(end));
fprintf('�����߶��˶�ʱ�䣺��t=%.2f\n',t(end));
fprintf('x�����ٶȣ�vx=%.2f\ny�����ٶȣ�vy=%.2f\n',segment(i,9),segment(i,10));
fprintf('���ٶȣ�V=%.2f\n',segment(i,11));

if i<( length( segment(:,17) )-1 )
    fprintf('�нǴ�С����%d=%d��\n',i,segment(i,7));
    if (segment(i,7)==180)
        fprintf('ֱ�߶Σ���������\n\n');
    elseif (segment(i,7)>=165) &&(segment(i,7)<180)
        fprintf('����165��Ľǣ����ü��٣�����ֱ�߶δ���\n\n');
    elseif (segment(i,7)>90) &&(segment(i,7)<165)
        fprintf('�۽ǣ�Ӧ�����ʵ����ٴ���\n\n');
    elseif (segment(i,7)==90)
        fprintf('ֱ�ǣ�Ӧ�������Լ��ٴ���\n\n');
    elseif (segment(i,7)>=0) &&(segment(i,7)<90)
        fprintf('��ǣ�Ӧ�������Լ��ٴ���\n\n');
    end
else
    fprintf('���һ���߶β���Ҫǰհ�Ƕ�\n\n');
end
end