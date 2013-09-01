-- moving gradient
function render (c, t, x, y, w, h)
--    local rainbow = {
        --{1,  0,   0},
        --{1,  0.5, 0},
        --{1,  1,   0},
        --{1,  1,   0},
        --{0,  1,   0},
        --{0,  0,   1},
        --{0.33, 0, 0.5},
        --{0.5, 0,  1}}

    c:linear_grad(x, y, x, y+h);
    c:add_color_stop(0,
                     math.sin(t / 15 + 0) ,
                     math.sin(t / 15 + 2) ,
                     math.sin(t / 15 + 4) ,
                     0.8)
    --c:add_color_stop(0.5, c1[1], c1[2], c1[3], 0.8)
    c:add_color_stop(1,
                     math.sin(t / 15 + 0.2) ,
                     math.sin(t / 15 + 2.2) ,
                     math.sin(t / 15 + 4.2) ,
                     0.8)
    --c:add_color_stop(0.5, c1[1], c1[2], c1[3], 0.8)
    --c:add_color_stop(0, c2[1], c2[2], c2[3], 0.8)
    --c:add_color_stop(0.8 , math.sin(t / 10), math.sin(t / 50), 0, 0.5)
    c:rectangle(x, y, w, h)
    c:fill()

    return 100
end

