function[out]=PZZ(Z,k,i,N)
s=size(Z);L=s(1,1);W=s(1,2);top=0;  
    for j=1:L
        if (Z(j,k)==1 && j~=i)
            top=top+1;
        end
    end
out=top/N;
end
