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
