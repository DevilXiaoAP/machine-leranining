rand%���ֵΪ0-1
randn%ƽ��ֵΪ0�ĸ�˹�ֲ�
w = -6 + sqrt(10) * (randn(1,10000))
hist(w)%ֱ��ͼ
hist(w,50)%ֱ��ͼ��ʮ����
eye(4)%��λ����
size(A)
sz = size(A)
size(sz)
size(A,1)%���ؾ��������
size(A,2)%���ؾ��������
v = [1 2 3 4]
length(v)
length(A)%���ؾ�������ά��
length([1;2;3;4;5])%���������в���
pwd%��ǰ����·��
cd%change directory
cd 'C:\Users\ang\Desktoop'
ls%�г�·���������ļ���
load featureX.dat
load 'featureX.dat'
who%��ʾ�����ռ�����б���
featureX=fopen('featureX.dat','w');
whos%��ϸ��ʾ������Ϣ
clear featuresX%���ĳһ������
V= priceY(1:10)
save hello.mat V%��������Ϊһ����hello.mat���ļ������ö�����ѹ����
load hello.mat
save hello.txt V%������Ϊ���ܿ�������ʽ
A = [1 2 ;3 4; 5 6]
A(3,2)
A(2,:)
A(:,2)
A([1 3 ],:)%ȡ��һ�е�����������ʾ����
A(:,2) = [10;12;14]
A = [A,[100;101;102]]%�ھ����ұ�����һ��
A(:)%put all elements of A into a single vector
A = [1 2 ; 3 4 ;  5 6]
B = [11 12 ;13 14;15 16]
C = [A B]%��B����A���ұ�
C = [A ;B]%��B����A���±�
C = [1 1;2 2]
A * C%����˷�
A .* B%����ӦԪ�ػ������
A .^ 2%��A�е�ÿһ��Ԫ��ƽ��
v = [1; 2; 3]
1 ./v%��ȡ��v��ӦԪ�صĵ���
log(v)%��v���ж������㣬log��eΪ��
exp(v)%��v����ָ�����㣬��eΪ�ף������е���Ϊָ��
abs(v)%ȡ����ֵ
-v%ȡ�෴��-1 *v
v + ones(length(v),1) %��1��ԭ�����������== ones(3,1)
length(v)
ones(3,1)
v + ones(length(v),1)
v+1%�����ͬ
A'%A��ת��
(A')'
a = [1 15 2  0.25]
val = max(a)
[val,ind] = max(a)%�������ֵ֮�󲢽����������ش���ind
a < 3%������a�������㷵��0 1
find(a<3)%����a<3������
A = magic(3)%his MATLAB function returns an n-by-n matrix constructed from the integers 1 through n2 with equal row and column sums.���� ���жԽ��� ������
[r,c] = find(A >= 7)%r��ʾ�У�c��ʾ�� ��ʾ�ڼ��еڼ��е�������7 1.1 3.2  2.3
sum(a)%up all the elements of A
prod(a)%������Ԫ�����
floor(a)%�����������룬��=0.5�Ķ�����һ
ceil(a)%�����������룬��=0.5�Ķ�����һ
rand(3)%3by3 matrix
max(rand(3),rand(3))%ȥ����������飬����ӦԪ�رȽϣ����ض�ӦԪ�ص����ֵ
max(A,[],1)%1ΪȡA��һ��ά�ȵ����ֵ����Ϊ2�����õ�ÿһ�е����ֵ
max(A)%Ĭ������·���ÿһ�е����ֵ
max(max(A))%����������������ֵ
A(:)
max(A(:))%�Ƚ�Aת����һ�У���ȡ���ֵ
A = magic(9)
sum(A,1)%�õ�Aÿһ�е��ܺ�
sum(A,2)%�õ�Aÿһrow���ܺ�
eye(9)
A .* eye(9)
sum(sum(A .* eye(9)))%�Խ������
sum(sum(A .* flipud(eye(9))))%flipud��ʾ���Ϸ�תflipud(eye(9))���Խ��ߣ�flipur��ʾ���Ϸ�ת
A = magic(3)
pinv(A)%α�����
t = [0:0.01:0.98]
y1 = sin(2*pi*4*t);
plot(t,y1);
y2 = cos(2*pi*4*t);
plot(t,y2);
plot(t,y1);
hold on%���µĺ��������ھɵĺ�������
plot(t,y2,'r');%r������ɫ
xlabel('time')
ylabel('value')
legend('sin','cos')%label two lines
title('my plot')
cd 'F:\ѧϰ�ĵ�\����ѧϰ���������\';print -dpng 'myPlot.png'%���ض��ĸ�ʽ����
figure(1);plot(t,y1);
figure(2);plot(t,y2);
subplot(1,2,1);
plot(t,y1)
subplot(1,2,2);
axis([0.5 1 -1 1])
clf%clean figure
A = magic(5)
imagesc(A)%��������ɫ
imagesc(A),colorbar,colormap%colorbar��ʾ������ǳ����ɫ��Ӧ��ֵ
imagesc(A),colorbar,colormap gray
imagesc(magic(15)),colorbar,colormap gray
a=1,b=2,c=3
a=1;b=2;c=3;
v=zeros(10,1)
for i=1:10,
    v(i) = 2^i;
end;
indices = 1:10;
for i=indices,
    disp(i);
end;

i =1;
while i<= 5,
    v(i) = 100;
    i = i+1;
end;

i=1;
while true,
    v(i) = 999;
    i = i+1;
    if i == 6
        break;
    end;
end;
v(1) = 2;
if v(1) == 1,
    disp('The value is one');
elseif v(1) == 2,
    disp('the value is two');
else
    disp('The value is not one or two');
end;

addpath('C:\Users\')%����·����ӵ�����·����
cd 'C:\'%����·��֮����Ȼ��������ӵ�·�������ı���·��
X = [1 1;1 2; 1 3]
y = [1;2;3]
theta = [0;1]
j = costFunctionJ(X,y,theta)
theta = [0;0];
j = costFunctionJ(X,y,theta)
(1^2 + 2^2 +3^2)/(2*3)







