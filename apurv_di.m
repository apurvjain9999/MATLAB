c=linspace(0,2*pi,500);
subplot(3,1,1);

y= sin(c)+1;
plot(c,y);
subplot(3,1,2);
stem(c,y);
z=round(y);


i=1;

while i<=292
    m(i,:)=flip(dec2bin(z(i),4));
  i=i+1;
end
m
i=459;
while i<=500
    n(i,:)=flip(dec2bin(z(i),4));
    i=i+1;
end
n
r= m(1,1);
i=1;
j=2;
while i<=292
    while j<=4
        l=strcat(r,m(i,j));
        r=l;
        j=j+1;
    end
    i=i+1;
    j=1;
end

i=459;
r=n(1,1);
while i<=500
    while j<=4
        k=strcat(r,n(i,j));
        r=k;
        j=j+1;
    end
    i=i+1;
    j=1;
end
g=strcat(l,k);
g
subplot(3,1,3);
t=1:0.0001:1-0.0001
for i=1:length(g)
    if c(i)==1
        e=sin(2*pi*t);
        plot(e);
        t=t+1;
    else
        c(i)==0
        f=zeros(1,length(t));
        plot(f);
        t=t+1;
    end
end
        
        
        
 

 
