

function self = updateState(self, position)
    self.board(position(1),position(2)) = self.playerSymbol;
    % switch to another player
    if self.playerSymbol == 1
        self.playerSymbol = -1;
    else
        self.playerSymbol = 1;
    end
end

% def updateState(self, position):
%     self.board[position] = self.playerSymbol
%     # switch to another player
%     self.playerSymbol = -1 if self.playerSymbol == 1 else 1