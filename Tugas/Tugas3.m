% Metode Jacobi 
x = [0; 0; 0; 0]; 
x_baru = x;
max_iter = 100;
toleransi = 1e-6;

fprintf('Iterasi\t\tx1\t\tx2\t\tx3\t\tx4\n');

for iter = 1:max_iter
    x_baru(1) = (1/10)*(6 + x(2) - 2*x(3));
    x_baru(2) = (1/11)*(25 + x(1) + x(3) - 3*x(4));
    x_baru(3) = (1/10)*(-11 - 2*x(1) + x(2) + x(4));
    x_baru(4) = (1/8)*(15 - 3*x(2));

    fprintf('%d\t\t%.6f\t%.6f\t%.6f\t%.6f\n', iter, x_baru);
    
    if norm(x_baru - x, inf) < toleransi
        break;
    end

    x = x_baru;
end

disp('Solusi akhir:');
disp(x_baru);


% Metode Gauss Seidel
x = [0; 0; 0; 0];     
x_baru = x;           
toleransi = 1e-6;           
max_iter = 100;        

fprintf('Iterasi\tx1\t\tx2\t\tx3\t\tx4\n');
for iter = 1:max_iter
    x_baru(1) = (1/10)*(6 + x(2) - 2*x(3));
    x_baru(2) = (1/11)*(25 + x_baru(1) - 3*x(4));
    x_baru(3) = (1/10)*(-11 - 2*x_baru(1) + x_baru(2) + x(4));
    x_baru(4) = (1/8)*(15 - 3*x_baru(2) + x_baru(3));
    
    fprintf('%d\t\t%.6f\t%.6f\t%.6f\t%.6f\n', iter, x_baru(1), x_baru(2), x_baru(3), x_baru(4));
    
    if max(abs(x_baru - x)) < toleransi
        break;
    end
    
    x = x_baru;
end

disp('Solusi akhir:');
disp(x_baru);


% Metode Jumlahan Riemann
a = 0;
b = 1;
h = 0.1;

f = @(x) 2 * x.^3;

x_left = a:h:(b - h);          
x_right = (a + h):h:b;          
x_mid = (a + h/2):h:(b - h/2);  

f_left = f(x_left);
f_right = f(x_right);
f_mid = f(x_mid);

L_sum = h * sum(f_left);     
R_sum = h * sum(f_right);    
M_sum = h * sum(f_mid);     

syms x_sym
exact = double(int(2*x_sym^3, x_sym, a, b));

fprintf('Hasil Penjumlahan Riemann untuk y = 2x^3 di [0, 1]:\n');
fprintf('Left Riemann          = %.6f\n', L_sum);
fprintf('Right Riemann         = %.6f\n', R_sum);
fprintf('Midpoint Riemann      = %.6f\n', M_sum);
fprintf('Luas Eksak (Integral) = %.6f\n', exact);
fprintf('Error Midpoint        = %.6f\n', abs(M_sum - exact));


% Metode Aturan Trapesium
a = 0;
b = 1;
h = 0.1;

x = a:h:b;
f = @(x) 2 * x.^3;
fx = f(x);

n = length(x);
T = h * (0.5 * fx(1) + sum(fx(2:n-1)) + 0.5 * fx(n));

syms x_sym
exact = double(int(2 * x_sym^3, x_sym, a, b));
error = abs(T - exact);

fprintf('Metode Trapesium untuk y = 2x^3 di [0, 1]:\n');
fprintf('Luas Trapesium = %.6f\n', T);
fprintf('Luas Eksak     = %.6f\n', exact);
fprintf('Error          = %.6f\n', error);
