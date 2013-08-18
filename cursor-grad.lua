-- moving gradient
function render (c, t, x, y, w, h)
    local k = (t % 100) / 100, k2;

    for j = 1, h do
        k2 = 1 - ((j + t) % h) / h;

        c:set_color(0.2, 0.2, 1, k2)
        c:rectangle(x, y + j, w, 2)
        c:fill()
    end
    return 80
end
