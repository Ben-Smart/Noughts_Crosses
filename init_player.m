

function self = init_player(self, name,exp_rate)
%         exp_rate=0.3;
        self.name = name;
        self.states = {};  % record all positions taken
        self.lr = 0.2;
        self.exp_rate = exp_rate;
        self.decay_gamma = 0.9;
        self.states_value = dictionary(string.empty,double.empty);%{};%zeros(1,9);  % state -> value

end

% class Player:
%     def __init__(self, name, exp_rate=0.3):
%         self.name = name
%         self.states = []  # record all positions taken
%         self.lr = 0.2
%         self.exp_rate = exp_rate
%         self.decay_gamma = 0.9
%         self.states_value = {}  # state -> value