function pointMoved4d = TranslationHomogenea(dx, dy, dz, vector4d)

TMatrix = [1 0 0 dx;
    0 1 0 dy;
    0 0 1 dz;
    0 0 0 1];

pointMoved4d = TMatrix * vector4d;

end