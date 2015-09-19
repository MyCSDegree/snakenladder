function [q]=getMove(x, throw, str)
    q = x + throw;

    for i = 1:sizesnake
        if (snake_head(1, i) == x) then
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
