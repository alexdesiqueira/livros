%{
SEC3.4.M

Material de apoio do livro "Octave: Seus primeiros passos na programação
científica". Exemplos da seção 3.4, capítulo 3, "Operações com variáveis".

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
strcat('Octave','é','demais')
strcat('O','Octave','facilita','a','sua','vida')

% #2
str_1 = 'Octave';
str_2 = 'é';
str_3 = 'demais';
str_4 = 'facilita';
str_5 = 'sua';
str_6 = 'vida';
strcat(str_1,str_2,str_3)
strcat(str_1,str_4,str_5,str_6)
strcat(str_1,str_2,str_3,str_4,str_5,str_6)
strcat(str_1,str_2,str_3,'e',str_4,str_5,str_6)

% #3
strjoin({'Octave','é','demais'})
strjoin({'Octave','é','demais'},'*')
strjoin({'O','Octave','facilita','a','sua','vida'})

% #4
usuario = input('Qual o nome do usuário? ','s')
strcat('Graaaande',usuario,'! Bem-vindo!')

% #5
usuario = input('Qual o nome do usuário? ','s')
string1 = strjoin({'Graaaande',usuario});
strcat(string1,'! Bem-vindo!')

% #6
usuario = input('Qual o nome do usuário? ','s')
strcat(strjoin({'Graaaande',usuario}),'! Bem-vindo!')

% #7
strlinus = 'Graaaande Linus! Bem-vindo!';
strrep(strlinus,'Linus','Stallman')

% #8
strlinus = 'Graaaande Linus! Bem-vindo!';
strrep(strlinus,'in','12345@?')
