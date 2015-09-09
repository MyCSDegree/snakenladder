clf;
clc;

p = 0;
c = 0;

sizesnake = 10;
sizeladder = 4;

canvas = zeros(1, 100);

snake_head = rand(1, sizesnake);
snake_head = snake_head .* (85) + 15;

snake_tail = zeros(1, sizesnake);

idx = 0;
for i = snake_head
    idx = idx + 1;
    snake_tail(1, idx) = rand() * (i - 10) + 5;
end

for i = 1:sizesnake
    snake_head(1, i) = round(snake_head(1, i));
    snake_tail(1, i) = round(snake_tail(1, i));
    //disp(snake_head(1, i));
    //disp(snake_tail(1, i));
    //disp('----');
end

ladder_top = rand(1, sizeladder);
ladder_top = ladder_top .* (85) + 15;

ladder_bottom = zeros(1, sizeladder);

idx = 0;
for i = ladder_top
    idx = idx + 1;
    ladder_bottom(1, idx) = rand() * (i - 10) + 5;
end

for i = 1:sizeladder
    ladder_top(1, i) = round(ladder_top(1, i));
    ladder_bottom(1, i) = round(ladder_bottom(1, i));
    //disp(ladder_top(1, i));
    //disp(ladder_bottom(1, i));
    //disp('----');
end

function [x]=getThrow()
    x = (rand() * 5) + 1;
    x = round(x);
endfunction

function [q]=getMove(x, throw, str)
    q = x + throw;
    //safe = 1;
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

function [] = printGraph(cord, str)
    x = modulo(cord, 10) + 0.5;
    if (cord > 100) then
        x = 0;
    end
    y = floor(cord / 10) + 0.5;
    if (y > 10) then
        y = 9.5;
    end
    plot(x, y, str);
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
