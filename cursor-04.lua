-- moving gradient
function render (c, t, x, y, w, h)
    local k = (t % 100) / 100, k2;

    for j = 1, h do
        k2 = 1 - ((j + t) % h) / h;

        shift1 = 0.1 * ((t % 100) / 10)
        shift2 = 0.1 * ((t % 1000) / 100)
        c:set_color(shift2, shift1, 1, k2)
        c:rectangle(x, y + j, w, 2)
        c:fill()
    end
    return 80
end
