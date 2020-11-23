import cx_Oracle
from datetime import datetime 

class Database():
	"""docstring for ClassName"""
	def __init__(self):
		super(Database, self).__init__()
		self.conn = cx_Oracle.connect('C##hospital_manager','123','xe')
		self.cur = self.conn.cursor()

		# self.cur.execute('select * from patient')
 
	def Searchapp(self , fname , lname):
		# query1 = """SELECT * from patient where PFname = '""" + fname + """' and PLname = '""" + lname +"""'"""
		# queryIN = """SELECT * from patient where PFname = '""" + fname + """' and PLname = '""" + lname +"""'"""
		query = """SELECT * from system.patient full join system.examination on patient.pid = examination.pid_out 
		full join system.TREATMENT on patient.pid = TREATMENT.pid_in where PFname = '""" + fname + """' and PLname = '""" + lname +"""'"""
		self.cur.execute(query)
		data = self.cur.fetchall()
		InList = []
		OutList = []
		indexOut = [1,2,5,7,8,9,10,11,12,13]
		indexIn = [1,2,5,14,15,16,17,18,19]
		for row in data:
			if(row[14] == None):
				temp = []
				for element in indexOut:
					temp.append(row[element])
				OutList.append(temp)
			else:
				temp = []
				for element in indexIn:
					temp.append(row[element])
				InList.append(temp)
				
		return InList, OutList

		
	def AddappIN(self,PID,PFname,TrID,PLname,PDoB,TrStart,PGender,PPhone,TrEnd,PAdress,PAdmissionDate,TrResult,PDischargeDate,PDiagnosis,MID,PSickroom,PFee,EID_Doc,EID_Nur):
		queryaddPatient = """ INSERT into system.patient values(""" + PID + """ , '""" + PFname + """','""" + PLname + """',""" + """TO_DATE('""" + PDoB + """', 'DD-MON-RR'),'""" + PGender +"""',""" + PPhone + """,'""" + PAdress + """')"""
		self.cur.execute(queryaddPatient)
		# self.conn.commit()


		queryaddInpatient = """ INSERT into system.inpatient values ("""+ PID + """,TO_DATE('""" +PAdmissionDate+"""', 'DD-MON-RR'),TO_DATE('"""+PDischargeDate+"""', 'DD-MON-RR'),'"""+PDiagnosis+"""',"""+PSickroom+""","""+PFee+""","""+EID_Doc+""","""+EID_Nur+""")"""
		self.cur.execute(queryaddInpatient)
		# self.conn.commit()
	

		queryaddTreat = """INSERT into system.TREATMENT values ("""+EID_Doc+""","""+PID+""","""+TrID+""",TO_DATE('"""+TrStart+"""', 'DD-MON-RR'),TO_DATE('"""+TrEnd+"""', 'DD-MON-RR'),'"""+TrResult+"""')"""
		self.cur.execute(queryaddTreat)
		# self.conn.commit()


		queryaddUsesTreat = """INSERT into system.Uses_Treat values ("""+EID_Doc+""","""+PID+""","""+TrID+""","""+MID+""")"""
		self.cur.execute(queryaddUsesTreat)
		self.conn.commit()

	def AddappInTreat(self,PID,EID_Doc,TrID,TrStart,TrEnd,TrResult,MID):
		queryaddTreat = """INSERT into system.TREATMENT values ("""+EID_Doc+""","""+PID+""","""+TrID+""",TO_DATE('"""+TrStart+"""', 'DD-MON-RR'),TO_DATE('"""+TrEnd+"""', 'DD-MON-RR'),'"""+TrResult+"""')"""
		self.cur.execute(queryaddTreat)
		self.conn.commit()

	def AddappInMed(self,PID,EID_Doc,TrID,MID):
		queryaddUsesTreat = """INSERT into system.Uses_Treat values ("""+EID_Doc+""","""+PID+""","""+TrID+""","""+MID+""")"""
		self.cur.execute(queryaddUsesTreat)
		self.conn.commit()

	def AddappOut(self,PID,PFname,PLname,PDoB,PAdress,PGender,PPhone,EID_Doc,MID,ExID,ExDate,ExFee,ExDiagnosis,ExSencondExaminationDate):

		queryaddPatient = """ INSERT into system.patient values(""" + PID + """ , '""" + PFname + """','""" + PLname + """',""" + """TO_DATE('""" + PDoB + """', 'DD-MON-RR'),'""" + PGender +"""',""" + PPhone + """,'""" + PAdress + """')"""
		print(queryaddPatient)
		self.cur.execute(queryaddPatient)

		queryaddOutpatient = """ INSERT into system.outpatient values(""" +PID+ ""","""+EID_Doc+""")"""
		self.cur.execute(queryaddOutpatient)

		queryaddExam = """ INSERT into system.examination values (""" +EID_Doc+""","""+PID+""","""+ExID+""",TO_DATE('"""+ExDate+"""', 'DD-MON-RR'),"""+ExFee+""",'"""+ExDiagnosis+"""',TO_DATE('"""+ExSencondExaminationDate+"""', 'DD-MON-RR'))"""
		self.cur.execute(queryaddExam)

		queryaddUsesExam = """INSERT into system.Uses_Exam values ("""+EID_Doc+""","""+PID+""","""+ExID+""","""+MID+""")"""
		self.cur.execute(queryaddUsesExam)
		self.conn.commit()

	def AddappOutEx(self,PID,EID_Doc,ExID,ExDate,ExFee,ExDiagnosis,ExSencondExaminationDate):
		queryaddExam = """ INSERT into system.examination values (""" +EID_Doc+""","""+PID+""","""+ExID+""",TO_DATE('"""+ExDate+"""', 'DD-MON-RR'),"""+ExFee+""",'"""+ExDiagnosis+"""',TO_DATE('"""+ExSencondExaminationDate+"""', 'DD-MON-RR'))"""
		self.cur.execute(queryaddExam)
		self.conn.commit()

	def AddappOutMed(self,PID,EID_Doc,ExID,MID):
		queryaddUsesExam = """INSERT into system.Uses_Exam values ("""+EID_Doc+""","""+PID+""","""+ExID+""","""+MID+""")"""
		self.cur.execute(queryaddUsesExam)
		self.conn.commit()

	def Listapp(self,EID_Doc):
		listquery = """SELECT * from system.patient full join system.examination on patient.pid = examination.pid_out full join system.TREATMENT on patient.pid = TREATMENT.pid_in where examination.EID_DOC = '""" + EID_Doc + """' or TREATMENT.EID_DOC = '""" + EID_Doc +"""'"""
		self.cur.execute(listquery)
		data = self.cur.fetchall()
		InList = []
		OutList = []
		indexOut = [1,2,5,7,8,9,10,11,12,13]
		indexIn = [1,2,5,14,15,16,17,18,19]
		for row in data:
			if(row[14] == None):
				temp = []
				for element in indexOut:
					temp.append(row[element])
				OutList.append(temp)
			else:
				temp = []
				for element in indexIn:
					temp.append(row[element])
				InList.append(temp)
				
		return InList, OutList

	def Reportapp(self,PID):
		reportquery = """SELECT * from system.Uses_Exam full join system.Uses_Treat on uses_treat.pid_in = uses_exam.pid_out left join system.medication on (uses_exam.mid = medication.mid or uses_treat.mid =  medication.mid) where (Uses_Exam.PID_OUT = """+ PID +""" or uses_treat.pid_in = """+PID+""" )"""
		print(reportquery)
		self.cur.execute(reportquery)
		data = self.cur.fetchall()
		InList = []
		OutList = []
		indexOut = [0,1,2,3,9,10,11]
		indexIn = [4,5,6,7,9,10,11]
		for row in data:
			if(row[0] != None):
				temp = []
				for element in indexOut:
					temp.append(row[element])
				OutList.append(temp)
			else:
				temp = []
				for element in indexIn:
					temp.append(row[element])
				InList.append(temp)
				
		return InList, OutList







