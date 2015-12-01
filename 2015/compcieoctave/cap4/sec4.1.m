%{
SEC4.1.M

Material de apoio do livro "Octave: Seus primeiros passos na programação
científica". Exemplos da seção 4.1, capítulo 4, "Produzindo gráficos no
Octave".

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
x = pi/2;
sin(x)

% #2
x = 0:1:10;
y = sin(x);

% #3
x = 0:1:10;
plot(x,sin(x));

% #4
x = 0:0.1:10;
numel(x)
plot(x,sin(x));

% #5
t = -3*pi:0.1:3*pi;
sint = sin(t);
cost = cos(t);
plot3(t,sint,cost);


%% Modificando a aparência dos seus gráficos
% #1
x = 0:0.1:10;
plot(x,log(x),'-.');

% #2
x = linspace(-2*pi,2*pi,200);
plot(x,cos(x),'o');

% #3
x = linspace(0,2*pi,100);
plot(x,exp(x),'r');

% #4
x = linspace(-pi,pi,100);
plot(x,sin(cos(x)),'dg');

% #5
> x = linspace(0,2*pi,100);
> plot(x,tan(x),'linewidth',10);

% #6
x = linspace(0,2*pi,100);
plot(x,tan(x),'linewidth',2);
axis([0 2*pi -10 10]);

% #7
x = linspace(0,2*pi,100);
plot(x,tan(x),'linewidth',2);
axis([0 2*pi -10 10]);
grid on

% #8
x = -10:0.01:10;
plot(x,exp(cos(x.^2)),'^c','markerfacecolor','b');
title('Gráfico de exp(cos(x^2)).')

% #9
x = 0:0.01:10;
plot(x,cos(log(x./16)),'pk','markersize',10, ...
    'markerfacecolor','y');
title('Gráfico de cos(log(x/16)).')
xlabel('Valores de X')
ylabel('Valores de cos(log(x/16))')

% #10
k = -2*pi:0.1:2*pi;
plot3(k,exp(sin(k)),exp(cos(k)),'dr','markerfacecolor','r')
xlabel('Valores de k')
ylabel('Valores de exp(sin(k))')
zlabel('Valores de exp(cos(k))')
grid on

% #11
x = 0:0.05:10;
plot(x,sin(log(x)),'hm','markersize',8,'markerfacecolor','m')
legend('sin(log(x))')

% #12
x = 0:0.05:10;
plot(x,sin(log(x)),'hm','markersize',8,'markerfacecolor','m')
legend('sin(log(x))')
legend('boxoff')
legend('left')
