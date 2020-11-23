from PyQt5 import QtWidgets ,QtCore , QtGui , uic 
from PyQt5.QtWidgets import *
from AddIn import AddInpatient
from AddOut import AddOutpatient
class AddWel(QtWidgets.QMainWindow):
	"""docstring for AddWel"""
	def __init__(self):
		super (AddWel, self).__init__()
		uic.loadUi('Add.ui',self)
		self.InBut.clicked.connect(self.OpenAddIn)
		self.OutBut.clicked.connect(self.OpenAddOut)

	def OpenAddIn(self):
		self.addinpatient = AddInpatient()
		self.addinpatient.show()
	def OpenAddOut(self):
		self.addinpatient = AddOutpatient()
		self.addinpatient.show()