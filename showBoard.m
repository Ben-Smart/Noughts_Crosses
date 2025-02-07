

function showBoard(board)
        % p1: x  p2: o
%         clc
        for i = 1:board.rows
            disp('-------------')
            out = '| ';
            for j = 1:board.cols
                if board.board(i, j) == 1
                    token = 'x';
                elseif board.board(i, j) == -1
                    token = 'o';
                elseif board.board(i, j) == 0
                    token = ' ';
                end
            
                out = append(out,token,' | ');
            end
            disp(out)
        end
        disp('-------------')
end


%     def showBoard(self):
%         # p1: x  p2: o
%         for i in range(0, BOARD_ROWS):
%             print('-------------')
%             out = '| '
%             for j in range(0, BOARD_COLS):
%                 if self.board[i, j] == 1:
%                     token = 'x'
%                 if self.board[i, j] == -1:
%                     token = 'o'
%                 if self.board[i, j] == 0:
%                     token = ' '
%                 out += token + ' | '
%             print(out)
%         print('-------------')
