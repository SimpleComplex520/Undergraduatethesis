%m=zeros(size(data3,1),1);
m=zeros(4160,1);
m2=zeros(size(data3,1),1);
spin_row=129;
%for i=1:size(data3,1)  
   % step=0;
    count=0;
    step=0;
    for j=1:size(data3,2)
        if(mod(j,spin_row))
            step=step+1;
        end
        if(mod(step,2)~=0 || j>64*spin_row)
            %if(i==1 && j<=spin_row*2)
            %if(j<=spin_row*2)
            %   disp(j)
            %end
            count=count+1;
            m(count)=coeff4(j,1);
        end 
    end
    %2*count-size(data3,2);
%end