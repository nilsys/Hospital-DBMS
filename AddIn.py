from PyQt5 import QtWidgets ,QtCore , QtGui , uic 
from PyQt5.QtWidgets import *
from dbms import Database

class AddInpatient(QtWidgets.QMainWindow):
	def __init__(self):
		super (AddInpatient, self).__init__()
		uic.loadUi('AddIn.ui',self)

		self.pushButton.clicked.connect(self.Addfunction)
		self.pushButton_3.clicked.connect(self.AddTreat)
		self.pushButton_2.clicked.connect(self.AddMed)

	
	def Addfunction(self):
		self.PID = self.textEdit.toPlainText()
		self.PFname = self.textEdit_5.toPlainText()
		self.TrID = self.textEdit_19.toPlainText()
		self.PLname = self.textEdit_6.toPlainText()
		self.PDoB = self.textEdit_7.toPlainText()
		self.TrStart = self.textEdit_20.toPlainText()
		self.PGender = self.textEdit_8.toPlainText()
		self.PPhone = self.textEdit_9.toPlainText()
		self.TrEnd = self.textEdit_21.toPlainText()
		self.PAdress = self.textEdit_10.toPlainText()
		self.PAdmissionDate = self.textEdit_11.toPlainText()
		self.TrResult = self.textEdit_18.toPlainText()
		self.PDischargeDate = self.textEdit_12.toPlainText()
		self.PDiagnosis = self.textEdit_13.toPlainText()
		self.MID = self.textEdit_22.toPlainText()
		self.PSickroom = self.textEdit_14.toPlainText()
		self.PFee = self.textEdit_15.toPlainText()
		self.EID_Doc = self.textEdit_16.toPlainText()
		self.EID_Nur = self.textEdit_17.toPlainText()
		database = Database()
		database.AddappIN(self.PID,self.PFname,self.TrID,self.PLname,self.PDoB,self.TrStart,self.PGender,self.PPhone,self.TrEnd,self.PAdress,self.PAdmissionDate,self.TrResult,self.PDischargeDate,self.PDiagnosis,self.MID,self.PSickroom,self.PFee,self.EID_Doc,self.EID_Nur)
		# self.close()

	def AddTreat(self):
		self.PID = self.textEdit.toPlainText()
		self.EID_Doc = self.textEdit_16.toPlainText()
		self.TrID = self.textEdit_19.toPlainText()
		self.TrStart = self.textEdit_20.toPlainText()
		self.TrEnd = self.textEdit_21.toPlainText()
		self.TrResult = self.textEdit_18.toPlainText()
		self.MID = self.textEdit_22.toPlainText()
		database = Database()
		database.AddappInTreat(self.PID,self.EID_Doc,self.TrID,self.TrStart,self.TrEnd,self.TrResult,self.MID)

	def AddMed(self):
		self.PID = self.textEdit.toPlainText()
		self.EID_Doc = self.textEdit_16.toPlainText()
		self.TrID = self.textEdit_19.toPlainText()
		self.MID = self.textEdit_22.toPlainText()
		database = Database()
		database.AddappInMed(self.PID,self.EID_Doc,self.TrID,self.MID)





