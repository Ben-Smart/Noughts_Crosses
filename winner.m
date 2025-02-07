
function self = winner(self)

        %not end
        self.isEnd = false;
        self.winner = [];
        % row
        for i = 1:self.rows
            if sum(self.board(i,:)) == 3
                self.isEnd = true;
                self.winner = 1;
            end
            if sum(self.board(i, :)) == -3
                self.isEnd = true;
                self.winner = -1;
            end
        end

        % col
        for i = 1:self.cols
            if sum(self.board(:, i)) == 3
                self.isEnd = true;
                self.winner = 1;
            end
            if sum(self.board(:, i)) == -3
                self.isEnd = true;
                self.winner = -1;
            end
        end

        % diagonal
        diag_sum1 = sum(diag(self.board));
        flip_board = flip(self.board);
        diag_sum2 = sum(diag(flip_board));
        diag_sum = max(abs(diag_sum1), abs(diag_sum2));
        if diag_sum == 3
            self.isEnd = true;
            if diag_sum1 == 3 || diag_sum2 == 3
               self.winner = 1;
            else
               self.winner = -1;
            end
        end

        % tie
        % no available positions
        available = availablePositions(self);

        if isempty(available) && isempty(self.winner)
            self.isEnd = true;
            self.winner = 0;
        end


% def winner(self):
%         # row
%         for i in range(BOARD_ROWS):
%             if sum(self.board[i, :]) == 3:
%                 self.isEnd = True
%                 return 1
%             if sum(self.board[i, :]) == -3:
%                 self.isEnd = True
%                 return -1
%         # col
%         for i in range(BOARD_COLS):
%             if sum(self.board[:, i]) == 3:
%                 self.isEnd = True
%                 return 1
%             if sum(self.board[:, i]) == -3:
%                 self.isEnd = True
%                 return -1
%         # diagonal
%         diag_sum1 = sum([self.board[i, i] for i in range(BOARD_COLS)])
%         diag_sum2 = sum([self.board[i, BOARD_COLS - i - 1] for i in range(BOARD_COLS)])
%         diag_sum = max(abs(diag_sum1), abs(diag_sum2))
%         if diag_sum == 3:
%             self.isEnd = True
%             if diag_sum1 == 3 or diag_sum2 == 3:
%                 return 1
%             else:
%                 return -1
% 
%         # tie
%         # no available positions
%         if len(self.availablePositions()) == 0:
%             self.isEnd = True
%             return 0
%         # not end
%         self.isEnd = False
%         return None

