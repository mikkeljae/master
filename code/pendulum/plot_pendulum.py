from numpy import pi,sin,cos
from pylab import ion
import matplotlib.pylab
from matplotlib.pyplot import figure, clf, axis, plot, draw, show

class plot_pendulum(object):
	"""docstring for ClassName"""
	def __init__(self, len):
		

		self.len = len
		self.axis_size = len*1.2

		self.fig = figure(num=None, figsize=(6,6), dpi=80, facecolor='w', edgecolor='k')
		
		ion();

	def update_plot(self, angle):
		angle = angle+pi
		clf()

		axis([-self.axis_size,self.axis_size,-self.axis_size,self.axis_size])

		plot(self.len*sin(angle),self.len*cos(angle),'ro')
		plot([self.len*sin(angle),0],[self.len*cos(angle),0],'-')

		draw()
		show(block=False)