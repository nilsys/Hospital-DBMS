from PyQt5 import QtWidgets ,QtCore , QtGui , uic 
from PyQt5.QtWidgets import *
import sys
import dbms
from dbms import Database
from table1 import Table
class ListWel(QtWidgets.QMainWindow):
	"""docstring for ClassName"""
	def __init__(self):
		super(ListWel, self).__init__()
		uic.loadUi('listui.ui',self)
		self.ListBut.clicked.connect(self.ListFunction)

	def ListFunction(self):
		self.EID_Doc = self.textEdit.toPlainText()
		database  = Database()
		InList , OutList = database.Listapp(self.EID_Doc)
		self.table = Table(OutList,InList)
		self.table.show()



	
