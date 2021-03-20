unitsize(2cm);
import graph;

defaultpen(fontsize(10pt));

real f(real t) {
	return (2*t) / (t*t+1);
}



draw((-4.7,0) -- (4.7,0), arrow=Arrow(TeXHead));
draw((0,-1.2) -- (0,1.2), arrow=Arrow(TeXHead));

label("$x$", (4.7,0), align=E);
label("$y$", (0,1.2), align=N);

Label f_label = Label("$g$", position=Relative(0.8));

path g = graph(f, -4.5, 4.5);

draw(g, L=f_label);
