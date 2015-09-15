%{
SEC5.2.M

Material de apoio do livro "Computação científica com GNU Octave".
Exemplos da seção 5.2, capítulo 5, "Gravando e reaproveitando código".

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
raio = input('Digite o valor do raio da circunferência: ');
area = pi*raio^2;  % Calcula a área para o raio fornecido
disp('O valor da área dessa circunferência é: ');
disp(area);

% #2
raio = input('Digite o valor do raio da esfera: ');
% O volume da esfera é calculado a partir do raio fornecido
volume = (4*pi*raio^3)/3;
disp('O valor do volume dessa esfera é: ');
disp(volume);

% #3
%{
 O código a seguir recebe uma temperatura do usuário em graus
 Celsius e a converte para graus Fahrenheit.
%}

celsius = input('Digite o valor da temperatura em graus Celsius: ');
fahrenheit = celsius*1.8 + 32;
disp('O valor da temperatura em graus Fahrenheit é: ');
disp(fahrenheit);
