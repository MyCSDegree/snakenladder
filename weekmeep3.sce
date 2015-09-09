clf;
clc;

p = 0;
c = 0;

sizesnake = 10;
sizeladder = 4;

cd("/home/thewisenerd/works/code/scilab/snakenladder/");
exec('initSnake.sci');
exec('initLadder.sci');
exec('getThrow.sci');
exec('printGraph.sci');

function [q]=getMove(x, throw, str)
    q = x + throw;
    for i = 1:sizesnake
        if (snake_head(1, i) == x) then
            //safe = 0;
            printf("\t\tuh oh! snake at %i!\n\t\t %s moves to %i\n", x, str, snake_tail(1, i));
            q = snake_tail(1, i);
        end
    end
    for i = 1:sizeladder
        if (ladder_bottom(1,i) == x) then
           printf("\t\tyay! ladder at %i!\n\t\t%s moves to %i\n", x, str, ladder_top(1, i));
           q = ladder_top(1, i);
        end
    end
endfunction

function [] = printInit()
    x0 = 0:100;
    y0 = zeros(1, 100);
    for qq = 0:100

    end
    for i = 0:10:100
        plot(i);
    end
endfunction

moves = 0;
//printInit()
while (p < 100) & (c < 100)
    moves = moves + 1;
    printf("move %i:\n", moves);
    throw = getThrow();
    printf("\tplayer rolls %i, goes to %i\n", throw, p + throw);
    p = getMove(p, throw, 'player');
    printGraph(p, 'o');
    if (p > 100) then
        break;
    end
    throw = getThrow();
    printf("\tai rolls %i, goes to %i\n", throw, c + throw);
    c = getMove(c, throw, 'ai');
    printGraph(c, 'x');
    if (c > 100) then
        break;
    end
    printf("\tplayer at: %i\n", p);
    printf("\tai     at: %i\n", c);
end

if (p > 99) then
    disp("player wins!");
end

if (c > 99) then
    disp("computer wins!");
end
