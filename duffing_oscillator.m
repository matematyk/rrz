function duffing_oscillator() 
            clear all
            amp=0.40;           	% control parameter 
            alpha=0.5;
            beta=-1.0;
            gamma=1;
            w=1;          
            tspan = 0:0.1:800;  	%time step and initial condition
            x10 = 0.5021; x20 = 0.17606;
            y0 = [x10; x20];  
            
            
            [~,y] = ode45(@(t,x) f(t,x,alpha,beta,gamma,amp,w),tspan,y0);
            
            
            
            x1=y(:,1);
            x2=y(:,2);    

            plot(x1,x2);        		%plot the variable x and y
            xlabel ('x1');
            ylabel ('x2');
            title('phase portrait of duffing oscillator');
endfunction

