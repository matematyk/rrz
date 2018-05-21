function main()
  duffing_oscillator2(a=1, b=0.1 ,A=1 ,
                      B=0.1 ,C=1 ,N = 100,
                      T = 20, x10 = 1, x20 = 0)
  %duffing_oscillator2(a=0.15, b=-1, A=1,
  %                    B=0.3, C=1, N = 100,
  %                    T = 100, x10 = 0, x20 = 0)
  N = 100;
  T = 100;
  t = linspace(0,T,N);
  
  a=0.15, b=-1, A=1, B=0.3, C=1;
  f1= @(t,x)(f(t,x,a,b,A,B,C));
  
  lsode(f1, [0,0], t);
  
  
endfunction