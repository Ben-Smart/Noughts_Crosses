

function self = init_HumanPlayer(self, name)
        self.name = name;

end

     % class HumanPlayer:
%     def __init__(self, name):
%         self.name = name
% 
%     def chooseAction(self, positions):
%         while True:
%             row = int(input("Input your action row:"))
%             col = int(input("Input your action col:"))
%             action = (row, col)
%             if action in positions:
%                 return action
% 
%     # append a hash state
%     def addState(self, state):
%         pass
% 
%     # at the end of game, backpropagate and update states value
%     def feedReward(self, reward):
%         pass
% 
%     def reset(self):
%         pass