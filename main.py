from PyQt5 import QtWidgets ,QtCore , QtGui , uic 
from PyQt5.QtWidgets import *
import sys
import dbms

from Welcome import WelcomeWindow
class MyWindow(QtWidgets.QMainWindow):
	def __init__(self):
		super(MyWindow,self).__init__()
		uic.loadUi('User_interface.ui',self)
		self.LOGIN.clicked.connect(self.loginCheck)

	def loginCheck(self):
		box = QMessageBox()
		box.setIcon(QMessageBox.Information)
		username = self.uname.toPlainText()
		# password = self.Password.toPlainText()
		password = self.lineEdit.text()
		if ( username == 'C##hospital_manager' and password == '123'):
			QMessageBox.about(self, "Login", "Login Successfully")
			self.welcome = WelcomeWindow()
			self.welcome.show()
			self.close()
		else:
			QMessageBox.about(self, "Login", "Wrong")







app = QtWidgets.QApplication(sys.argv)
window = MyWindow()
window.show()
sys.exit(app.exec_())