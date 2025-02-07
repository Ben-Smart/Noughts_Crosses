
function self = init_board(p1,p2,BOARD_ROWS, BOARD_COLS)

        self.board = zeros(BOARD_ROWS, BOARD_COLS);
        self.rows = BOARD_ROWS;
        self.cols = BOARD_COLS;
        self.p1 = p1;
        self.p2 = p2;
        self.isEnd = false;
        self.boardHash = [];
%         init p1 plays first
        self.playerSymbol = 1;
end


% def __init__(self, p1, p2):
%         self.board = np.zeros((BOARD_ROWS, BOARD_COLS))
%         self.p1 = p1
%         self.p2 = p2
%         self.isEnd = False
%         self.boardHash = None
% %         init p1 plays first
%         self.playerSymbol = 1