function tents = create_tents(Dati)
    x0 = Dati.domain(1);
    xN = Dati.domain(2);
    h = Dati.h;
    N = (xN-x0)/h;
    T = Dati.T;
    x = linspace(x0,xN,N);
    c = Dati.c;
    tents = [];
    nodes = C_nodes(x,T,c,N);
    l_nod = size(nodes,2);
    for i = 1:4:l_nod
        vertex = zeros(4,1);
        vertex(1) = i;
        vertex(2) = i+1;
        vertex(3) = i+2;
        vertex(4) = i+3;
        tents = [tents vertex];
    end
    
end