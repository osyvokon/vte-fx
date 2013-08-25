-- smoothly change all colors
freq = 1 / 15;
function render (c, t, x, y, w, h)
    c:set_color( math.sin(t * freq + 0) ,
                 math.sin(t * freq + 2) ,
                 math.sin(t * freq + 4) ,
                 0.8)
    c:rectangle(x, y, w, h)
    c:fill()

    return 100
end
