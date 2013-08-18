function render (Canvas, t, x, y, w, h)
    local k = (t % 100) / 100;
    c = Canvas
    local r = 0
    local g = 1 -  k * k;
    local b = 0
    c:set_color(0, 0.8, 0, g)
    c:rectangle(x, y, w, h)
    c:fill()
    return 30
end
