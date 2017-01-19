function[newL,newCol]=RandomCol(i,alpha,n,X,Z,D,K,sigmaX,sigmaA)
    extra=zeros(n,1);extra(i)=1;
    TestZ=Z;lognum0=getLKH(X,TestZ,D,K,n,sigmaX,sigmaA);
    TestZ=[Z,extra];lognum1=getLKH(X,TestZ,D,K+1,n,sigmaX,sigmaA);
    %TestZ=[Z,extra,extra];lognum2=getLKH(X,TestZ,D,K+2,n,sigmaX,sigmaA);
    %TestZ=[Z,extra,extra,extra];lognum3=getLKH(X,TestZ,D,K+3,n,sigmaX,sigmaA);
    %TestZ=[Z,extra,extra,extra,extra];lognum4=getLKH(X,TestZ,D,K+4,n,sigmaX,sigmaA);
    
    choice=[lognum0+poisspdf(0,alpha/n),lognum1+poisspdf(1,alpha/n)];opr=exp(lognum1+poisspdf(1,alpha/n)-lognum0-poisspdf(0,alpha/n)); prob1=opr/(opr+1); newL=randsrc(1,1,[0,1;1-prob1,prob1]); 
    %choice=[lognum0+poisspdf(0,alpha/n),lognum1+poisspdf(1,alpha/n),lognum2+poisspdf(2,alpha/n),lognum3+poisspdf(3,alpha/n),lognum4+poisspdf(4,alpha/n)];
    %[v,ind]=max(choice);
    %newL=ind-1;
    newCol=ones(1,newL);
end
