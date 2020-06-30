function convex
a=imread('EnhancedImage.png');
a=a(:,:,3);
o=a;
subplot(2,2,1)
imshow(o)
title('original image');
[r,c]=size(a);
c=[1 0 0;1 0 0;1 0 0 ] 
c1=[1 1 1;0 0 0;0 0 0 ];
c2=[0 0 1; 0 0 1;0 0 1];
c3=[0 0 0;0 0 0;1 1 1];
b=a;
for u=1:10
d=(imerode(b,c))|a;
if(b==d)
break;
end
b=d;
end
%-------------
m=a;
for u=1:10
n=(imerode(m,c1))|a;
if(m==n)
break;
end
m=n;
end
%-------------
p=a;
for u=1:10
l=(imerode(p,c2))|a;
if(p==l)
break;
end
p=l;
end
%-------------
z=a;
for u=1:10
v=(imerode(z,c3))|a;
if(z==v)
break;
end
z=v;
end
%-------------
H=z|p|m|b;
subplot(2,2,2)
imshow(H)
title('convex Hull of image');
