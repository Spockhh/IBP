function[Z,LK,C]=sampling(alpha,n,D,X,Z,sigmaX,sigmaA)
S=size(Z); W=S(1,2); H=S(1,1);newcol=zeros(n,1);
   for i=1:H
   j=1; while j<=W
          tmp=size(Z);K=tmp(1,2); 
          if checkM(Z(:,j),i)>0
            Z(i,j)=1;logPost1=getProb(X,Z,i,D,K,j,n,sigmaX,sigmaA,1);
            Z(i,j)=0;logPost0=getProb(X,Z,i,D,K,j,n,sigmaX,sigmaA,0);
            Post1=exp(logPost1-logPost0)/(1+exp(logPost1-logPost0));
            Z(i,j)=RandomBi(Post1);
            j=j+1;
           
          else 
            SZ=size(Z);
            if(j~=1&&j~=SZ(1,2))
                Z=[Z(:,1:j-1),Z(:,j+1:SZ(1,2))]; 
            elseif (SZ(1,2)>1 && j==1)
                Z=Z(:,2:SZ(1,2));
            elseif(SZ(1,2)>1 && j==SZ(1,2))
                Z=Z(:,1:SZ(1,2)-1);                
            end
            W=W-1;
           end
           
        end
  tmp=size(Z);K=tmp(1,2); 
  [newL,newCol]=RandomCol(i,alpha,n,X,Z,D,K,sigmaX,sigmaA); %disp(newL);
  Z(i,W+1:W+newL)=newCol; W=W+newL; newcol(i)=newL;
  end

  
   
%---  report   ----
S=size(Z); W=S(1,2); H=S(1,1); tmp=size(Z);K=tmp(1,2); LKH=getLKH(X,Z,D,K,n,sigmaX,sigmaA); LK=logLike(LKH,Z,n,newcol,alpha,K); C=K;
fprintf('Z Stats length:%s width:%s 1 nums:%s 0 nums:%s\n',num2str(H),num2str(W),num2str(sum(sum(Z))),num2str(H*W-sum(sum(Z))));
fprintf('LogPXIZ: %s\n',LK); fprintf('Classes: %s\n',num2str(K)); 
% disp(post); %disp(max(max(post))+log(400));
end
