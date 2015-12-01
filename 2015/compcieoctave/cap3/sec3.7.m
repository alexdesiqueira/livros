%{
SEC3.7.M

Material de apoio do livro "Octave: Seus primeiros passos na programação
científica". Exemplos da seção 3.7, capítulo 3, "Operações com variáveis".

* Autor: Alexandre 'Jaguar' Fioravante de Siqueira
* Editora: Casa do Código
* Contato: http://www.programandociencia.com/sobre/
           http://www.casadocodigo.com.br/
* Fórum de discussão: http://groups.google.com/d/forum/compcieoctave
* Material de apoio: http://goo.gl/VnnAnF

* Para citar esse material, por favor utilize a referência abaixo:
DE SIQUEIRA, A.F. Octave: Seus primeiros passos na programação
científica. São Paulo: Casa do Código, 2015.

Este programa é um software livre; você pode redistribuí-lo e/ou 
modificá-lo dentro dos termos da Licença Pública Geral GNU como 
publicada pela Fundação do Software Livre (FSF); na versão 3 da 
Licença, ou qualquer versão posterior.

Este programa é distribuído na esperança de que possa ser útil, 
mas SEM NENHUMA GARANTIA; sem uma garantia implícita de ADEQUAÇÃO
a qualquer MERCADO ou APLICAÇÃO EM PARTICULAR. Veja a
Licença Pública Geral GNU para maiores detalhes.

Você deve ter recebido uma cópia da Licença Pública Geral GNU junto
com este programa. Se não, veja <http://www.gnu.org/licenses/>.
%}


%% Soma e subtração
% #1
vetA = [1 2 3 4];
vetB = [5 6 7 8];
vetA+vetB
vetA-vetB
matA = [1 2 3; 4 5 6; 7 8 9];
matB = [9 8 7; 6 5 4; 3 2 1];
matA+matB
matA-matB

% Nota 1
A = [0.5 3 1];
B = [2 9 pi 6];
C = [5 3; 4 0];
A+B
A-C


%% Multiplicação entre variáveis e por um elemento
% #1
A = [2 3 4; 1 5 2];
B = [1; 3; 5];
size(A)(2) == size(B)(1)

% Nota 2
vetA = [0.5 10 6];
vetB = [3 e 7 4];
vetA(2)
vetA(2) == vetB(2)
vetA(2) = vetB(2)
vetA(2)

% #2
A = [2 3 4; 1 5 2];
B = [1; 3; 5];
A*B
size(A)
size(B)
size(A*B)

% #3
a = 5;
b = 3i
> A = [6 2; 3 1];
> B = [sin(45); cos(45); tan(45)];
> C = [1 factorial(3); 0 exp(2)];
> a.*A
> b.*A
> b.*B
> a.*B
> b.*C

% Nota 3
A = [6 2; 3 1];
C = [1 factorial(3); 0 exp(2)];
isequal(A*C,C*A)
isequal(A.*C,C.*A)


%% Divisão por um elemento
% #1
a = sin(45)*i;
b = cos(45);
A = [5 0 2; 1 3 0];
B = [3 1 0; 9 3 1];
A./a
A./b
B./a
B./b
B./(a+b)
A./(a+b)

% #2
A = [5 0 2; 1 3 0];
B = [3 1 0; 9 3 1];
A./B
B./A

% #3
10^10
10^10^10
10^10^10^10

% #4
a = sin(45)*i;
b = cos(45);
A = [5 0 2; 1 3 0];
B = [3 1 0; 9 3 1];
a./A
b./A
(a+b)./A
(a+b)./B

% #5
0/0
0*Inf
Inf-Inf
Inf/Inf


%% Potenciação entre variáveis e por um elemento
% #1
a = cos(30)*i;
b = cos(60);
A = [1 2; 5 3; 2 1];
B = [5 4; 3 1; 1 0];
A.^2
A.^b
B.^4
B.^a

% #2
a = cos(30)*i;
b = cos(60);
A = [1 2; 5 3; 2 1];
B = [5 4; 3 1; 1 0];
a.^B
b.^A
A.^A
A.^B
B.^A


%% Transposição de vetores e matrizes
% #1
Areal = [1 2 3 4];
transpose(Areal)

% #2
Breal = [1 2 3; 4 5 6; 7 8 9];
Breal'

% #3
Acomplexo = [i 2i 3i 4i];
Acomplexo'

% #4
Areal = [1 2 3 4];
Aconjugado = conj(Areal)
Aconjugado'

% #5
Acomplexo = [i 2i 3i 4i];
Acomplexo.'

% #6
Areal = [1 2 3 4];
size(Areal)
size(Areal')
Acomplexo = [i 2i 3i 4i];
size(Acomplexo)
size(Acomplexo.')


%% Álgebra Linear no Octave
% #1
A = [1 2 3; 4 5 6; 7 8 9];
trace(A)
B = [1 2i 3; 4 5i 6; 7 8i 9];
trace(B)

% #2
A = [sin(30) sin(45) sin(90); cos(30) cos(45) cos(90); 
tan(30) tan(45) tan(90)]
det(A)
B = [sec(30) sec(45) sec(90); csc(30) csc(45) csc(90); 
cot(30) cot(45) cot(90)]
det(B)

% Nota 4
A = [1 2 3; 4 5 6]
det(A)  %% conduz a erro!

% #3
A = [1 0 3; -4 -3 0; 7 0 2];
inv(A)
A*inv(A)

% #4
B = [3 1 0; -4 -3 0; 7 2 0];
det(B)
inv(B)

% #5
B = [3 1 0; -4 -3 0; 7 2 0];
lambda1 = eig(B)
C = [1 0 3; -4 -3 0; 7 0 2];
lambda2 = eig(C)

% #6
A = [3 0 -1; 10 -2 0; 3 1 3];
[V1, lambda1] = eig(A)
B = [3 -4 6; 7 0 9; 1 1 -3];
[V2, lambda2] = eig(B)

% #7
A = [3 0 -1; 10 -2 0; 3 1 3];
[V1, lambda1] = eig(A);
B = [3 -4 6; 7 0 9; 1 1 -3];
[V2, lambda2] = eig(B);
V1*lambda1*inv(V1)
V2*lambda2*inv(V2)

% #8
A = [3 0 -1; 5 -2 0; 3 1 3];
B = [3 4 2; 1 0 5; 1 1 3];
X = A/B
X*B

% #9
A = [3 0 -1; -4 -2 0; 3 1 -3];
B = [3 4 2; -1 0 5; 1 1 -3];
X = A\B
A*X

% #10
A = [1 0 5 3; -4 0 1 -3; 3 1 2 4; 5 0 0 1];
b = [1; 3; -1; 0];
X = A\b
A*X
