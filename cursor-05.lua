-- old tv
function render (c, t, x, y, w, h)
    local cycle = 20;
    local k, r
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


    local shift = h * ((t % 50) / 50)
    c:set_color(1, 1, 1, 0.7)
    c:rectangle(x, y + shift, w + 2, 3)
    c:fill()

    local shift2 = h * ((t % 20) / 20)
    c:set_color(1, 1, 1, 0.4)
    c:rectangle(x, y + shift2, w , 2)
    c:fill()

    return 100
end
