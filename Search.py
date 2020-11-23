from PyQt5 import QtWidgets ,QtCore , QtGui , uic 
from PyQt5.QtWidgets import *
import sys
import dbms
from dbms import Database
from table1 import Table
class Searchapp(QtWidgets.QMainWindow):
	"""docstring for ClassName"""
	def __init__(self):
		super(Searchapp, self).__init__()
		uic.loadUi('search.ui',self)
		self.searchbuttom.clicked.connect(self.Searchfuction)


	def Searchfuction(self):
		# if(self.In == and self.Out ==  )
		database  = Database()
		InList , OutList = database.Searchapp(self.FN.toPlainText() , self.LN.toPlainText())
		print(OutList)
		# OutList.remove(0).remove(3).remove(4).remove(6)
		self.table = Table(OutList,InList)
		self.table.show()


		


