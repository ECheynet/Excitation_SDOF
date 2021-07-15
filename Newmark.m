function [x,dx,ddx] = Newmark(F,M,K,C,dt,x0,v0,varargin)

% options: default values
p = inputParser();
p.CaseSensitive = false;
p.addOptional('alpha',1/4);
p.addOptional('beta',1/2);
p.parse(varargin{:});

% shorthen the variables name
alpha = p.Results.alpha ;
beta = p.Results.beta;



% initial acceleration
a0 = M\(F(1)-C.*v0-K.*x0);

N = numel(F);
ddx  = [a0,zeros(1,N-1)];
dx  = [v0,zeros(1,N-1)];
x  = [x0,zeros(1,N-1)];

for ii=1:N-1,
    
    aDT2 = (alpha.*dt.^2);
    aDT = (alpha.*dt);
    
    A = (1./aDT2.*M+beta/aDT*C+K);
    B1 = F(ii+1)+M.*(1./aDT2*x(ii)+1./aDT*dx(ii)+(1/(2*alpha)-1)*ddx(ii));
    B2 = C.*(beta/aDT*x(ii)+(beta/alpha-1).*dx(ii));
    B3 = (beta/alpha-2)*dt/2*ddx(ii);

    x(ii+1) = A\(B1+B2+B3);
    ddx(ii+1)= 1/aDT2.*(x(ii+1)-x(ii))-1/aDT.*dx(ii)-(1/(2*alpha)-1).*ddx(ii);
    dx(ii+1)= dx(ii)+(1-beta).*dt*ddx(ii)+beta.*dt*ddx(ii+1);
    
end


end

