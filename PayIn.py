from PyQt5 import QtWidgets ,QtCore , QtGui , uic 
from PyQt5.QtWidgets import *
import sys
import dbms
from dbms import Database


class TableIn(QtWidgets.QMainWindow):

	def __init__(self,InList):
		super(TableIn, self).__init__()
		uic.loadUi('PaymentIn.ui',self)

		self.InTable.setRowCount(0)
		for row_number , row_data in enumerate(InList):
			self.InTable.insertRow(row_number)
			for col_number , col_data in enumerate(row_data):
				self.InTable.setItem(row_number,col_number, QtWidgets.QTableWidgetItem(str(col_data)))