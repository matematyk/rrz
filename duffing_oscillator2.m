% 
% reqiure f.m
% Duffing Oscillator
%
function duffing_oscillator2(a,b,A,B,C,N,T, x10,x20)     
            t = linspace(0,T,N);
            y0 = [x10; x20];  
            
            f1= @(t,x)(f(t,x,a,b,A,B,C));
            
            
            [~,y] = ode45(f1,t,y0);
            %t(N);
            %todo te matrixy srednio wygladaja
            u = y0;            
            pomoc(1) = x10;
            pomoc2(1) = x20;
            
            for i=1:(N-1)
                u= RK42d(f1,u,t(i),t(i+1),N);
                pomoc(i+1) = u(1);
                pomoc2(i+1) = u(2);
            end
            
            
            x1=y(:,1); 
            x2=y(:,2);    
            length(pomoc2)
            length(t)
            subplot(3,3,1);
            plot(t,x1,'r');   %wyswietl zmienna
            
            subplot(3,3,2);
            plot(pomoc, pomoc2);      %wyswietl zmienna runge_kutta
            xlabel ('x1');
            ylabel ('x2');
            title('phase portrait of duffing oscillator');
            
            subplot(3,3,3);
            plot(x1,x2);      %wyswietl zmienna z ode45
            xlabel ('x1');
            ylabel ('x2');

            
endfunction