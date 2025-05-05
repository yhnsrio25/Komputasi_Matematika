function [x, galat] = PosisiPalsu(f, X, N, tol)

if nargin < 4, tol = 1e-3; end
if nargin < 3, N = 100; end

a = X(1);
b = X(2);
fa = f(a);
fb = f(b);

if fa * fb > 0
    error('Fungsi tidak berubah tanda di interval. Pilih interval lain')
end

x = a; %inisialisasi
galat = 1;
n = 1;

while n <= N && galat > tol
    xold = x;
    x = b - fb * (b-a) / (fb - fa); % rumus posisi palsu
    fx = f(x);
    
    if fa * fx < 0
        b = x;
        fb = fx;
    elseif fx * fb < 0
        a = x;
        fa = fx;
    else 
        galat = 0;
        break;
    end
    
    galat = abs((x - xold)/x) * 100;
    n = n + 1;
end
end
