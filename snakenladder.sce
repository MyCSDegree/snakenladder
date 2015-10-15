
// change to current folder
base_dir = get_absolute_file_path('snakenladder.sce');
cd(base_dir);

// import files
exec('initConfig.sci');
exec('initSnake.sci');
exec('initLadder.sci');
exec('getThrow.sci');
exec('getMove.sci');
exec('getCord.sci');
exec('printGraph.sci');
exec('printInit.sci');
exec('verInfo.sci');

moves = 0;
printInit();

while (p < 100) & (c < 100)

    // increment moves
    moves = moves + 1;
    printf("move %i:\n", moves);

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
