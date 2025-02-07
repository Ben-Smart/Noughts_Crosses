

function boardHash = getHash(self)
        boardHash = reshape(self.board,1,self.rows*self.cols);
        boardHash=num2str(boardHash);
        %boardHash = string(boardHash);
end




    % get unique hash of current board state
%     def getHash(self):
%         self.boardHash = str(self.board.reshape(BOARD_COLS * BOARD_ROWS))
%         return self.boardHash