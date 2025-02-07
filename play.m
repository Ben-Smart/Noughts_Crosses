

function board = play(board,p1,p2,n_games)
% rounds = 100;
        for i = 1:n_games %1:rounds
            if mod(i-1,1000) == 0
                disp(['Rounds ' num2str(i)]) ;
            end
            while board.isEnd == false
                % Player 1
                [positions,location] = availablePositions(board);
%                 if ~isempty(positions)
                p1_action = chooseAction(p1,board,positions,location);
                % take action and upate board state
                board = updateState(board,p1_action);
                board_hash = getHash(board);
                p1 = addState(p1,board_hash);
                % check board status if it is end
%                 end

                board = winner(board);
                win = board.winner;
                if ~isempty(win)
                    % self.showBoard()
                    % ended with p1 either win or draw
                    [board,p1,p2] = giveReward(board,p1,p2);
                    p1 = reset_state(p1);
                    p2 = reset_state(p2);
%                     board = Reset_board(board);

                else
                    % Player 2

                [positions,location]= availablePositions(board);
%                 if ~isempty(positions)
                p2_action = chooseAction(p2,board,positions,location);
                % take action and upate board state
                board = updateState(board,p2_action);
                board_hash = getHash(board);
                p2 = addState(p2,board_hash);
                % check board status if it is end
%                 end

                    board = winner(board);
                    win = board.winner;
                    if ~isempty(win)
                        % self.showBoard()
                        % ended with p1 either win or draw
                        board = giveReward(board,p1,p2);
                        p1 = reset_state(p1);
                        p2 = reset_state(p2);
%                         board = Reset_board(board);
                    end
                end
            end
                            board = Reset_board(board);
        end
        policy_p1 = p1.states_value;
        policy_p2 = p2.states_value;
        save('policy_p1','policy_p1')
        save('policy_p2','policy_p2')
end




%  def play(self, rounds=100):
%         for i in range(rounds):
%             if i % 1000 == 0:
%                 print("Rounds {}".format(i))
%             while not self.isEnd:
%                 % Player 1
%                 positions = self.availablePositions()
%                 p1_action = self.p1.chooseAction(positions, self.board, self.playerSymbol)
%                 % take action and upate board state
%                 self.updateState(p1_action)
%                 board_hash = self.getHash()
%                 self.p1.addState(board_hash)
%                 % check board status if it is end
% 
%                 win = self.winner()
%                 if win is not None:
%                     % self.showBoard()
%                     % ended with p1 either win or draw
%                     self.giveReward()
%                     self.p1.reset()
%                     self.p2.reset()
%                     self.reset()
%                     break
% 
%                 else:
%                     % Player 2
%                     positions = self.availablePositions()
%                     p2_action = self.p2.chooseAction(positions, self.board, self.playerSymbol)
%                     self.updateState(p2_action)
%                     board_hash = self.getHash()
%                     self.p2.addState(board_hash)
% 
%                     win = self.winner()
%                     if win is not None:
%                         % self.showBoard()
%                         % ended with p2 either win or draw
%                         self.giveReward()
%                         self.p1.reset()
%                         self.p2.reset()
%                         self.reset()
%                         break