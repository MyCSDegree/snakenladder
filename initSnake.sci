global snake_head
global snake_tail
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
end
