
 % at the end of game, backpropagate and update states value
function player = feedReward(player, reward)
 reverse_states = flip(player.states,1);
        for step = 1:size(reverse_states,1)
            current_state = string(reverse_states(step));
            if ~isKey(player.states_value,current_state)
                player.states_value(current_state) = 0;
            end
            player.states_value(reverse_states(step)) = player.states_value(reverse_states(step)) + player.lr * (player.decay_gamma * reward - player.states_value(reverse_states(step)));
            reward = player.states_value(reverse_states(step));

            % need to save the states with the ascociated reward

%             player.state_value = [reverse_states;player.states_value]
        end
end


%  # at the end of game, backpropagate and update states value
%     def feedReward(self, reward):
%         for st in reversed(self.states):
%             if self.states_value.get(st) is None:
%                 self.states_value[st] = 0
%             self.states_value[st] += self.lr * (self.decay_gamma * reward - self.states_value[st])
%             reward = self.states_value[st]
