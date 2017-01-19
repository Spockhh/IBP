function[out]=checkM(col,i)
    s=size(col); out=0;
    for j=1:s(1,1)
        if col(j)>0 && j~=i
            out=out+1;
        end
    end
end