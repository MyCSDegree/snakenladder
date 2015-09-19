cd("/home/thewisenerd/works/code/scilab/snakenladder/");
exec('initConfig.sci');
exec('initSnake.sci');
exec('initLadder.sci');
exec('getThrow.sci');
exec('getMove.sci');
exec('printGraph.sci');
exec('printInit.sci');

moves = 0;
printInit();

while (p < 100) & (c < 100)

    // increment moves
    moves = moves + 1;
    printf("move %i:\n", moves);

    // dbg:
    // dbg: end

    // player turn
    throw = getThrow();
    printf("\tplayer rolls %i, goes to %i\n", throw, p + throw);
    p0 = p;
    p  = getMove(p, throw, 'player');
    printGraph(p, p0, c, s_player, s_ai, c_player);
    if (p > 99) then
        break;
    end
    printf("\tplayer at: %i\n", p);

    // ai turn
    throw = getThrow();
    printf("\tai rolls %i, goes to %i\n", throw, c + throw);
    c0 = c;
    c = getMove(c, throw, 'ai');
    printGraph(c, c0, p, s_ai, s_player, c_ai);
    if (c > 99) then
        break;
    end
    printf("\tai     at: %i\n", c);

end

if (p > 99) then
    printf("player wins!\n");
end

if (c > 99) then
    printf("computer wins!\n");
end
