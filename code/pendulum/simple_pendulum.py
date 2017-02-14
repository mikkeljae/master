from numpy import deg2rad, sin
from plot_pendulum import plot_pendulum

if __name__ == "__main__":
	d = 0.025 #delta t
	g = -9.82 #gravity
	l = 0.75  #length of pendulum

	p = deg2rad(90)
	v = 0.0
	a = 0.0

	plot = plot_pendulum(l)

	while True:
		pl = p
		p = pl + v * d
		v = v + a * d
		a = -g/l * sin(pl)

		plot.update_plot(a)