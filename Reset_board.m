    % board reset
function self = Reset_board(self)
        self.board = zeros(self.rows,self.cols);
        self.boardHash = [];
        self.isEnd = false;
        self.playerSymbol = 1;
end