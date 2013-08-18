function render (c, t, x, y, w, h)
    local cycle = 20;
    local k
    local stage = t % (cycle * 2);

    k = (t % cycle) / cycle

    if stage < cycle then
        k = k * k 
    else
        k = 1 - k * k
    end

    c:set_color(0.0, 0.3, k, 1)
    c:rectangle(x + 1, y, w, h)
    c:stroke()

    return 50
end
