function X = formater(x)
    len = length(x);
    X = [];
    for i = 1:2:len
        X = [X; [x(i) x(i+1)]];
    end
end