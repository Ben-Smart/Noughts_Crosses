
%only when game ends
function [self,p1,p2] = giveReward(self,p1,p2)
        result = self.winner;
        %backpropagate reward
        if result == 1
            p1 = feedReward(p1,1);
            p2 = feedReward(p2,-1);
        elseif result == -1
            p1 = feedReward(p1,-1);
            p2 = feedReward(p2,1);
        else
            p1 = feedReward(p1,1);
            p2 = feedReward(p2,1);
        end
end


% # only when game ends
% def giveReward(self):
%         result = self.winner()
%         # backpropagate reward
%         if result == 1:
%             self.p1.feedReward(1)
%             self.p2.feedReward(0)
%         elif result == -1:
%             self.p1.feedReward(0)
%             self.p2.feedReward(1)
%         else:
%             self.p1.feedReward(0.1)
%             self.p2.feedReward(0.5)

