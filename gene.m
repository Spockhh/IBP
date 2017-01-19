function[Z,X,A]=gene(iniPz,sigmaX)
N=100;
X1=[0 1 0 0 0 0; 1 1 1 0 0 0;0 1 0 0 0 0;zeros(3,6)];
X2=[0 0 0 1 1 1; 0 0 0 1 0 1;0 0 0 1 1 1;zeros(3,6)];
X3=[zeros(3,6); 1 0 0 0 0 0; 1 1 0 0 0 0;1 1 1 0 0 0];
X4=[zeros(3,6);0 0 0 1 1 1; 0 0 0 0 1 0;0 0 0 0 1 0];
X1=reshape(X1',1,36);X2=reshape(X2',1,36);X3=reshape(X3',1,36);X4=reshape(X4',1,36);
Z=round(rand(N,4));A=[X1;X2;X3;X4];
MU=Z*A;
X=mvnrnd(MU,sigmaX^2*eye(36));


Z=zeros(N,1);
    for i=1:N
        flip=randi(100,1,1);
        if(flip<=iniPz*100)
            Z(i)=1;
        end
    end




