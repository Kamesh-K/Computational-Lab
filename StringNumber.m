clc
s='Enter the number to convert to text - ';
x=input(s);
text=fileread()
% For Numbers less than 100 
if x < 21
switch x
    case 1 
        fprintf('One\n')
    case 2 
        fprintf('Two\n')
    case 3 
        fprintf('Three\n')
    case 4
        fprintf('Four\n')
    case 5
        fprintf('Five\n')
    case 6 
        fprintf('Six\n')
    case 7 
        fprintf('Seven\n')
    case 8 
        fprintf('Eight\n')
    case 9
        fprintf('Nine\n')
    case 10
        fprintf('Ten\n')
    case 11
        fprintf('Eleven\n')
    case 12
        fprintf('Twelve\n')
    case 13
        fprintf('Thirteen\n')
    case 14
        fprintf('Fourteen\n')
    case 15
        fprintf('Fifteen\n')
    case 16
        fprintf('Sixteen\n')
    case 17
        fprintf('Seventeen\n')
    case 18
        fprintf('Eighteen\n')
    case 19
        fprintf('Nineteen\n')
    case 20
        fprintf('Twenty\n')
end
elseif x<30
      fprintf('Twenty ')
      y=rem(x,10);
      switch(y)
      case 1 
        fprintf('One\n')
    case 2 
        fprintf('Two\n')
    case 3 
        fprintf('Three\n')
    case 4
        fprintf('Four\n')
    case 5
        fprintf('Five\n')
    case 6 
        fprintf('Six\n')
    case 7 
        fprintf('Seven\n')
    case 8 
        fprintf('Eight\n')
    case 9
        fprintf('Nine\n')
      end
elseif x<40
      fprintf('Forty ')
      y=rem(x,10);
      switch(y)
      case 1 
        fprintf('One\n')
    case 2 
        fprintf('Two\n')
    case 3 
        fprintf('Three\n')
    case 4
        fprintf('Four\n')
    case 5
        fprintf('Five\n')
    case 6 
        fprintf('Six\n')
    case 7 
        fprintf('Seven\n')
    case 8 
        fprintf('Eight\n')
    case 9
        fprintf('Nine\n')
      end
elseif x<50
      fprintf('Forty ')
      y=rem(x,10);
      switch(y)
      case 1 
        fprintf('One\n')
    case 2 
        fprintf('Two\n')
    case 3 
        fprintf('Three\n')
    case 4
        fprintf('Four\n')
    case 5
        fprintf('Five\n')
    case 6 
        fprintf('Six\n')
    case 7 
        fprintf('Seven\n')
    case 8 
        fprintf('Eight\n')
    case 9
        fprintf('Nine\n')
      end
 elseif x<60
      fprintf('Fifty ')
      y=rem(x,10);
      switch(y)
      case 1 
        fprintf('One\n')
    case 2 
        fprintf('Two\n')
    case 3 
        fprintf('Three\n')
    case 4
        fprintf('Four\n')
    case 5
        fprintf('Five\n')
    case 6 
        fprintf('Six\n')
    case 7 
        fprintf('Seven\n')
    case 8 
        fprintf('Eight\n')
    case 9
        fprintf('Nine\n')
      end
 elseif x<70
      fprintf('Sixty ')
      y=rem(x,10);
      switch(y)
      case 1 
        fprintf('One\n')
    case 2 
        fprintf('Two\n')
    case 3 
        fprintf('Three\n')
    case 4
        fprintf('Four\n')
    case 5
        fprintf('Five\n')
    case 6 
        fprintf('Six\n')
    case 7 
        fprintf('Seven\n')
    case 8 
        fprintf('Eight\n')
    case 9
        fprintf('Nine\n')
      end
  elseif x<80
      fprintf('Seventy ')
      y=rem(x,10);
      switch(y)
      case 1 
        fprintf('One\n')
    case 2 
        fprintf('Two\n')
    case 3 
        fprintf('Three\n')
    case 4
        fprintf('Four\n')
    case 5
        fprintf('Five\n')
    case 6 
        fprintf('Six\n')
    case 7 
        fprintf('Seven\n')
    case 8 
        fprintf('Eight\n')
    case 9
        fprintf('Nine\n')
      end
elseif x<90
      fprintf('Eighty ')
      y=rem(x,10);
      switch(y)
      case 1 
        fprintf('One\n')
    case 2 
        fprintf('Two\n')
    case 3 
        fprintf('Three\n')
    case 4
        fprintf('Four\n')
    case 5
        fprintf('Five\n')
    case 6 
        fprintf('Six\n')
    case 7 
        fprintf('Seven\n')
    case 8 
        fprintf('Eight\n')
    case 9
        fprintf('Nine\n')
      end
 elseif x<100
      fprintf('Ninety ')
      y=rem(x,10);
      switch(y)
      case 1 
        fprintf('One\n')
    case 2 
        fprintf('Two\n')
    case 3 
        fprintf('Three\n')
    case 4
        fprintf('Four\n')
    case 5
        fprintf('Five\n')
    case 6 
        fprintf('Six\n')
    case 7 
        fprintf('Seven\n')
    case 8 
        fprintf('Eight\n')
    case 9
        fprintf('Nine\n')
      end

end

