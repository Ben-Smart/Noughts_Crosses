

function action = chooseAction(player,board, positions,location)
        X = rand;
        spaces = size(positions,1);
        if X<= player.exp_rate
            % take random action
            idx = randsample(1:spaces,1);
            action = location(idx,:);
        else
            value_max = -999;
            Value = [];
            
            for p = 1:spaces
                next_board = positions{p};
%                 next_board(positions(p,[2,3])) = board.playerSymbol;
                board.board = next_board;
                next_boardHash = getHash(board);

                if ~isKey(player.states_value,next_boardHash)
%                     player.states_value(next_boardHash) = 0;
                     value = 0 ;
                else 
                   value = player.states_value(next_boardHash);
              
                    % disp("value ", value)
                    if value >= value_max
                        value_max = value;
                    end
%                 action = p;
                end
                    % print("{} takes action {}".format(self.name, action))
                    Value = [Value value];
            end
            [~, opti_index] = max(Value);
            action = location(opti_index,:);
            %action = positions(p,[2,3]);
        end
end


%  def chooseAction(self, positions, current_board, symbol):
%         if np.random.uniform(0, 1) <= self.exp_rate:
%             % take random action
%             idx = np.random.choice(len(positions))
%             action = positions[idx]
%         else:
%             value_max = -999
%             for p in positions:
%                 next_board = current_board.copy()
%                 next_board[p] = symbol
%                 next_boardHash = self.getHash(next_board)
%                 value = 0 if self.states_value.get(next_boardHash) is None else self.states_value.get(next_boardHash)
%                 % print("value", value)
%                 if value >= value_max:
%                     value_max = value
%                     action = p
%         % print("{} takes action {}".format(self.name, action))
%         return action