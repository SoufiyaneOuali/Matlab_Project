%LOI EXPENTIELLE 
tr=1;
tn=50;

u=zeros(1,1);
Y=zeros(1,tn);
P_Y=zeros(1,tn);
lamda=4;

for i = 1 : k
u(i,1)=rand(1,1);

Y(1,i)= (-1)*log(1-u)/a ;
P_Y(1,i)=a.*exp(-a.*Y(1,i));

fprintf('P(x=%f) =%f \n', Y(1,i),P_Y(1,i));
end

plot(Y,P_Y,'om');
