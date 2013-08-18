function render (c, t, x, y, w, h)
    local cycle = 20;
    local k
    local stage = t % (cycle * 2);

    for i = 2, w do
        for j = 1, h do
            if math.random() > 0.5 then
                c:set_color(0.8, 0.8, 0.8, 0.4)
            else
                c:set_color(0, 0, 0, 0.4)
            end

            c:circle(x + i, y + j, 1)
            c:fill()
        end
    end

    return 100
end
