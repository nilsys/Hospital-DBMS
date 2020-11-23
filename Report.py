from PyQt5 import QtWidgets ,QtCore , QtGui , uic 
from PyQt5.QtWidgets import *
from dbms import Database
from PayOut import TableOut
from PayIn import TableIn
class ReportWel(QtWidgets.QMainWindow):
	"""docstring for ClassName"""
	def __init__(self):
		super(ReportWel, self).__init__()
		uic.loadUi('Report.ui',self)
		self.ReportBut.clicked.connect(self.ReportFunction)

	def ReportFunction(self):
		self.PID = self.textEdit.toPlainText()
		database = Database()
		InList, OutList = database.Reportapp(self.PID)
		if not InList:
			self.table = TableOut(OutList)
			self.table.show()
		else :
			self.table = TableIn(InList)
			self.table.show()






