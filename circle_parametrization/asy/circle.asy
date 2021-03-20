settings.outformat="png";
settings.render = 16;
currentlight.background = opacity(0.0)+rgb(255,255,255);
defaultpen(fontsize(10pt));
size(5cm);


Label pointlabel = Label("$(-1,0)$", position=relative(0.2));
draw((-1.1,0) -- (1.1,0), arrow=Arrow(TeXHead), L = pointlabel);
draw((0,-1.1) -- (0,1.1), arrow=Arrow(TeXHead));

draw(arc((0,0), r=1, angle1=185, angle2=175, direction=CCW));

draw((-1,0), marker=Mark[0]);
