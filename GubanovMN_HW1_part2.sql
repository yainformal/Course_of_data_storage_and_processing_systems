CREATE TABLE health_camp_details ( 
	Health_Camp_ID       INTEGER NOT NULL  PRIMARY KEY  ,
	Camp_Start_Date      DATE     ,
	Camp_End_Date        DATE     ,
	Category1            VARCHAR(20)     ,
	Category2            CHAR(1)     ,
	Category3            INTEGER     
 );

CREATE TABLE patient_profile ( 
	Patient_ID           INTEGER NOT NULL  PRIMARY KEY  ,
	Online_Follower      BOOLEAN     ,
	LinkedIn_Shared      BOOLEAN     ,
	Twitter_Shared       BOOLEAN     ,
	Facebook_Shared      BOOLEAN     ,
	Income               INTEGER     ,
	Education_Score      FLOAT     ,
	Age                  INTEGER     ,
	First_Interaction    DATE     ,
	City_Type            CHAR(1)     ,
	Employer_Category    VARCHAR(30)     
 );

CREATE TABLE First_Health_Camp_Attended ( 
	Patient_ID           INTEGER NOT NULL    ,
	Health_Camp_ID       INTEGER NOT NULL    ,
	Donation             INTEGER     ,
	Health_Score         FLOAT     ,
	ID                   INTEGER NOT NULL  PRIMARY KEY  ,
	FOREIGN KEY ( Health_Camp_ID ) REFERENCES health_camp_details( Health_Camp_ID )  ,
	FOREIGN KEY ( Patient_ID ) REFERENCES patient_profile( Patient_ID )  
 );

CREATE TABLE Second_Health_Camp_Attended ( 
	Patient_ID           INTEGER NOT NULL    ,
	Health_Camp_ID       INTEGER NOT NULL    ,
	"Health Score"       FLOAT     ,
	ID                   INTEGER NOT NULL  PRIMARY KEY  ,
	FOREIGN KEY ( Health_Camp_ID ) REFERENCES health_camp_details( Health_Camp_ID )  ,
	FOREIGN KEY ( Patient_ID ) REFERENCES patient_profile( Patient_ID )  
 );

CREATE TABLE Third_Health_Camp_Attended ( 
	Patient_ID           INTEGER NOT NULL    ,
	Health_Camp_ID       INTEGER NOT NULL    ,
	Number_of_stall_visited INTEGER     ,
	Last_Stall_Visited_Number INTEGER     ,
	ID                   INTEGER NOT NULL  PRIMARY KEY  ,
	FOREIGN KEY ( Health_Camp_ID ) REFERENCES health_camp_details( Health_Camp_ID )  ,
	FOREIGN KEY ( Patient_ID ) REFERENCES patient_profile( Patient_ID )  
 );

CREATE TABLE attendance ( 
	Patient_ID           INTEGER NOT NULL    ,
	Health_Camp_ID       INTEGER NOT NULL    ,
	Registration_Date    DATE     ,
	Var1                 INTEGER     ,
	Var2                 INTEGER     ,
	Var3                 INTEGER     ,
	Var4                 INTEGER     ,
	Var5                 INTEGER     ,
	ID                   INTEGER NOT NULL  PRIMARY KEY  ,
	FOREIGN KEY ( Patient_ID ) REFERENCES patient_profile( Patient_ID )  ,
	FOREIGN KEY ( Health_Camp_ID ) REFERENCES health_camp_details( Health_Camp_ID )  
 );
