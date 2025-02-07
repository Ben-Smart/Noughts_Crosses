
function [positions,location] = availablePositions(board)
        positions = {};
        location = [];
        k=0;
        for i =1:board.rows
            for j = 1:board.cols
                if board.board(i,j) == 0
                    temp_board = board.board;
                    temp_board(i,j) = board.playerSymbol;
                    k=k+1;
                    location = [location;[i,j]];
                    %positions = append(positions, num2str(i), num2str(j), ',');  % need to be tuple
                    positions = [positions; temp_board];  % need to be tuple
                end
            end
        end
end


% def availablePositions(self):
%         positions = []
%         for i in range(BOARD_ROWS):
%             for j in range(BOARD_COLS):
%                 if self.board[i, j] == 0:
%                     positions.append((i, j))  # need to be tuple
%         return positions


