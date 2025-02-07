    clear;
    clc;

    %% create the board 
BOARD_ROWS = 3;
BOARD_COLS = 3;

    p1 = 'p1';
    player1 = [];
    p2 = 'p2';
    player2 = [];

    board = init_board(p1,p2,BOARD_ROWS, BOARD_COLS);
    board.isEnd = false;

    %% choose the players

    player1_computer = true;
    player2_computer = false;

    %  player1, human or computer?

    if player1_computer == true
        player1 = init_player(player1, p1,0);
        load("policy_p1")
        player1.states_value = policy_p1;
    else
        player1 = init_HumanPlayer(player1, 'human');
    end



    %   player2, human or computer?

    if player2_computer == true
        player2 = init_player(player2, p1,0);
        load("policy_p2")
        player2.states_value = policy_p2;
    else
        player2 = init_HumanPlayer(player2, 'human');
    end

   %% Play the game

    board = play2(board,player1,player2);



