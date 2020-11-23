from PyQt5 import QtWidgets ,QtCore , QtGui , uic 
from PyQt5.QtWidgets import *
from dbms import Database

class AddOutpatient(QtWidgets.QMainWindow):
	def __init__(self):
		super (AddOutpatient, self).__init__()
		uic.loadUi('AddOut.ui',self)

		self.pushButton.clicked.connect(self.AddfunctionOut)
		self.pushButton_3.clicked.connect(self.AddEx)
		self.pushButton_2.clicked.connect(self.AddMed)


	def AddfunctionOut(self):
		self.PID = self.textEdit.toPlainText()
		self.PFname = self.textEdit_5.toPlainText()
		self.PLname = self.textEdit_6.toPlainText()
		self.PDoB = self.textEdit_7.toPlainText()
		self.PAdress = self.textEdit_10.toPlainText()
		self.PGender = self.textEdit_8.toPlainText()
		self.PPhone = self.textEdit_9.toPlainText()
		self.EID_Doc = self.textEdit_16.toPlainText()
		self.MID = self.textEdit_22.toPlainText()
		self.ExID = self.textEdit_19.toPlainText()
		self.ExDate = self.textEdit_20.toPlainText()
		self.ExFee = self.textEdit_21.toPlainText()
		self.ExDiagnosis = self.textEdit_18.toPlainText()
		self.ExSencondExaminationDate = self.textEdit_17.toPlainText()

		database = Database()
		database.AddappOut(self.PID,self.PFname,self.PLname,self.PDoB,self.PAdress,self.PGender,self.PPhone,self.EID_Doc,self.MID,self.ExID,self.ExDate,self.ExFee,self.ExDiagnosis,self.ExSencondExaminationDate)

	def AddEx(self):
		self.PID = self.textEdit.toPlainText()
		self.EID_Doc = self.textEdit_16.toPlainText()
		self.ExID = self.textEdit_19.toPlainText()
		self.ExDate = self.textEdit_20.toPlainText()
		self.ExFee = self.textEdit_21.toPlainText()
		self.ExDiagnosis = self.textEdit_18.toPlainText()
		self.ExSencondExaminationDate = self.textEdit_17.toPlainText()
		database = Database()
		database.AddappOutEx(self.PID,self.EID_Doc,self.ExID,self.ExDate,self.ExFee,self.ExDiagnosis,self.ExSencondExaminationDate)

	def AddMed(self):
		self.PID = self.textEdit.toPlainText()
		self.EID_Doc = self.textEdit_16.toPlainText()
		self.ExID = self.textEdit_19.toPlainText()
		self.MID = self.textEdit_22.toPlainText()
		database = Database()
		database.AddappOutMed(self.PID,self.EID_Doc,self.ExID,self.MID)


