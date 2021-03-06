function [] = printGraph(cord, prev_cord, opp_cord, str, str_op, _color)
    [x0, y0] = getCord(prev_cord);
    [x1, y1] = getCord(cord);

    [q1, r1] = getCord(opp_cord);

    x = linspace(x0, x1, lin_space);
    y = linspace(y0, y1, lin_space);
    comet(x,y,"colors", _color);

//    plot(x1, y1, str);
//    plot(q1, r1, str_op);

    if (sleeptime) then
        sleep(sleeptime)
    end
endfunction
