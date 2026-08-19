Punto1 = [2 2 0 1]';
PuntoAnimacion = Punto1;

for i = 0:0.1:8

    clf

    line([0 10],[0 0],[0 0],'LineWidth',2,'Color','red');
    line([0 0],[0 10],[0 0],'LineWidth',2,'Color','magenta');

    axis([-1 10 -1 10]);
    grid on;
    hold on

    % PLOTEAR EL PUNTO 1 | PISTA SCATTER
    scatter(Punto1(1),Punto1(2),'filled','black');

    % TRASLADAR EL PUNTO
    PuntoAnimacion = TranslationHomogenea(i, i, 0, Punto1);

    % PLOTEAR EL PUNTO 2 | PISTA SCATTER
    scatter(PuntoAnimacion(1),PuntoAnimacion(2),'filled');

    % AGREGAR PAUSA
    pause(0.1)

end