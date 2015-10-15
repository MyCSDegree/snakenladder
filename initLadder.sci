global ladder_top
global ladder_bottom
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
end
