function w = compute_advancing_front(J,Map,w_old,Nl,T,c,x)
index = Map(1:length(J));
N = length(w_old);
w = zeros(1,N);
        for j=1:length(J)
            jj = index(j);
            nl1 = Nl(1,jj);
            nl2 = Nl(2,jj);
            if nl1>-1 && nl2>-1
                w(jj) = min(T-w_old(jj),min(abs(x(jj)-nl1)/c + w_old(nl1)-w_old(jj),abs(x(jj)-nl2)/c + w_old(nl2)-w_old(jj)));
            elseif nl1 == -1
                w(jj) = min(T-w_old(jj),min(abs(x(jj)-nl2)/c + w_old(nl2)-w_old(jj)));
            elseif nl2 == -1
                w(jj)= min(T-w_old(jj),min(abs(x(jj)-nl1)/c + w_old(nl1)-w_old(jj)));
            end
        end
end