%{
SEC6.1.M

Material de apoio do livro "Computação científica com GNU Octave".
Exemplos da seção 6.1, capítulo 6, "Operadores e estruturas para 
controle de fluxo".

* Autor: Alexandre 'Jaguar' Fioravante de Siqueira
* Editora: Casa do Código
* Contato: http://www.programandociencia.com/sobre/
           http://www.casadocodigo.com.br/
* Fórum de discussão: http://groups.google.com/d/forum/compcieoctave
* Material de apoio: http://goo.gl/VnnAnF

* Para citar esse material, por favor utilize a referência abaixo:
SIQUEIRA, A.F. Computação científica com GNU Octave. São Paulo: 
Casa do Código, 2015. xxx p.

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


%% Operadores de comparação
% #1
igu = 4;
igu == 3
igu == 2*2

% #2
dif = 6;
dif != 3*2
dif ~= igu

% #3
meq = 3;
meq < dif
igu < meq

% #4
mei = 5;
mei <= dif
dif - meq
mei <= (dif - meq)

% #5
maq = 2;
maq > igu
3*maq > igu
(maq + dif) > 2*mei
(maq + dif) > (igu + meq)

% #6
mai = 7;
mai >= (meq + igu)
(mai - igu) >= dif
sqrt(mei) >= (mai - mei)

% Nota 1
varsin = 2*sin(2*pi/3)
varcos = 2*cos(2*pi/3)
varsin == varcos
varsin = varcos


%% Operadores lógicos
% #1
(3 >= 2) && (4 <= 6)
var_fac = factorial(3);
var_exp = 3^2;
(var_exp != var_fac) && (var_exp == 3 + var_fac)
(3 > var_fac) && (var_exp <= var_fac)

% #2
(1 == 2) || (9 > 7)
(10 < 3) || (2 == 2)
(3 > var_fac) || (var_exp <= 5)

% #3
xor(1 == 2, 9 > 7)
xor(10 > 2, 5 > 3)
var_sin = sin(0);
var_cos = cos(0);
xor(var_sin == 0, var_cos > 1)

% #4
!(1 == 2)
~(3*exp(2) < 10)
not((var_exp != var_fac) && (var_exp == 3 + var_fac))

% Nota 2
A = [1 4 7];
B = [2 4 8];
A == B
A != B
not(A != B)
A < B

C = [1 2 2 1];
A == C  %% conduz a erro!
