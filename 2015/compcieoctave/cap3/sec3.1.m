%{
SEC3.1.M

Material de apoio do livro "Octave: Seus primeiros passos na programação
científica". Exemplos da seção 3.1, capítulo 3, "Operações com variáveis".

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

% #1
'E assim criamos strings'

% #2
vazio = blanks(10)

% #3
whos

% #4
opcao = blanks(1);
disp('Bem-vindo ao Octave Burgers! Qual é o seu pedido?');
disp('Linus Burger: escolha com a letra L.');
disp('Open Soda: escolha com a letra O.');
opcao(1) = input('Qual será seu pedido? Escolha L ou O. ','s');
disp('Seu pedido foi:');
disp(opcao);

% #5
opcao(1) = input('Qual será seu pedido? Escolha L ou O. ','s');

% #6
opcao = blanks(10);
opcao(7) = input('Qual será seu pedido? Escolha L ou O. ','s');

% #7 e #8
opcao = blanks(1);
opcao(1) = input('Qual sera seu pedido? Escolha L ou O. ');
opcao
