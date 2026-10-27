% Name: Shiloh R. Tolentino
% Section: 2ECE-A

%%Problem A: Transpose Operations

%Matrix R
R = [ 5 -2  0  7;
      1  3 -4  2;
      6  0  8 -1];

%Matrix Z
Z = [ 2+3i -1+4i 5-2i;
     -3+1i  6    2+5i];

disp('=== Matrix R Operations ===');
disp('transpose(R):');
disp(transpose(R));
disp('R'':');
disp(R');
disp('R.'':');
disp(R.');

disp('=== Matrix Z Operations ===');
disp('transpose(Z):');
disp(transpose(Z));
disp('Z'':');
disp(Z');
disp('Z.'':');
disp(Z.');

%QUESTIONS FOR PROBLEM A
%a. Which operations give identical results for the real matrix R?
%All three give identical results
%b. Which two operations give identical results for the complex matrix Z?
%transpose(Z) and Z.' give identical results for the complex matrix Z
%c. What additional operation is performed by the apostrophe operator (') when the matrix contains complex entries?
%The apostrophe operator computes the complex-conjugate transpose meaning it negates the imaginary parts of complex entries

%%Problem B: Two Methods for a Linear System

A = [ 2 -1  3  2;
      1  4 -2  1;
      3  2  1 -1;
     -2  3  4  2];

b = [16; -7; 6; 7];

%1. Inverse Method
x_inv = inv(A) * b;

%2. Cramer's Rule
n = size(A, 2);
det_A = det(A);
x_cramer = zeros(n, 1);

for i = 1:n
    A_temp = A;
    A_temp(:, i) = b;
    x_cramer(i) = det(A_temp) / det_A;
end

disp('=== Problem B Results ===');
disp('Determinant of Matrix A:');
disp(det_A);
disp('Solution vector (Inverse Method, x_inv):');
disp(x_inv);
disp('Solution vector (Cramer''s Rule, x_cramer):');
disp(x_cramer);
disp('Norm check 1: norm(x_inv - x_cramer)');
disp(norm(x_inv - x_cramer));
disp('Norm check 2: norm(A*x_inv - b)');
disp(norm(A * x_inv - b));
