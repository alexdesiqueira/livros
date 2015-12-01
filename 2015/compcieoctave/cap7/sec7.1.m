%{
SEC7.1.M

Material de apoio do livro "Octave: Seus primeiros passos na programação
científica". Exemplos da seção 7.1, capítulo 7, "O Octave-Forge: mais
poder para seu Octave".

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
pkg install -forge signal

% Nota 1
sudo apt-get install liboctave-dev

% #2
pkg install -forge bim

% #3
pkg install -forge bim fpl msh

% #4
pkg install -forge bim fpl msh splines

% #5
pkg load bim

% #6
pkg load all

% #7
pkg unload nomedopacote

% #8
pkg unload all

% #9
pkg uninstall signal
