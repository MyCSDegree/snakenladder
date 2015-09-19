function [x, y] = getCord(cord)
    if (cord > 99) then
        cord = 99;
    end
    x = modulo(cord, 10);
    y = floor(cord / 10) + 0.5;
    if (modulo(floor(y), 2) == 1) then
        x = 10 - x;
        x = x - 0.5;
    else
        x = x + 0.5;
    end
endfunction
