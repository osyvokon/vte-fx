-- smooth blinking
freq = 0.1;
color = {0, 0.8, 0.3, 0.7};

function render (c, t, x, y, w, h)
    local k = (math.sin(t * freq) + 1) / 2;

    c:set_color(color[1]*k, color[2]*k, color[3]*k, color[4])
    c:rectangle(x, y, w, h)
    c:fill()

    return 60;
end
