%%%%% Sustainable Peace ODE Model RHS

%%%%% Author: Kate Pearce


%%%%% From causal loop diagram in Liebovitch et al. "Modeling the Dynamics of
%%%%% Sustainable Peace" Springer 2018



%%%%% 


  function dy = peace_ddt(t,y,m,b,s)


%%% m: degree of memory for system (neg mem stronger influence than pos) 
m_neg = m.mpos * m.gamma;

%%% b: self-reinforcement of peace factor (unknown values)
%%% s: nonzero strengths between factors 

%%%% system species
x1 = y(1);
x2 = y(2);
x3 = y(3);
x4 = y(4);
x5 = y(5);
x6 = y(6);


%
  dy = [-m.mpos*x1 + b.b1 + s.c15*tanh(x5);
        -m_neg*x2 + b.b2 + s.c26*tanh(x6);
        -m.mpos*x3 + b.b3 + s.c31*tanh(x1) + s.c35*tanh(x5); 
        -m_neg*x4 + b.b4 + s.c42*tanh(x2) + s.c46*tanh(x6);
        -m.mpos*x5 + b.b5 + s.c51*tanh(x1) + s.c53*tanh(x3) + s.c56*tanh(x6);
        -m_neg*x6 + b.b6 + s.c62*tanh(x2) + s.c64*tanh(x4) + s.c65*tanh(x5)];
  end




