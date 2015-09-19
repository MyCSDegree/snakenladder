function [] = printInit()
    for i = 1:1:9
        x = [i i];
        y = [0 10];
        plot(x,y);
    end

    for i = 1:1:10
        y = [i i];
        x = [0 10];
        plot(x,y);
    end

//    for i = 1:sizesnake
//        [x0 y0] = getCord(snake_head(1, i));
//        [x1 y1] = getCord(snake_tail(1, i));
//
//        x = linspace(x0, x1, 100);
//        y = linspace(y0, y1, 100);
//
//        comet(x, y, "colors", 1);
//    end

    printGraph(p, p, c, s_player, s_ai    , c_player);
    printGraph(c, c, p, s_ai    , s_player, c_ai    );
endfunction
