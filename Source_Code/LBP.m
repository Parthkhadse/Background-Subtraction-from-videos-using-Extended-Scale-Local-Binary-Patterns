clear all;
clc;

I=imread("coins.png");
[w h]=size(I);

I2=zeros(w,h,'uint8');

for i=2:w-1
    for j=2:h-1
        k=0;
        c=I(i,j);
        if(I(i-1,j-1)>c)
            k=k+1;
        end
        if(I(i-1,j)>c)
            k=k+2;
        end
        if(I(i-1,j+1)>c)
            k=k+4;
        end
        if(I(i,j+1)>c)
            k=k+8;
        end
        if(I(i+1,j+1)>c)
            k=k+16;
        end
        if(I(i+1,j)>c)
            k=k+32;
        end
        if(I(i+1,j-1)>c)
            k=k+64;
        end
        if(I(i,j-1)>c)
            k=k+128;
        end
        I2(i,j)=k;

    end
end

subplot(2,1,1);
imshow(I);
subplot(2,1,2);
imshow(I2);