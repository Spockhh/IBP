function[cur]=logLike(PXIZ,Z,N,newcol,alpha,K)
    first=0; HN=0;third=0;
    for i=1:K
        mk=sum(Z(:,i));
        %cur=cur+log((alpha/K*gamma(mk+alpha/K)*gamma(N-mk+1))/gamma(N+1+alpha/K));
        third=third+log(factorial(N-mk))+log(factorial(mk-1))-log(factorial(N));
    end
    for i=1:N
        HN=HN+1/i;
        first=first+log(factorial(newcol(i)));
    end
    cur=log(alpha^K)-first-alpha*HN+third++PXIZ;
end