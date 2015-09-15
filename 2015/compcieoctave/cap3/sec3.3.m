%{
SEC3.3.M

Material de apoio do livro "Computação científica com GNU Octave".
Exemplos da seção 3.3, capítulo 3, "Operações com variáveis".

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
str1 = 'abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz';
index(str1,'a','first')
index(str1,'b','last')
index(str1,'abc')

% #2
rindex(str1,'abc')
rindex(str1,'bcd')

% #3
index(str1,'bd')
rindex(str1,'kmp')

% #4
str2 = 'abcdefghijklmnopqrstuvwxyzyxwvutsrqponmlkjihgfedcba';
strfind(str2,'a')
strfind(str2,'c')
strfind(str2,'cb')
strfind(str2,'z')
