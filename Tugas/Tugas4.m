% GRAFI 2 DIMENSI

%Grafik Fungsi Sinusoidal Berwarna
x = linspace(0, 2*pi, 200);
y = sin(2*x) .* exp(-0.2*x);
plot(x, y, 'm-', 'LineWidth', 2);
xlabel('x'); ylabel('y');
title('y = sin(2x) * exp(-0.2x)');
grid on;

%Beberapa Fungsi dalam Satu Grafik
x = linspace(-2*pi, 2*pi, 300);
plot(x, sin(x), 'b-', x, cos(x), 'r--', x, sin(x).*cos(x), 'g:','LineWidth', 2);
legend('sin(x)', 'cos(x)', 'sin(x)*cos(x)');
xlabel('x'); ylabel('y');
title('Beberapa Fungsi Trigonometri');
grid on;

% %Scatter Plot dengan Warna Gradient
x = linspace(0, 4*pi, 100);
y = sin(x);
c = x;  % Warna berdasarkan nilai x
scatter(x, y, 50, c, 'filled');
colorbar;
xlabel('x'); ylabel('sin(x)');
title('Scatter Plot dengan Warna Berdasarkan Nilai x');
grid on;

%Kurva Bunga (Rose Curve)
theta = linspace(0, 2*pi, 1000);
r = cos(4*theta);
x = r .* cos(theta);
y = r .* sin(theta);
plot(x, y, 'm', 'LineWidth', 2);
title('Kurva Bunga (r = cos(4?))');
axis equal; grid on;

%Pola Spiral Sinusoidal
theta = linspace(0, 6*pi, 1500);
r = sin(3*theta).*exp(0.05*theta);
x = r .* cos(theta);
y = r .* sin(theta);
plot(x, y, 'c', 'LineWidth', 2);
title('Spiral Sinusoidal Eksponensial');
axis equal; grid on;

%Jaring Pola Poligon Dinamis
theta = linspace(0, 2*pi, 7);
hold on;
for r = 1:0.2:3
    x = r * cos(theta);
    y = r * sin(theta);
    plot(x, y, 'Color', [0 0.5 0.7]);
end
title('Jaring Poligon Simetris');
axis equal; grid on;

%Efek "Gelombang Air" Radial
[x, y] = meshgrid(linspace(-3, 3, 400));
r = sqrt(x.^2 + y.^2);
z = sin(10*r) ./ (r + eps);  
imagesc(z);
colormap(hot);
axis off equal;
title('Efek Gelombang Air Radial');
colorbar;


% GRAFIK 3 DIMENSI

% Grafik 3D dari fungsi z = sin(x) * cos(y)
[x, y] = meshgrid(-5:0.1:5, -5:0.1:5);
z = sin(x) .* cos(y);
figure
surf(x, y, z)
title('Grafik 3D dari z = sin(x) * cos(y)')
xlabel('X')
ylabel('Y')
zlabel('Z')
shading interp
colormap jet
colorbar

%Permukaan Gelombang
[x, y] = meshgrid(-5:0.1:5, -5:0.1:5);
z = sin(x) .* cos(y);
surf(x, y, z)
title('z = sin(x) * cos(y)')

%Paraboloid
[x, y] = meshgrid(-3:0.1:3, -3:0.1:3);
z = x.^2 + y.^2;
surf(x, y, z)
title('Paraboloid: z = x^2 + y^2')

%Saddle Surface
[x, y] = meshgrid(-3:0.1:3, -3:0.1:3);
z = x.^2 - y.^2;
surf(x, y, z)
title('Saddle Surface: z = x^2 - y^2')

%Fungsi Gaussian
[x, y] = meshgrid(-2:0.1:2, -2:0.1:2);
z = exp(-(x.^2 + y.^2));
surf(x, y, z)
title('Gaussian Surface: z = exp(-(x^2 + y^2))')

%Fungsi Spiral (Heliks 3D)
t = linspace(0, 10*pi, 1000);
r = linspace(0, 1, 1000);
x = r .* cos(t);
y = r .* sin(t);
z = t;
plot3(x, y, z)
title('3D Spiral (Heliks)')

%Sphere (Bola)
[x, y, z] = sphere(50);
surf(x, y, z)
axis equal
title('3D Sphere')

%Torus (Donat)
theta = linspace(0, 2*pi, 50);
phi = linspace(0, 2*pi, 50);
[theta, phi] = meshgrid(theta, phi);
R = 3; % radius luar
r = 1; % radius dalam
x = (R + r * cos(theta)) .* cos(phi);
y = (R + r * cos(theta)) .* sin(phi);
z = r * sin(theta);
surf(x, y, z)
axis equal
title('3D Torus')
