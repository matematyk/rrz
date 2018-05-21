function dy = f(t,y,b,alpha,beta,amp,w)        
  x1 = y(1);   
  x2 = y(2);  
  dx1=x2;
  dx2=-b*x2-alpha*x1-beta*x1^3+amp*sin(w*t);	
  dy = [dx1; dx2];
endfunction