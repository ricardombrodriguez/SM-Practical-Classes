function [x,t] = GeraSinal(N,Ta)
    
    t = (0:N-1)*Ta;

    rn1 = random('normal',0,pi,N,1);                                    %gera N valores seguindo a distribuição normal n(0,pi);
    rn2 = random('normal',0,pi,N,1);
    fn1 = zeros(1,N); fn2 = zeros(1,N);
    
    for k = 2 : N
        fn1(k-1) = ((rn1(k-1)+rn1(k))/2)*Ta;
        fn2(k-1) = ((rn2(k-1)+rn2(k))/2)*Ta;
    end
    
    r = 0.5*sin(20*pi*t + 10*fn1) + 0.5*sin(24*pi*t+10*fn2);            %gerar ruído
    x = sin(2*pi*t) + r;
    
    plot(t,x);
    grid;
    xlabel('t(s)');
    ylabel('x(t)');

end