%{
SEC2.4.M

Material de apoio do livro "Computação científica com GNU Octave".
Exemplos da seção 2.4, capítulo 2, "Primeiros passos".

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


%% Fatorial

% #1
factorial(10)
factorial(5)

% Nota 1
factorial(-2)


%% Potenciação e radiciação
% #1
power(2,4)

% #2
2^(-1)

% #3
sqrt(100)
nthroot(8,3)
power(2,3)
nthroot(250,5)


%% Funções complexas
% #1
3i
2 + 3i
4 + (1/2)i

% #2
real(2+3i)
imag(2+3i)
real(3i)

% #3
abs(4+i)
sqrt(real(4+i)^2 + imag(4+i)^2)

% #4
abs(2)
abs(-10)
abs(-3i)

% #5
angle(1)
conj(1)
angle(2+3i)
conj(2+3i)


%% Exponencial e logaritmo
% #1
e

% #2
1+1+(1/factorial(2))+(1/factorial(3))+(1/factorial(4))

% #3
exp(0)
e^0
exp(1/2)
e^(1/2)
exp(1)
e^1

% #4
log(10)
e^2.3026

% #5
log2(100)
log10(100)
log2(-1/2)
log10(-1/2)

% #6
log10(40)
10^1.6021
10^1.60206

% #7
output_precision

% #8
output_precision(8)
output_precision

% #9
log10(40)
10^ans

% #10
output_precision(5)
e
pi
log(exp(pi))
sqrt(2)
output_precision(25)
e
pi
log(exp(pi))
sqrt(2)


%% Seno, cosseno e seus amigos
% #1
sin(pi/3)
cos(pi/4)
sec(pi/3)

% #2
asin(pi/2)
acos(pi/3)
acot(pi)
acsc(pi/4)

% Nota 1
sind(90)
atand(180)
cscd(90)
asecd(180)

% #3
pi*180/pi
(pi/2)*180/pi
(pi/4)*180/pi
(3*pi/4)*180/pi
(3*pi/2)*180/pi


%% Funções hiperbólicas
% #1
sinh(pi/2)
cosh(pi/2)
coth(1/4)
sech(pi)

% #2
atanh(1/2)
acsch(pi/3)


%% Exercício 1 
% #1
0.5 - (1/2)*0.5^2 + (1/3)*0.5^3

% #3
1 - (1/factorial(2))*pi^2 + (1/factorial(4))*pi^4
