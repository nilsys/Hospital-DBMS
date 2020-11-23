from PyQt5 import QtWidgets ,QtCore , QtGui , uic 
from PyQt5.QtWidgets import *
import sys
import dbms
from dbms import Database


class TableOut(QtWidgets.QMainWindow):

	def __init__(self,OutList):
		super(TableOut, self).__init__()
		uic.loadUi('PaymentOut.ui',self)

		self.OutTable.setRowCount(0)
		for row_number , row_data in enumerate(OutList):
			self.OutTable.insertRow(row_number)
			for col_number , col_data in enumerate(row_data):
				self.OutTable.setItem(row_number,col_number, QtWidgets.QTableWidgetItem(str(col_data)))