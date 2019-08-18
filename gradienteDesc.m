function thetaNew = gradienteDesc( theta, XcostFunc, y, alpha, m, iterations)
    for i = 1:iterations,
        % t1 = theta(1) - alpha * (1/ m) * sum((h - y).* XcostFunc(:, 1));
        % t2 = theta(2) - alpha * (1/ m) * sum((h - y) .* XcostFunc(:, 2));
        t1 = theta(1) - alpha * (1 / m) * sum(((XcostFunc * theta) - y) .* XcostFunc(:, 1));
        t2 = theta(2) - alpha * (1 / m) * sum(((XcostFunc * theta) - y) .* XcostFunc(:, 2));
        
        theta(1) = t1;
        theta(2) = t2;
    endfor
    thetaNew = theta
endfunction