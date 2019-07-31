clc
clear all
n=20000
for(i=1:n)
    a(i)=0;
    b(i)=0;
end
for(x=1:n)
for(i=2:x/2)
        if rem(x,i)==0
        a(x)=a(x)+1;
        end
end
end
a(1)=1;
a(2)=2;
a(3)=2;
k=1;
for(i=4:n)
    if a(i)~=0
        b(k)=a(i)+2;
        k=k+1;
    end
end
i=1:k-1;
plot(i,b(1:k-1));
xlabel('Number')
