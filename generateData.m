function[Z,newX]=generateData(iniPz,N,X)
Z=zeros(N,1);
    for i=1:N
        flip=randi(100,1,1);
        if(flip<=iniPz*100)
            Z(i)=1;
        else
            Z(i)=0;
        end
    end

    
%{
SX=size(X); newX=zeros(SX(1,1),2);
    for i=1:SX(1,1)
       for j=1:SX(1,2)-1
           if(X(i,j)>=0)
                newX(i,j)=1;
           else
                newX(i,j)=0;
           end
       end
   end
end
%}
N=100;
X1=[0 255 0 0 0 0; 255 255 255 0 0 0;0 255 0 0 0 0;zeros(3,6)];
X2=[0 0 0 255 255 255; 0 0 0 255 0 255;0 0 0 255 255 255;zeros(3,6)];
X3=[zeros(3,6); 255 0 0 0 0 0; 255 255 0 0 0 0;255 255 255 0 0 0];
X4=[zeros(3,6);0 0 0 255 255 255; 0 0 0 0 255 0;0 0 0 0 255 0];
Z=round(rand(N,4));
X=zeros(N,36);
for i=1:N
    X(i,:)=Z(i,1)*X1(:)'+Z(i,2)*X2(:)'+Z(i,3)*X3(:)'+Z(i,4)*X4(:)'+10*randn(1,36);
end