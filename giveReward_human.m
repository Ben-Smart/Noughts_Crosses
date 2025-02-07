function [self,p1] = giveReward_human(self,p1)
        result = self.winner;
        %backpropagate reward
        if result == 1
            p1 = feedReward(p1,100);
        elseif result == -1
            p1 = feedReward(p1,-100);
        else
            p1 = feedReward(p1,100);
        end
end