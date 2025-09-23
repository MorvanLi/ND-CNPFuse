function ML = SML(img)

img = img(:,:,1);
[X,Y] = size(img);
img = img(:);
N = X*Y;

pointsA1 = [1;(1:N-1)'];pointsA1((X+1:X:((Y-1)*X)+1)) = X+1:X:((Y-1)*X)+1;
pointsA2 = [(1:N)'];
pointsA3 = [(2:N)';N];pointsA3((X:X:((Y-1)*X))) = X:X:((Y-1)*X);

pointsD1 = [(1:X)';(1:N-X)'];
pointsD2 = [(1:N)'];
pointsD3 = [(1+X:N)';(N-X+1:N)'];

ML = abs(2*img(pointsA2)-img(pointsA1)-img(pointsA3))+abs(2*img(pointsD2)-img(pointsD1)-img(pointsD3));

ML = reshape(ML,[X,Y]); 

%%