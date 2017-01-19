function[lp]=getLKH(X,Z,D,K,n,sigmaX,sigmaA)
S=size(Z);
I=eye(S(1,2)); II=eye(n); 

%liklihood=(1/(((2*pi)^(n*D/2))*(sigmaX^((n-K)*D))*(sigmaA^(K*D))*det(Z'*Z+(sigmaX^2/sigmaA^2)*I)^(D/2)))*exp((-1/(2*sigmaX^2))*trace(X'*(II-Z*inv((Z'*Z)+(sigmaX^2/sigmaA^2)*I)*Z')*X));
%disp(exp((-1/(2*sigmaX^2))*trace(X'*(II-Z*inv((Z'*Z)+(sigmaX^2/sigmaA^2)*I)*Z')*X)));

M=inv(Z'*Z+(sigmaX^2/sigmaA^2)*eye(K));

lp=-0.5*n*D*log(2*pi);
lp=lp-(n-K)*D*log(sigmaX);
lp=lp-K*D*log(sigmaA);
lp=lp-0.5*D*log(det(inv(M)));
iminz=eye(n)-Z*(M*Z');
lp=lp-(0.5/sigmaX^2)*trace(X'*(iminz*X));
