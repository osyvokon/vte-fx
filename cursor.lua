-- smooth blinking
function render (Canvas, t, x, y, w, h)
    local stage = (t % 200);
    local k = (t % 100) / 100;
    local r, g, b
    local c = Canvas

    if stage < 100 then
        r = 0
        g = 0.8 - k* k ;
        b = 0
    else
        r = 0
        g = k * k - 0.8;
        b = 0
    end

    c:set_color(1, 1, 1, 0)
    c:rectangle(x, y, w, h)
    c:fill()

    c:set_color(0, 0.8, 0.3, g)
    c:rectangle(x, y, w, h)
    c:fill()

    return 20
end
