function [q]=getMove(x, throw, str, player)
    q = x + throw;

    if (player = 1) then
        printGraph(q, p0, c, s_player, s_ai, c_player);
    else
        printGraph(q, c0, p, s_ai, s_player, c_ai);
    end

    sf_snake = %f; sf_ladder = %f;

while (sf_snake = %f) and (sf_ladder = %f)
    for i = 1:sizesnake
        if (snake_head(1, i) == x) then
            printf("\t\tuh oh! snake at %i!\n\t\t %s moves to %i\n", x, str, snake_tail(1, i));
            if (player = 1) then
                p0 = q;
            else
                c0 = q;
            end
            q  = snake_tail(1, i);

            if (player = 1) then
                printGraph(q, p0, c, s_player, s_ai, c_player);
            else
                printGraph(q, c0, p, s_ai, s_player, c_ai);
            end

            sf_snake = %t;

            break;
        end
    end
    if (sf_snake = %f) then
        sf_snake  = %t;
    end

    for i = 1:sizeladder
        if (ladder_bottom(1,i) == x) then
           printf("\t\tyay! ladder at %i!\n\t\t%s moves to %i\n", x, str, ladder_top(1, i));
            if (player = 1) then
                p0 = q;
            else
                c0 = q;
            end
            q = ladder_top(1, i);

           if (player = 1) then
               printGraph(q, p0, c, s_player, s_ai, c_player);
           else
               printGraph(q, c0, p, s_ai, s_player, c_ai);
           end

           sf_ladder = %t;

           break;
        end
    end
    if (sf_ladder = %f) then
        sf_ladder  = %t;
    end
end // while

endfunction
