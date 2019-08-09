rand%随机值为0-1
randn%平均值为0的高斯分布
w = -6 + sqrt(10) * (randn(1,10000))
hist(w)%直方图
hist(w,50)%直方图五十个条
eye(4)%单位矩阵
size(A)
sz = size(A)
size(sz)
size(A,1)%返回矩阵的行数
size(A,2)%返回矩阵的列数
v = [1 2 3 4]
length(v)
length(A)%返回矩阵最大的维度
length([1;2;3;4;5])%对向量进行操作
pwd%当前所处路径
cd%change directory
cd 'C:\Users\ang\Desktoop'
ls%列出路径内所有文件名
load featureX.dat
load 'featureX.dat'
who%显示工作空间的所有变量
featureX=fopen('featureX.dat','w');
whos%详细显示变量信息
clear featuresX%清除某一个变量
V= priceY(1:10)
save hello.mat V%将变量存为一个叫hello.mat的文件（利用二进制压缩）
load hello.mat
save hello.txt V%存贮成为人能看懂的形式
A = [1 2 ;3 4; 5 6]
A(3,2)
A(2,:)
A(:,2)
A([1 3 ],:)%取第一行第三行数据显示出来
A(:,2) = [10;12;14]
A = [A,[100;101;102]]%在矩阵右边新添一列
A(:)%put all elements of A into a single vector
A = [1 2 ; 3 4 ;  5 6]
B = [11 12 ;13 14;15 16]
C = [A B]%将B放在A的右边
C = [A ;B]%将B放在A的下边
C = [1 1;2 2]
A * C%矩阵乘法
A .* B%将对应元素互相相乘
A .^ 2%将A中的每一个元素平方
v = [1; 2; 3]
1 ./v%获取了v对应元素的倒数
log(v)%对v进行对数运算，log以e为底
exp(v)%对v进行指数运算，以e为底，数组中的数为指数
abs(v)%取绝对值
-v%取相反数-1 *v
v + ones(length(v),1) %将1和原来的数组相加== ones(3,1)
length(v)
ones(3,1)
v + ones(length(v),1)
v+1%结果相同
A'%A的转置
(A')'
a = [1 15 2  0.25]
val = max(a)
[val,ind] = max(a)%返回最大值之后并将其索引返回存入ind
a < 3%对数组a进行运算返回0 1
find(a<3)%返回a<3的索引
A = magic(3)%his MATLAB function returns an n-by-n matrix constructed from the integers 1 through n2 with equal row and column sums.数独 行列对角线 相加相等
[r,c] = find(A >= 7)%r表示行，c表示列 表示第几行第几列的数大于7 1.1 3.2  2.3
sum(a)%up all the elements of A
prod(a)%将所有元素相乘
floor(a)%向下四舍五入，《=0.5的都将减一
ceil(a)%向上四舍五入，》=0.5的都将减一
rand(3)%3by3 matrix
max(rand(3),rand(3))%去两个随机数组，将对应元素比较，返回对应元素的最大值
max(A,[],1)%1为取A第一个维度的最大值，若为2，将得到每一行的最大值
max(A)%默认情况下返回每一列的最大值
max(max(A))%返回整个矩阵的最大值
A(:)
max(A(:))%先将A转化成一列，再取最大值
A = magic(9)
sum(A,1)%得到A每一列的总和
sum(A,2)%得到A每一row的总和
eye(9)
A .* eye(9)
sum(sum(A .* eye(9)))%对角线求和
sum(sum(A .* flipud(eye(9))))%flipud表示向上翻转flipud(eye(9))副对角线，flipur表示向上翻转
A = magic(3)
pinv(A)%伪逆矩阵
t = [0:0.01:0.98]
y1 = sin(2*pi*4*t);
plot(t,y1);
y2 = cos(2*pi*4*t);
plot(t,y2);
plot(t,y1);
hold on%将新的函数绘制在旧的函数上面
plot(t,y2,'r');%r代表颜色
xlabel('time')
ylabel('value')
legend('sin','cos')%label two lines
title('my plot')
cd 'F:\学习心得\机器学习——吴恩达\';print -dpng 'myPlot.png'%以特定的格式保存
figure(1);plot(t,y1);
figure(2);plot(t,y2);
subplot(1,2,1);
plot(t,y1)
subplot(1,2,2);
axis([0.5 1 -1 1])
clf%clean figure
A = magic(5)
imagesc(A)%给矩阵上色
imagesc(A),colorbar,colormap%colorbar显示不用深浅的颜色对应的值
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

addpath('C:\Users\')%将该路径添加到搜索路径中
cd 'C:\'%更改路径之后依然会搜索添加的路径机器改变后的路径
X = [1 1;1 2; 1 3]
y = [1;2;3]
theta = [0;1]
j = costFunctionJ(X,y,theta)
theta = [0;0];
j = costFunctionJ(X,y,theta)
(1^2 + 2^2 +3^2)/(2*3)







