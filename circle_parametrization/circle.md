---
title: Rational Parametrization of the unit circle
linkcolor: blue
pdf-engine: xelatex
header-includes:
 - \usepackage[margin=.5in]{geometry}
classoption: "12pt"
---

<br/>
The goal is to find rational functions $f$ and $g$ such that $(f(t),g(t))$ gives a parametrization of the unit circle. The well-known parametrization uses trigonometric functions and we will see below that this implies that what we seek **does not exist**. However, if we remove one point from the unit circle, it will be possible.


## Calculating a rational parametrization

To continously parametrize a circle, we run around its perimiter (change of direction is allowed, but we can wlog assume that we are going counter-clockwise, otherwise we can just construct new fuctions from the old ones). Looking at the $x$- and $y$-coordinates depending on time, we see that if we only consider the time on an interval of finite length we get functions that look *like* $\sin$ and $\cos$. This is bad news, as those functions cannot be represented by rational functions, see below.

The plan is the following: start at $(-1,0)$ from there we go counterclockwise until we get back to $(-1,0)$. If we however never really are at $(-1,0)$, just infinitely close to it:

![alt1](asy/circle.png "alt2")

Expressing this in a parametrization $(f(t),g(t))$, the behaviour looks like this over time:

![x-coordinate](pdf/graph1.png " $x$-coordinate over time)
<br/>
![y-coordinate](graph2.png $y$-coordinate over time)

To get the coordinates at each point $(x,y)\neq (-1,0)$ we can draw a line $l$ between it and $(-1,0)$. The intersection withe $y$-axis will have coordinates $(0,t)$, where $t$ is the slope of the line. Setting this equalto to the slope of the line segment between $(-1,0)$ and $(x,y)$ we get
$$t = \frac{y}{x+1} \implies y = t(x+1).$$
For a fixed $t\in \mathbb{R}$ fulfilling the above equation is equivaent to $(x,y)$ lying on the line $l$.
Thus lying on the circle (i.e. making the equation $x^2+y^2=1$ true). Combining, we get that a point lies on the intersection of $L$ and the circle if and only if
$$x^2 + t^2(x+1)^2 = 1.$$
Solving for $x$ yields $$x=\frac{-2t^2 \pm \sqrt{4t^4-t(1+t^2)(t^2-1)}}{2(1+t^2)} = \frac{\pm 1 - t^2}{t^2+1}.$$
So, one solution is given by $(x,y)=(-1,0)$ and the other one is $\left(\frac{1-t^2}{t^2+1}, \frac{2t}{t^2+1}\right)$.
These are the functions in $t$ that we can use to parametrize the unit circle. If $(x,y)$ lies on the circle, draw correspoding line $l$ and for the slope $t$ the point we just calculated will be $(x,y)$. It is straightforward to check the other direction, namely that every point of this form lies on the unit circle.

# Why can't we do better
At the beginning we mentioned two impossibility claims:
1. The entire unit circle cannot be parametrized by rational functions.
2. $\sin$ and $\cos$ cannot be written as rational functions.

The second statement is elementary to deduce: Assume we had a rational function that agreed with $\sin$ on some connected part of the graph. Then, by the identity theorem, this rational functionand $\sin$ would have to everywhere, since the rational function is defined on all of $\mathbb{C}$ with the exception of a finite aḿount of points and $\sin$ is defined on all of $\mathbb{C}$.

In order to prove the first statement, we need a lemma from complex analysis.

**Lemma.** Let $f$ be a holomorphic function on a simply connected domain $D$. If $f(z)\neq 0$ for all $x\in D$, we can write $f(z) = e^{g(z)}$ a function $g$ that is holomorphic on $D$.
<br/>
**Proof.** Since $f(z)$ never vanishes, $\frac{f}{f'}$ is a well-defined holomorphic function on $D$. Since $D$ is simply connected this means that there exists an antiderivative $g$ on $D$.
Intuitively, what happes is
$$g(z)= \int \frac{f'(z)}{f(z)}\,dz = \int \frac{1}{u}du = \log(u) = \log(f(z)) + c\implies e^g = f(z).$$
This does not work without restricting the domain of the logarithm (if might not be defined on all of $D$). To make this into a formal argument we consider $h(z)=\frac{f(z)}{e^{g(z)}}$. We get that $h'(z)=0$, so since $D$ is connected, $h(z)=c$ for some $c\in \mathbb{C}$, which means $f(z) = ce^{g(z)}$. Now chose a logarithm of $c$ and include it as a summand in $g$. $\square$
<br/><br>
The next statement encapsulates the impossibility:
**Theorem.** Let $f,h$ be holomorphic functions on a simply connected domain $D$ such that $f(z)^2 + h(z)^2=1$ for all $z\in D$. Then there exists a holomorphic function
$g$ on $D$ such that $f(z)=\sin(g(z))$ and $h(z)=\cos(g(z))$.
<br/>
**Proof.**

