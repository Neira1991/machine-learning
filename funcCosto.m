function cost = funcCosto(X,y, theta, m)

    cost = 1/(2 * m) * sum(( (X * theta) - y ).^2)

endfunction