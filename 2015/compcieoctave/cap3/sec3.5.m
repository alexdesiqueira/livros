%{
SEC3.5.M

Material de apoio do livro "Computação científica com GNU Octave".
Exemplos da seção 3.5, capítulo 3, "Operações com variáveis".

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


%% Criando vetores por incremento
% #1
vetor = [1 2 3 4 5]

% #2
vetor = 1:5

% #3
vetor = 1:1000;

% #4
vetor_inc = 0:50:1000


%% Criando vetores espaçados
% #1
vetor_esp = linspace(1,10,6)
vetor_esp2 = linspace(2,10,7)

% #2
vetor_inv = linspace(10,1,6)
vetor_inv2 = linspace(10,2,7)

% #3
vetor_inc = 0:50:1000;
length(vetor_inc)
vetor_incesp = linspace(0,1000,21)

% #4
logspace(2,3,7)

% #5
vetor_log = logspace(0,2,3)
vetor_log2 = logspace(1,3,5)

% #6
vetor_loginv = logspace(0,2,3)
vetor_loginv2 = logspace(1,3,5)

% #7
logspace(0,pi,10)
