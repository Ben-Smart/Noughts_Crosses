

function board = play_train_human(board,p1,p2,n_games)
% rounds = 100;
        for i = 1:n_games %1:rounds
            if mod(i-1,5) == 0
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
                    [board,p1] = giveReward_human(board,p1);
                    p1 = reset_state(p1);
%                     p2 = reset_state(p2);
%                     board = Reset_board(board);

                else
                    % Player 2

                [positions,location]= availablePositions(board);
                showBoard(board);
%                 if ~isempty(positions)
                p2_action = chooseAction_human(board,positions);
                % take action and upate board state
                board = updateState(board,p2_action);
%                 board_hash = getHash(board);
%                 p2 = addState(p2,board_hash);
                % check board status if it is end
%                 end

                    board = winner(board);
                    win = board.winner;
                    if ~isempty(win)
                        % self.showBoard()
                        % ended with p1 either win or draw
                        board = giveReward_human(board,p1);
                        p1 = reset_state(p1);
%                         p2 = reset_state(p2);
%                         board = Reset_board(board);
                    end
                end
            end
                            board = Reset_board(board);
        end
        policy_p1 = p1.states_value;
%         policy_p2 = p2.states_value;
        save('policy_p1','policy_p1')
%         save('policy_p2','policy_p2')
end
