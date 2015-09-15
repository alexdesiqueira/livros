%{
SEC3.2.M

Material de apoio do livro "Computação científica com GNU Octave".
Exemplos da seção 3.2, capítulo 3, "Operações com variáveis".

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
string1 = 'A1b2C3d4E5f6G7h8I9';
string2 = 'A1b2C3d4E5f6G7h8I9';
strcmp(string1,string2)
string3 = 'A1b2C3d4e5f6G7h8I9';
strcmp(string1,string3)

% #2
string1 = 'A!bCdEfGhI%';
string3 = 'A!bCdEfGhi%';
strcmpi(string1,string3)

% #3
string1 = 'AbCdEfGhIjKlMnOpQrStUvWxYz';
string2 = 'AbCdEfGhIJKlMnOpQrStUvWxYz';
strncmp(string1,string2,9)
strncmp(string1,string2,10)

% #4
string1 = 'AbCdEfGhIjKlMnOpQrStUvWxYz';
string2 = 'AbCdEfGhIJKlMnOpQrStUvWxYz';
strncmpi(string1,string2,10)
