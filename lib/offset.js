var offset = function (el) {
    var x,
        y;
    
    do {
        x += el.offsetLeft;
        y += el.offsetTop;
        el = el.offsetParent;
    } while (el);
    
    return {
        x: x,
        y: y
    }
};
