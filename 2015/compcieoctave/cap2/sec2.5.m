%{
SEC2.5.M

Material de apoio do livro "Computação científica com GNU Octave".
Exemplos da seção 2.5, capítulo 2, "Primeiros passos".

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

% #1
valor = 2*36

% #2
valor = 2*36;

% #3
valor

% Nota 1
var1 = 3
1var = 3  %% conduz a erro!


%% Vetores
% #1
A = 3

% #2
size(A)

% #3
V = [1 2 3 4 5]

% #4
V(1)
V(3)
V(end)

% #5
size(V)

% #6
Vcol = [1; 2; 3; 4; 5]

% #7
size(Vcol)

% Nota 1
V = [1 2 3 4 5]
v

% #8
A = [1 2 3; 3 2 1; 2 3 1]
B = [1 2; 3 4; 5 6]
size(A)
size(B)
length(A)
length(B)

% #9
A(end,end)

% #10
numel(A)
numel(B)


%% Strings
% #1
str1 = 'Este é um exemplo de string';
str2 = 'Esteéoutroexemplo';
str3 = 'Este, ainda outro';
str4 = 'E_mais_outro';

% #2
size(str1)
size(str2)
size(str3)
size(str4)

% #3
texto = 'Alô Mundo!'

% Nota 1
texto = 'Alô Mundo!'
texto = "Alô Mundo!"

% #4
size(texto)
length(texto)
numel(texto)


%% Estruturas
% #1
agenda(1).nome = 'Fulano';
agenda(1).endr = 'Abbey Road';
agenda(1).email = 'fulano@abbeyroad.com';
agenda(1).fone = '18990001234';

% #2
agenda

% #3
agenda(2).nome = 'Sicrano';
agenda(2).endr = 'Bourbon Street';
agenda(2).email = 'sicrano@bourbonst.com';
agenda(2).fone = '219943215300';

agenda(3).nome = 'Beltrano';
agenda(3).endr = 'Rua Augusta';
agenda(3).email = 'beltrano@ruaaugusta.com';
agenda(3).fone = '11912320091';

% #4
agenda

% #5
agenda(1)
agenda(2)
agenda(3)


%% Alterando tipos das variáveis
% #1
k = [1 2 3; 2 3 1; 3 2 1]
k = 3
k = 'isso é uma string'


%% Evitando se perder com uma lista de variáveis
% #1
who

% #2
whos

% #3
clear agenda

% #4
who
