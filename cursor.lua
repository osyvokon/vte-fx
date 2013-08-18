function render (Canvas, t, x, y, w, h)
    local k = (t % 100) / 100;
    c = Canvas
    local r = 0
    local g = 1 - k * k;
    local b = 0
    print (c)
    c:set_color(1, 1, g, 0.5)
    c:rectangle(x, y, w, h)
    return 13
end
