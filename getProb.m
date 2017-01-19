function[P]=getProb(X,Z,i,D,K,j,n,sigmaX,sigmaA,mode)
    LKH=getLKH(X,Z,D,K,n,sigmaX,sigmaA);
    if mode==1
        P=LKH + log(PZZ(Z,j,i,n));
    else
        P=LKH + log(1-PZZ(Z,j,i,n));
    end
end