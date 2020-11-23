from PyQt5 import QtWidgets ,QtCore , QtGui , uic 
from PyQt5.QtWidgets import *
import sys
import dbms
from Search import Searchapp
from Add import AddWel
from List import ListWel
from Report import ReportWel
class WelcomeWindow(QtWidgets.QMainWindow):
	"""docstring for ClassName"""
	def __init__(self):
		super(WelcomeWindow, self).__init__()
		uic.loadUi('Welcome.ui',self)
		self.SearchBut.clicked.connect(self.OpenSearch)
		self.AddBut.clicked.connect(self.OpenAdd)
		self.ListBut.clicked.connect(self.OpenList)
		self.ReportBut.clicked.connect(self.OpenReport)
		self.pushButton.clicked.connect(self.LogOut)

	def OpenSearch(self):
		self.searhapp = Searchapp()
		self.searhapp.show()

	def OpenAdd(self):
		self.addwlel = AddWel()
		self.addwlel.show()

	def OpenList(self):
		self.list = ListWel()
		self.list.show()

	def OpenReport(self):
		self.report = ReportWel()
		self.report.show()

	def LogOut(self):
		self.close()