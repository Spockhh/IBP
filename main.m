function[]=main(alpha,iniPz,sigmaX,sigmaA)
   [Z,X,A]=gene(iniPz,sigmaX);
   S=size(X);N=S(1,1);  
   K=4; N=100; D=36;
   
   disp(Z(1:10,:));
   old=0;LK=110;erro=100;iter=1; recordl=zeros(1,200); recordc=zeros(1,200);
   while(iter<=200)%abs(abs(old)-abs(LK))>erro) % new log(P(X,Z)) - old log(P(X,Z))
       old=LK;fprintf('iteration:%s\n',num2str(iter));
       [Z,LK,C]=sampling(alpha,N,D,X,Z,sigmaX,sigmaA);
       recordl(iter)=LK;recordc(iter)=C; 
       iter=iter+1; disp(Z(1:10,:)); disp(sum(Z));
   end
   disp([recordl;recordc]);
   
   
   
   X=zeros(1,200);
   for i=1:200
    X(i)=i;
   end

figure(1);
Y=recordl;
plot(X,Y);
set(gca,'Xtick',0:20:200);
set(gca,'Ytick',-3600:100:-3200);
xlabel('Iteration'); ylabel('logP(X,Z)');

figure(2);
Y=recordc;
plot(X,Y);axis([0 200 3 7]);
set(gca,'Xtick',0:20:200); 
set(gca,'Ytick',2:1:7);
xlabel('Iteration'); ylabel('Number of classes(K+)');


   


   