%loi normal par methode de muller et box
tr=1  ;
ln =100 ;
x=zeros(tr,ln);
for i = 1:ln
    u1=rand(1,1);u2=rand(1,1);
    x(1,i)=((sqrt(-2*log(u1)))*cos(2*pi*u2));
end

% estimation de l'espérence 
est=0 ;
for i = 1:tn
    est=est+x(1,i);
end
est=est/tn ;
display(est);

% estimation de la variance 
var=0 ;
for i = 1:tn
    var=var+((x(1,i)-est)^2);
end
var=var/(tn-1);
display(var);
