%{
SEC4.3.M

Material de apoio do livro "Computação científica com GNU Octave".
Exemplos da seção 4.3, capítulo 4, "Produzindo gráficos no Octave".

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
x = -2*pi:0.1:2*pi;
subplot(2,1,1)
plot(x,sin(x),'.r','linewidth',3)
axis([-3*pi,4*pi,-3,1.5])
title('Gráfico de sin(x).')
xlabel('x')
ylabel('Seno de x')
subplot(2,1,2)
plot(x,cos(x),'-.m','linewidth',3)
axis([-2.5*pi,2.1*pi,-1.5,2.5])
title('Gráfico de cos(x).')
xlabel('x')
ylabel('Cosseno de x')

% #2
x = -2*pi:0.2:2*pi;
subplot(2,3,1:3)
plot(x,sin(x).*exp(-abs(x)),'linewidth',3)
axis([-2*pi,2*pi,-0.5,0.5])
subplot(2,3,4)
plot(x,sin(x).*exp(-abs(x)),'r','linewidth',3)
grid on
axis([-2*pi,-1,-0.5,0.5])
subplot(2,3,5)
plot(x,sin(x).*exp(-abs(x)),'sk','linewidth',3)
axis([-1,1,-0.5,0.5])
grid minor on
subplot(2,3,6)
plot(x,sin(x).*exp(-abs(x)),'--g','linewidth',3)
axis([1,2*pi,-0.5,0.5])
grid on

% #3
x = -2*pi:0.2:2*pi;
subplot(2,3,1:3)
plot3(x,sin(x).*exp(-abs(x)),cos(x).*exp(-abs(x)),
    'linewidth',3)
axis([-2*pi,2*pi,-0.5,0.5])
subplot(2,3,4)
plot3(x,sin(x).*exp(-abs(x)),cos(x).*exp(-abs(x)),
    'r','linewidth',3)
grid on
axis([-2*pi,-1,-0.5,0.5])
subplot(2,3,5)
plot3(x,sin(x).*exp(-abs(x)),cos(x).*exp(-abs(x)),
    'sk','linewidth',3)
axis([-1,1,-0.5,0.5])
grid minor on
subplot(2,3,6)
plot3(x,sin(x).*exp(-abs(x)),cos(x).*exp(-abs(x)),
    '--g','linewidth',3)
axis([1,2*pi,-0.5,0.5])
grid on
