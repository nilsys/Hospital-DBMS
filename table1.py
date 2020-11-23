from PyQt5 import QtWidgets ,QtCore , QtGui , uic 
from PyQt5.QtWidgets import *
import sys
import dbms
from dbms import Database


class Table(QtWidgets.QMainWindow):

	def __init__(self,OutList,InList):
		super(Table, self).__init__()
		uic.loadUi('Patient1.ui',self)

		self.OutTable.setRowCount(0)
		for row_number , row_data in enumerate(OutList):
			self.OutTable.insertRow(row_number)
			for col_number , col_data in enumerate(row_data):
				self.OutTable.setItem(row_number,col_number, QtWidgets.QTableWidgetItem(str(col_data)))

		self.InTable.setRowCount(0)
		for row_number , row_data in enumerate(InList):
			self.InTable.insertRow(row_number)
			for col_number , col_data in enumerate(row_data):
				self.InTable.setItem(row_number,col_number, QtWidgets.QTableWidgetItem(str(col_data)))

