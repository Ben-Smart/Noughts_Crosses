
    %% play with human
function board = play2(board,player1,player2)
        while board.isEnd == false
            % Player 1
            [positions,location] = availablePositions(board);
            %p1_action = self.p1.chooseAction(positions, self.board, self.playerSymbol)
            if strcmp(player1.name, 'human')
             p1_action = chooseAction_human(board, location);
            else
            p1_action = chooseAction(player1,board,positions,location);
            end
            % take action and upate board state
            board = updateState(board,p1_action);
%             board_hash = getHash(board);
%             player1 = addState(player1,board_hash);
            showBoard(board);
            % check board status if it is end
            board = winner(board);
            win = board.winner;
            if ~isempty(win)
%                 [board,player1,~] = giveReward(board,player1,player2);
                if win == 1
                    disp(append(player1.name, " wins!"))
                else
                    disp("tie!")
                end
                   
                board = Reset_board(board);
                break

            else
                % Player 2

                positions = availablePositions(board);
            %p2_action = self.p2.chooseAction(positions, self.board, self.playerSymbol)
            if strcmp(player2.name, 'human')
             p2_action = chooseAction_human(board, positions);
            else
            p2_action = chooseAction(player2,board, positions,location);
            end
            % take action and upate board state
            board = updateState(board,p2_action);
%             board_hash = getHash(board);
%             player2 = addState(player2,board_hash);
            showBoard(board);
            % check board status if it is end
            board = winner(board);
            win = board.winner;
                if ~isempty(win)
                    %[board,player1,player2] = giveReward(board,player1,player2);
                    if win == -1
                        disp(append(player2.name, " wins!"))
                    else
                        disp("tie!")
                    end
                    board = Reset_board(board);
                    break
                end
            end
        end
%         policy_p1 = player1.states_value;
%         save('policy_p1','policy_p1')
end


%     % play with human
%     def play2(self):
%         while not self.isEnd:
%             % Player 1
%             positions = self.availablePositions()
%             %p1_action = self.p1.chooseAction(positions, self.board, self.playerSymbol)
%             p1_action = self.p1.chooseAction(positions)
%             % take action and upate board state
%             self.updateState(p1_action)
%             self.showBoard()
%             % check board status if it is end
%             win = self.winner()
%             if win is not None:
%                 if win == 1:
%                     print(self.p1.name, "wins!")
%                 else:
%                     print("tie!")
%                 self.reset()
%                 break
% 
%             else:
%                 % Player 2
%                 positions = self.availablePositions()
%                 %p2_action = self.p2.chooseAction(positions)
%                 p2_action = self.p2.chooseAction(positions, self.board, self.playerSymbol)
% 
%                 self.updateState(p2_action)
%                 self.showBoard()
%                 win = self.winner()
%                 if win is not None:
%                     if win == -1:
%                         print(self.p2.name, "wins!")
%                     else:
%                         print("tie!")
%                     self.reset()
%                     break

                    