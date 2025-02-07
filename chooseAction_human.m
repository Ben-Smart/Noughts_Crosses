function action = chooseAction_human(board, positions)
    Action = true;
        while Action == true
            row = round(input("Input your action row:"));
            col = round(input("Input your action col:"));
            action = [row,col];
%             positions = availablePositions(board);
%             space = positions(:,[2 3]);
%             space = find(space==action);
            if  board.board(action(1),action(2)) == 0
                Action = false;
            end
        end

%     % append a hash state
%     self = addState(self, state);
% 
%     % at the end of game, backpropagate and update states value
%     [self, reward] = feedReward(self, reward);
% 
%      self = reset_state(self);
