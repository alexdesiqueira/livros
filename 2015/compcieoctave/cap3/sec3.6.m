%{
SEC3.6.M

Material de apoio do livro "Computação científica com GNU Octave".
Exemplos da seção 3.6, capítulo 3, "Operações com variáveis".

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
eye(1)
eye(2)
eye(3)
eye(4)

% #2
eye(1,2)
eye(2,1)
eye(2,3)
eye(4,2)
eye(2,6)

% #3
diag([1 2])
diag([1 2 3])
diag([1 2 3 4])

% Nota 1
diag(1 2 3 4)  %% conduz a erro!

% #4
zeros(1)
zeros(2)
ones(1)
ones(2)

% #5
rand(1)
rand(2)
rand(3)
rand(4)


%% Exercício 1
M = [sind(90) 0; 0 cosd(90)]
N = [exp(cosh(1)); exp(sqrt(2)); exp(acos(3))]
