BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "_source_info_" (
	"source_id"	INTEGER NOT NULL,
	"dir_name"	TEXT,
	"base_name"	TEXT NOT NULL,
	"format_name"	TEXT NOT NULL,
	"dst_table"	TEXT NOT NULL,
	"size"	INTEGER,
	"mtime"	INTEGER
);
CREATE TABLE IF NOT EXISTS "BioData" (
	"Burial ID"	TEXT,
	"Rack #"	TEXT,
	"Bag #"	TEXT,
	"Low #"	TEXT,
	"High #"	TEXT,
	"N/S"	TEXT,
	"Low #_1"	TEXT,
	"High #_1"	TEXT,
	"E/W"	TEXT,
	"Area"	TEXT,
	"Burial #"	TEXT,
	"Cluster #"	INTEGER,
	"Date"	TEXT,
	"Previously Sampled"	TEXT,
	"Notes"	TEXT,
	"Initials"	TEXT,
	"Additional Notes"	TEXT
);
CREATE TABLE IF NOT EXISTS "C14" (
	"Burial ID"	TEXT,
	"Rack #"	TEXT,
	"Bag #"	TEXT,
	"Low #"	TEXT,
	"High #"	TEXT,
	"N/S"	TEXT,
	"Low #_1"	TEXT,
	"High #_1"	TEXT,
	"E/W"	TEXT,
	"Area"	TEXT,
	"Burial #"	TEXT,
	"Cluster #"	INTEGER,
	"Date"	TEXT,
	"Previously Sampled"	TEXT,
	"Notes"	TEXT,
	"Initials"	TEXT,
	"Additional Notes"	TEXT
);
CREATE TABLE IF NOT EXISTS "Fag_el_Gamous_All" (
	"ARC GIS"	INTEGER,
	"Burial ID"	TEXT,
	"Year on skull"	TEXT,
	"Month on skull"	TEXT,
	"Date on Skull"	INTEGER,
	"Field Book"	TEXT,
	"Field Book Page Number"	TEXT,
	"Initials of Data Entry Expert"	TEXT,
	"Initials of Data Entry Checker"	TEXT,
	"BYU Sample"	TEXT,
	"Body Analysis"	INTEGER,
	"Skull at Magazine"	TEXT,
	"Postcrania at Magazine"	TEXT,
	"Sex _(Skull; 2018)"	TEXT,
	"Age _(Skull; _2018)"	TEXT,
	"Rack and Shelf"	TEXT,
	"TO BE CONFIRMED"	TEXT,
	"Skull Trauma"	TEXT,
	"Postcrania Trauma"	TEXT,
	"Cribra Orbitala"	TEXT,
	"Porotic Hyperostosis"	TEXT,
	"Porotic Hyperostosis (LOCATIONS)"	TEXT,
	"Metopic Suture"	TEXT,
	"Button Osteoma"	TEXT,
	"Postcrania Trauma_1"	TEXT,
	"Osteology unknown comment"	TEXT,
	"Temporal Mandibular Joint Osteoarthritis (TMJ OA)"	TEXT,
	"Linear Hypoplasia Enamel"	TEXT,
	"Area (Hill burials)"	INTEGER,
	"Tomb"	INTEGER,
	"burial area North or South"	TEXT,
	"burialnors"	TEXT,
	"burial area east or west"	INTEGER,
	"burialxeorw"	TEXT,
	"Square"	TEXT,
	"Burial Number"	TEXT,
	"burial west to head"	TEXT,
	"burial west to feet"	TEXT,
	"burial south to head"	TEXT,
	"burial south to feet"	TEXT,
	"burial depth"	TEXT,
	"length"	TEXT,
	"year excav"	INTEGER,
	"Month Excavated"	TEXT,
	"Date Excavated"	INTEGER,
	"burial direction 1"	TEXT,
	"burial preservation"	TEXT,
	"burial wrapping"	TEXT,
	"burial adult child"	TEXT,
	"Gender Code"	TEXT,
	"burialgendermethod"	TEXT,
	"Age Code SINGLE"	TEXT,
	"Burial Direction 2"	TEXT,
	"burialageatdeath"	TEXT,
	"burialagemethod"	TEXT,
	"Hair Color Code"	TEXT,
	"burialhaircolor"	TEXT,
	"burialsampletaken"	TEXT,
	"length(M)"	TEXT,
	"length(CM)"	TEXT,
	"Goods"	TEXT,
	"Cluster"	TEXT,
	"Face Bundle"	TEXT,
	"Osteology Notes"	TEXT,
	"Note 1"	TEXT,
	"Note 2"	TEXT,
	"Note 3"	TEXT,
	"Note 4"	TEXT,
	"Note 5"	TEXT,
	"Note 6"	TEXT,
	"Note 7"	TEXT,
	"Note 8"	TEXT,
	"Note 9"	TEXT,
	"Note 10"	TEXT,
	"Note 11"	TEXT,
	"Note 12"	TEXT,
	"Note 13"	TEXT,
	"Note 14"	TEXT
);
CREATE TABLE IF NOT EXISTS "main_tbl" (
	"Burial_ID"	TEXT,
	"burial_location_NS"	TEXT,
	"burial_location_EW"	TEXT,
	"low_pair_NS"	INTEGER,
	"high_pair_NS"	INTEGER,
	"low_pair_EW"	INTEGER,
	"high_pair_EW"	INTEGER,
	"burial_subplot"	TEXT,
	"burial_depth"	REAL,
	"south_to_head"	REAL,
	"south_to_feet"	REAL,
	"west_to_head"	REAL,
	"west_to_feet"	REAL,
	"burial_situation"	TEXT,
	"length_of_remains"	INTEGER,
	"burial_number"	INTEGER,
	"sample_number"	INTEGER,
	"gender_GE"	TEXT,
	"GE_function_total"	REAL,
	"gender_body_col"	TEXT,
	"basilar_suture"	TEXT,
	"ventral_arc"	INTEGER,
	"subpubic_angle"	INTEGER,
	"sciatic_notch"	INTEGER,
	"pubic_bone"	INTEGER,
	"preaur_sulcus"	INTEGER,
	"medial_IP_ramus"	INTEGER,
	"dorsal_pitting"	INTEGER,
	"foreman_magnum"	TEXT,
	"femur_head"	REAL,
	"humerus_head"	REAL,
	"osteophytosis"	TEXT,
	"pubic_symphysis"	TEXT,
	"femur_length"	REAL,
	"humerus_length"	REAL,
	"tibia_length"	REAL,
	"robust"	INTEGER,
	"supraorbital_ridges"	INTEGER,
	"orbit_edge"	INTEGER,
	"parietal_bossing"	INTEGER,
	"gonian"	INTEGER,
	"nuchal_crest"	INTEGER,
	"zygomatic_crest"	INTEGER,
	"cranial_suture"	TEXT,
	"maximum_cranial_length"	REAL,
	"maximum_cranial_breadth"	REAL,
	"basion_bregma_height"	REAL,
	"basion_nasion"	REAL,
	"basion_prosthion_length"	REAL,
	"bizygomatic_diameter"	REAL,
	"nasion_prosthion"	REAL,
	"maximum_nasal_breadth"	REAL,
	"interorbital_breadth"	REAL,
	"artifacts_description"	TEXT,
	"hair_color"	TEXT,
	"preservation_index"	TEXT,
	"hair_taken"	INTEGER,
	"soft_tissue_taken"	INTEGER,
	"bone_taken"	INTEGER,
	"tooth_taken"	INTEGER,
	"textile_taken"	INTEGER,
	"description_of_taken"	TEXT,
	"artifact_found"	INTEGER,
	"estimate_age"	REAL,
	"estimate_living_stature"	REAL,
	"tooth_attrition"	TEXT,
	"tooth_eruption"	TEXT,
	"pathology_anomalies"	TEXT,
	"epiphyseal_union"	TEXT,
	"year_found"	INTEGER,
	"month_found"	TEXT,
	"day_found"	INTEGER,
	"head_direction"	TEXT,
	PRIMARY KEY("Burial_ID")
);
CREATE TABLE IF NOT EXISTS "Photos" (
	"Burial ID"	TEXT,
	"Photo"	BLOB
);
CREATE TABLE IF NOT EXISTS "Field Notes" (
	"Burial ID"	TEXT,
	"Field Note Image"	BLOB
);
INSERT INTO "_source_info_" ("source_id","dir_name","base_name","format_name","dst_table","size","mtime") VALUES (1,'C:\Users\lctak\Downloads\Fag el-Gamous Student INTEX Data\Fag el-Gamous Student INTEX Data\Flat Files\Exports','1 - BYU-Fag el-Gamous DB (export of main_tbl from MDB).xlsx','excel','main_tbl',86113,1617953220),
 (2,'C:\Users\lctak\Downloads\Fag el-Gamous Student INTEX Data\Fag el-Gamous Student INTEX Data\Flat Files\Exports','4 - cranial2002 (export of CranialMain from MDB).xlsx','excel','CranialMain',12058,1617953077);
INSERT INTO "BioData" ("Burial ID","Rack #","Bag #","Low #","High #","N/S","Low #_1","High #_1","E/W","Area","Burial #","Cluster #","Date","Previously Sampled","Notes","Initials","Additional Notes") VALUES ('N 30/40 E 70/80 3 #2A','6','-','30','40','N','70','80','E','3','2A','','','','8 teeth; adult','MBB',''),
 ('N 30/40 E 70/80 3 #2B','15','-','30','40','N','70','80','E','3','2B','','','','TEETH- CHILD','GM',''),
 ('N 30/40 E 70/80 3 #3','15','-','30','40','N','70','80','E','3','3','','','','RIBS','GM',''),
 ('N 30/40 E 70/80 3 #4','25','-','30','40','N','70','80','E','3','4','','','','Infant ribs','AWA',''),
 ('N 30/40 E 70/80 3 #6','8','-','30','40','N','70','80','E','3','6','','','Yes','10 teeth; adult','MBB',''),
 ('N 30/40 E 50/60 Area 1 #','-','5','30','40','N','50','60','E','Area 1','','','1993','','"Herbivore tooth. Perhaps Elephant. Evans/Kuchor 1993" - written on bag.','MBB',''),
 ('N 30/40 E 50/60 Area 1 #','33','','30','40','N','50','60','E','Area 1','',9,'1998','','Clavicle; UKN','AWA',''),
 ('N 30/40 E 50/60 Area 1 #','','6','30','40','N','50','60','E','Area 1','','','1998','','RIBS, TEETH, AND SKIN OR TISSUE','GM',''),
 ('N 30/40 E 50/60 Area 1 #','35','','30','40','N','50','60','E','Area 1','',10,'1998','','2 bone fragments; UKN ("Cluster 10") ','MBB',''),
 ('N 30/40 E 50/60  #1','5','','30','40','N','50','60','E','','1','','','','9 teeth; adult','MBB',''),
 ('N 30/40 E 50/60  #2','5','','30','40','N','50','60','E','','2','','','','14 teeth; adult','MBB',''),
 ('N 30/40 E 50/60  #3','4','-','30','40','N','50','60','E','','3','','','','~13 broken teeth and fragments; child','MBB',''),
 ('N 40/50 E 70/80 4 #2','8','-','40','50','N','70','80','E','4','2','','','','2 rib fragments; adult','MBB',''),
 ('N 40/50 E 70/80 4 #3','13','-','40','50','N','70','80','E','4','3','','','','5 teeth; adult','MBB',''),
 ('N 40/50 E 70/80 4 #5#1','18','','40','50','N','70','80','E','4','5#1','','','Yes','Tooth; adult','AWA',''),
 ('N 50/60 E 50/60 18 #2','17','-','50','60','N','50','60','E','18','2','','','','Powdered tissue sample','MBB',''),
 ('N 70/80 E 60/70 11 #10','10','-','70','80','N','60','70','E','11','10','','1998','Yes','4 fragmented teeth; adult','MBB',''),
 ('N 70/80 E 60/70 11 #6','10','-','70','80','N','60','70','E','11','6','','1998','','Tissue; UKN','MBB',''),
 ('N 140/160 E  50/60 NNW #2','6','-','140','160','N','50','60','E ','NNW','2','','','Yes','1 tooth; adult','MBB',''),
 ('N 140/160 E 50/60 NNW #3','8','-','140','160','N','50','60','E','NNW','3','','','','5 teeth; adult','MBB',''),
 ('N 140/160 E 50/60 NNW #3','8','-','140','160','N','50','60','E','NNW','3','','','','4 rib fragments; adult','MBB',''),
 ('N 140/160 E 50/60 NNW #4','9','-','140','160','N','50','60','E','NNW','4','','','','3 teeth; adult','MBB',''),
 ('N 140/160 E  50/60 NNW #5','12','-','140','160','N','50','60','E ','NNW','5','','','','5 TEETH; ADULT W/ TISSUE?, TOOTH DECAY PRESENT','CIE',''),
 ('N 140/160 E 50/60 NNW #5','11','','140','160','N','50','60','E','NNW','5','','','','BRAIN','GM',''),
 ('N 140/160 E  50/60 NNW #6','31','-','140','160','N','50','60','E ','NNW','6',14,'1998','','Skin and fungi','AWA',''),
 ('N 140/160 E 50/60 NNW #8','35','','140','160','N','50','60','E','NNW','8',10,'1998','','Tissue; UKN ("Cluster 10") ','MBB',''),
 ('N 140/160 E  50/60 NNW #8','33','','140','160','N','50','60','E ','NNW','8',9,'1998','','Unknown tissue','AWA',''),
 ('N 140/160 E 50/60 NNW #8','33','','140','160','N','50','60','E','NNW','8',9,'1998','','Long bone','AWA',''),
 ('N 140/160 E  50/60 NNW #9','5','','140','160','N','50','60','E ','NNW','9','','','','9 teeth; adult','MBB',''),
 ('N 140/160 E  50/60 NNW #9','6','-','140','160','N','50','60','E ','NNW','9','','','','3 teeth; child','MBB',''),
 ('N 140/160 E 50/60 NNW #9','6','-','140','160','N','50','60','E','NNW','9','','','','~23 broken teeth and fragments; child','MBB',''),
 ('N 140/150 E 50/60 NW #2','16','-','140','150','N','50','60','E','NW','2','','','','"Rib 1 2 of 2" - Written on the tube; 2 rib fragments; UKN','MBB',''),
 ('N 140/160 E 50/60 NW #4','3','-','140','160','N','50','60','E','NW','4','','','','~6 TEETH AND FRAGMENTS','GM',''),
 ('N 140/160 E  50/60 NW #4','4','-','140','160','N','50','60','E ','NW','4','','','','4 teeth; tissue; child','MBB',''),
 ('N 140/150 E 50/60 NW #5','6','-','140','150','N','50','60','E','NW','5','','','','7 teeth; adult (some tissue)','MBB',''),
 ('N 140/150 E 50/60 NW #7','8','-','140','150','N','50','60','E','NW','7','','','','4 rib fragments; child','MBB',''),
 ('N 140/150 E 50/60 NW #8','25','-','140','150','N','50','60','E','NW','8','','','','Rib pieces; child','AWA',''),
 ('N 140/150 E 50/60 NW #9','31','','140','150','N','50','60','E','NW','9','','','Yes','Tooth','AWA',''),
 ('N 140/150 E 50/60 NW #10','2','-','140','150','N','50','60','E','NW','10','','','','~12 broken teeth and fragments; adult','MBB',''),
 ('N 140/150 E 50/60 NW #11','-','?','140','150','N','50','60','E','NW','11','','','','UNKNOWN TISSUE','CIE',''),
 ('N 140/150 E 50/60 NW #12','21','-','140','150','N','50','60','E','NW','12','','','','Empty tube with dust residue','MBB',''),
 ('N 140/150 E 50/60 NW #12','5','','140','150','N','50','60','E','NW','12','','','Yes','2 teeth; adult','MBB',''),
 ('N 140/150 E 50/60 NW #12','17','-','140','150','N','50','60','E','NW','12','','','','Powdered bone sample','MBB',''),
 ('N 140/150 E 50/60 NW #13','-','?','140','150','N','50','60','E','NW','13','','1989','','6 TEETH; ADULT "AREA 11"','CIE',''),
 ('N 140/150 E 50/60 NW #14','10','-','140','150','N','50','60','E','NW','14','','1998','','Skin; UKN','MBB',''),
 ('N 140/150 E 50/60 NW #14','10','-','140','150','N','50','60','E','NW','14','','1998','','Bone fragments; UKN','MBB',''),
 ('N 140/160 E  50/60 NW #15','14','','140','160','N','50','60','E ','NW','15','','','','FOOT SKIN','GM',''),
 ('N 140/150 E 50/60 NW #16','14','','140','150','N','50','60','E','NW','16','','','','SKIN FROM FOOT','GM',''),
 ('N 140/160 E  50/60 NW #16','14','','140','160','N','50','60','E ','NW','16','','','','TISSUE FROM CRANIAL CAVITY','GM',''),
 ('N 140/160 E 50/60 NW #16','8','-','140','160','N','50','60','E','NW','16','','','','2 rib fragments; child (some tissue)','MBB',''),
 ('N 140/160 E 50/60 NW #16','8','-','140','160','N','50','60','E','NW','16','','','','7 rib fragments; child','MBB',''),
 ('N 140/150 E 50/60 NW #17','-','4','140','150','N','50','60','E','NW','17','','','','HAIR','CIE',''),
 ('N 140/150 E 50/60 NW #18','2','-','140','150','N','50','60','E','NW','18','','','Yes','~14 broken teeth and fragments; adult','MBB',''),
 ('N 140/150 E 50/60 NW #19','12','-','140','150','N','50','60','E','NW','19','','','','15 TEETH; ADULT','CIE',''),
 ('N 140/150 E 50/60 NW #20','1','-','140','150','N','50','60','E','NW','20','','','','~9 teeth; adult','AWA',''),
 ('N 140/150 E 50/60 NW #20','1','-','140','150','N','50','60','E','NW','20','','','','~10 broken teeth; adult','AWA',''),
 ('N 140/150 E 50/60 NW #20','11','','140','150','N','50','60','E','NW','20','','','','RESIN-RC','GM',''),
 ('N 140/150 E 50/60 NW #22','17','-','140','150','N','50','60','E','NW','22','','','','Powdered tissue sample','MBB',''),
 ('N 140/150 E 50/60 NW #23','21','-','140','150','N','50','60','E','NW','23','','','','Empty tube with dust residue','MBB',''),
 ('N 140/150 E 50/60 NW #23','31','-','140','150','N','50','60','E','NW','23',14,'1998','','Bone','AWA',''),
 ('N 140/150 E 50/60 NW #24','31','-','140','150','N','50','60','E','NW','24',14,'1998','','Teeth; adult','AWA',''),
 ('N 140/150 E 50/60 NW #24','','6','140','150','N','50','60','E','NW','24','','1998','','TEETH AND LONG BONE','GM',''),
 ('N 140/150 E 50/60 NW #25','10','-','140','150','N','50','60','E','NW','25','','1998','','Bone fragments (some rib); child','MBB',''),
 ('N 140/150 E 50/60 NW #25','','6','140','150','N','50','60','E','NW','25','','1998','','TEETH, TISSUE, AND VERTEBRAE ','GM',''),
 ('N 140/160 E 50/60 NW #26','14','','140','160','N','50','60','E','NW','26','','','','SKIN AND 6 TEETH','GM',''),
 ('N 140/150 E 50/60 NW #27','25','-','140','150','N','50','60','E','NW','27','','','','Rib; child','AWA',''),
 ('N 140/160 E  50/60 NW #28','24','-','140','160','N','50','60','E ','NW','28','','','','Skin; infant','MBB',''),
 ('N 140/150 E 50/60 NW #1','22','-','140','150','N','50','60','E','NW','1','','','','FOOT TISSUE','GM',''),
 ('N 140/150 E 50/60 NW #10','25','-','140','150','N','50','60','E','NW','10','','','','Rib pieces; adult','AWA',''),
 ('N 140/160 E 50/60 NW #16','3','-','140','160','N','50','60','E','NW','16','','','','2 RIB ','GM',''),
 ('N 140/150 E 50/60 NW #17','3','-','140','150','N','50','60','E','NW','17','','','Y','12 TEETH AND FRAGMENTS','GM',''),
 ('N 140/150 E 50/60 NW #18','4','-','140','150','N','50','60','E','NW','18','','','','16 teeth; (2 child?) 14 adult','MBB',''),
 ('N 140/150 E 50/60 NW #2','8','-','140','150','N','50','60','E','NW','2','','','Yes','9 teeth; adult','MBB',''),
 ('N 140/150 E 50/60 NW #20','8','-','140','150','N','50','60','E','NW','20','','','','4 rib fragments; sub-adult','MBB',''),
 ('N 140/150 E 50/60 NW #21','2','-','140','150','N','50','60','E','NW','21','','','','10 teeth; adult','MBB',''),
 ('N 140/150 E 50/60 NW #21','-','2','140','150','N','50','60','E','NW','21','','','','MANDIBLE AND TEETH FRAGMENTS; CHILD','CIE',''),
 ('N 140/150 E 50/60 NW #22','','6','140','150','N','50','60','E','NW','22','','1998','','SKIN AND JEWELLERY','GM',''),
 ('N 140/150 E 50/60 NW #23','31','-','140','150','N','50','60','E','NW','23','','1998','','"Fibula"; child','AWA',''),
 ('N 140/150 E 50/60 NW #24','31','-','140','150','N','50','60','E','NW','24','','1998','','Skin; femur','AWA',''),
 ('N 140/150 E 50/60 NW #25','','6','140','150','N','50','60','E','NW','25','','1998','','RIBS, SKIN, AND TEETH','GM',''),
 ('N 140/150 E 50/60 NW #26','34','','140','150','N','50','60','E','NW','26','','1998','','Lung','AWA',''),
 ('N 140/150 E 50/60 NW #27','34','','140','150','N','50','60','E','NW','27','','1998','','4 teeth; adult','AWA',''),
 ('N 140/160 E  50/60 NW #48-02','29','-','140','160','N','50','60','E ','NW','48-02','','2000','','4 UNK LONG BONE FRAG (TOO DIRTY TO SEE), 1 TOOTH; POSS CHILD','CIE',''),
 ('N 140/150 E 50/60 NW #6','-','1','140','150','N','50','60','E','NW','6','','33652','','MANDIBLE AND 4 TEETH; ADULT','CIE',''),
 ('N 140/150 E 50/60 NW #6','-','4','140','150','N','50','60','E','NW','6','','','','RIB BONES, INFANT','CIE',''),
 ('N 140/150 E 50/60 NW #6','16','-','140','150','N','50','60','E','NW','6','','','','10 rib fragments; infant','MBB',''),
 ('N 140/150 E 50/60 NW #9','3','-','140','150','N','50','60','E','NW','9','','','','9 TEETH','GM',''),
 ('N 140/150 E 50/60 NW #9','4','-','140','150','N','50','60','E','NW','9','','','','4 teeth; adult','MBB',''),
 ('N 140/160 E 50/60 NWW #8','6','-','140','160','N','50','60','E','NWW','8','','','','11 teeth; child','MBB',''),
 ('N 140/150 E 0/10 SE #1','14','-','140','150','N','0','10','E','SE','1',12,'1998','','Skin from arm; UKN ("Cluster 12") ','MBB',''),
 ('N 140/150 E 0/10 SE #17','14','-','140','150','N','0','10','E','SE','17',12,'1998','','Internal tissue; UKN ("Cluster 12") ','MBB',''),
 ('N 140/150 E 0/10 SE #23','5','','140','150','N','0','10','E','SE','23','','','','15 teeth; adult','MBB',''),
 ('N 140/130 E 0/10 SE #20','25','-','140','130','N','0','10','E','SE','20','','','','Cranium','AWA',''),
 ('N 140/150 E 0/10 SW #18','25','-','140','150','N','0','10','E','SW','18','','','','Rib; child','AWA',''),
 ('N 140/150 E 0/10 SW #9','-','1','140','150','N','0','10','E','SW','9','','','','HAIR AND POSSIBLE BONE FRAGMENTS','CIE',''),
 ('N 140/160 E 50/60 SW #3','25','-','140','160','N','50','60','E','SW','3','','','','Tissue; UKN','MBB',''),
 ('N 140/160 E 50/60 SW #20','12','-','140','160','N','50','60','E','SW','20','','','','8-9 BROKEN TEETH; ADULT, SEVERELY DECAYED ','CIE',''),
 ('N 140/160 E 50/60 SW #20','17','-','140','160','N','50','60','E','SW','20','','','','Empty tube with dust residue','MBB',''),
 ('N 140/160 E 50/60 SW #20','17','-','140','160','N','50','60','E','SW','20','','','','Empty tube with dust residue','MBB',''),
 ('N 150/160 W 0/10 NE #6','18','','150','160','N','0','10','W','NE','6',5,'1998','Yes','2 teeth; adult ("Cluster 5")','MBB',''),
 ('N 150/160 W 0/10 NE #8','34','','150','160','N','0','10','W','NE','8','','1998','','Skin','AWA',''),
 ('N 150/160 W 0/10 NE #10','34','','150','160','N','0','10','W','NE','10','','1998','','Scat.','AWA',''),
 ('N 150/160 W 0/10 NE #12','-','2','150','160','N','0','10','W','NE','12','','33652','','"DIS-ARTICULATED" HAND; CHILD, UNK BURIAL ','CIE',''),
 ('N 150/160 W 0/10 NE #13','24','-','150','160','N','0','10','W','NE','13','','','','Skin from rib area; UKN','MBB',''),
 ('N 150/160 W 0/10 NE #13','25','-','150','160','N','0','10','W','NE','13','','','','Rib pieces; child','AWA',''),
 ('N 150/160 W 0/10 NE #15','8','-','150','160','N','0','10','W','NE','15','','','','3 rib fragments; adult','MBB',''),
 ('N 150/160 W 0/10 NE #15','12','-','150','160','N','0','10','W','NE','15','','','','5 TEETH; ADULT','CIE',''),
 ('N 150/160 W 0/10 NE #17','25','-','150','160','N','0','10','W','NE','17','','','','Cranial Tissue; UKN','MBB',''),
 ('N 150/160 W 0/10 NE #20','25','-','150','160','N','0','10','W','NE','20','','','','Tissue from palate; UKN','MBB',''),
 ('N 150/160 W 0/10 NE #22','25','-','150','160','N','0','10','W','NE','22','','','','Tissue from skull; UKN','MBB',''),
 ('N 150/160 W 0/10 NE #23','-','1','150','160','N','0','10','W','NE','23','','','','HAIR','CIE',''),
 ('N 150/160 W 0/10 NE #24','2','-','150','160','N','0','10','W','NE','24','','','','12 teeth; adult','MBB',''),
 ('N 150/160 W 0/10 NE #29','-','2','150','160','N','0','10','W','NE','29','','','','HAIR','CIE',''),
 ('N 150/160 W 0/10 NE #30','2','-','150','160','N','0','10','W','NE','30','','','','7 teeth; adult','MBB',''),
 ('N 150/160 W 0/10 NE #30','12','-','150','160','N','0','10','W','NE','30','','','','5 TEETH; ADULT','CIE',''),
 ('N 150/160 W 0/10 NE #32','17','-','150','160','N','0','10','W','NE','32','','','','Powdered tissue sample','MBB',''),
 ('N 150/160 W 0/10 NE #33','31','','150','160','N','0','10','W','NE','33','','1998','','Skin','AWA',''),
 ('N 150/160 W 0/10 NE #33','31','','150','160','N','0','10','W','NE','33','','1998','','Scapula (?); child','AWA',''),
 ('N 150/160 W 0/10 NE #37','31','-','150','160','N','0','10','W','NE','37',22,'1998','','Tissue','AWA',''),
 ('N 150/160 W 0/10 NE #38','30','-','150','160','N','0','10','W','NE','38','','2000','','2 TEETH, 1 RIB FRAGMENT; ADULT','CIE',''),
 ('N 150/160 W 0/10 NE #38','30','-','150','160','N','0','10','W','NE','38','','2000','','RIBS AND TEETH','GM',''),
 ('N 150/160 E 50/60 NNW #12','21','-','150','160','N','50','60','E','NNW','12',19,'1998','','Bone powder; UKN  ("Cluster 19")','MBB',''),
 ('N 150/160 E 50/60 NNW #13','21','-','150','160','N','50','60','E','NNW','13',19,'1998','','Skin powder; UKN ("Cluster 19")','MBB',''),
 ('N 150/160 E 50/60 NNW #13','21','-','150','160','N','50','60','E','NNW','13',19,'1998','','Bone powder; UKN  ("Cluster 19")','MBB',''),
 ('N 150/160 E 50/60 NNW #14','-','4','150','160','N','50','60','E','NNW','14','','','','THORACIC REGION MASS','CIE',''),
 ('N 150/160 E 50/60 NNW #14','3','-','150','160','N','50','60','E','NNW','14','','','','12 EETH- CHILD','GM',''),
 ('N 150/160 E 50/60 NNW #16','-','4','150','160','N','50','60','E','NNW','16','','','','MANDIBLE AND TEETH; ADULT','CIE',''),
 ('N 150/160 E 50/60 NNW #16','3','-','150','160','N','50','60','E','NNW','16','','','','10 TEETH','GM',''),
 ('N 150/160 E 50/60 NNW #16','8','-','150','160','N','50','60','E','NNW','16','','','','2 rib fragments; child','MBB',''),
 ('N 150/160 E 50/60 NNW #18','25','-','150','160','N','50','60','E','NNW','18','','','','Skin; UKN','MBB',''),
 ('N 150/160 E 50/60 NNW #18','2','-','150','160','N','50','60','E','NNW','18','','','','~12 broken teeth and fragments; adult','MBB',''),
 ('N 150/160 E 50/60 NNW #19','-','3','150','160','N','50','60','E','NNW','19','','','','INFANT SKULL FRAGMENTS','CIE',''),
 ('N 150/160 E 50/60 NNW #19','12','-','150','160','N','50','60','E','NNW','19','','','','3 TEETH AND FRAGMENT; ADULT, TISSUE ON 1 TOOTH','CIE',''),
 ('N 150/160 E 50/60 NNW #20','21','-','150','160','N','50','60','E','NNW','20','','','','Powdered tooth sample','MBB',''),
 ('N 150/160 E 50/60 NNW #20','21','-','150','160','N','50','60','E','NNW','20','','','','Powdered tooth sample','MBB',''),
 ('N 150/160 E 50/60 NNW #22','21','-','150','160','N','50','60','E','NNW','22','','','','Tissue from intestine and tibia','MBB',''),
 ('N 150/160 E 50/60 NNW #22','21','-','150','160','N','50','60','E','NNW','22','','','','Powdered foot sample','MBB',''),
 ('N 150/160 E 50/60 NNW #23','35','','150','160','N','50','60','E','NNW','23','','1998','Yes','2 teeth; bone and tissue; adult','MBB',''),
 ('N 150/160 E 50/60 NNW #23','14','-','150','160','N','50','60','E','NNW','23',18,'1998','Yes','1 tooth; adult ("Cluster 18") ','MBB',''),
 ('N 150/160 E 50/60 NNW #24','32','','150','160','N','50','60','E','NNW','24',3,'1998','','2 teeth; adult','AWA',''),
 ('N 150/160 E 50/60 NNW #24','32','','150','160','N','50','60','E','NNW','24',3,'1998','','Skin','AWA',''),
 ('N 150/160 E 50/60 NNW #25','30','-','150','160','N','50','60','E','NNW','25','','2000','','RIBS AND MOLARS','GM',''),
 ('N 150/160  50/60 NNW #16','24','-','150','160','N','50','60','','NNW','16','','','','Skin from foot; UKN','MBB',''),
 ('N 150/160 E 0/10 NW #1','29','-','150','160','N','0','10','E','NW','1','','2000','','2 TEETH AND 3 RIB FRAGMENTS; ADULT','CIE',''),
 ('N 150/160 E 0/10 NW #4','-','3','150','160','N','0','10','E','NW','4','','34372','','Hair','CIE',''),
 ('N 150/160 E 0/10 NW #7','14','','150','160','N','0','10','E','NW','7','','','','TISSUE ??','GM',''),
 ('N 150/160 E 0/10 NW #8','24','-','150','160','N','0','10','E','NW','8','','','','Tissue (muscle?); UKN','MBB',''),
 ('N 150/160 E 0/10 NW #9','6','-','150','160','N','0','10','E','NW','9','','','','10 teeth; child','MBB',''),
 ('N 150/140 E 0/10 NW #10','13','-','150','140','N','0','10','E','NW','10','','','','8 WHOLE TEETH & 1 FRAGMENTED TOOTH, ADULT, DECAYED','CIE',''),
 ('N 150/160 E 0/10 NW #11','16','-','150','160','N','0','10','E','NW','11','','','','"Rib #1 1 of 2" - Written on the tube; 1 rib fragment; UKN','MBB',''),
 ('N 150/160 E 0/10 NW #13','25','-','150','160','N','0','10','E','NW','13','','','','Skin','AWA',''),
 ('N 150/160 E 0/10 NW #13','25','-','150','160','N','0','10','E','NW','13','','','','Skin from hand; UKN','MBB',''),
 ('N 150/160 E 0/10 NW #16','-','4','150','160','N','0','10','E','NW','16','','','','HAIR','CIE',''),
 ('N 150/160 E 0/10 NW #16','6','-','150','160','N','0','10','E','NW','16','','','','8 teeth; adult','MBB',''),
 ('N 150/160 E 0/10 NW #18','3','-','150','160','N','0','10','E','NW','18','','','','9 TEETH','GM',''),
 ('N 150/160 E 0/10 NW #21','2','-','150','160','N','0','10','E','NW','21','','','','9 broken teeth; adult','MBB',''),
 ('N 150/160 E 0/10 NW #22','10','-','150','160','N','0','10','E','NW','22','','','','7 ADULT TEETH, "EYE, SKIN FROM FACE"','CIE',''),
 ('N 150/160 E 0/10 NW #27','17','-','150','160','N','0','10','E','NW','27','','','','Powdered tissue sample','MBB',''),
 ('N 150/160 E 0/10 NW #29','17','-','150','160','N','0','10','E','NW','29','','','','Empty tube with dust residue','MBB',''),
 (' 150/160 W 0/10 NW #15','18','','150','160','','0','10','W','NW','15',5,'1998','','Skin; UKN ("Cluster 5")','MBB',''),
 ('N 150/160 E 0/10 NW #22A','31','-','150','160','N','0','10','E','NW','22A',22,'1998','Yes','5 teeth; adult','AWA',''),
 ('N 150/160 E 0/10 NW #5-02','','6','150','160','N','0','10','E','NW','5-02','','1998','','SKIN, TEETH, AND INTERNAL TISSUE','GM',''),
 ('N 150/160 E 50/60 NW #14','13','-','150','160','N','50','60','E','NW','14','','','','8 BROKEN TEETH; ADULT','CIE',''),
 ('N 150/160 E 50/60 NW #19','24','-','150','160','N','50','60','E','NW','19','','','','Tissue; UKN','MBB',''),
 ('N 150/160 E 50/60 NW #20','3','-','150','160','N','50','60','E','NW','20','','','','4 TEETH','GM',''),
 ('N 150/160 E 50/60 NW #23','22','-','150','160','N','50','60','E','NW','23','','','','BRAIN','GM',''),
 ('N 150/160 E 50/60 NWW #21','25','-','150','160','N','50','60','E','NWW','21','','','','Cranial Tissue; UKN','MBB',''),
 ('N 150/160 E 0/10 SE #1','14','-','150','160','N','0','10','E','SE','1',19,'1998','','Skin; UKN ("Cluster 19") ','MBB',''),
 ('N 150/160 E 0/10 SE #1','14','','150','160','N','0','10','E','SE','1','','','','SCALP TISSUE','GM',''),
 ('N 150/160 E 0/10 SE #1','24','-','150','160','N','0','10','E','SE','1','','','','Tissue; UKN','MBB',''),
 ('N 150/160 E 0/10 SE #1','13','-','150','160','N','0','10','E','SE','1','','','','6 TEETH AND FRAGMENTS; ADULT W/ TISSUE ATTACHED','CIE',''),
 ('N 150/160 E 0/10 SE #2','25','-','150','160','N','0','10','E','SE','2','','','','Tissue (muscle?); UKN','MBB',''),
 ('N 150/160 E  0/10 SE #3','3','-','150','160','N','0','10','E ','SE','3','','','Y','12 TEETH','GM',''),
 ('N 150/160 E 0/10 SE #3','6','-','150','160','N','0','10','E','SE','3','','','','~13 broken teeth and fragments; adult','MBB',''),
 ('N 150/160 E 0/10 SE #3','15','-','150','160','N','0','10','E','SE','3','','','','RIB ','GM',''),
 ('N 150/160 E 0/10 SE #4','4','-','150','160','N','0','10','E','SE','4','','','','5 teeth; adult','MBB',''),
 ('N 150/160 E 0/10 SE #5','6','-','150','160','N','0','10','E','SE','5','','','','5 teeth; adult','MBB',''),
 ('N 150/160 E 0/10 SE #5','14','','150','160','N','0','10','E','SE','5','','','','8 bones; UKN','MBB',''),
 ('N 150/160 E 0/10 SE #5','17','-','150','160','N','0','10','E','SE','5','','','','Powdered tissue sample','MBB',''),
 ('N 150/160 E 0/10 SE #6','21','-','150','160','N','0','10','E','SE','6','','','','Powdered tooth sample','MBB',''),
 ('N 150/160 E 0/10 SE #6','34','','150','160','N','0','10','E','SE','6',15,'1998','','"Thoracic along vertebrae"; 2 metal rings','AWA',''),
 ('N 150/160 E 0/10 SE #6','34','','150','160','N','0','10','E','SE','6',15,'1998','','Broken teeth; UKN','AWA',''),
 ('N 150/160 E 0/10 SE #7','','6','150','160','N','0','10','E','SE','7','','1998','','SKIN AND TEETH','GM',''),
 ('N 150/160 E 0/10 SE #7','32','','150','160','N','0','10','E','SE','7',3,'1998','','Lung','AWA',''),
 ('N 150/160 E 0/10 SE #7','32','','150','160','N','0','10','E','SE','7',3,'1998','','Rib','AWA',''),
 ('N 150/160 E 0/10 SE #7','29','-','150','160','N','0','10','E','SE','7','','2000','','RIBS AND TEETH','GM',''),
 ('N 150/160 E 0/10 SE #8','29','','150','160','N','0','10','E','SE','8','','2000','','3 TEETH, 2 RIB FRAGMENTS; ADULT, "ROMAN"','CIE',''),
 ('N 150/160 E 0/10 SE #9','30','-','150','160','N','0','10','E','SE','9','','2000','','2 TEETH, 2 RIB FRAGMENTS; ADULT','CIE',''),
 ('N 150/160 E 0/10 SE #9','-','1','150','160','N','0','10','E','SE','9','','33653','','4 TEETH AND BRAIN;ADULT "UNIDENTIFIED"','CIE',''),
 ('N 150/160 E 0/10 SE #9','24','-','150','160','N','0','10','E','SE','9','','','','Tissue; UKN','MBB',''),
 ('N 150/160 E 0/10 SE #10','3','-','150','160','N','0','10','E','SE','10','','','Y','9 TEETH','GM',''),
 ('N 150/160 E 0/10 SE #11','25','-','150','160','N','0','10','E','SE','11','','','','Tissue from scapula; UKN','MBB',''),
 ('N 150/160 E 0/10 SE #11','15','-','150','160','N','0','10','E','SE','11','','','','TEETH','GM',''),
 ('N 150/160 E 0/10 SE #12','3','-','150','160','N','0','10','E','SE','12','','','Y','9 TEETH','GM',''),
 ('N 150/160 E 0/10 SE #12','8','-','150','160','N','0','10','E','SE','12','','','','10 teeth; child','MBB',''),
 ('N 150/160 E 0/10 SE #13','8','-','150','160','N','0','10','E','SE','13','','','','4 rib fragments; child','MBB',''),
 ('N 150/160 E 0/10 SE #14','8','-','150','160','N','0','10','E','SE','14','','','','2 rib fragments; adult','MBB',''),
 ('N 150/160 E 0/10 SE #14','25','-','150','160','N','0','10','E','SE','14','','','','Skin from ankle; UKN','MBB',''),
 ('N 150/160 E 0/10 SE #14','3','-','150','160','N','0','10','E','SE','14','','','Y','9 TEETH ','GM',''),
 ('N 150/160 E 0/10 SE #3','6','-','150','160','N','0','10','E','SE','3','','','','7 teeth; adult','MBB',''),
 ('N 150/160 E 0/10 SW #2','16','-','150','160','N','0','10','E','SW','2','','','','7 ribs and fragments; child','MBB',''),
 ('N 150/160 E 0/10 SW #2','14','','150','160','N','0','10','E','SW','2','','','','5 bones; adult?','MBB',''),
 ('N 150/160 E 0/10 SW #3','11','','150','160','N','0','10','E','SW','3','','','Y','TOOTH-RC','GM',''),
 ('N 150/160 E 0/10 SW #3','17','-','150','160','N','0','10','E','SW','3','','','','Powdered bone sample','MBB',''),
 ('N 150/160 E 0/10 SW #7','34','','150','160','N','0','10','E','SW','7',15,'1998','','Skin','AWA',''),
 ('N 150/160 E 0/10 SW #10','31','-','150','160','N','0','10','E','SW','10',14,'1998','','Long bone','AWA',''),
 ('N 150/160 E 0/10 SW #2A','31','-','150','160','N','0','10','E','SW','2A',14,'1998','','Teeth; child','AWA',''),
 ('N 150/160 E 50/60 SW #1','8','-','150','160','N','50','60','E','SW','1','','','','2 rib fragments; adult','MBB',''),
 ('N 150/160 E 50/50 SW #1','2','-','150','160','N','50','50','E','SW','1','','','','9 teeth; adult','MBB',''),
 ('N 150/160 E 50/60 SW #2','22','-','150','160','N','50','60','E','SW','2','','','','SKULL','GM',''),
 ('N 150/160 E 50/60 SW #4','14','','150','160','N','50','60','E','SW','4','','','','3 bone fragments (foot); adult','MBB',''),
 ('N 150/160 E 50/60 SW #5','21','-','150','160','N','50','60','E','SW','5','','','','Skin sample','MBB',''),
 ('N 150/160 E 50/60 SW #5','11','','150','160','N','50','60','E','SW','5','','','','TOOTH-RC','GM',''),
 ('N 150/160 E 50/60 SW #5','17','-','150','160','N','50','60','E','SW','5','','','','Empty tube with dust residue','MBB',''),
 ('N 150/160 E 50/60 SW #5','17','-','150','160','N','50','60','E','SW','5','','','','Empty tube with dust residue','MBB',''),
 ('N 150/160 E 50/60 SW #6','14','-','150','160','N','50','60','E','SW','6',18,'1998','','Skin; UKN ("Cluster 18") ','MBB',''),
 ('N 150/160 E 50/60 SW #7','31','','150','160','N','50','60','E','SW','7',2,'1998','','Skin','AWA',''),
 ('N 150/160 E  50/60 SW #8','31','','150','160','N','50','60','E ','SW','8',2,'1998','','Ribs','AWA',''),
 ('N 150/160 E  50/60 SW #8','31','','150','160','N','50','60','E ','SW','8',2,'1998','','3 Teeth; adult','AWA',''),
 ('N 150/160 E 50/60 SW #8','30','-','150','160','N','50','60','E','SW','8','','2000','','3 TEETH, 3 RIB FRAGMENTS; ADULT','CIE',''),
 ('N 150/160 E 50/60 SW #9','30','-','150','160','N','50','60','E','SW','9','','2000','','RIBS AND TEETH','GM',''),
 ('N 150/160 E 50/60 SW #9','29','','150','160','N','50','60','E','SW','9','','2000','','2 MANDIBLE FRAGMENTS W/ MULT TEETH FRAGMENTS, MULT RIB FRAGMENTS; INFANT','CIE',''),
 ('N 150/160 E 50/60 SW #10','29','','150','160','N','50','60','E','SW','10','','2000','','BABY','GM',''),
 ('N 150/160 E 50/60 SW #10','14','-','150','160','N','50','60','E','SW','10','','','','SKIN FROM SKULL','GM',''),
 ('N 150/160 E 50/60 SW #10','4','-','150','160','N','50','60','E','SW','10','','','','5 teeth; adult','MBB',''),
 ('N 150/160 E 50/60 SW #10','6','-','150','160','N','50','60','E','SW','10','','','','6 teeth; adult (some bone)','MBB',''),
 ('N 150/160 E 50/60 SW #10','3','-','150','160','N','50','60','E','SW','10','','','','9 TEETH','GM',''),
 ('N 150/160 E  50/60 SW #11','4','-','150','160','N','50','60','E ','SW','11','','','','4 teeth; adult','MBB',''),
 ('N 150/160 E  50/60 SW #11','-','1','150','160','N','50','60','E ','SW','11','','','','HAIR AND POSSIBLE BONE FRAGMENTS','CIE',''),
 ('N 150/160 E 50/60 SW #13','8','-','150','160','N','50','60','E','SW','13','','','','3 rib fragments; adult','MBB',''),
 ('N 150/160 E 50/60 SW #13','22','-','150','160','N','50','60','E','SW','13','','','','TISSUE FROM TIBIA JOINT BY ANKLE','GM',''),
 ('N 150/160 E 50/60 SW #14','-','4','150','160','N','50','60','E','SW','14','','','','HAIR','CIE',''),
 ('N 150/160 E 50/60 SW #14','3','-','150','160','N','50','60','E','SW','14','','','','11 TEETH AND FRAGMENTS','GM',''),
 ('N 150/160 E 50/60 SW #15','12','-','150','160','N','50','60','E','SW','15','','','','8 TEETH; ADULT','CIE',''),
 ('N 150/160 E 50/60 SW #15','14','','150','160','N','50','60','E','SW','15','','','','3 rib fragments; adult','MBB',''),
 ('N 150/160 E 50/60 SW #15','12','-','150','160','N','50','60','E','SW','15','','','','2 TEETH; ADULT, 1 BROKEN IN HALF','CIE',''),
 ('N 150/160 E 50/60 SW #15','22','-','150','160','N','50','60','E','SW','15','','','','HAIR','GM',''),
 ('N 150/160 E 50/60 SW #16','-','5','150','160','N','50','60','E','SW','16','','1993','','4 tubes with bone fragments and tissue; UKN ("SOHAG") written on bag','MBB',''),
 ('N 150/160 E 50/60 SW #16','14','-','150','160','N','50','60','E','SW','16',18,'1998','','Rib fragment and tissue; adult ("Cluster 18") ','MBB',''),
 ('N 150/160 E 50/60 SW #17','14','-','150','160','N','50','60','E','SW','17',13,'1998','','~5 broken teeth fragments; child ("Cluster 13") ','MBB',''),
 ('N 150/160 E 50/60 SW #17','14','-','150','160','N','50','60','E','SW','17',13,'1998','','Tissue; ("Cluster 13") ','MBB',''),
 ('N 150/160 E 50/60 SW #18','33','','150','160','N','50','60','E','SW','18',2,'1998','','Tissue','AWA',''),
 ('N 150/160 E 50/60 SW #18','33','','150','160','N','50','60','E','SW','18',2,'1998','','Internal','AWA',''),
 ('N 150/160 E 50/60 SW #19','29','','150','160','N','50','60','E','SW','19','','2000','','2 TEETH AND 2 RIB FRAGMENTS; ADULT','CIE',''),
 ('N 150/160 E 50/60 SW #19','29','','150','160','N','50','60','E','SW','19','','2000','','RIBS AND TEETH','GM',''),
 ('N 150/160 E 50/60 SW #20','30','-','150','160','N','50','60','E','SW','20','','2000','','2 TEETH (MOLARS), 2 RIBS; CHILD','CIE',''),
 ('N 150/160 E 50/60 SW #20','13','-','150','160','N','50','60','E','SW','20','','','','5 TEETH; ADULT','CIE',''),
 ('N 150/160 E 50/60 SW #20','14','-','150','160','N','50','60','E','SW','20','','','','SKIN AND HAIR','GM',''),
 ('N 150/160 E 50/60 SW #22','3','-','150','160','N','50','60','E','SW','22','','','','11 TEETH','GM',''),
 ('N 150/160 E 50/60 SW #22','3','-','150','160','N','50','60','E','SW','22','','','','4 TEETH','GM',''),
 ('N 150/160 E 50/60 SW #22','4','-','150','160','N','50','60','E','SW','22','','','','4 teeth; adult','MBB',''),
 ('N 150/160 E 50/60 SW #22','25','-','150','160','N','50','60','E','SW','22','','','','Rib; adult','AWA',''),
 ('N 150/160 E 50/60 SW #24','-','4','150','160','N','50','60','E','SW','24','','','','HALF MANDIBLE W/ TEETH; ADULT','CIE',''),
 ('N 150/160 E 50/60 SW #24','6','-','150','160','N','50','60','E','SW','24','','','','9 teeth; adult','MBB',''),
 ('N 150/160 E 50/60 SW #25','4','-','150','160','N','50','60','E','SW','25','','','','5 teeth; adult','MBB',''),
 ('N 150/160 E 50/60 SW #25','8','-','150','160','N','50','60','E','SW','25','','','Yes','6 teeth; adult','MBB',''),
 ('N 150/160 E 50/60 SW #26','27','-','150','160','N','50','60','E','SW','26','','','','Tissue (skin and mucle) from foot (5 toes); UKN','MBB',''),
 ('N 150/160 E 50/60 SW #26','14','-','150','160','N','50','60','E','SW','26',13,'1998','','Rib fragments; child ("Cluster 13")','MBB',''),
 ('N 150/160 E 50/60 SW #26','35','','150','160','N','50','60','E','SW','26',10,'1998','','3 teeth and tissue; adult ("Cluster 10") ','MBB',''),
 ('N 150/160 E 50/60 SW #27','34','','150','160','N','50','60','E','SW','27',17,'1998','','Internal tissue','AWA',''),
 ('N 150/160 E 50/60 SW #27','34','','150','160','N','50','60','E','SW','27',17,'1998','','Skin','AWA',''),
 ('N 150/160 E 50/60 SW #27','34','','150','160','N','50','60','E','SW','27',17,'1998','','Ribs and teeth; child','AWA',''),
 ('N 150/160 E 50/60 WNW? #17','30','-','150','160','N','50','60','E','WNW?','17','','2000','','RIBS AND MOLARS- YOUTH','GM',''),
 ('N 150/160 E 0/10  #','14','-','150','160','N','0','10','E','','',19,'1998','','Bone fragments; UKN ("Cluster 19")','MBB',''),
 ('N  160/170 E  30/40   #9','17','-','160','170','N ','30','40','E ',' ','9','','','','Powdered tissue sample','MBB',''),
 ('N 160/170 W 0/10 NW #3','30','-','160','170','N','0','10','W','NW','3','','2000','','"RIBS AND MOLARS"; UNK AGE (TOO DIRTY TO SEE)','CIE',''),
 ('N 160/170 W 0/10 NW #4','30','-','160','170','N','0','10','W','NW','4','','2000','','RIBS AND TEETH','GM',''),
 ('N 160/170 W 0/10 NW #6','30','-','160','170','N','0','10','W','NW','6','','2000','','VERTEBRAE, INFANT W/ TISSUE','CIE',''),
 ('N 160/170 W 0/10 NW #7','25','-','160','170','N','0','10','W','NW','7','','','','Child ribs','AWA',''),
 ('N 160/170 W 0/10 NW #10','22','-','160','170','N','0','10','W','NW','10','','','','EYE ORBIT TISSUE','GM',''),
 ('N 160/170 W 0/10 NW #20','22','-','160','170','N','0','10','W','NW','20','','','','THORAX','GM',''),
 ('N 160/170 W 0/10 NW #28','8','-','160','170','N','0','10','W','NW','28','','','','3 rib fragments; adult','MBB',''),
 ('N 160/170 W 0/10 NW #13','8','-','160','170','N','0','10','W','NW','13','','','','2 rib fragments; adult','MBB',''),
 ('N 160/170 W 0/10 NW #14','4','-','160','170','N','0','10','W','NW','14','','','','11 teeth; child','MBB',''),
 ('N 160/170 W 0/10 NW #20','8','-','160','170','N','0','10','W','NW','20','','','Yes','5 teeth; adult','MBB',''),
 ('N 160/170 W 0/10 NW #30','-','?','160','170','N','0','10','W','NW','30','','','','SMALL TEST TUBE OF BUGS?','CIE',''),
 ('N 160/170 W 0/10 NW #31A','19','-','160','170','N','0','10','W','NW','31A','','','','Fragments of foot and rib (with tissue); child','MBB',''),
 ('N 160/170 W 0/10 NW #33','22','-','160','170','N','0','10','W','NW','33','','','','HAIR IN SCALP','GM',''),
 ('N 160/170 W 0/10 NW #36','31','-','160','170','N','0','10','W','NW','36','','1998','','Skin','AWA',''),
 ('N 160/170 W 0/10 NW #44','33','','160','170','N','0','10','W','NW','44',3,'1998','','Long bone pieces','AWA',''),
 ('N 160/170 W 0/10 NW #7','33','','160','170','N','0','10','W','NW','7',3,'1998','','Bone and tissue','AWA',''),
 ('N 160/170 W 0/10 NW #9','30','-','160','170','N','0','10','W','NW','9','','2000','','VERTEBRAE','GM',''),
 ('N 160/170 E 10/20 NW #4','4','-','160','170','N','10','20','E','NW','4','','','','17 teeth; child','MBB',''),
 ('N 160/170 E 10/20 NW #7','8','-','160','170','N','10','20','E','NW','7','','','','9 bone fragments; child','MBB',''),
 ('N 160/170 E 10/20 NW #8','4','-','160','170','N','10','20','E','NW','8','','','','4 teeth; adult','MBB',''),
 ('N 160/170 E 10/20 NW #40367','-','2','160','170','N','10','20','E','NW','40367','','','','WOOD','CIE',''),
 ('N 160/170 E 10/20 NW #40394','20','-','160','170','N','10','20','E','NW','40394','','','','Scalp, hair, piece of skull','AWA',''),
 ('N 160/170 E 10/20 NW #01- 02','1','-','160','170','N','10','20','E','NW','01- 02','','','','11 teeth; adult','AWA',''),
 ('N 160/170 E 10/20 NW #01- 03','29','','160','170','N','10','20','E','NW','01- 03','','','','EYE','GM',''),
 ('N 160/170 E 10/20 NW #01- 04','17','-','160','170','N','10','20','E','NW','01- 04','','','','Bone or tooth fragments','MBB',''),
 ('N 160/170 E 10/20 NW #01- 05','31','-','160','170','N','10','20','E','NW','01- 05','','1998','','"Internal"','AWA',''),
 ('N 160/170 E 10/20 NW #01- 06','33','','160','170','N','10','20','E','NW','01- 06',2,'1998','','6 teeth; adult','AWA',''),
 ('N 160/170 E 10/20 NW #01- 07','30','-','160','170','N','10','20','E','NW','01- 07','','2000','','BLACK DEBRIS; "BUGS FROM PELVIS"','CIE',''),
 ('N 160/170 E 10/20 NW #02- 01','30','-','160','170','N','10','20','E','NW','02- 01','','2000','','2 TEETH, 2 RIB FRAGMENTS W/ TISSUE; ADULT','CIE',''),
 ('N 160/170 E 10/20 NW #02- 02','30','-','160','170','N','10','20','E','NW','02- 02','','2000','','BUGS FROM PELVIS','GM',''),
 ('N 160/170 E 10/20 NW #02- 03','13','-','160','170','N','10','20','E','NW','02- 03','','','','9-10 TEETH; ADULT, SOME FRAGMENTED','CIE',''),
 ('N 160/170 E 10/20 NW #02- 04','13','-','160','170','N','10','20','E','NW','02- 04','','','','9 TEETH; ADULT','CIE',''),
 ('N 160/170 E 10/20 NW #03- 03','-','4','160','170','N','10','20','E','NW','03- 03','','','','BEARD HAIR','CIE',''),
 ('N 160/170 E 10/20 NW #03- 04','8','-','160','170','N','10','20','E','NW','03- 04','','','','3 rib fragments; child','MBB',''),
 ('N 160/170 E 10/20 NW #03- 05','25','-','160','170','N','10','20','E','NW','03- 05','','','','Skin; UKN','MBB',''),
 ('N 160/170 E 10/20 NW #04- 02','-','5','160','170','N','10','20','E','NW','04- 02','','1993','','2 tubes with tooth fragments; UKN ("SOHAG") written on bag','MBB',''),
 ('N 160/170 E 10/20 NW #04- 03','31','-','160','170','N','10','20','E','NW','04- 03','','1998','Yes','4 teeth; adult','AWA',''),
 ('N 160/170 E 10/20 NW #04- 04','-','3','160','170','N','10','20','E','NW','04- 04','','1998','','"COPROLITE?"','CIE','taken to Richard Heckmann for analysis on 11 January 2011'),
 ('N 160/170 E 10/20 NW #04- 05','','6','160','170','N','10','20','E','NW','04- 05','','1998','Y','TEETH','GM',''),
 ('N 160/170 E 10/20 NW #05- 01','','6','160','170','N','10','20','E','NW','05- 01','','1998','','SKIN','GM',''),
 ('N 160/170 E 10/20 NW #05- 02','30','-','160','170','N','10','20','E','NW','05- 02','','2000','','RIBS AND TEETH','GM',''),
 ('N 160/170 E 10/20 NW #06- 01','6','-','160','170','N','10','20','E','NW','06- 01','','','','10 teeth; adult','MBB',''),
 ('N 160/170 E 10/20 NW #06- 04','3','-','160','170','N','10','20','E','NW','06- 04','','','Y','9 TEETH','GM',''),
 ('N 160/170 E 10/20 NW #07- 02','8','-','160','170','N','10','20','E','NW','07- 02','','','','3 rib fragments; adult','MBB',''),
 ('N 160/170 E 10/20 NW #07- 03','25','-','160','170','N','10','20','E','NW','07- 03','','','','Tissue from palate; UKN','MBB',''),
 ('N 160/170 E 10/20 NW #08- 02','4','-','160','170','N','10','20','E','NW','08- 02','','','','9 teeth; adult','MBB',''),
 ('N 160/170 E 10/20 NW #1 - 08','6','-','160','170','N','10','20','E','NW','1 - 08','','','Yes','14 teeth; adult','MBB',''),
 ('N 160/170 E 10/20 NW #1-01','22','-','160','170','N','10','20','E','NW','1-01','','','','BRIAN','GM',''),
 ('N 160/170 E 10/20 NW #10 - 02','15','-','160','170','N','10','20','E','NW','10 - 02','','','','TEETH','GM',''),
 ('N 160/170 E 10/20 NW #10- 01','15','-','160','170','N','10','20','E','NW','10- 01','','','','HAIR AND SKIN','GM',''),
 ('N 160/170 E 10/20 NW #10-03','10','-','160','170','N','10','20','E','NW','10-03','','1998','','4 fragmented teeth; child?','MBB',''),
 ('N 160/170 E 10/20 NW #11 - 03','10','-','160','170','N','10','20','E','NW','11 - 03','','1998','','Skin from foot; UKN ','MBB',''),
 ('N 160/170 E 10/20 NW #11- 02','10','-','160','170','N','10','20','E','NW','11- 02','','1998','','Fibula fragment; child','MBB',''),
 ('N 160/170 E 10/20 NW #11-01','14','-','160','170','N','10','20','E','NW','11-01',18,'1998','','5 teeth fragments; adult ("Cluster 18")','MBB',''),
 ('N 160/170 E 10/20 NW #12 - 01','','6','160','170','N','10','20','E','NW','12 - 01','','1998','','RIBS AND TISSUE','GM',''),
 ('N 160/170 E 10/20 NW #12 - 03','30','-','160','170','N','10','20','E','NW','12 - 03','','2000','','RIBS AND TEETH','GM',''),
 ('N 160/170 E 10/20 NW #12- 04','6','-','160','170','N','10','20','E','NW','12- 04','','','','4 teeth; adult','MBB',''),
 ('N 160/170 E 10/20 NW #12-02','-','1','160','170','N','10','20','E','NW','12-02','','','','HAIR AND POSSIBLE BONE FRAGMENTS','CIE',''),
 ('N 160/170 E 10/20 NW #12-05','4','-','160','170','N','10','20','E','NW','12-05','','','','8 teeth; child','MBB',''),
 ('N 160/170 E 10/20 NW #13 - 02','25','-','160','170','N','10','20','E','NW','13 - 02','','','','Skin from skull; UKN','MBB',''),
 ('N 160/170 E 10/20 NW #13-01','8','-','160','170','N','10','20','E','NW','13-01','','','','2 rib fragments; sub-adult','MBB',''),
 ('N 160/170 E 10/20 NW #13-03','25','-','160','170','N','10','20','E','NW','13-03','','','','Tissue; UKN','MBB',''),
 ('N 160/170 E 10/20 NW #13-04','12','-','160','170','N','10','20','E','NW','13-04','','','','9 TEETH; ADULT, ONE BROKEN','CIE',''),
 ('N 160/170 E 10/20 NW #13-05','1','-','160','170','N','10','20','E','NW','13-05','','','','12 teeth; child','AWA',''),
 ('N 160/170 E 10/20 NW #14 - 02','14','-','160','170','N','10','20','E','NW','14 - 02',18,'1998','','Internal tissue; UKN  ("Cluster 18")','MBB',''),
 ('N 160/170 E 10/20 NW #14 - 04','33','','160','170','N','10','20','E','NW','14 - 04',3,'1998','','Ribs; infant','AWA',''),
 ('N 160/170 E 10/20 NW #15-01','34','','160','170','N','10','20','E','NW','15-01','','1998','','Skin, teeth, and bone; adult','AWA',''),
 ('N 160/170 E 10/20 NW #15-02','30','-','160','170','N','10','20','E','NW','15-02','','2000','','2 TEETH, RIB, OTHER UNK; ADULT','CIE',''),
 ('N 160/170 E 10/20 NW #15-03','-','3','160','170','N','10','20','E','NW','15-03','','33656','','WOOD FOR CARBON DATING','CIE',''),
 ('N 160/170 E 10/20 NW #15-04','13','-','160','170','N','10','20','E','NW','15-04','','','','4 TEETH; ADULT','CIE',''),
 ('N 160/170 E 10/20 NW #15-05','25','-','160','170','N','10','20','E','NW','15-05','','','','Rib pieces; adult','AWA',''),
 ('N 160/170 E 10/20 NW #16 - 02','-','1','160','170','N','10','20','E','NW','16 - 02','','','','Hair','MBB',''),
 ('N 160/170 E 10/20 NW #16-01','5','','160','170','N','10','20','E','NW','16-01','','','','8 teeth; adult','MBB',''),
 ('N 160/170 E 10/20 NW #16-03','13','-','160','170','N','10','20','E','NW','16-03','','','','8 teeth; adult','MBB',''),
 ('N 160/170 E 10/20 NW #16-04','16','-','160','170','N','10','20','E','NW','16-04','','','','6 rib fragments; infant','MBB',''),
 ('N 160/170 E 10/20 NW #17 - 01','4','-','160','170','N','10','20','E','NW','17 - 01','','','','11 teeth; adult','MBB',''),
 ('N 160/170 E 10/20 NW #17-03','6','-','160','170','N','10','20','E','NW','17-03','','','','5 teeth; adult','MBB',''),
 ('N 160/170 E 10/20 NW #17-2','6','-','160','170','N','10','20','E','NW','17-2','','','Yes','2 teeth; adult','MBB',''),
 ('N 160/170 E 10/20 NW #18 - 02','25','-','160','170','N','10','20','E','NW','18 - 02','','','','Tissue from hand (fingerprint); UKN','MBB',''),
 ('N 160/170 E 10/20 NW #18-01','3','-','160','170','N','10','20','E','NW','18-01','','','','10 TEETH','GM',''),
 ('N 160/170 E 10/20 NW #18-03','6','-','160','170','N','10','20','E','NW','18-03','','','','12 teeth; adult (some bone)','MBB',''),
 ('N 160/170 E 10/20 NW #19 - 01','3','-','160','170','N','10','20','E','NW','19 - 01','','','','13 TEETH AND FRAGMENTS','GM',''),
 ('N 160/170 E 10/20 NW #19 - 02','14','-','160','170','N','10','20','E','NW','19 - 02','','','','4 rib fragments; child (some tissue)','MBB',''),
 ('N 160/170 E 10/20 NW #19-03','14','','160','170','N','10','20','E','NW','19-03','','','','7 bone fragments; sub-adult?','MBB',''),
 ('N 160/170 E 10/20 NW #19-04','12','-','160','170','N','10','20','E','NW','19-04','','','','3 TEETH; ADULT W/ DECAY','CIE',''),
 ('N 160/170 E 10/20 NW #2 - 05','29','','160','170','N','10','20','E','NW','2 - 05','','','','EYE FRAGEMENTS; UNK AGE','CIE',''),
 ('N 160/170 E 10/20 NW #21 - 02','14','-','160','170','N','10','20','E','NW','21 - 02',18,'1998','','Skin; UKN ("Cluster 18") ','MBB',''),
 ('N 160/170 E 10/20 NW #21-01','31','','160','170','N','10','20','E','NW','21-01','','1998','','3 molars; child','AWA',''),
 ('N 160/170 E 10/20 NW #21-03','31','','160','170','N','10','20','E','NW','21-03','','1998','','Broken rib pieces','AWA',''),
 ('N 160/170 E 10/20 NW #21-04','30','-','160','170','N','10','20','E','NW','21-04','','2000','','RIBS AND TEETH','GM',''),
 ('N 160/170 E 10/20 NW #21-05','30','','160','170','N','10','20','E','NW','21-05','','2000','','2 TEETH, MULT RIB FRAGMENTS; ADULT','CIE',''),
 ('N 160/170 E 10/20 NW #22 - 04','4','-','160','170','N','10','20','E','NW','22 - 04','','','','6 teeth; adult','MBB',''),
 ('N 160/170 E 10/20 NW #22 - 05','12','-','160','170','N','10','20','E','NW','22 - 05','','','','5 WHOLE TEETH; ADULT W/ MULTIPLE TOOTH FRAGMENTS','CIE',''),
 ('N 160/170 E 10/20 NW #22-01','1','-','160','170','N','10','20','E','NW','22-01','','','','9 teeth; child','AWA',''),
 ('N 160/170 E 10/20 NW #22-02','22','-','160','170','N','10','20','E','NW','22-02','','','','HAIR IN SCALP','GM',''),
 ('N 160/170 E 10/20 NW #22-03','14','-','160','170','N','10','20','E','NW','22-03',18,'1998','','Tissue; UKN ("Cluster 18")','MBB',''),
 ('N 160/170 E 10/20 NW #23 - 01','10','-','160','170','N','10','20','E','NW','23 - 01','','1998','','2 fragmented teeth; child','MBB',''),
 ('N 160/170 E 10/20 NW #23-02','','6','160','170','N','10','20','E','NW','23-02','','1998','','LONG BONE, SKIN, AND INTERNAL?','GM',''),
 ('N 160/170 E 10/20 NW #24-01','30','','160','170','N','10','20','E','NW','24-01','','2000','','RIBS AND TEETH','GM',''),
 ('N 160/170 E 10/20 NW #24-02','30','','160','170','N','10','20','E','NW','24-02','','2000','','2 TEETH, MULT RIBS W/ TISSUE; "BABY"','CIE',''),
 ('N 160/170 E 10/20 NW #24-03','-','2','160','170','N','10','20','E','NW','24-03','','','','HAIR','CIE',''),
 ('N 160/170 E 10/20 NW #24-04','6','-','160','170','N','10','20','E','NW','24-04','','','','5 teeth; adult','MBB',''),
 ('N 160/170 E 10/20 NW #25 - 01','6','-','160','170','N','10','20','E','NW','25 - 01','','','','5 teeth; adult (some tissue)','MBB',''),
 ('N 160/170 E 10/20 NW #25-02','6','-','160','170','N','10','20','E','NW','25-02','','','','6 teeth; adult','MBB',''),
 ('N 160/170 E 10/20 NW #25-03','8','-','160','170','N','10','20','E','NW','25-03','','','','6 rib fragments; child','MBB',''),
 ('N 160/170 E 10/20 NW #25-04','3','-','160','170','N','10','20','E','NW','25-04','','','','6 TEETH','GM',''),
 ('N 160/170 E 10/20 NW #25-05','3','-','160','170','N','10','20','E','NW','25-05','','','','10 TEETH, FRAGMENTS, AND MAYBE TISSUE','GM',''),
 ('N 160/170 E 10/20 NW #26-01','3','-','160','170','N','10','20','E','NW','26-01','','','Y','7 TEETH','GM',''),
 ('N 160/170 E 10/20 NW #26-02','3','-','160','170','N','10','20','E','NW','26-02','','','Y','10 TEETH','GM',''),
 ('N 160/170 E 10/20 NW #3 - 1','-','?','160','170','N','10','20','E','NW','3 - 1','','','','FUNGUS ','CIE',''),
 ('N 160/170 E 10/20 NW #3-02','5','','160','170','N','10','20','E','NW','3-02','','','','~14 rib fragments; child','MBB',''),
 ('N 160/170 E 10/20 NW #4-01','12','-','160','170','N','10','20','E','NW','4-01','','','','7 SMALLER TEETH, POSSIBLY CHILD OR TEEN','CIE',''),
 ('N 160/170 E 10/20 NW #4-07','11','','160','170','N','10','20','E','NW','4-07','','','','SKIN ?','GM',''),
 ('N 160/170 E 10/20 NW #6 - 02','17','-','160','170','N','10','20','E','NW','6 - 02','','','','Empty tube with dust residue','MBB',''),
 ('N 160/170 E 10/20 NW #6-03','5','','160','170','N','10','20','E','NW','6-03','','','Yes','2 teeth; adult','MBB',''),
 ('N 160/170 E 10/20 NW #6-05','28','-','160','170','N','10','20','E','NW','6-05','','','','~10 bone fragments (ribs and foot) and tissue; child','MBB',''),
 ('N 160/170 E 10/20 NW #7 - 05','5','','160','170','N','10','20','E','NW','7 - 05','','','','Tissue; UKN','MBB',''),
 ('N 160/170 E 10/20 NW #7 - 06','10','-','160','170','N','10','20','E','NW','7 - 06','','1998','','Rib fragments; child','MBB',''),
 ('N 160/170 E 10/20 NW #7-04','31','-','160','170','N','10','20','E','NW','7-04','','1998','','"Internal"','AWA',''),
 ('N 160/170 E 10/20 NW #7-07','31','-','160','170','N','10','20','E','NW','7-07','','1998','','Ribs; child','AWA',''),
 ('N 160/170 E 10/20 NW #7-09','32','','160','170','N','10','20','E','NW','7-09',2,'1998','Yes','Brain - Femur','AWA',''),
 ('N 160/170 E 10/20 NW #8 - 01','14','-','160','170','N','10','20','E','NW','8 - 01',19,'1998','Yes','5 teeth; adult ("Cluster 19")','MBB',''),
 ('N 160/170 E 10/20 NW #8-05','14','-','160','170','N','10','20','E','NW','8-05',19,'1998','','Tissue; UKN ("Cluster 19")','MBB',''),
 ('N 160/170 E 10/20 NW #8-06','14','-','160','170','N','10','20','E','NW','8-06',19,'1998','Yes','4 rib fragments; sub-adult ("Cluster 19")','MBB',''),
 ('N 160/170 E 10/20 NW #8-07','30','','160','170','N','10','20','E','NW','8-07','','2000','','RIBS AND TEETH- BABY','GM',''),
 ('N 160/170 E 10/20 NW #9-01','30','','160','170','N','10','20','E','NW','9-01','','2000','','2 TEETH, 3RIB FRAGMENTS; ADULT','CIE',''),
 ('N 160/170 E 10/20 NW #9-02','30','','160','170','N','10','20','E','NW','9-02','','2000','','RIBS AND TEETH','GM',''),
 ('N 160/170 E 10/20 SE #3','13','-','160','170','N','10','20','E','SE','3','','','','2 TEETH; ADULT W/ TISSUE ATTACHED','CIE',''),
 ('N 160/170 E 10/20 SE #11','13','-','160','170','N','10','20','E','SE','11','','','','10 TEETH; ADULT','CIE',''),
 ('N 160/170 E 10/20 SE #12','4','-','160','170','N','10','20','E','SE','12','','','','2 teeth; adult','MBB',''),
 ('N 160/170 E 10/20 SE #13.01','22','-','160','170','N','10','20','E','SE','13.01','','','','SKIN','GM',''),
 ('N 160/170 E 10/20 SE #15','8','-','160','170','N','10','20','E','SE','15','','','','3 rib fragments; adult','MBB',''),
 ('N 160/170 E 10/20 SE #15.2','25','-','160','170','N','10','20','E','SE','15.2','','','','Skin from foot; UKN','MBB',''),
 ('N 160/170 E 10/20 SE #16','25','-','160','170','N','10','20','E','SE','16','','','','Finger or toe nails; UKN','MBB',''),
 ('N 160/170 E 10/20 SE #18.01','17','-','160','170','N','10','20','E','SE','18.01','','','','Powdered tissue sample','MBB',''),
 ('N 160/170 E 10/20 SE #18.02','17','-','160','170','N','10','20','E','SE','18.02','','','','Empty tube with dust residue','MBB',''),
 ('N 160/170 E 10/20 SE #18.03','21','-','160','170','N','10','20','E','SE','18.03','','','','Powdered tooth sample','MBB',''),
 ('N 160/170 E 10/20 SE #19.02','34','','160','170','N','10','20','E','SE','19.02','','1998','','Long bone','AWA',''),
 ('N 160/170 E 10/20 SE #20','30','','160','170','N','10','20','E','SE','20','','2000','','MULT RIB FRAGMENTS; INFANT','CIE',''),
 ('N 160/170 E 10/20 SE #21.2','30','','160','170','N','10','20','E','SE','21.2','','2000','','RIBS- BABY','GM',''),
 ('N 160/170 E 10/20 SE #21.3','30','','160','170','N','10','20','E','SE','21.3','','2000','','MULT RIB FRAGMENTS; CHILD','CIE',''),
 ('N  160/170 E  10/20 SE #22','13','-','160','170','N ','10','20','E ','SE','22','','','YES ','11 TEETH; ADULT','CIE',''),
 ('N 160/170 E 10/20 SE #22','-','1','160','170','N','10','20','E','SE','22','','','','HAIR','CIE',''),
 ('N 160/170 E 10/20 SE #22.02','25','-','160','170','N','10','20','E','SE','22.02','','','','Infant ribs','AWA',''),
 ('N 160/170 E 10/20 SE #22.04','3','-','160','170','N','10','20','E','SE','22.04','','','','7 TEETH','GM',''),
 ('N 160/170 E 10/20 SE #24','8','-','160','170','N','10','20','E','SE','24','','','','3 rib fragments; adult','MBB',''),
 ('N 160/170 E 10/20 SE #26','3','-','160','170','N','10','20','E','SE','26','','','','6 TEETH AND MAYBE TISSUE','GM',''),
 ('N 160/170 E 10/20 SE #27.01','3','-','160','170','N','10','20','E','SE','27.01','','','','4 TEETH AND FRAGMENTS','GM',''),
 ('N 160/170 E 10/20 SE #27.02','26','-','160','170','N','10','20','E','SE','27.02','','','','Bone and tissue from foot; UKN','MBB',''),
 ('N 160/170 E 10/20 SE #27.03','12','-','160','170','N','10','20','E','SE','27.03','','','','7 TEETH; ADULT, W/ CROWNS MISSING','CIE',''),
 ('N 160/170 E 10/20 SE #28.01','21','-','160','170','N','10','20','E','SE','28.01','','','','Powdered brain sample','MBB',''),
 ('N 160/170 E 10/20 SE #28.02','35','','160','170','N','10','20','E','SE','28.02',20,'1998','','2 rib fragments; sub-adult ("Cluster 20")','MBB',''),
 ('N 160/170 E 10/20 SE #28.04','35','','160','170','N','10','20','E','SE','28.04',20,'1998','','5 teeth; adult ("Cluster 20")','MBB',''),
 ('N 160/170 E 10/20 SE #28.05','35','','160','170','N','10','20','E','SE','28.05',20,'1998','','Tissue; UKN ("Cluster 20")','MBB',''),
 ('N 160/170 E 10/20 SE #29','31','-','160','170','N','10','20','E','SE','29',25,'1998','','Teeth and skin; UKN','AWA',''),
 ('N 160/170 E 10/20 SE #29.4','32','','160','170','N','10','20','E','SE','29.4',3,'1998','','Long bone and teeth; adult','AWA',''),
 ('N 160/170 E 10/20 SE #30','34','','160','170','N','10','20','E','SE','30',17,'1998','','Bone, skin, and teeth; adult','AWA',''),
 ('N 160/170 E 10/20 SE #30.01','30','','160','170','N','10','20','E','SE','30.01','','2000','','RIBS','GM',''),
 ('N 160/170 E 10/20 SE #30.02','30','','160','170','N','10','20','E','SE','30.02','','2000','','7 RIB FRAG, 1 TOOTH, ULNA FRAG; CHILD','CIE',''),
 ('N 160/170 E 10/20 SE #31.01','30','','160','170','N','10','20','E','SE','31.01','','2000','','RIBS AND TEETH (HEADWEST)','GM',''),
 ('N 160/170 E 10/20 SE #32','30','','160','170','N','10','20','E','SE','32','','2000','','2 TEETH, 3 RIB FRAGMENTS, ADULT','CIE',''),
 ('N 160/170 E 10/20 SE #33','13','-','160','170','N','10','20','E','SE','33','','','','2 TEETH; ADULT','CIE',''),
 ('N 160/170 E 10/20 SE #33.04','-','1','160','170','N','10','20','E','SE','33.04','','','','HAIR  ','CIE',''),
 ('N 160/170 E 10/20 SE #34','25','-','160','170','N','10','20','E','SE','34','','','','Skin from ankle; UKN','MBB',''),
 ('N 160/170 E 10/20 SE #36','3','-','160','170','N','10','20','E','SE','36','','','','13 TEETH AND FAGMENTS','GM',''),
 ('N 160/170 E 10/20 SE #36.03','5','','160','170','N','10','20','E','SE','36.03','','','','11 teeth; adult','MBB',''),
 ('N 160/170 E 10/20 SE #39','18','','160','170','N','10','20','E','SE','39','','','Yes','Tooth "M14"','AWA',''),
 ('N 160/170 E 10/20 SE #39','14','-','160','170','N','10','20','E','SE','39',18,'1998','','Tissue; UKN ("Cluster 18")','MBB',''),
 ('N 160/170 E 10/20 SE #39.01','34','','160','170','N','10','20','E','SE','39.01',17,'1998','','Tissue from pelvic area','AWA',''),
 ('N 160/170 E 10/20 SE #39.02','30','','160','170','N','10','20','E','SE','39.02','','2000','','RIBS AND TEETH','GM',''),
 ('N 160/170 E 10/20 SE #39.04','24','-','160','170','N','10','20','E','SE','39.04','','','','Eye orbit; UKN','MBB',''),
 ('N 160/170 E 10/20 SE #39.06','5','','160','170','N','10','20','E','SE','39.06','','','','("Flowers?? Over face") - written on tube','MBB',''),
 ('N 160/170 E 10/20 SE #39.7','25','-','160','170','N','10','20','E','SE','39.7','','','','Ribs; child','AWA',''),
 ('N 160/170 E 10/20 SE #40','25','-','160','170','N','10','20','E','SE','40','','','','Ribs; child','AWA',''),
 ('N 160/170 E 10/20 SE #40.01','5','','160','170','N','10','20','E','SE','40.01','','','','2 bone fragments; UKN','MBB',''),
 ('N 160/170 E 10/20 SE #40.02','16','-','160','170','N','10','20','E','SE','40.02','','','','5 rib fragments and tissue; child','MBB',''),
 ('N 160/170 E 10/20 SE #40.04','17','-','160','170','N','10','20','E','SE','40.04','','','','Tissue sample','MBB',''),
 ('N 160/170 E 10/20 SE #40.5','14','-','160','170','N','10','20','E','SE','40.5',18,'1998','','Bone fragment; UKN ("Cluster 18")','MBB',''),
 ('N 160/170 E 10/20 SE #41','34','','160','170','N','10','20','E','SE','41',23,'1998','','Lung','AWA',''),
 ('N 160/170 E 10/20 SE #41.01','34','','160','170','N','10','20','E','SE','41.01',23,'1998','','Rib/skin','AWA',''),
 ('N 160/170 E 10/20 SE #41.04','30','','160','170','N','10','20','E','SE','41.04','','2000','','2 TEETH, 5 RIB FRAGMENTS; ADULT','CIE',''),
 ('N 160/170 E 10/20 SE #41.05','30','','160','170','N','10','20','E','SE','41.05','','2000','','15 YR OLD GIRL- RIBS AND TEETH','GM',''),
 ('N 160/170 E 10/20 SE #52.03','25','-','160','170','N','10','20','E','SE','52.03','','','','Broken ribs pieces','AWA',''),
 ('N 160/170 E 10/20 SE #53','22','-','160','170','N','10','20','E','SE','53','','','','MISC. TISSUE','GM',''),
 ('N 160/170 E 10/20 SE #53.01','6','-','160','170','N','10','20','E','SE','53.01','','','Yes','1 tooth; adult','MBB',''),
 ('N 160/170 E 10/20 SE #53.04','6','-','160','170','N','10','20','E','SE','53.04','','','','~5 broken teeth and fragments; adult','MBB',''),
 ('N 160/170 E  10/20 SE #01- 01','25','-','160','170','N','10','20','E ','SE','01- 01','','','','~4 bone fragments (finger); adult','MBB',''),
 ('N 160/170 E  10/20 SE #01- 02','17','-','160','170','N','10','20','E ','SE','01- 02','','','','Tissue sample','MBB',''),
 ('N 160/170 E  10/20 SE #01- 03','11','','160','170','N','10','20','E ','SE','01- 03','','','Y','TOOTH-RC','GM',''),
 ('N 160/170 E  10/20 SE #01- 04','14','-','160','170','N','10','20','E ','SE','01- 04','','','','8 rib fragments; child','MBB',''),
 ('N 160/170 E 10/20 SE #05- 01','26','-','160','170','N','10','20','E','SE','05- 01','','','','5 broken teeth and fragments; scalp and hair; child','MBB',''),
 ('N 160/170 E 10/20 SE #05- 02','14','-','160','170','N','10','20','E','SE','05- 02','','','','2 bones; 6 teeth; adult','MBB',''),
 ('N 160/170 E 10/20 SE #05- 05','32','','160','170','N','10','20','E','SE','05- 05',2,'1998','','Lung tissue','AWA',''),
 ('N 160/170 E 10/20 SE #07- 05','34','','160','170','N','10','20','E','SE','07- 05',23,'1998','','Teeth and skin; adult','AWA',''),
 ('N 160/170 E 10/20 SE #10-01','35','','160','170','N','10','20','E','SE','10-01',4,'1998','','Bone fragment; UKN ("Cluster 4")','MBB',''),
 ('N 160/170 E 10/20 SE #10-02','18','','160','170','N','10','20','E','SE','10-02',4,'1998','','Tissue; UKN ("Cluster 4")','MBB',''),
 ('N 160/170 E 10/20 SE #10-03','30','','160','170','N','10','20','E','SE','10-03','','2000','','3 RIBS AND 3 TEETH; ADULT','CIE',''),
 ('N 160/170 E 10/20 SE #11- 05','29','','160','170','N','10','20','E','SE','11- 05','','2000','','2 TEETH, 1 RIB; ADULT','CIE',''),
 ('N 160/170 E 10/20 SE #11- 06','29','','160','170','N','10','20','E','SE','11- 06','','2000','','RIB AND TWO TEETH','GM',''),
 ('N 160/170 E 10/20 SE #11-04','30','','160','170','N','10','20','E','SE','11-04','','2000','','3 RIB FRAGMENTS; ADULT "OLD MAN"','CIE',''),
 ('N 160/170 E 10/20 SE #12-01','8','-','160','170','N','10','20','E','SE','12-01','','','','4 teeth; adult','MBB',''),
 ('N 160/170 E 10/20 SE #12.03','12','-','160','170','N','10','20','E','SE','12.03','','','','1 TOOTH; ADULT','CIE',''),
 ('N 160/170 E 10/20 SE #13-02','13','-','160','170','N','10','20','E','SE','13-02','','','','10 teeth; adult','MBB',''),
 ('N 160/170 E 10/20 SE #13.04','5','','160','170','N','10','20','E','SE','13.04','','','Yes','2 teeth; adult','MBB',''),
 ('N 160/170 E 10/20 SE #14.01','1','-','160','170','N','10','20','E','SE','14.01','','','','7 teeth; child?','AWA',''),
 ('N 160/170 E 10/20 SE #15-01','22','-','160','170','N','10','20','E','SE','15-01','','','','HAIR','GM',''),
 ('N 160/170 E 10/20 SE #15-5','-','3','160','170','N','10','20','E','SE','15-5','','','','TISSUE INSIDE EYE','CIE',''),
 ('N 160/170 E 10/20 SE #15.3','-','?','160','170','N','10','20','E','SE','15.3','','','','MANDIBLE W/ TEETH; ADULT','CIE',''),
 ('N 160/170 E 10/20 SE #17','32','','160','170','N','10','20','E','SE','17',2,'1998','','Skin','AWA',''),
 ('N 160/170 E 10/20 SE #18','32','','160','170','N','10','20','E','SE','18',2,'1998','Yes','2 teeth; adult','AWA',''),
 ('N 160/170 E 10/20 SE #19-01','18','','160','170','N','10','20','E','SE','19-01',4,'1998','','Bone fragment; UKN ("Cluster 4"','MBB',''),
 ('N 160/170 E 10/20 SE #19.03','18','','160','170','N','10','20','E','SE','19.03',4,'1998','','4 teeth; adult ("Cluster 4")','MBB',''),
 ('N 160/170 E 10/20 SE #19.04','30','','160','170','N','10','20','E','SE','19.04','','2000','','RIBS- OLD MAN','GM',''),
 ('N 160/170 E 10/20 SE #2-03','29','','160','170','N','10','20','E','SE','2-03','','2000','','UNK, INTACT ARM OR LEG BONE, 5 RIB FRAGMENTS, 3 TEETH, CHILD','CIE',''),
 ('N 160/170 E 10/20 SE #2-04','29','','160','170','N','10','20','E','SE','2-04','','2000','','RIBS- PRECHRISTIAN','GM',''),
 ('N 160/170 E 10/20 SE #2.01','3','-','160','170','N','10','20','E','SE','2.01','','','','7 TEETH- CHILD','GM',''),
 ('N 160/170 E 10/20 SE #2.02','22','-','160','170','N','10','20','E','SE','2.02','','','','MISC. TISSUE','GM',''),
 ('N 160/170 E 10/20 SE #20-01','14','-','160','170','N','10','20','E','SE','20-01','','','','6 rib fragments; sub-adult','MBB',''),
 ('N 160/170 E 10/20 SE #20-02','26','-','160','170','N','10','20','E','SE','20-02','','','','Scalp and hair; UKN','MBB',''),
 ('N 160/170 E 10/20 SE #20-4','18','','160','170','N','10','20','E','SE','20-4',6,'1998','','2 teeth; adult ("Cluster 6")','MBB',''),
 ('N 160/170 E 10/20 SE #21-01','34','','160','170','N','10','20','E','SE','21-01',23,'1998','Yes','Skin, bones, teeth; adult','AWA',''),
 ('N 160/170 E 10/20 SE #22-03','35','','160','170','N','10','20','E','SE','22-03',7,'1998','','5 teeth and tissue; adult ("Cluster 7")','MBB',''),
 ('N 160/170 E 10/20 SE #22-05','29','','160','170','N','10','20','E','SE','22-05','','2000','','2 TEETH, 2 RIBS; ADULT','CIE',''),
 ('N 160/170 E 10/20 SE #22-07','29','','160','170','N','10','20','E','SE','22-07','','2000','','RIBS AND TEETH','GM',''),
 ('N 160/170 E 10/20 SE #24-02','30','','160','170','N','10','20','E','SE','24-02','','2000','','3 TEETH 2 RIB FRAGMENTS; ADULT','CIE',''),
 ('N 160/170 E 10/20 SE #24.03','30','','160','170','N','10','20','E','SE','24.03','','2000','','RIBS AND TEETH','GM',''),
 ('N 160/170 E  10/20 SE #25-01','3','-','160','170','N','10','20','E ','SE','25-01','','','Y','4 TEETH AND FRAGMENTS','GM',''),
 ('N 160/170 E  10/20 SE #25-02','6','-','160','170','N','10','20','E ','SE','25-02','','','','4 teeth; adult','MBB',''),
 ('N 160/170 E  10/20 SE #25-03','16','-','160','170','N','10','20','E ','SE','25-03','','','','2 bones (foot) and tissue; UKN','MBB',''),
 ('N 160/170 E  10/20 SE #25-04','9','-','160','170','N','10','20','E ','SE','25-04','','','','11 teeth; adult','MBB',''),
 ('N 160/170 E 10/20 SE #25-05','12','-','160','170','N','10','20','E','SE','25-05','','','','6 TEETH; ADULT W/ TISSUE','CIE',''),
 ('N 160/170 E 10/20 SE #26-02','14','-','160','170','N','10','20','E','SE','26-02','','','','~6 rib fragments; adult','MBB',''),
 ('N 160/170 E 10/20 SE #26-03','1','-','160','170','N','10','20','E','SE','26-03','','','Yes','10 teeth; adult','AWA',''),
 ('N 160/170 E 10/20 SE #26-04','18','','160','170','N','10','20','E','SE','26-04',6,'1998','','Bone fragments from foot; adult ("Cluster 6")','MBB',''),
 ('N 160/170 E 10/20 SE #27-05','31','-','160','170','N','10','20','E','SE','27-05',15,'1998','','Rib and fungus','AWA',''),
 ('N 160/170 E 10/20 SE #27.04','31','-','160','170','N','10','20','E','SE','27.04',15,'1998','','Hair and Scalp','AWA',''),
 ('N 160/170 E 10/20 SE #28-03','33','','160','170','N','10','20','E','SE','28-03',9,'1998','','Brain','AWA',''),
 ('N 160/170 S 10/20 SE #28-09','33','','160','170','N','10','20','S','SE','28-09',9,'1998','','Rib; UKN','AWA',''),
 ('N 160/170 E 10/20 SE #28.06','32','','160','170','N','10','20','E','SE','28.06',9,'1998','','"Internal - lung?','AWA',''),
 ('N 160/170 E 10/20 SE #28.8','32','','160','170','N','10','20','E','SE','28.8',9,'1998','Yes','3 teeth; adult','AWA',''),
 ('N 160/170 E 10/20 SE #29-01','32','','160','170','N','10','20','E','SE','29-01',9,'1998','','Ribs and skin','AWA',''),
 ('N 160/170 E 10/20 SE #29-02','30','','160','170','N','10','20','E','SE','29-02','','2000','','3 RIB FRAGMENTS, 2 TEETH; ADULT','CIE',''),
 ('N 160/170 E 10/20 SE #29-05','30','','160','170','N','10','20','E','SE','29-05','','2000','','RIBS AND TEETH','GM',''),
 ('N 160/170 E 10/20 SE #29-06','12','-','160','170','N','10','20','E','SE','29-06','','','','UNK NUMBER OF TEETH, ADULT, FRAGMENTED AND DECAYED','CIE',''),
 ('N 160/170 E 10/20 SE #30-03','1','-','160','170','N','10','20','E','SE','30-03','','','Yes','13 teeth; adult','AWA',''),
 ('N 160/170 E 10/20 SE #30-03','31','-','160','170','N','10','20','E','SE','30-03',15,'1998','Yes','Teeth; UNK','AWA',''),
 ('N 160/170 E 10/20 SE #30-05','31','-','160','170','N','10','20','E','SE','30-05','','1998','','Skull membrane','AWA',''),
 ('N 160/170 E 10/20 SE #30-06','31','-','160','170','N','10','20','E','SE','30-06','','1998','','Ribs; child','AWA',''),
 ('N 160/170 E 10/20 SE #30-06','','6','160','170','N','10','20','E','SE','30-06','','1998','','LONG BONE AND TEETH','GM',''),
 ('N 160/170 E 10/20 SE #30-4','31','','160','170','N','10','20','E','SE','30-4',2,'1998','','Unknown bones','AWA',''),
 ('N 160/170 E 10/20 SE #30.0','35','','160','170','N','10','20','E','SE','30',21,'1998','','Bone fragments; adult or sub-adult ("Cluster 21")','MBB',''),
 ('N 160/170 E 10/20 SE #30.1','29','','160','170','N','10','20','E','SE','30.1','','2000','','RIBS AND TEETH','GM',''),
 ('N 160/170 E 10/20 SE #31-02','-','3','160','170','N','10','20','E','SE','31-02','','34442','','"HIFFI SI LINEN"','CIE',''),
 ('N 160/170 E 10/20 SE #31-03','23','','160','170','N','10','20','E','SE','31-03','','35386','','2 TEETH AND A TUBE LABELED "CONTEMP TOOTH"','GM',''),
 ('N 160/170 E 10/20 SE #32-01','25','-','160','170','N','10','20','E','SE','32-01','','','','Child rib','AWA',''),
 ('N 160/170 E 10/20 SE #32-03','22','-','160','170','N','10','20','E','SE','32-03','','','','HAIR','GM',''),
 ('N 160/170 E 10/20 SE #32-04','12','-','160','170','N','10','20','E','SE','32-04','','','','4 TEETH; ADULT W/ TISSUE AND BROKEN','CIE',''),
 ('N 160/170 E 10/20 SE #32-05','11','','160','170','N','10','20','E','SE','32-05','','','','SKIN ?- RC','GM',''),
 ('N 160/170 E 10/20 SE #32-06','18','','160','170','N','10','20','E','SE','32-06',21,'1998','Yes','Humerus fragment; child  ("Cluster 21")','MBB',''),
 ('N 160/170 E 10/20 SE #33-02','18','','160','170','N','10','20','E','SE','33-02',21,'1998','','Tissue from ribs; UKN  ("Cluster 21")','MBB',''),
 ('N 160/170 E 10/20 SE #33-03','18','','160','170','N','10','20','E','SE','33-03',21,'1998','','Tissue; UKN  ("Cluster 21")','MBB',''),
 ('N 160/170 E 10/20 SE #33-05','35','','160','170','N','10','20','E','SE','33-05',7,'1998','','Lung tissue; UKN ("Cluster 7")','MBB',''),
 ('N 160/170 E 10/20 SE #35-01','30','-','160','170','N','10','20','E','SE','35-01','','36578','','RIBS, UNK LONG BONE; INFANT','CIE',''),
 ('N 160/170 E 10/20 SE #35-02','30','-','160','170','N','10','20','E','SE','35-02','','36578','','RIBS','GM',''),
 ('N 160/170 E 10/20 SE #35-03','25','-','160','170','N','10','20','E','SE','35-03','','','','Child ribs','AWA',''),
 ('N 160/170 E 10/20 SE #35-04','4','-','160','170','N','10','20','E','SE','35-04','','','','4 teeth; adult','MBB',''),
 ('N 160/170 E 10/20 SE #35-05','16','-','160','170','N','10','20','E','SE','35-05','','','','7 bone (toes); adult','MBB',''),
 ('N 160/170 E 10/20 SE #35-06','12','-','160','170','N','10','20','E','SE','35-06','','','','6 TEETH AND BONE FRAGMENT; ADULT, ONE TOOTH BROKEN','CIE',''),
 ('N 160/170 E 10/20 SE #36-02','14','-','160','170','N','10','20','E','SE','36-02','','','','1 rib fragment; adult','MBB',''),
 ('N 160/170 E 10/20 SE #36-04','-','5','160','170','N','10','20','E','SE','36-04','','1993','','1 bone fragment and 3 tubes with bone dust and chips; UKN ("SOHAG") written on bag','MBB',''),
 ('N 160/170 E 10/20 SE #36-05','31','','160','170','N','10','20','E','SE','36-05',2,'1998','','Tibia','AWA',''),
 ('N 160/170 E 10/20 SE #37-01','35','','160','170','N','10','20','E','SE','37-01',25,'1998',' ','"Not tooth or bone"; tissue','AWA',''),
 ('N 160/170 E 10/20 SE #37-02','34','','160','170','N','10','20','E','SE','37-02','','36647','','Powdered tooth; "NCNA 2 gm"','AWA',''),
 ('N 160/170 E 10/20 SE #37-03','23','','160','170','N','10','20','E','SE','37-03','','36797','','BONE POWDER','GM',''),
 ('N 160/170 E 10/20 SE #37-04','27','-','160','170','N','10','20','E','SE','37-04','','','','5 bones from foot and tissue; adult','MBB',''),
 ('N 160/170 E 10/20 SE #37-05','5','','160','170','N','10','20','E','SE','37-05','','','Yes','2 teeth; adult','MBB',''),
 ('N 160/170 E  10/20 SE #38-01','14','-','160','170','N','10','20','E ','SE','38-01',20,'1998','','Bone fragment; UKN ("Cluster 20")','MBB',''),
 ('N 160/170 E  10/20 SE #38-02','35','','160','170','N','10','20','E ','SE','38-02',25,'1998','','Tissue','AWA',''),
 ('N 160/170 E  10/20 SE #38-03','35','','160','170','N','10','20','E ','SE','38-03',25,'1998','','Bone','AWA',''),
 ('N 160/170 E  10/20 SE #38-04','7','','160','170','N','10','20','E ','SE','38-04','','36808','','Powder','GM',''),
 ('N 160/170 E  10/20 SE #38-05','23','','160','170','N','10','20','E ','SE','38-05','','36823','','BONE POWDER','GM',''),
 ('N 160/170 E 10/20 SE #38-06','21','-','160','170','N','10','20','E','SE','38-06','','','','Powdered tissue sample','MBB',''),
 ('N 160/170 E 10/20 SE #39-03','32','','160','170','N','10','20','E','SE','39-03',8,'1998','','Lung','AWA',''),
 ('N 160/170 E 10/20 SE #39-08','32','','160','170','N','10','20','E','SE','39-08',8,'1998','Yes','"teeth - molars - + ind. 2 incisors +++"','AWA',''),
 ('N 160/170 E 10/20 SE #39-10','32','','160','170','N','10','20','E','SE','39-10',9,'1998','','Skin','AWA',''),
 ('N 160/170 E 10/20 SE #4 - 1','32','','160','170','N','10','20','E','SE','4 - 1',9,'1998','','Skin','AWA',''),
 ('N 160/170 E 10/20 SE #41-02','','6','160','170','N','10','20','E','SE','41-02','','1998','','RIBS AND INTERNAL SAMPLE','GM',''),
 ('N 160/170 E 10/20 SE #41-03','30','-','160','170','N','10','20','E','SE','41-03','','36874','','4 TEETH, 5 RIBS; CHILD','CIE',''),
 ('N 160/170 E 10/20 SE #42-01','23','','160','170','N','10','20','E','SE','42-01','','37020','','BONE POWDER','GM',''),
 ('N 160/170 E 10/20 SE #42-02','23','','160','170','N','10','20','E','SE','42-02','','37020','','BONE POWDER','GM',''),
 ('N 160/170 E 10/20 SE #42-03','23','','160','170','N','10','20','E','SE','42-03','','37020','','BONE POWDER','GM',''),
 ('N 160/170 E 10/20 SE #43-01','19','-','160','170','N','10','20','E','SE','43-01','','','','Ribs, vertebrae, skin, teeth; child','MBB',''),
 ('N 160/170 E 10/20 SE #43-02','5','','160','170','N','10','20','E','SE','43-02','','','Yes','2 teeth; child','MBB',''),
 ('N 160/170 E 10/20 SE #43-03','5','','160','170','N','10','20','E','SE','43-03','','','','~5 broken teeth; fragment of textile; child','MBB',''),
 ('N 160/170 E 10/20 SE #44-01','32','','160','170','N','10','20','E','SE','44-01',8,'1998','Yes','Skin - femur','AWA',''),
 ('N 160/170 E 10/20 SE #44-02','32','','160','170','N','10','20','E','SE','44-02',8,'1998','','Skin - mouth','AWA',''),
 ('N 160/170 E 10/20 SE #44-03','31','-','160','170','N','10','20','E','SE','44-03',16,'1998','','Humerus','AWA',''),
 ('N 160/170 E 10/20 SE #44-04','31','-','160','170','N','10','20','E','SE','44-04',16,'1998','','Skin - mandible','AWA',''),
 ('N 160/170 E 10/20 SE #44-05','31','','160','170','N','10','20','E','SE','44-05','','1998','','Vertebrae - Tibia','AWA',''),
 ('N 160/170 E 10/20 SE #44-06','35','','160','170','N','10','20','E','SE','44-06',25,'1998','','Teeth, brain, skin, bone; adult','AWA',''),
 ('N 160/170 E 10/20 SE #44-07','23','','160','170','N','10','20','E','SE','44-07','','37020','','BONE POWDER','GM',''),
 ('N 160/170 E 10/20 SE #44-08','23','','160','170','N','10','20','E','SE','44-08','','37020','','BONE POWDER','GM',''),
 ('N 160/170 E 10/20 SE #45-02','23','','160','170','N','10','20','E','SE','45-02','','37020','','POWDER','GM',''),
 ('N 160/170 E 10/20 SE #45-03','23','','160','170','N','10','20','E','SE','45-03','','37527','','BONE POWDER','GM',''),
 ('N 160/170 E 10/20 SE #45-04','6','-','160','170','N','10','20','E','SE','45-04','','','Yes','~13 broken teeth and fragments; adult','MBB',''),
 ('N 160/170 E 10/20 SE #46-04','14','-','160','170','N','10','20','E','SE','46-04',20,'1998','','1 tooth, bone fragment and tissue; child ("Cluster 20")','MBB',''),
 ('N 160/170 E  10/20 SE #47-01','14','-','160','170','N','10','20','E ','SE','47-01',20,'1998','','1 bone; UKN ("Cluster 20")','MBB',''),
 ('N 160/170 E  10/20 SE #47-02','31','-','160','170','N','10','20','E ','SE','47-02',26,'1998','','Teeth and rib; child (?)','AWA',''),
 ('N 160/170 E  10/20 SE #47-03','25','-','160','170','N','10','20','E ','SE','47-03','','','','Child ribs','AWA',''),
 ('N 160/170 E  10/20 SE #47-04','3','-','160','170','N','10','20','E ','SE','47-04','','','Y','8 TEETH- CHILD','GM',''),
 ('N 160/170 E  10/20 SE #48-01','12','-','160','170','N','10','20','E ','SE','48-01','','','','8 TEETH, ADULT, SOME BROKEN','CIE',''),
 ('N 160/170 E  10/20 SE #48-02','17','-','160','170','N','10','20','E ','SE','48-02','','','','Empty tube with dust residue','MBB',''),
 ('N 160/170 E  10/20 SE #48-03','21','-','160','170','N','10','20','E ','SE','48-03','','','Yes','1 tooth; child','MBB',''),
 ('N 160/170 E  10/20 SE #48-04','21','-','160','170','N','10','20','E ','SE','48-04','','','','Powdered tooth sample','MBB',''),
 ('N 160/170 E 10/20 SE #49-04','35','','160','170','N','10','20','E','SE','49-04',7,'1998','','Humerus fragment; 2 teeth; tissue from brain; adult ("Cluster 7")','MBB',''),
 ('N 160/170 E 10/20 SE #5-03','14','-','160','170','N','10','20','E','SE','5-03',20,'1998','','1 tooth, vertebra and bone fragment; child ("Cluster 20")','MBB',''),
 ('N 160/170 E  10/20 SE #50-02','35','','160','170','N','10','20','E ','SE','50-02',26,'1998','Yes','Skin, bones; UKN','AWA',''),
 ('N 160/170 E  10/20 SE #50-03','','6','160','170','N','10','20','E ','SE','50-03','','1998','','LONG BONE','GM',''),
 ('N 160/170 E  10/20 SE #50-04','31','-','160','170','N','10','20','E ','SE','50-04',26,'1998','','Scapula (?) and skin','AWA',''),
 ('N 160/170 E  10/20 SE #50-1','','8','160','170','N','10','20','E ','SE','50-1','','2/1988','','SKIN, MUSCLES AND RIBS','GM',''),
 ('N 160/170 E  10/20 SE #50-5','14','-','160','170','N','10','20','E ','SE','50-5','','','','3 rib fragments; adult','MBB',''),
 ('N 160/170 E 10/20 SE #52-04','1','-','160','170','N','10','20','E','SE','52-04','','','','5 teeth; adult','AWA',''),
 ('N 160/170 E 10/20 SE #53-02','23','','160','170','N','10','20','E','SE','53-02','','','','SKELETON #1 VERTEBRAE','GM',''),
 ('N 160/170 E 10/20 SE #53-05','29','-','160','170','N','10','20','E','SE','53-05','','','','"CAT #1", TISSUE','CIE',''),
 ('N 160/170 E  10/20 SE #55-05','-','3','160','170','N','10','20','E ','SE','55-05','','','','HUMOROUS; ADULT','CIE',''),
 ('N 160/170 E 10/20 SE #6-01','4','-','160','170','N','10','20','E','SE','6-01','','','','~13 broken teeth and fragments; adult','MBB',''),
 ('N 160/170 E 10/20 SE #6.02','9','-','160','170','N','10','20','E','SE','6.02','','','','8 broken teeth and fragments of tissue; adult','MBB',''),
 ('N 160/170 E 10/20 SE #6.03','14','-','160','170','N','10','20','E','SE','6.03','','','','~5 rib fragments; adult','MBB',''),
 ('N 160/170 E 10/20 SE #7 - 1','22','-','160','170','N','10','20','E','SE','7 - 1','','','','EYE  ','GM',''),
 ('N 160/170 E 10/20 SE #7-02','18','','160','170','N','10','20','E','SE','7-02',5,'1998','','Tissue; UKN ("Cluster 5")','MBB',''),
 ('N 160/170 E 10/20 SE #7.03','18','','160','170','N','10','20','E','SE','7.03',5,'1998','','3 teeth; adult ("Cluster 5")','MBB',''),
 ('N 160/170 E 10/20 SE #7.04','21','-','160','170','N','10','20','E','SE','7.04','','1998','','Powdered tooth sample','MBB',''),
 ('N 160/170 E 10/20 SE #8-01','22','-','160','170','N','10','20','E','SE','8-01','','','','HAIR','GM',''),
 ('N 160/170 E 10/20 SE #8-04','29','-','160','170','N','10','20','E','SE','8-04','','','','4 TEETH; SMALL ADULT OR CHILD','CIE',''),
 ('N 160/170 E 10/20 SE #8.06','29','-','160','170','N','10','20','E','SE','8.06','','','','TEETH','GM',''),
 ('N 160/170 E 10/20 SE #9','','6','160','170','N','10','20','E','SE','9','','','','TEETH- POSSIBLY 1998','GM',''),
 ('N 160/170 E 10/20 SE #9-01','29','-','160','170','N','10','20','E','SE','9-01','','','','14 TEETH; ADULT','CIE',''),
 ('N 160/170 E 10/20 SE  #30','17','-','160','170','N','10','20','E','SE ','30','','','','Tooth fragments','MBB',''),
 ('N 160/170 W 0/10 SW #3','30','-','160','170','N','0','10','W','SW','3','','2000','','1 BROKEN TOOTH, 2 RIB FRAGMENTS; CHILD','CIE',''),
 ('N 160/170 W 0/10 SW #4','30','-','160','170','N','0','10','W','SW','4','','2000','','RIBS AND TEETH','GM',''),
 ('N 160/170 W 0/10 SW #5','25','-','160','170','N','0','10','W','SW','5','','','','Ribs; child','AWA',''),
 ('N 160/170 W 0/10 SW #7','13','-','160','170','N','0','10','W','SW','7','','','','4 TEETH; ADULT W/ TISSUE ATTACHED','CIE',''),
 ('N 160/170 W 0/10 SW #7','13','-','160','170','N','0','10','W','SW','7','','','','9 TEETH; ADULT','CIE',''),
 ('N 160/170 W 0/10 SW #8','13','-','160','170','N','0','10','W','SW','8','','','','8 TEETH; ADULT','CIE',''),
 ('N 160/170 W 0/10 SW #10','25','-','160','170','N','0','10','W','SW','10','','','','Ribs; child','AWA',''),
 ('N 160/170 W 0/10 SW #11','-','1','160','170','N','0','10','W','SW','11','','','','HAIR','CIE',''),
 ('N 160/170 W 0/10 SW #12','3','-','160','170','N','0','10','W','SW','12','','','Y','7 TEETH','GM',''),
 ('N 160/170 W 0/10 SW #13','3','-','160','170','N','0','10','W','SW','13','','','','3 TEETH','GM',''),
 ('N 160/170 E 10/20 SW #26','19','-','160','170','N','10','20','E','SW','26','','','','Foot sample; sub-adult','MBB',''),
 ('N 160/170 E 10/20 SW #60','5','','160','170','N','10','20','E','SW','60','','','','13 teeth; child','MBB',''),
 ('N 160/170 E  10/20 SW #02- 01','14','-','160','170','N','10','20','E ','SW','02- 01','','','','~7 bone fragments; child','MBB',''),
 ('N 160/170 E  10/20 SW #02- 02','1','-','160','170','N','10','20','E ','SW','02- 02','','','Yes','11 teet; adult','AWA',''),
 ('N 160/170 E 10/20 SW #02- 03','18','','160','170','N','10','20','E','SW','02- 03',21,'1998','','Tissue and hair; UKN ("Cluster 21")','MBB',''),
 ('N 160/170 E  10/20 SW #02- 04','18','','160','170','N','10','20','E ','SW','02- 04',21,'1998','','Empty tube labelled "Clavicle"; UKN  ("Cluster 21")','MBB',''),
 ('N 160/170 E 10/20 SW #02- 05','31','-','160','170','N','10','20','E','SW','02- 05','','35833','Yes','3 teeth','AWA',''),
 ('N 160/170 E  10/20 SW #05- 01','1','-','160','170','N','10','20','E ','SW','05- 01','','','','6 teeth; adult','AWA',''),
 ('N 160/170 E  10/20 SW #09- 01','12','-','160','170','N','10','20','E ','SW','09- 01','','','','9 TEETH; ADULT, FRAGMENTED','CIE',''),
 ('N 160/170 E  10/20 SW #09- 02','29','-','160','170','N','10','20','E ','SW','09- 02','','','','TEETH','GM',''),
 ('N 160/170 E 10/20 SW #10- 04','','7','160','170','N','10','20','E','SW','10- 04','','','','TEETH','GM',''),
 ('N 160/170 E 10/20 SW #10- 05','23','','160','170','N','10','20','E','SW','10- 05','','','','BONE POWDER','GM',''),
 ('N 160/170 E 10/20 SW #10-01','28','-','160','170','N','10','20','E','SW','10-01','','','','5 bones from legs and rib fragments; child','MBB',''),
 ('N 160/170 E 10/20 SW #10-02','28','-','160','170','N','10','20','E','SW','10-02','','','','~9 skull fragments and skin; child','MBB',''),
 ('N 160/170 E 10/20 SW #10-03','19','-','160','170','N','10','20','E','SW','10-03','','','','~ 6 bone fragments (long bones, jaw); hair; child','MBB',''),
 ('N 160/170 E 10/20 SW #11-01','18','','160','170','N','10','20','E','SW','11-01',21,'1998','','Tissue from inside thoracic vertebra; UKN  ("Cluster 21")','MBB',''),
 ('N 160/170 E 10/20 SW #13-03','31','','160','170','N','10','20','E','SW','13-03',2,'1998','','Skin','AWA',''),
 ('N 160/170 E 10/20 SW #14-01','31','-','160','170','N','10','20','E','SW','14-01','','35833','','Skin','AWA',''),
 ('N 160/170 E 10/20 SW #14-02','18','','160','170','N','10','20','E','SW','14-02','','','','Broken tooth; UKN','AWA',''),
 ('N 160/170 E 10/20 SW #15','29','-','160','170','N','10','20','E','SW','15','','','','SKIN AND TISSUE FROM ARM; UNK AGE','CIE',''),
 ('N 160/170 E 10/20 SW #15-01','29','-','160','170','N','10','20','E','SW','15-01','','','','SKIN AND TISSUE FROM ARM','GM',''),
 ('N 160/170 E 10/20 SW #15-02','21','-','160','170','N','10','20','E','SW','15-02','','','','Powdered tooth sample','MBB',''),
 ('N 160/170 E 10/20 SW #15-04','31','-','160','170','N','10','20','E','SW','15-04','','35833','Yes','3 teeth','AWA',''),
 ('N 160/170 E 10/20 SW #16-01','31','-','160','170','N','10','20','E','SW','16-01','','35833','','Skin','AWA',''),
 ('N 160/170 E 10/20 SW #16-02','31','-','160','170','N','10','20','E','SW','16-02','','35833','','Hair','AWA',''),
 ('N 160/170 E 10/20 SW #16-03','31','-','160','170','N','10','20','E','SW','16-03','','35833','','Skin','AWA',''),
 ('N 160/170 E 10/20 SW #16-04','31','-','160','170','N','10','20','E','SW','16-04','','35833','','2 teeth','AWA',''),
 ('N 160/170 E 10/20 SW #16-05','-','5','160','170','N','10','20','E','SW','16-05','','','','Rib fragment; sub-adult','MBB',''),
 ('N 160/170 E 10/20 SW #17-03','29','-','160','170','N','10','20','E','SW','17-03','','','','4 DECAYED TEETH; ADULT','CIE',''),
 ('N 160/170 E 10/20 SW #18','11','','160','170','N','10','20','E','SW','18','','','','HAIR AND SKIN','GM',''),
 ('N 160/170 E 10/20 SW #18-01','31','','160','170','N','10','20','E','SW','18-01',2,'1998','','Skin - feet','AWA',''),
 ('N 160/170 E 10/20 SW #18-03','31','','160','170','N','10','20','E','SW','18-03',2,'1998','','Humerus','AWA',''),
 ('N 160/170 E 10/20 SW #20','31','','160','170','N','10','20','E','SW','20',2,'1998','Yes','2 teeth; adult','AWA',''),
 ('N 160/170 E 10/20 SW #20-02','34','','160','170','N','10','20','E','SW','20-02',22,'1998','Yes','Long bone and muscle','AWA',''),
 ('N 160/170 E 10/20 SW #20-03','31','','160','170','N','10','20','E','SW','20-03',1,'35833','','Skin','AWA',''),
 ('N 160/170 E 10/20 SW #20-04','31','','160','170','N','10','20','E','SW','20-04',1,'35833','','Beard','AWA',''),
 ('N 160/170 E 10/20 SW #21-01','31','','160','170','N','10','20','E','SW','21-01',1,'35833','Yes','3 Teeth; adult','AWA',''),
 ('N 160/170 E 10/20 SW #21-02','29','-','160','170','N','10','20','E','SW','21-02','','','','TEETH','GM',''),
 ('N 160/170 E 10/20 SW #22-01','','6','160','170','N','10','20','E','SW','22-01','','','','TEETH- POSSIBLY 1998','GM',''),
 ('N 160/170 E 10/20 SW #22-02','11','','160','170','N','10','20','E','SW','22-02','','','','BRIAN','GM',''),
 ('N 160/170 E 10/20 SW #22-03','17','-','160','170','N','10','20','E','SW','22-03','','','','Empty tube with dust residue','MBB',''),
 ('N 160/170 E 10/20 SW #24-03','10','-','160','170','N','10','20','E','SW','24-03','','1998','Yes','2 teeth;; adult','MBB',''),
 ('N 160/170 E 10/20 SW #24-07','','7','160','170','N','10','20','E','SW','24-07','','','','TEETH','GM',''),
 ('N 160/170 E 10/20 SW #25-01','23','','160','170','N','10','20','E','SW','25-01','','','','SKULL AND TEETH POWER','GM',''),
 ('N 160/170 E 10/20 SW #25-02','23','','160','170','N','10','20','E','SW','25-02','','','','SKULL POWDER # 11','GM',''),
 ('N 160/170 E 10/20 SW #25-03','10','-','160','170','N','10','20','E','SW','25-03','','1998','','Skin; UKN ','MBB',''),
 ('N 160/170 E 10/20 SW #25-04','10','-','160','170','N','10','20','E','SW','25-04','','1998','','Rib fragments; adult','MBB',''),
 ('N 160/170 E 10/20 SW #25-05','31','','160','170','N','10','20','E','SW','25-05',1,'35833','','Skin','AWA',''),
 ('N 160/170 E 10/20 SW #26-01','31','','160','170','N','10','20','E','SW','26-01',1,'35833','Yes','2 teeth; adult','AWA',''),
 ('N 160/170 E 10/20 SW #26-02','12','-','160','170','N','10','20','E','SW','26-02','','','','7-9 BROKEN TEETH; ADULT','CIE',''),
 ('N 160/170 E 10/20 SW #26-03','-','5','160','170','N','10','20','E','SW','26-03','','','','Rib fragments; child ','MBB',''),
 ('N 160/170 E 10/20 SW #26-04','18','','160','170','N','10','20','E','SW','26-04','','','Yes','Tooth; UKN','AWA',''),
 ('N 160/170 E 10/20 SW #26-05','-','5','160','170','N','10','20','E','SW','26-05','','','','Tube with rib fragment; adult','MBB',''),
 ('N 160/170 E 10/20 SW #26-06','','6','160','170','N','10','20','E','SW','26-06','','','','TEETH- POSSIBLY 1998','GM',''),
 ('N 160/170 E 10/20 SW #26-07','LARGE ITEM','4','160','170','N','10','20','E','SW','26-07','','35833','','Salt wrapped with hand; whole hand','AWA',''),
 ('N 160/170 E 10/20 SW #27-01','-','5','160','170','N','10','20','E','SW','27-01','','','','MOUSE HAIR AND BONES, "NORTH WALL"','CIE',''),
 ('N 160/170 E 10/20 SW #27-02','18','','160','170','N','10','20','E','SW','27-02','','','Yes','Tooth','AWA',''),
 ('N 160/170 E 10/20 SW #27-03','23','','160','170','N','10','20','E','SW','27-03','','','','BONE POWDER','GM',''),
 ('N 160/170 E 10/20 SW #27-04','29','-','160','170','N','10','20','E','SW','27-04','','','','5 TEETH; ADULT','CIE',''),
 ('N 160/170 E 10/20 SW #28-01','31','','160','170','N','10','20','E','SW','28-01','','1998','','Skin - jaw and skull','AWA',''),
 ('N 160/170 E 10/20 SW #28-02','10','-','160','170','N','10','20','E','SW','28-02','','','','Scalp and hair; UKN','MBB',''),
 ('N 160/170 E 10/20 SW #28-03','','6','160','170','N','10','20','E','SW','28-03','','','','ROCK','GM',''),
 ('N 160/170 E 10/20 SW #28-04','11','','160','170','N','10','20','E','SW','28-04','','','','HAIR AND SCALP','GM',''),
 ('N 160/170 E 10/20 SW #28-05','31','','160','170','N','10','20','E','SW','28-05','','1998','','Humerus','AWA',''),
 ('N 160/170 E 10/20 SW #28-06','31','','160','170','N','10','20','E','SW','28-06','','','','Hair and scalp (?)','AWA',''),
 ('N 160/170 E 10/20 SW #28-07','31','','160','170','N','10','20','E','SW','28-07','','','','Clavicle; child','AWA',''),
 ('N 160/170 E 10/20 SW #28-08','31','','160','170','N','10','20','E','SW','28-08','','','','Skin','AWA',''),
 ('N 160/170 E 10/20 SW #29-01','29','-','160','170','N','10','20','E','SW','29-01','','','','TEETH','GM',''),
 ('N 160/170 E 10/20 SW #29-02','31','','160','170','N','10','20','E','SW','29-02','','1998','','Fibula','AWA',''),
 ('N 160/170 E 10/20 SW #29-03','31','-','160','170','N','10','20','E','SW','29-03',16,'1998','','Clavicle; child','AWA',''),
 ('N 160/170 E 10/20 SW #32-01','35','','160','170','N','10','20','E','SW','32-01','','1998','','1 bone fragment; 2 teeth; adult','MBB',''),
 ('N 160/170 E 10/20 SW #32-02','25','-','160','170','N','10','20','E','SW','32-02','','','','Skin','AWA',''),
 ('N 160/170 E 10/20 SW #32-03','7','','160','170','N','10','20','E','SW','32-03','','','','BONE ?- RC','GM',''),
 ('N 160/170 E 10/20 SW #32-04','18','','160','170','N','10','20','E','SW','32-04',6,'1998','','Fragment of humerus; child ("Cluster 6")','MBB',''),
 ('N 160/170 E 10/20 SW #32-05','31','-','160','170','N','10','20','E','SW','32-05',22,'1998','','Skin','AWA',''),
 ('N 160/170 E 10/20 SW #32-06','31','-','160','170','N','10','20','E','SW','32-06',22,'1998','','6 teeth; adult','AWA',''),
 ('N 160/170 E 10/20 SW #32-07','','6','160','170','N','10','20','E','SW','32-07','','','','RIBS AND BONE. "REVERSAL" ','GM',''),
 ('N 160/170 E 10/20 SW #33-01','31','','160','170','N','10','20','E','SW','33-01','','','Yes','2 teeth','AWA',''),
 ('N 160/170 E 10/20 SW #33-02','31','','160','170','N','10','20','E','SW','33-02','','','','Bone fragments','AWA',''),
 ('N 160/170 E 10/20 SW #34-01','11','-','160','170','N','10','20','E','SW','34-01','','','','SKIN ?','GM',''),
 ('N 160/170 E 10/20 SW #34-02','9','-','160','170','N','10','20','E','SW','34-02','','','','5 teeth; adult (4 tissue samples)','MBB',''),
 ('N 160/170 E 10/20 SW #34-03','14','-','160','170','N','10','20','E','SW','34-03','','','','3 rib fragments; adult','MBB',''),
 ('N 160/170 E 10/20 SW #34-04','31','','160','170','N','10','20','E','SW','34-04','','','','Skin','AWA',''),
 ('N 160/170 E 10/20 SW #34-05','23','','160','170','N','10','20','E','SW','34-05','','','','LUNG POWDER','GM',''),
 ('N 160/170 E 10/20 SW #35-01','5','','160','170','N','10','20','E','SW','35-01','','','','Scalp and hair; UKN','MBB',''),
 ('N 160/170 E 10/20 SW #35-02','28','-','160','170','N','10','20','E','SW','35-02','','','','Bones from foot and rib fragment; sub-adult','MBB',''),
 ('N 160/170 E 10/20 SW #35-03','31','','160','170','N','10','20','E','SW','35-03','','','','Scapula (?)','AWA',''),
 ('N 160/170 E 10/20 SW #35-04','7','','160','170','N','10','20','E','SW','35-04','','','','TOOTH- RC','GM',''),
 ('N 160/170 E 10/20 SW #36-01','7','','160','170','N','10','20','E','SW','36-01','','','','TOOTH-RC','GM',''),
 ('N 160/170 E 10/20 SW #36-02','7','','160','170','N','10','20','E','SW','36-02','','','','TOOTH- RC','GM',''),
 ('N 160/170 E 10/20 SW #36-03','35','','160','170','N','10','20','E','SW','36-03','','','Yes','Bone and tissue; UKN','MBB',''),
 ('N 160/170 E 10/20 SW #36-04','7','','160','170','N','10','20','E','SW','36-04','','','','TOOTH- RC','GM',''),
 ('N 160/170 E 10/20 SW #37-01','21','-','160','170','N','10','20','E','SW','37-01','','','','Powdered tissue sample','MBB',''),
 ('N 160/170 E 10/20 SW #37-02','21','-','160','170','N','10','20','E','SW','37-02','','','','Bone dust','MBB',''),
 ('N 160/170 E 10/20 SW #37-03','21','-','160','170','N','10','20','E','SW','37-03','','','','Skin sample','MBB',''),
 ('N 160/170 E 10/20 SW #37-04','26','-','160','170','N','10','20','E','SW','37-04','','','','Tissue from between vertebrae; UKN','MBB',''),
 ('N 160/170 E 10/20 SW #37-05','23','','160','170','N','10','20','E','SW','37-05','','','','BONE POWDER','GM',''),
 ('N 160/170 E 10/20 SW #37-06','17','-','160','170','N','10','20','E','SW','37-06','','','','Empty tube with dust residue','MBB',''),
 ('N 160/170 E 10/20 SW #37-07','21','','160','170','N','10','20','E','SW','37-07','','','','Powdered tooth sample','MBB',''),
 ('N 160/170 E 10/20 SW #37-09','2','-','160','170','N','10','20','E','SW','37-09','','','','15 broken teeth; adult','MBB',''),
 ('N 160/170 E 10/20 SW #38-01','10','-','160','170','N','10','20','E','SW','38-01','','','','14 TEETH; ADULT','CIE',''),
 ('N 160/170 E 10/20 SW #38-02','29','-','160','170','N','10','20','E','SW','38-02','','','','2 TEETH; ADULT','CIE',''),
 ('N 160/170 E 10/20 SW #38-03','-','3','160','170','N','10','20','E','SW','38-03','','','','REED FOR CARBON DATING','CIE',''),
 ('N 160/170 E 10/20 SW #38-04','12','-','160','170','N','10','20','E','SW','38-04','','','','8 TEETH; ADULT ','CIE',''),
 ('N 160/170 E 10/20 SW #38-05','5','','160','170','N','10','20','E','SW','38-05','','','','8 teeth; adult','MBB',''),
 ('N 160/170 E 10/20 SW #38-06','12','-','160','170','N','10','20','E','SW','38-06','','','','13 TEETH; ADULT ','CIE',''),
 ('N 160/170 E  10/20 SW #38-07','26','-','160','170','N','10','20','E ','SW','38-07','','','','Skin from mandible; UKN','MBB',''),
 ('N 160/170 E 10/20 SW #38-07','2','-','160','170','N','10','20','E','SW','38-07','','','','~11 broken teeth and fragments; adult','MBB',''),
 ('N 160/170 E 10/20 SW #38-07','5','','160','170','N','10','20','E','SW','38-07','','','','Scalp and hair; UKN','MBB',''),
 ('N 160/170 E  10/20 SW #39-01','12','-','160','170','N','10','20','E ','SW','39-01','','','','2 TEETH; ADULT','CIE',''),
 ('N 160/170 E  10/20 SW #39-02','24','-','160','170','N','10','20','E ','SW','39-02','','','','2 bones (hand and arm) with tissue; UKN','MBB',''),
 ('N 160/170 E 10/20 SW #4-01','12','-','160','170','N','10','20','E','SW','4-01','','','','14 TEETH; ADULT','CIE',''),
 ('N 160/170 E 10/20 SW #4-02','10','-','160','170','N','10','20','E','SW','4-02','','','','15 TEETH; ADULT, FRAGMENTED','CIE',''),
 ('N 160/170 E 10/20 SW #4-03','20','-','160','170','N','10','20','E','SW','4-03','','','','Skin and tissue from tibia','AWA',''),
 ('N 160/170 E  10/20 SW #40-01','12','-','160','170','N','10','20','E ','SW','40-01','','','YES','8 TEETH; ADULT','CIE',''),
 ('N 160/170 E  10/20 SW #40-02','26','-','160','170','N','10','20','E ','SW','40-02','','','','Scalp with hair; UKN','MBB',''),
 ('N 160/170 E  10/20 SW #40-03','24','-','160','170','N','10','20','E ','SW','40-03','','','','Scalp samples; UKN','MBB',''),
 ('N 160/170 E  10/20 SW #40-04','20','-','160','170','N','10','20','E ','SW','40-04','','','','Foot','AWA',''),
 ('N 160/170 E 10/20 SW #41-01','10','-','160','170','N','10','20','E','SW','41-01','','','','4 TEETH; ADULT W/ SOME TISSUE ATTACHED','CIE',''),
 ('N 160/170 E 10/20 SW #42','28','-','160','170','N','10','20','E','SW','42','','','','4 bones from foot; adult','MBB',''),
 ('N 160/170 E 10/20 SW #42-02','28','-','160','170','N','10','20','E','SW','42-02','','','','4 bones and tissue from foot; adult','MBB',''),
 ('N 160/170 E 10/20 SW #43-01','12','-','160','170','N','10','20','E','SW','43-01','','','YES','11 TEETH; ADULT','CIE',''),
 ('N 160/170 E 10/20 SW #43-03','-','4','160','170','N','10','20','E','SW','43-03','','','','HAIR','CIE',''),
 ('N 160/170 E 10/20 SW #43-05','24','-','160','170','N','10','20','E','SW','43-05','','','','5 rib fragments; child','MBB',''),
 ('N 160/170 E  10/20 SW #44-01','24','-','160','170','N','10','20','E ','SW','44-01','','','','Scalp samples; UKN','MBB',''),
 ('N 160/170 E  10/20 SW #44-02','24','-','160','170','N','10','20','E ','SW','44-02','','','','Skin from arm and leg; UKN','MBB',''),
 ('N 160/170 E  10/20 SW #44-03','24','-','160','170','N','10','20','E ','SW','44-03','','','','Skin and tendons (from knee); UKN','MBB',''),
 ('N 160/170 E  10/20 SW #44-04','2','-','160','170','N','10','20','E ','SW','44-04','','','','~12 broken teeth and fragments; adult','MBB',''),
 ('N 160/170 E 10/20 SW #44-05','10','-','160','170','N','10','20','E','SW','44-05','','','','7-9 TEETH; SMALL, POSSIBLY YOUNG ADULT','CIE',''),
 ('N 160/170 E 10/20 SW #45-01','5','','160','170','N','10','20','E','SW','45-01','','','','Bamboo','MBB',''),
 ('N 160/170 E 10/20 SW #45-02','-','2','160','170','N','10','20','E','SW','45-02','','','','WHOLE FOOT, INTACT; INFANT','CIE',''),
 ('N 160/170 E 10/20 SW #45-03','12','-','160','170','N','10','20','E','SW','45-03','','','','6 BROKEN TEETH AND BONE FRAG; ADULT','CIE',''),
 ('N 160/170 E 10/20 SW #45-04','25','-','160','170','N','10','20','E','SW','45-04','','','','1 rib; sub-adult','MBB',''),
 ('N 160/170 E 10/20 SW #45-05','7','','160','170','N','10','20','E','SW','45-05','','','','RIBS','GM',''),
 ('N 160/170 E 10/20 SW #46 - 01','24','-','160','170','N','10','20','E','SW','46 - 01','','','','5 rib fragments; child','MBB',''),
 ('N 160/170 E 10/20 SW #47 - 01','24','-','160','170','N','10','20','E','SW','47 - 01','','','','Tissue; UKN','MBB',''),
 ('N 160/170 E 10/20 SW #47-02','10','-','160','170','N','10','20','E','SW','47-02','','','','12 TEETH; ADULT','CIE',''),
 ('N 160/170 E 10/20 SW #47-03','-','3','160','170','N','10','20','E','SW','47-03','','','','WOOD','CIE',''),
 ('N 160/170 E 10/20 SW #47-04','16','-','160','170','N','10','20','E','SW','47-04','','','','1 rib fragment and tissue; child','MBB',''),
 ('N 160/170 E 10/20 SW #48-02','24','-','160','170','N','10','20','E','SW','48-02','','','','Tissue (skin and vertebra); UKN','MBB',''),
 ('N 160/170 E 10/20 SW #5-02','29','-','160','170','N','10','20','E','SW','5-02','','','','TEETH','GM',''),
 ('N 160/170 E 10/20 SW #5-03','18','','160','170','N','10','20','E','SW','5-03','','','','Broken tooth; child','AWA',''),
 ('N 160/170 E 10/20 SW #5-04','26','-','160','170','N','10','20','E','SW','5-04','','','','Reed','MBB',''),
 ('N 160/170 E 10/20 SW #5-04','5','','160','170','N','10','20','E','SW','5-04','','','','10 teeth; adult','MBB',''),
 ('N 160/170 E 10/20 SW #50 - 10','13','-','160','170','N','10','20','E','SW','50 - 10','','','','10 TEETH; ADULT, BLACK CROWNS (DECAY?)','CIE',''),
 ('N 160/170 E 10/20 SW #50-01','21','-','160','170','N','10','20','E','SW','50-01','','','','Soft tissue','MBB',''),
 ('N 160/170 E 10/20 SW #50-02','24','-','160','170','N','10','20','E','SW','50-02','','','','Tissue; UKN','MBB',''),
 ('N 160/170 E 10/20 SW #50-03','10','-','160','170','N','10','20','E','SW','50-03','','','','18 TEETH; ADULT','CIE',''),
 ('N 160/170 E 10/20 SW #50-04','5','','160','170','N','10','20','E','SW','50-04','','','','18 teeth; adult','MBB',''),
 ('N 160/170 E 10/20 SW #50-05','15','-','160','170','N','10','20','E','SW','50-05','','','','TEETH','GM',''),
 ('N 160/170 E 10/20 SW #50-06','21','-','160','170','N','10','20','E','SW','50-06','','','','Powdered tooth sample','MBB',''),
 ('N 160/170 E 10/20 SW #50-07','10','-','160','170','N','10','20','E','SW','50-07','','','','8 TEETH; ADULT','CIE',''),
 ('N 160/170 E 10/20 SW #50-08','12','-','160','170','N','10','20','E','SW','50-08','','','','11 TEETH; ADULT ','CIE',''),
 ('N 160/170 E 10/20 SW #50-09','28','-','160','170','N','10','20','E','SW','50-09','','','Yes','Bones and tissue (membrane from skull); UKN','MBB',''),
 ('N 160/170 E 10/20 SW #50-11','20','-','160','170','N','10','20','E','SW','50-11','','','','Skin','AWA',''),
 ('N 160/170 E 10/20 SW #50-12','20','-','160','170','N','10','20','E','SW','50-12','','','','Skin from face and inside mouth','AWA',''),
 ('N 160/170 E 10/20 SW #51-01','28','-','160','170','N','10','20','E','SW','51-01','','','','Bones; UKN','MBB',''),
 ('N 160/170 E 10/20 SW #51-02','14','-','160','170','N','10','20','E','SW','51-02','','','','5 rib fragments; sub-adult','MBB',''),
 ('N 160/170 E 10/20 SW #51-03','20','-','160','170','N','10','20','E','SW','51-03','','','','Skin','AWA',''),
 ('N 160/170 E 10/20 SW #51-04','','7','160','170','N','10','20','E','SW','51-04','','','','TISSUE FROM MOUTH','GM',''),
 ('N 160/170 E 10/20 SW #51-05','1','-','160','170','N','10','20','E','SW','51-05','','','','~10 teeth; child','AWA',''),
 ('N 160/170 E 10/20 SW #51-06','21','-','160','170','N','10','20','E','SW','51-06','','','','Wasp and seed samples','MBB','Removed and given to Richard Heckmann on 11 January 2011 for analysis'),
 ('N 160/170 E 10/20 SW #52 - 01','21','-','160','170','N','10','20','E','SW','52 - 01','','','','Powdered rib sample','MBB',''),
 ('N 160/170 E 10/20 SW #52-02','17','-','160','170','N','10','20','E','SW','52-02','','','','Empty tube with dust residue','MBB',''),
 ('N 160/170 E 10/20 SW #52-03','9','-','160','170','N','10','20','E','SW','52-03','','','','1 tooth; child','MBB',''),
 ('N 160/170 E 10/20 SW #52-04','11','','160','170','N','10','20','E','SW','52-04','','','Y','TOOTH-RC','GM',''),
 ('N 160/170 E 10/20 SW #52-05','11','','160','170','N','10','20','E','SW','52-05','','','Y','TOOTH-RC','GM',''),
 ('N 160/170 E 10/20 SW #52-06','12','-','160','170','N','10','20','E','SW','52-06','','','YES','7-8 BROKEN TEETH; ADULT','CIE',''),
 ('N 160/170 E 10/20 SW #52-07','24','-','160','170','N','10','20','E','SW','52-07','','','','Tissue (skin and muscle); UKN','MBB',''),
 ('N 160/170 E 10/20 SW #52-08','14','-','160','170','N','10','20','E','SW','52-08','','','','12 rib fragments; sub-adult','MBB',''),
 ('N 160/170 E 10/20 SW #52-09','25','-','160','170','N','10','20','E','SW','52-09','','','','5 bones (foot); tissue; UKN','MBB',''),
 ('N 160/170 E 10/20 SW #52-10','24','-','160','170','N','10','20','E','SW','52-10','','','','Tissue (foot and leg); UKN','MBB',''),
 ('N 160/170 E 10/20 SW #52-12','9','-','160','170','N','10','20','E','SW','52-12','','','','14 teeth; adult','MBB',''),
 ('N 160/170 E 10/20 SW #52-13','28','-','160','170','N','10','20','E','SW','52-13','','','','Jaw and teeth; child','MBB',''),
 ('N 160/170 E 10/20 SW #52-14','16','-','160','170','N','10','20','E','SW','52-14','','','','8 bone fragments (foot); UKN','MBB',''),
 ('N 160/170 E 10/20 SW #53-01','11','','160','170','N','10','20','E','SW','53-01','','','Y','TOOTH-RC','GM',''),
 ('N 160/170 E 10/20 SW #53-02','24','-','160','170','N','10','20','E','SW','53-02','','','','Tissue (muscle and skin from leg); UKN','MBB',''),
 ('N 160/170 E 10/20 SW #53-03','2','-','160','170','N','10','20','E','SW','53-03','','','','~15 broken teeth and fragments; adult','MBB',''),
 ('N 160/170 E 10/20 SW #53-04','12','-','160','170','N','10','20','E','SW','53-04','','','','5 TEETH AND BONE FRAGMENT; ADULT','CIE',''),
 ('N 160/170 E 10/20 SW #54-01','22','-','160','170','N','10','20','E','SW','54-01','','','','TISSUE FROM MOUTH','GM',''),
 ('N 160/170 E 10/20 SW #54-02','24','-','160','170','N','10','20','E','SW','54-02','','','','Eye and mustache; UKN','MBB',''),
 ('N 160/170 E 10/20 SW #54-03','24','-','160','170','N','10','20','E','SW','54-03','','','','Beard and skin; UKN','MBB',''),
 ('N  160/170 E  10/20 SW #54-04','26','-','160','170','N ','10','20','E ','SW','54-04','','','','Tissue from mouth and nostrils; UKN','MBB',''),
 ('N 160/170 E 10/20 SW #54-05','2','-','160','170','N','10','20','E','SW','54-05','','','Yes','8 teeth; adullt','MBB',''),
 ('N 160/170 E 10/20 SW #54-06','9','-','160','170','N','10','20','E','SW','54-06','','','','9 teeth; child','MBB',''),
 ('N 160/170 E  10/20 SW #55-01','18','','160','170','N','10','20','E ','SW','55-01','','','Yes','','AWA',''),
 ('N 160/170 E  10/20 SW #55-02','17','-','160','170','N','10','20','E ','SW','55-02','','','','Powdered tissue sample','MBB',''),
 ('N 160/170 E  10/20 SW #55-03','24','-','160','170','N','10','20','E ','SW','55-03','','','','Scalp and hair; UKN','MBB',''),
 ('N 160/170 E  10/20 SW #55-04','24','-','160','170','N','10','20','E ','SW','55-04','','','','Tissue; UKN','MBB',''),
 ('N 160/170 E  10/20 SW #55-05','21','-','160','170','N','10','20','E ','SW','55-05','','','','Tissue lining inside of skull','MBB',''),
 ('N 160/170 E  10/20 SW #55-06','10','','160','170','N','10','20','E ','SW','55-06','','','','6 TEETH; ADULT','CIE',''),
 ('N 160/170 E 10/20 SW #56','9','-','160','170','N','10','20','E','SW','56','','','Yes','5 teeth; adult','MBB',''),
 ('N 160/170 E 10/20 SW #56 - 01','24','-','160','170','N','10','20','E','SW','56 - 01','','','','Bone fragments (foot); UKN','MBB',''),
 ('N 160/170 E 10/20 SW #56-03','10','','160','170','N','10','20','E','SW','56-03','','','','9 TEETH; ADULT *1ST VILE W/ #30 TEETH','CIE',''),
 ('N 160/170 E 10/20 SW #56-04','22','-','160','170','N','10','20','E','SW','56-04','','','','HAIR IN SCALP','GM',''),
 ('N 160/170 E 10/20 SW #57 - 02','-','5','160','170','N','10','20','E','SW','57 - 02','','1993','','7 tubes with tissue, including intestinal fragment; UKN ("SOHAG") written on bag','MBB',''),
 ('N 160/170 E  10/20 SW #57-01','2','-','160','170','N','10','20','E ','SW','57-01','','','','8 teeth; adult','MBB',''),
 ('N 160/170 E  10/20 SW #57-03','21','-','160','170','N','10','20','E ','SW','57-03','','','','Tissue sample','MBB',''),
 ('N 160/170 E  10/20 SW #57-04','10','','160','170','N','10','20','E ','SW','57-04','','','','16-18 TEETH; ADULT, FRAGMENTED *2ND VILE W/ #30 TEETH','CIE',''),
 ('N 160/170 E  10/20 SW #57-05','24','-','160','170','N','10','20','E ','SW','57-05','','','','Scalp and hair; UKN','MBB',''),
 ('N 160/170 E  10/20 SW #58-01','25','-','160','170','N','10','20','E ','SW','58-01','','','','1 rib fragment; adult','MBB',''),
 ('N 160/170 E  10/20 SW #58-02','26','-','160','170','N','10','20','E ','SW','58-02','','','','Brain; UKN','MBB',''),
 ('N 160/170 E  10/20 SW #58-03','21','-','160','170','N','10','20','E ','SW','58-03','','','','Tissue from mouth and upper jaw','MBB',''),
 ('N 160/170 E  10/20 SW #58-04','-','5','160','170','N','10','20','E ','SW','58-04','','1993','','Rib fragment; UKN','MBB',''),
 ('N 160/170 E  10/20 SW #58-05','22','-','160','170','N','10','20','E ','SW','58-05','','','','MISC. TISSUE','GM',''),
 ('N 160/170 E 10/20 SW #59-02','26','-','160','170','N','10','20','E','SW','59-02','','','','Tissue from femur; UKN','MBB',''),
 ('N 160/170 E 10/20 SW #59-03','16','-','160','170','N','10','20','E','SW','59-03','','','','4 rib fragments and tissue; child','MBB',''),
 ('N 160/170 E 10/20 SW #59-04','','6','160','170','N','10','20','E','SW','59-04','','','','TEETH- POSSIBLY 1998','GM',''),
 ('N 160/170 E 10/20 SW #59-05','-','5','160','170','N','10','20','E','SW','59-05','','1993','','"Mummy 23. Sample 2 F--- and Re-----" - written on bag "Beetle exoskeleton " - written on tube in bag','MBB',''),
 ('N 160/170 E 10/20 SW #6-01','24','-','160','170','N','10','20','E','SW','6-01','','','','Skin and muscle from femur; UKN','MBB',''),
 ('N 160/170 E 10/20 SW #6-02','14','-','160','170','N','10','20','E','SW','6-02','','','','bone fragments; UKN','MBB',''),
 ('N 160/170 E 10/20 SW #6-03','5','','160','170','N','10','20','E','SW','6-03','','','','12 teeth; adult','MBB',''),
 ('N 160/170 E 10/20 SW #6-04','24','-','160','170','N','10','20','E','SW','6-04','','','','Scalp and hair; fragments of skull with membrane; UKN','MBB',''),
 ('N 160/170 E 10/20 SW #6-05','','7','160','170','N','10','20','E','SW','6-05','','','','INSIDE THE CHEST','GM',''),
 ('N 160/170 E 10/20 SW #60-02','10','','160','170','N','10','20','E','SW','60-02','','','','16 TEETH AND FRAGMENTS; ADULT','CIE',''),
 ('N 160/170 E 10/20 SW #60-03','10','','160','170','N','10','20','E','SW','60-03','','','','6 TEETH; ADULT','CIE',''),
 ('N 160/170 E 10/20 SW #60-03','5','','160','170','N','10','20','E','SW','60-03','','','','12 teeth; adult','MBB',''),
 ('N 160/170 E 10/20 SW #7','24','-','160','170','N','10','20','E','SW','7','','','','Tissue (muscle?); UKN','MBB',''),
 ('N 160/170 E 10/20 SW #8-01','19','-','160','170','N','10','20','E','SW','8-01','','','','Bones (ribs and other); tissue; fetus','MBB',''),
 ('N 160/170 E 10/20 SW #8-02','1','-','160','170','N','10','20','E','SW','8-02','','','','~12 teeth; child','AWA',''),
 ('N 160/170 E 10/20 SW #8-03','34','','160','170','N','10','20','E','SW','8-03','','1998','','Internal','AWA',''),
 ('N 160/170 E 10/20 SW #8-04','14','-','160','170','N','10','20','E','SW','8-04','','','','2 teeth; adult','MBB',''),
 ('N 160/170 E 10/20 SW #9-03','4','-','160','170','N','10','20','E','SW','9-03','','','','6 teeth; adult','MBB',''),
 ('N 160/170 E 10/20 SW #9-04','21','-','160','170','N','10','20','E','SW','9-04','','','','Bone fragments','MBB',''),
 ('N 160/170 E 10/20 SW #','','6','160','170','N','10','20','E','SW','','','','','TEETH- POSSIBLY 1998','GM',''),
 ('N 160/170 E 10/20 SW #','10','','160','170','N','10','20','E','SW','','','','','7 TEETH; ADULT (ONE IS BROKEN)','CIE',''),
 ('N  160/170 E  10/20 SW #','-','5','160','170','N ','10','20','E ','SW','','','1993','','Tooth fragments; UKN','MBB',''),
 ('N 160/170 E 10/20 SW #','10','','160','170','N','10','20','E','SW','','','','','12 TEETH; ADULT','CIE',''),
 ('N 160/170 E 10/20 SW #','','7','160','170','N','10','20','E','SW','','','','','HAIR','GM',''),
 ('N 160/170 E 20/30 SW #2','5','','160','170','N','20','30','E','SW','2','','','','Hair; UKN','MBB',''),
 ('N 160/170 E 20/30 SW #4','24','-','160','170','N','20','30','E','SW','4','','','','Hair and scalp; UKN','MBB',''),
 ('N 160/170 E 20/30 SW #4','','7','160','170','N','20','30','E','SW','4','','','','BONES','GM',''),
 ('N 160/170 E 20/30 SW #5','10','','160','170','N','20','30','E','SW','5','','','YES','6 TEETH, ADULT, UNK BONE FRAGMENTS *1ST #39 VILE W/ TEETH','CIE',''),
 ('N 160/170 E 20/30 SW #10','7','','160','170','N','20','30','E','SW','10','','','','RIBS','GM',''),
 ('N 160/170 E 20/30 SW #12','','7','160','170','N','20','30','E','SW','12','','','','RIBS','GM',''),
 ('N 160/170 E 20/30 SW #13','21','-','160','170','N','20','30','E','SW','13','','','','Powdered tooth sample','MBB',''),
 ('N 160/170 E 20/30 SW #14','17','-','160','170','N','20','30','E','SW','14','','','','Powdered tissue sample','MBB',''),
 ('N 160/170 E 20/30 SW #15','21','-','160','170','N','20','30','E','SW','15','','','','Powdered eye sample','MBB',''),
 ('N 160/170 E 20/30 SW #16','21','-','160','170','N','20','30','E','SW','16','','','','Powdered tissue sample','MBB',''),
 ('N 160/170 E 20/30 SW #16','17','-','160','170','N','20','30','E','SW','16','','','','Empty tube with dust residue','MBB',''),
 ('N 160/170 E 20/30 SW #11','16','-','160','170','N','20','30','E','SW','11','','','','2 rib fragments; child','MBB',''),
 ('N 160/170 E 20/30 SW #12','6','-','160','170','N','20','30','E','SW','12','','','','~7 broken teeth and fragments; adult','MBB',''),
 ('N 160/170 E 20/30 SW #13','9','-','160','170','N','20','30','E','SW','13','','','Yes','3 teeth; adult','MBB',''),
 ('N 160/170 E 20/30 SW #14','14','','160','170','N','20','30','E','SW','14','','','','~10 bone fragments (ribs); adult','MBB',''),
 ('N 160/170 E 20/30 SW #15','23','','160','170','N','20','30','E','SW','15','','','','BONE POWDER','GM',''),
 ('N 160/170 E 20/30 SW #16','17','-','160','170','N','20','30','E','SW','16','','','','Tissue sample','MBB',''),
 ('N 160/170 E 20/30 SW #17','10','','160','170','N','20','30','E','SW','17','','','','12 TEETH; ADULT AND FRAGMENTS *2ND #39 VILE W/ TEETH','CIE',''),
 ('N 160/170 E 20/30 SW #2','24','-','160','170','N','20','30','E','SW','2','','','','Tissue; UKN','MBB',''),
 ('N 160/170 E 20/30 SW #3','','7','160','170','N','20','30','E','SW','3','','','Y','TEETH','GM',''),
 ('N 160/170 E 20/30 SW #5','24','-','160','170','N','20','30','E','SW','5','','','','Brain; UKN','MBB',''),
 ('N 160/170 E 20/30 SW #9','21','-','160','170','N','20','30','E','SW','9','','','','Powdered tooth sample','MBB',''),
 ('N 160/170 E 20/30 SW #','21','-','160','170','N','20','30','E','SW','','','','','Soft tissue','MBB',''),
 ('N 160/170 E 30/40 SW #10','6','-','160','170','N','30','40','E','SW','10','','','','5 teeth; adult','MBB',''),
 ('N 160/170 E 30/40 SW #12','14','-','160','170','N','30','40','E','SW','12','','','','1 bone; UKN','MBB',''),
 ('N 160/170 E 30/40 SW #20','14','-','160','170','N','30','40','E','SW','20','','','','~7 rib fragments; child','MBB',''),
 ('N 160/170 E 30/40 SW #26','','7','160','170','N','30','40','E','SW','26','','','','RADIUS ??','GM',''),
 ('N 160/170 E 30/40 SW #27','24','-','160','170','N','30','40','E','SW','27','','','','Hair; UKN','MBB',''),
 ('N  160/170 E 30/40 SW #28','24','-','160','170','N ','30','40','E','SW','28','','','','Tissue; UKN','MBB',''),
 ('N 160/140 E 30/40 SW #6/8','5','','160','140','N','30','40','E','SW','6/8','','','','5 teeth; adult','MBB',''),
 ('N 160/170 E 30/40 SW #9/21','24','-','160','170','N','30','40','E','SW','9/21','','','','Eye; UKN','MBB',''),
 ('N 160/170 E 30/40  #','25','-','160','170','N','30','40','E','','','','','','bone fragments (skull, jaw); child','MBB',''),
 ('N 190/200 E 10/30 SE #47','29','-','190','200','N','10','30','E','SE','47','','','','2 TEETH CHILD','CIE',''),
 ('N 190/200 E 20/30 SE #2','10','','190','200','N','20','30','E','SE','2','','','','5 TEETH; ADULT  (ONE IS BROKEN)','CIE',''),
 ('N 190/200 E 20/30 SE #6','24','-','190','200','N','20','30','E','SE','6','','','','Muscles from arm; UKN','MBB',''),
 ('N 190/200 E 20/30 SE #7','22','-','190','200','N','20','30','E','SE','7','','','','HAIR','GM',''),
 ('N 190/200 E 20/30 SE #11','24','-','190','200','N','20','30','E','SE','11','','','','Muscle from femur; UKN','MBB',''),
 ('N 190/200 E 20/30 SE #13','24','-','190','200','N','20','30','E','SE','13','','','','Brain; UKN','MBB',''),
 ('N 190/200 E 20/30 SE #19','9','-','190','200','N','20','30','E','SE','19','','','','13 teeth; adult','MBB',''),
 ('N 190/200 E 20/30 SE #20','19','-','190','200','N','20','30','E','SE','20','','','','Jaw with teeth and tissue; child','MBB',''),
 ('N 190/200 E 20/30 SE #21','31','','190','200','N','20','30','E','SE','21','','','','"#3 or 2; ear"','AWA',''),
 ('N 190/200 E 20/30 SE #22','5','','190','200','N','20','30','E','SE','22','','','','6 teeth; adult','MBB',''),
 ('N 190/200 E 20/30 SE #24','16','-','190','200','N','20','30','E','SE','24','','','','1 rib fragment; adult','MBB',''),
 ('N 190/200 E 20/30 SE #30','27','-','190','200','N','20','30','E','SE','30','','','','5 bones and tissue from foot; UKN','MBB',''),
 ('N 190/200 E 20/30 SE #31','29','-','190','200','N','20','30','E','SE','31','','','','TEETH','GM',''),
 ('N 190/200 E 20/30 SE #32','17','-','190','200','N','20','30','E','SE','32','','','','Empty tube with dust residue','MBB',''),
 ('N 190/200 E 20/30 SE #33','17','-','190','200','N','20','30','E','SE','33','','','','Bone fragments','MBB',''),
 ('N 190/200 E 20/30 SE #38','24','-','190','200','N','20','30','E','SE','38','','','','Scalp and hair; UKN','MBB',''),
 ('N 190/200 E 20/30 SE #41','1','-','190','200','N','20','30','E','SE','41','','','','~10 teeth; child','AWA',''),
 ('N 190/200 E 20/30 SE #46','21','-','190','200','N','20','30','E','SE','46','','','','Powdered tooth sample','MBB',''),
 ('N 190/200 E 20/30 SE #34','14','-','190','200','N','20','30','E','SE','34','','','','6 rib fragments; child','MBB',''),
 ('N 190/200 E 20/30 SE #42','26','-','190','200','N','20','30','E','SE','42','','','','Tissue from head; UKN','MBB',''),
 ('N 190/200 E 20/30 SE #42','14','-','190','200','N','20','30','E','SE','42','','','','~3 bone fragments (tibia);child','MBB',''),
 ('N 190/200 E 20/30 SE #7','14','','190','200','N','20','30','E','SE','7','','','','LEG TISSUE','GM',''),
 ('N 200/210 E 20/30 SE #1','5','','200','210','N','20','30','E','SE','1','','','','10 teeth; adult','MBB',''),
 ('N 200/210 E 20/30 SE #2','10','','200','210','N','20','30','E','SE','2','','','YES','10 TEETH; ADULT, SOME FRAGMENTS AND 1/2 HAVE BEEN SAMPLED','CIE',''),
 ('N 200/210 E 20/30 SE #2','16','-','200','210','N','20','30','E','SE','2','','','','7 bones (foot) and tissue; child','MBB',''),
 ('N  200/210 E  20/30 SE #3','','7','200','210','N ','20','30','E ','SE','3','','','','TEETH','GM',''),
 ('N 200/210 E 20/30 SE #5','18','','200','210','N','20','30','E','SE','5','','','Yes','Tooth; adult','AWA',''),
 ('N 200/210 E 20/30 SE #5','21','-','200','210','N','20','30','E','SE','5','','','','Empty tube with dust residue','MBB',''),
 ('N 200/210 E 20/30 SE #6','26','-','200','210','N','20','30','E','SE','6','','','','Tissue from foot; UKN','MBB',''),
 ('N 200/210 E 20/30 SE #6','1','-','200','210','N','20','30','E','SE','6','','','','7 teeth; adult','AWA',''),
 ('N 200/210 E 20/30 SE #6','25','-','200','210','N','20','30','E','SE','6','','','','bone fragments (skull); child','MBB',''),
 ('N 200/210 E 20/30 SE #7','25','-','200','210','N','20','30','E','SE','7','','','','bone fragments; UKN','MBB',''),
 ('N 200/210 E 20/30 SE #9','16','-','200','210','N','20','30','E','SE','9','','','','5 rib fragments; child','MBB',''),
 ('N 200/210 E 20/30 SE #10','1','-','200','210','N','20','30','E','SE','10','','','','9 teeth; adult','AWA',''),
 ('N 200/210 E 20/30 SE #10','16','-','200','210','N','20','30','E','SE','10','','','','6 rib fragments; child','MBB',''),
 ('N 200/210 E 20/30 SE #11','16','-','200','210','N','20','30','E','SE','11','','','','1 rib fragment; adult','MBB',''),
 ('N 200/210 E 20/30 SE #11','4','-','200','210','N','20','30','E','SE','11','','','Yes','12 teeth; adult','MBB',''),
 ('N 200/210 E 20/30 SE #11','10','','200','210','N','20','30','E','SE','11','','','','6 TEETH; ADULT','CIE',''),
 ('N 200/210 E 20/30 SE #12','24','-','200','210','N','20','30','E','SE','12','','','','Inside femur; UKN','MBB',''),
 ('N 200/210 E 20/30 SE #12','6','-','200','210','N','20','30','E','SE','12','','','Yes','9 teeth; adult','MBB',''),
 ('N 200/210 E 20/30 SE #13','25','-','200','210','N','20','30','E','SE','13','','','','~4 bone fragments; UKN','MBB',''),
 ('N 200/210 E 20/30 SE #14','-','2','200','210','N','20','30','E','SE','14','','','','"REED FOR CARBON DATING"','CIE',''),
 ('N 200/210 E 20/30 SE #14','24','-','200','210','N','20','30','E','SE','14','','','','Tissue "prim?" - written on tube; UKN','MBB',''),
 ('N 200/210 E 20/30 SE #14','24','-','200','210','N','20','30','E','SE','14','','','','Hair; UKN','MBB',''),
 ('N 200/210 E 20/30 SE #15','31','','200','210','N','20','30','E','SE','15','','','','Ribs','AWA',''),
 ('N 200/210 E 20/30 SE #15','17','-','200','210','N','20','30','E','SE','15','','','','Powdered tissue sample','MBB',''),
 ('N 200/210 E 20/30 SE #16','13','-','200','210','N','20','30','E','SE','16','','','','7 teeth; adult','MBB',''),
 ('N 200/210 E 20/30 SE #17','18','','200','210','N','20','30','E','SE','17','','','','Broken tooth; child','AWA',''),
 ('N 200/210 E 20/30 SE #18','10','','200','210','N','20','30','E','SE','18','','','','4 TEETH; ADULT AND 1 FRAGMENT','CIE',''),
 ('N 200/210 E 20/30 SE #19','24','-','200','210','N','20','30','E','SE','19','','','','Brain; UKN','MBB',''),
 ('N 200/210 E 20/30 SE #19','21','-','200','210','N','20','30','E','SE','19','','','','Powdered tooth sample','MBB',''),
 ('N 200/210 E 20/30 SE #19','21','-','200','210','N','20','30','E','SE','19','','','','Tissue from skull','MBB',''),
 ('N 200/210 E 20/30 SE #19','21','-','200','210','N','20','30','E','SE','19','','','','Powdered tooth sample','MBB',''),
 ('N 200/210 E 20/30 SE #20','24','-','200','210','N','20','30','E','SE','20','','','','Soft tissue from skull; UKN','MBB',''),
 ('N 200/210 E 20/30 SE #21','5','','200','210','N','20','30','E','SE','21','','','Yes','3 teeth; adult','MBB',''),
 ('N 200/210 E 20/30 SE #22','','6','200','210','N','20','30','E','SE','22','','','','TEETH','GM',''),
 ('N 200/210 E 20/30 SE #22','26','-','200','210','N','20','30','E','SE','22','','','','Tissue from foot; hair; UKN','MBB',''),
 ('N 200/210 E 20/30 SE #23','22','-','200','210','N','20','30','E','SE','23','','','','SKIN FROM FOOT','GM',''),
 ('N 200/210 E 20/30 SE #23','14','-','200','210','N','20','30','E','SE','23','','','','8 rib fragments; sub-adult','MBB',''),
 ('N 200/210 E 20/30 SE #23','5','','200','210','N','20','30','E','SE','23','','','','Brain; UKN','MBB',''),
 ('N 200/210 E 20/30 SE #23','22','-','200','210','N','20','30','E','SE','23','','','','HAIR','GM',''),
 ('N 200/210 E 20/30 SE #25','19','-','200','210','N','20','30','E','SE','25','','','','Hand sample (tissue and bone); adult','MBB',''),
 ('N 200/210 E 20/30 SE #25','25','-','200','210','N','20','30','E','SE','25','','','','Adult rib','AWA',''),
 ('N 200/210 E 20/30 SE #25','16','-','200','210','N','20','30','E','SE','25','','','','4 rib fragments; sub-adult','MBB',''),
 ('N 200/210 E 20/30 SE #26','22','-','200','210','N','20','30','E','SE','26','','','','HAIR','GM',''),
 ('N 200/210 E 20/30 SE #27','15','-','200','210','N','20','30','E','SE','27','','','','BRAIN ?','GM',''),
 ('N 200/210 E 20/30 SE #28','13','-','200','210','N','20','30','E','SE','28','','','','5 teeth; adult','MBB',''),
 ('N 200/210 E 20/30 SE #29','','7','200','210','N','20','30','E','SE','29','','','','TEETH','GM',''),
 ('N 200/210 E 20/30 SE #29','21','-','200','210','N','20','30','E','SE','29','','','','("Internal + skin") - written on tube','MBB',''),
 ('N 200/210 E 20/30 SE #30','15','-','200','210','N','20','30','E','SE','30','','','','SKIN ?','GM',''),
 ('N 200/210 E 20/30 SE #31','22','-','200','210','N','20','30','E','SE','31','','','','FOOT','GM',''),
 ('N 200/210 E 20/30 SE #31','19','-','200','210','N','20','30','E','SE','31','','','','Hand sample (tissue and bone); adult','MBB',''),
 ('N 200/210 E 20/30 SE #31','15','-','200','210','N','20','30','E','SE','31','','','','FOOT','GM',''),
 ('N 200/210 E 20/30 SE #32','26','-','200','210','N','20','30','E','SE','32','','','','Tissue from foot; UKN','MBB',''),
 ('N 200/210 E 20/30 SE #32','5','','200','210','N','20','30','E','SE','32','','','Yes','2 teeth; adult','MBB',''),
 ('N 200/210 E 20/30 SE #32','17','-','200','210','N','20','30','E','SE','32','','','','Powdered tissue sample','MBB',''),
 ('N 200/210 E 20/30 SE #32','22','-','200','210','N','20','30','E','SE','32','','','','FOOT','GM',''),
 ('N 200/210 E 20/30 SE #32','5','','200','210','N','20','30','E','SE','32','','','','Hair and scalp; UKN','MBB',''),
 ('N 200/210 E 20/30 SE #32','14','','200','210','N','20','30','E','SE','32','','','','1 rib fragment; sub-adult','MBB',''),
 ('N 200/210 E 20/30 SE #33','16','-','200','210','N','20','30','E','SE','33','','','','1 rib fragment; adult','MBB',''),
 ('N 200/210 E 20/30 SE #33','5','','200','210','N','20','30','E','SE','33','','','Yes','2 teeth; adult','MBB',''),
 ('N 200/210 E 20/30 SE #33','15','-','200','210','N','20','30','E','SE','33','','','','TEETH- CHILD','GM',''),
 ('N 200/210 E 20/30 SE #34','1','-','200','210','N','20','30','E','SE','34','','','','14 teeth; adult','AWA',''),
 ('N 200/210 E 20/30 SE #35','26','-','200','210','N','20','30','E','SE','35','','','','Tissue from foot; UKN','MBB',''),
 ('N 200/210 E 20/30 SE #36','22','-','200','210','N','20','30','E','SE','36','','','','FOOT','GM',''),
 ('N 200/210 E 20/30 SE #36','16','-','200','210','N','20','30','E','SE','36','','','','~10 bone fragments (ribs and skull); infant','MBB',''),
 ('N 200/210 E 20/30 SE #37','5','','200','210','N','20','30','E','SE','37','','','','Tissue from skull; UKN','MBB',''),
 ('N 200/210 E 20/30 SE #37','22','-','200','210','N','20','30','E','SE','37','','','','FOOT','GM',''),
 ('N 200/210 E 20/30 SE #37','21','-','200','210','N','20','30','E','SE','37','','','','Tissue sample','MBB',''),
 ('N 200/210 E 20/30 SE #37','26','-','200','210','N','20','30','E','SE','37','','','','Tissue from foot; UKN','MBB',''),
 ('N 200/210 E 20/30 SE #37','22','-','200','210','N','20','30','E','SE','37','','','','HAIR. SCALP, TISSUE FROM SKULL','GM',''),
 ('N 200/210 E 20/30 SE #38','20','-','200','210','N','20','30','E','SE','38','','','','Foot','AWA',''),
 ('N 200/210 E 20/30 SE #38','26','-','200','210','N','20','30','E','SE','38','','','','Tissue from foot; UKN','MBB',''),
 ('N 200/210 E 20/30 SE #39','22','-','200','210','N','20','30','E','SE','39','','','','TISSUE FROM SKULL','GM',''),
 ('N 200/210 E 20/30 SE #39','19','-','200','210','N','20','30','E','SE','39','','','','"Maxilla teeth, pieces of skull" - written on tube; child','MBB',''),
 ('N 200/210 E 20/30 SE #40','','7','200','210','N','20','30','E','SE','40','','','','RIBS','GM',''),
 ('N 200/210 E 20/30 SE #40','16','-','200','210','N','20','30','E','SE','40','','','','~10 rib fragments; child','MBB',''),
 ('N 200/210 E 20/30 SE #41','17','-','200','210','N','20','30','E','SE','41','','','','Empty tube with dust residue','MBB',''),
 ('N 200/210 E 20/30 SE #41','-','5','200','210','N','20','30','E','SE','41','','1993','','3 tubes with resin, beetle samples, and tissue; UKN ("GOLDFINGER") written on bag','MBB',''),
 ('N 200/210 E 20/30 SE #42','15','-','200','210','N','20','30','E','SE','42','','','','TEETH','GM',''),
 ('N  200/210 E  20/30 SE #42','26','-','200','210','N ','20','30','E ','SE','42','','','','Tissue from foot; UKN','MBB',''),
 ('N 200/210 E 20/30 SE #44','-','?','200','210','N','20','30','E','SE','44','','','','10 RIB FRAGMENTS; ADULT','CIE',''),
 ('N 200/210 E 20/30 SE #44','5','','200','210','N','20','30','E','SE','44','','','','7 teeth; adult','MBB',''),
 ('N 200/210 E 20/30 SE #44','26','-','200','210','N','20','30','E','SE','44','','','','Tissue from foot; UKN','MBB',''),
 ('N 200/210 E 20/30 SE #44','9','-','200','210','N','20','30','E','SE','44','','','','9 teeth; child','MBB',''),
 ('N 200/210 E 20/30 SE #45','-','1','200','210','N','20','30','E','SE','45','','','','WHOLE FOOT, FRAGMENTED','CIE',''),
 ('N 200/210 E 20/30 SE #46','20','-','200','210','N','20','30','E','SE','46','','','','Skin','AWA',''),
 ('N 200/210 E 20/30 SE #46','15','-','200','210','N','20','30','E','SE','46','','','','TEETH','GM',''),
 ('N 200/210 E 20/30 SE #48','26','-','200','210','N','20','30','E','SE','48','','','','Hair; UKN','MBB',''),
 ('N 200/210 E 20/30 SE #49','15','-','200','210','N','20','30','E','SE','49','','','','BRAIN','GM',''),
 ('N 200/210 E 20/30 SE #50','26','-','200','210','N','20','30','E','SE','50','','','','Brain; UKN','MBB',''),
 ('N 200/210 E 20/30 SE #50','16','-','200','210','N','20','30','E','SE','50','','','','2 rib fragments and tissue; adult','MBB',''),
 ('N 200/210 E 20/30 SE #50','11','','200','210','N','20','30','E','SE','50','','','','TOOTH-RC','GM',''),
 ('N 200/210 E 20/30 SE #51','17','-','200','210','N','20','30','E','SE','51','','','','Powdered tissue sample','MBB',''),
 ('N 200/210 E 20/30 SE #52','9','-','200','210','N','20','30','E','SE','52','','','','5 teeth; adult','MBB',''),
 ('N 200/210 E 20/30 SE #52','15','-','200','210','N','20','30','E','SE','52','','','','HAIR','GM',''),
 ('N 200/210 E 20/30 SE #16','9','-','200','210','N','20','30','E','SE','16','','','','18 teeth; adult','MBB',''),
 ('N 200/210 E 20/30 SE #33','15','-','200','210','N','20','30','E','SE','33','','','','HAIR','GM',''),
 ('N 200/210 E 20/30 SE #34','16','-','200','210','N','20','30','E','SE','34','','','','5 rib fragments; child','MBB',''),
 ('N 200/210 E 20/30 SE #51','26','-','200','210','N','20','30','E','SE','51','','','','Scalp and hair; UKN','MBB',''),
 ('N 200/210 E 20/30 SW #2','-','5','200','210','N','20','30','E','SW','2','','1993','','Rib; child','MBB',''),
 ('N 200/210 E 20/30 SW #2','11','','200','210','N','20','30','E','SW','2','','','','TOOTH- RC','GM',''),
 ('N 200/210 E 20/30 SW #8','15','-','200','210','N','20','30','E','SW','8','','','','TISSUE FROM TIBIA','GM',''),
 ('N 200/210 E 20/30 SW #8','25','-','200','210','N','20','30','E','SW','8','','','','2 rib fragments; sub-adult','MBB',''),
 ('N 200/210 E 20/30 SW #8','28','-','200','210','N','20','30','E','SW','8','','','','6 rib fragments; child','MBB',''),
 ('N 200/210 E 20/30 SW #9','7','','200','210','N','20','30','E','SW','9','','','','RIBS','GM',''),
 ('N 200/210 E 20/30 SW #9','26','-','200','210','N','20','30','E','SW','9','','','','Tissue from inside femur; UKN','MBB',''),
 ('N 200/210 E 20/30 SW #9','15','-','200','210','N','20','30','E','SW','9','','','','TEETH','GM',''),
 ('N 200/210 E 20/30 SW #11','-','1','200','210','N','20','30','E','SW','11','','','','Rib fragments; child ','MBB',''),
 ('N 200/210 E 20/30 SW #11','-','4','200','210','N','20','30','E','SW','11','','','','5 RIB FRAGMENTS; INFANT','CIE',''),
 ('N 200/210 E 20/30 SW #11','15','-','200','210','N','20','30','E','SW','11','','','','BRAIN','GM',''),
 ('N 200/210 E 20/30 SW #11','26','-','200','210','N','20','30','E','SW','11','','','','Tissue; UKN','MBB',''),
 ('N 200/210 E 20/30 SW #13','10','','200','210','N','20','30','E','SW','13','','','YES','10-12 TEETH; ADULT, FRAGMENTED. NOT LABLED','CIE',''),
 ('N 200/210 E 20/30 SW #13','21','-','200','210','N','20','30','E','SW','13','','','','Tissue sample','MBB',''),
 ('N 200/210 E 20/30 SW #13','1','-','200','210','N','20','30','E','SW','13','','','','~12 teeth; child','AWA',''),
 ('N 200/210 E 20/30 SW #14','18','','200','210','N','20','30','E','SW','14','','','Yes','Tooth; UKN "M4"','AWA',''),
 ('N 200/210 E 20/30 SW #14','','6','200','210','N','20','30','E','SW','14','','','','TEETH- POSSIBLY 1998','GM',''),
 ('N 200/210 E 20/30 SW #17','14','','200','210','N','20','30','E','SW','17','','','','7 rib fragments; child','MBB',''),
 ('N 200/210 E 20/30 SW #18','15','-','200','210','N','20','30','E','SW','18','','','','TEETH AND HAIR','GM',''),
 ('N 200/210 E 20/30 SW #18','21','-','200','210','N','20','30','E','SW','18','','','','Skin sample','MBB',''),
 ('N 200/210 E 20/30 SW #18','16','-','200','210','N','20','30','E','SW','18','','','','5 rib fragments; sub-adult','MBB',''),
 ('N 200/210 E 20/30 SW #19','21','-','200','210','N','20','30','E','SW','19','','','','Tissue from tibia','MBB',''),
 ('N 200/210 E 20/30 SW #21','25','-','200','210','N','20','30','E','SW','21','','','','1 bone and fragments; UKN','MBB',''),
 ('N 200/210 E 20/30 SW #21','28','-','200','210','N','20','30','E','SW','21','','','','Bones (longbone, pieces from skull); UKN','MBB',''),
 ('N 200/210 E 20/30 SW #22','5','','200','210','N','20','30','E','SW','22','','','','6 teeth; adult','MBB',''),
 ('N 200/210 E 20/30 SW #23','4','-','200','210','N','20','30','E','SW','23','','','','4 teeth; adult','MBB',''),
 ('N 200/210 E 20/30 SW #23','31','','200','210','N','20','30','E','SW','23','','','','"Mummified head old; #3 or 2; pieces from face"','AWA',''),
 ('N 200/210 E 20/30 SW #23','31','','200','210','N','20','30','E','SW','23','','','','"#3 or 2; nose"','AWA',''),
 ('N 200/210 E 20/30 SW #31','5','','200','210','N','20','30','E','SW','31','','','','11 teeth; adult','MBB',''),
 ('N 200/210 E 20/30 SW #31','6','-','200','210','N','20','30','E','SW','31','','','','1 tooth; adult','MBB',''),
 ('N 200/210 E 20/30 SW #31','27','-','200','210','N','20','30','E','SW','31','','','','2 bones from foot; UKN','MBB',''),
 ('N 200/210 E 20/30 SW #31','11','','200','210','N','20','30','E','SW','31','','','','TOOTH-RC','GM',''),
 ('N 200/210 E 20/30 SW #31','11','','200','210','N','20','30','E','SW','31','','','','TOOTH- RC','GM',''),
 ('N 200/210 E 20/30 SW #36','17','-','200','210','N','20','30','E','SW','36','','','','Empty tube with dust residue','MBB',''),
 ('N 200/210 E 20/30 SW #36','15','-','200','210','N','20','30','E','SW','36','','','','RIBS','GM',''),
 ('N 200/210 E 20/30 SW #36','22','-','200','210','N','20','30','E','SW','36','','','','HAIR FROM SCALP','GM',''),
 ('N 200/210 E 20/30 SW #Above #8','2','-','200','210','N','20','30','E','SW','Above #8','','','','11 teeth; adult','MBB',''),
 ('N 200/210 E 30/40 SW #1','','7','200','210','N','30','40','E','SW','1','','','','TEETH','GM',''),
 ('N 200/210 E 30/40 SW #1','14','','200','210','N','30','40','E','SW','1','','','','1 bone fragment (tibia); adult','MBB',''),
 ('N  200/210 E  30/40 SW #1','22','-','200','210','N ','30','40','E ','SW','1','','','','HAIR','GM',''),
 ('N 200/210 E 30/40 SW #3','14','','200','210','N','30','40','E','SW','3','','','','5 bones (foot); UKN (some tissue)','MBB',''),
 ('N 200/210 E 30/40 SW #3','1','-','200','210','N','30','40','E','SW','3','','','','~10 teeth; adult','AWA',''),
 ('N 200/210 E 30/40 SW #3','1','-','200','210','N','30','40','E','SW','3','','','','6 teeth; adult','AWA',''),
 ('N 200/210 E 30/40 SW #4','22','-','200','210','N','30','40','E','SW','4','','','','HAIR IN SCALP','GM',''),
 ('N 200/210 E 30/40 SW #4','23','','200','210','N','30','40','E','SW','4','','','','HUMOROUS POWDER','GM',''),
 ('N 200/210 E 30/40 SW #5','28','-','200','210','N','30','40','E','SW','5','','','','Jaw and teeth; tissue from skull; child','MBB',''),
 ('N 200/210 E 30/40 SW #5','22','-','200','210','N','30','40','E','SW','5','','','','HAIR IN SCALP','GM',''),
 ('N 200/210 E 30/40 SW #5','18','','200','210','N','30','40','E','SW','5','','','','Broken tooth; child','AWA',''),
 ('N 200/210 E 30/40 SW #6','23','','200','210','N','30','40','E','SW','6','','','','BONE POWDER','GM',''),
 ('N 200/210 E 30/40 SW #6','21','-','200','210','N','30','40','E','SW','6','','','','Skin dust','MBB',''),
 ('N 200/210 E 30/40 SW #6','21','-','200','210','N','30','40','E','SW','6','','','','Bone dust','MBB',''),
 ('N 200/210 E 30/40 SW #7','21','-','200','210','N','30','40','E','SW','7','','','','Powdered tissue sample','MBB',''),
 ('N 200/210 E 30/40 SW #7','','6','200','210','N','30','40','E','SW','7','','','Y','TOOTH','GM',''),
 ('N 200/210 E 30/40 SW #10','28','-','200','210','N','30','40','E','SW','10','','','','Bones (jaw, ribs, teeth); child','MBB',''),
 ('N 200/210 E 30/40 SW #10','20','-','200','210','N','30','40','E','SW','10','','','','Skin','AWA',''),
 ('N 200/210 E 30/40 SW #10','2','-','200','210','N','30','40','E','SW','10','','','','9 broken teeth and fragments; adult','MBB',''),
 ('N 200/210 E 30/40 SW #12','18','','200','210','N','30','40','E','SW','12','','','','Broken tooth; child "M18"','AWA',''),
 ('N 200/210 E 30/40 SW #12','17','-','200','210','N','30','40','E','SW','12','','','','Tissue sample','MBB',''),
 ('N 200/210 E 30/40 SW #15','22','-','200','210','N','30','40','E','SW','15','','','','HAIR IN SCALP','GM',''),
 ('N 200/210 E 30/40 SW #15','20','-','200','210','N','30','40','E','SW','15','','','','Fecal','AWA',''),
 ('N 200/210 E 30/40 SW #15','34','','200','210','N','30','40','E','SW','15','','','','Ribs; infant','AWA',''),
 ('N 200/210 E 30/40 SW #16','25','-','200','210','N','30','40','E','SW','16','','','','8 bone fragments (rib, vertebra); child','MBB',''),
 ('N 200/210 E 30/40 SW #16','9','-','200','210','N','30','40','E','SW','16','','','','3 teeth; child','MBB',''),
 ('N 200/210 E 30/40 SW #20','20','-','200','210','N','30','40','E','SW','20','','','','Skin','AWA',''),
 ('N 200/210 E 30/40 SW #20','14','','200','210','N','30','40','E','SW','20','','','','2 rib fragments; adult','MBB',''),
 ('N 200/210 E 30/40 SW #24','-','1','200','210','N','30','40','E','SW','24','','','','HAIR','CIE',''),
 ('N 200/210 E 30/40 SW #25','21','-','200','210','N','30','40','E','SW','25','','','','Tissue sample','MBB',''),
 ('N 200/210 E 30/40 SW #25','1','-','200','210','N','30','40','E','SW','25','','','','4 teeth; adult','AWA',''),
 ('N 200/210 E 30/40 SW #25','21','-','200','210','N','30','40','E','SW','25','','','','Tissue sample','MBB',''),
 ('N 200/210 E 30/40 SW #26','27','-','200','210','N','30','40','E','SW','26','','','','3 bones and tissue from foot; UKN','MBB',''),
 ('N 200/210 E 30/40 SW #27','34','','200','210','N','30','40','E','SW','27','','1998','','Skin','AWA',''),
 ('N 200/210 E 30/40 SW #27','6','-','200','210','N','30','40','E','SW','27','','','','12 teeth; adult (some bone)','MBB',''),
 ('N 200/210 E 30/40 SW #28','15','-','200','210','N','30','40','E','SW','28','','','','TEETH','GM',''),
 ('N 200/210 E 30/40 SW #28','22','-','200','210','N','30','40','E','SW','28','','','','HAIR','GM',''),
 ('N 200/210 E 30/40 SW #28','15','-','200','210','N','30','40','E','SW','28','','','','FEMUR','GM',''),
 ('N 200/210 E 30/40 SW #29','22','-','200','210','N','30','40','E','SW','29','','','','BRAIN','GM',''),
 ('N 200/210 E 30/40 SW #29','16','-','200','210','N','30','40','E','SW','29','','','','4 rib fragments; hair; child','MBB',''),
 ('N 200/210 E 30/40 SW #30','34','','200','210','N','30','40','E','SW','30','','1998','','8 teeth; adult','AWA',''),
 ('N 200/210 E 30/40 SW #30','12','-','200','210','N','30','40','E','SW','30','','','','10 TEETH AND FRAGMENTS; ADULT W/ SOME TISSUE (INCORRECT LABELING OF E/W COORDINATES)','CIE',''),
 ('N 200/210 E 30/40 SW #33','11','','200','210','N','30','40','E','SW','33','','','','SKIN ?','GM',''),
 ('N 200/210 E 30/40 SW #34','11','','200','210','N','30','40','E','SW','34','','','','HAIR AND SCALP','GM',''),
 ('N 200/210 E 30/40 SW #35','15','-','200','210','N','30','40','E','SW','35','','','','BRAIN','GM',''),
 ('N 200/210 E 30/40 SW #35','15','-','200','210','N','30','40','E','SW','35','','','','RIBS','GM',''),
 ('N  200/210 E  30/40 SW #37','8','-','200','210','N ','30','40','E ','SW','37','','','','9 teeth; adult (some tissue)','MBB',''),
 ('N 200/210 E 30/40 SW #38','16','-','200','210','N','30','40','E','SW','38','','','','3 bones (foot) and tissue; UKN','MBB',''),
 ('N 200/210 E 30/40 SW #39','16','-','200','210','N','30','40','E','SW','39','','','','rib fragments; adult','MBB',''),
 ('N 200/210 E 30/40 SW #39','29','','200','210','N','30','40','E','SW','39','','','','SKIN FROM FOOT; UNK AGE','CIE',''),
 ('N 200/210 E 30/40 SW #39','21','-','200','210','N','30','40','E','SW','39','','','','Powdered tissue sample','MBB',''),
 ('N 200/210 E 30/40 SW #40','18','','200','210','N','30','40','E','SW','40','','','Yes','Tooth; UKN','AWA',''),
 ('N 200/210 E 30/40 SW #41','22','-','200','210','N','30','40','E','SW','41','','','','SPIRT?','GM',''),
 ('N 200/210 E 30/40 SW #42','5','','200','210','N','30','40','E','SW','42','','','Yes','8 teeth; child','MBB',''),
 ('N 200/210 E 30/40 SW #43','22','-','200','210','N','30','40','E','SW','43','','','','HAIR IN SCLAP','GM',''),
 ('N 200/210 E 30/40 SW #43','16','-','200','210','N','30','40','E','SW','43','','','','2 bone fragments; 4 teeth; child','MBB',''),
 ('N 200/210 E 30/40 SW #43','26','-','200','210','N','30','40','E','SW','43','','','','1 bone fragment (mandible) and skin; child','MBB',''),
 ('N 200/210 E 30/40 SW #43','5','','200','210','N','30','40','E','SW','43','','','','6 rib fragments; child','MBB',''),
 ('N 200/210 E 30/40 SW #43','22','-','200','210','N','30','40','E','SW','43','','','','PIECES OF SKULL','GM',''),
 ('N 200/210 E 30/40 SW #44','16','-','200','210','N','30','40','E','SW','44','','','','~7 ribs and fragments; child','MBB',''),
 ('N 200/210 E 30/40 SW #44','9','-','200','210','N','30','40','E','SW','44','','','','8 broken teeth; adult ','MBB',''),
 ('N 200/210 E 30/40 SW #44','19','-','200','210','N','30','40','E','SW','44','','','','2 bone fragments (tibia); child','MBB',''),
 ('N 200/210 E 30/40 SW #46','12','-','200','210','N','30','40','E','SW','46','','','','7 TEETH; ADULT *1ST TUBE W/ #4 TEETH','CIE',''),
 ('N 200/210 E 30/40 SW #46','16','-','200','210','N','30','40','E','SW','46','','','','2 bone fragments; UKN','MBB',''),
 ('N 200/210 E 30/40 SW #47','1','-','200','210','N','30','40','E','SW','47','','','','9 teeth; adult','AWA',''),
 ('N 200/210 E 30/40 SW #48','9','-','200','210','N','30','40','E','SW','48','','','','~14 broken teeth and fragments; child','MBB',''),
 ('N 200/210 E 30/40 SW #48','','7','200','210','N','30','40','E','SW','48','','','','HAIR','GM',''),
 ('N 200/210 E 30/40 SW #49','9','-','200','210','N','30','40','E','SW','49','','','','7 teeth; adult','MBB',''),
 ('N 200/210 E 30/40 SW #49','','7','200','210','N','30','40','E','SW','49','','','','BRAIN','GM',''),
 ('N 200/210 E 30/40 SW #49','15','-','200','210','N','30','40','E','SW','49','','','','SCALP AND HAIR','GM',''),
 ('N 200/210 E 30/40 SW #50','18','','200','210','N','30','40','E','SW','50','','','Yes','Tooth; adult','AWA',''),
 ('N 200/210 E 30/40 SW #52','18','','200','210','N','30','40','E','SW','52','','','Yes','Broken tooth','AWA',''),
 ('N 200/210 E 30/40 SW #52','14','','200','210','N','30','40','E','SW','52','','','','~6 rib fragments; adult','MBB',''),
 ('N 200/210 E 30/40 SW #52','31','','200','210','N','30','40','E','SW','52','','','','Ribs; child','AWA',''),
 ('N 200/210 E 30/40 SW #53','15','-','200','210','N','30','40','E','SW','53','','','','HAIR AND SCALP','GM',''),
 ('N 200/210 E 30/40 SW #54','','7','200','210','N','30','40','E','SW','54','','','','SKIN AND EYE','GM',''),
 ('N 200/210 E 30/40 SW #56','26','-','200','210','N','30','40','E','SW','56','','','','Scalp and hair; UKN','MBB',''),
 ('N 200/210 E 30/40 SW #57','9','-','200','210','N','30','40','E','SW','57','','','','6 teeth; adult','MBB',''),
 ('N 200/210 E 30/40 SW #58','15','-','200','210','N','30','40','E','SW','58','','','','RIBS','GM',''),
 ('N 200/210 E 30/40 SW #31','5','','200','210','N','30','40','E','SW','31','','','','~14 broken teeth; adult','MBB',''),
 ('N 200/210 E 30/40 SW #31','22','-','200','210','N','30','40','E','SW','31','','','','HAIR','GM',''),
 ('N 200/210 E 30/40 SW #31','15','-','200','210','N','30','40','E','SW','31','','','Y','TEETH','GM',''),
 ('N 200/210 E 30/40 SW #35','','7','200','210','N','30','40','E','SW','35','','','','BONES','GM',''),
 ('N 200/210 E 30/40 SW #38','15','-','200','210','N','30','40','E','SW','38','','','','VERTEBRA','GM',''),
 ('N 200/210 E 30/40 SW #41','','7','200','210','N','30','40','E','SW','41','','','','TISSUE INSIDE TIBIA','GM',''),
 ('N 200/210 E 30/40 SW #41','21','-','200','210','N','30','40','E','SW','41','','','','Powdered tooth sample','MBB',''),
 ('N 200/210 E 30/40 SW #42','18','','200','210','N','30','40','E','SW','42','','','Yes','Broken tooth; child','AWA',''),
 ('N 200/210 E 30/40 SW #42','','6','200','210','N','30','40','E','SW','42','','','','TEETH- POSSIBLY 1998','GM',''),
 ('N 200/210 E 30/40 SW #43','26','-','200','210','N','30','40','E','SW','43','','','','Tissue from between vertebrae; UKN','MBB',''),
 ('N 200/210 E 30/40 SW #46','15','-','200','210','N','30','40','E','SW','46','','','','FOOT BONE','GM',''),
 ('N 200/210 E 30/40 SW #46','15','-','200','210','N','30','40','E','SW','46','','','','TEETH','GM',''),
 ('N 200/210 E 30/40 SW #55','','7','200','210','N','30','40','E','SW','55','','','','TEETH','GM',''),
 ('N 200/210 E 30/40 SW #56','22','-','200','210','N','30','40','E','SW','56','','','','TISSUE FROM MOUTH','GM',''),
 ('N 200/210 E 30/40 SW #57','15','-','200','210','N','30','40','E','SW','57','','','','HAIR','GM',''),
 ('N/S Low #/High # E/W Low #/High # Area #Burial #','28','-','Low #','High #','N/S','Low #','High #','E/W','Area','Burial #','','','','Skin from beard and eye; adult','MBB',''),
 ('UNK UNK/UNK UNK UNK/UNK SE #28?','','7','UNK','UNK','UNK','UNK','UNK','UNK','SE','28?','','','','SKIN/TISSUE','GM',''),
 (' /  / 1 #','6','-','','','','','','','1','','','','','12 teeth; adult','MBB',''),
 (' /  / 1 #','7','','','','','','','','1','','','','','RIBS','GM',''),
 (' /  / 1 #','18','','','','','','','','1','','','','','Broken tooth; child "M7"','AWA',''),
 (' /  / 3 #','7','','','','','','','','3','','','','','PIECE OF LEG BONE','GM',''),
 (' /  / NNW #','','7','','','','','','','NNW','','','','','RIBS','GM',''),
 (' /  / NNW #','','7','','','','','','','NNW','','','','','FOOT TISSUE AND BONE','GM',''),
 (' /  / NW #14','','7','','','','','','','NW','14','','','','VERTEBRAE ','GM',''),
 (' /  / NW #18','','7','','','','','','','NW','18','','','','HAIR/BRAIN ??','GM',''),
 (' /  / NW #34','29','','','','','','','','NW','34','','','','SKIN FROM FOOT','GM',''),
 (' /  / NW #14','18','','','','','','','','NW','14','','','Yes','Tooth','AWA',''),
 (' /  / NW #15','18','','','','','','','','NW','15','','','','Tooth; child','AWA',''),
 (' /  / NW #15 (5)','5','','','','','','','','NW','15 (5)','','','Yes','2 teeth; adult','MBB',''),
 (' /  / NW #16 (4)','26','-','','','','','','','NW','16 (4)','','','','2 rib fragments; adult','MBB',''),
 (' /  / NW #26 (2)','26','-','','','','','','','NW','26 (2)','','','','Bones and tissue from foot; UKN','MBB',''),
 (' /  / NW #28','-','2','','','','','','','NW','28','','','','VERTEBRA','CIE',''),
 (' /  / SE #1','22','-','','','','','','','SE','1','','','','SKIN/TISSUE?','GM',''),
 (' /  / SE #6','','7','','','','','','','SE','6','','','','SCALP, HAIR, AND SKIN','GM',''),
 (' /  / SE #8','31','','','','','','','','SE','8','','','','"#3 or 2; Muscle from face"','AWA',''),
 (' /  / SE #8','5','','','','','','','','SE','8','','','Yes','2 teeth; adult','MBB',''),
 (' /  / SE #8','20','-','','','','','','','SE','8','','','','Skin','AWA',''),
 (' /  / SE #10','7','','','','','','','','SE','10','','','','INTERNAL AND SKIN','GM',''),
 (' /  / SE #10','31','','','','','','','','SE','10','','','','Rib','AWA',''),
 (' /  / SE #10','8','-','','','','','','','SE','10','','','Yes','10 teeth; adult','MBB',''),
 (' /  / SE #12','26','-','','','','','','','SE','12','','','','Tissue from femur; UKN','MBB',''),
 (' /  / SE #13','22','-','','','','','','','SE','13','','','','BEARD','GM',''),
 (' /  / SE #13','23','','','','','','','','SE','13','','','','BONE POWDER','GM',''),
 (' /  / SE #13','11','','','','','','','','SE','13','','','','SKIN ?','GM',''),
 (' /  / SE #13','5','','','','','','','','SE','13','','','Yes','2 teeth; adult','MBB',''),
 (' /  / SE #14','8','-','','','','','','','SE','14','','','','7 teeth; adult','MBB',''),
 (' /  / SE #14','28','-','','','','','','','SE','14','','','','2 bones from foot and tissue; UKN','MBB',''),
 (' /  / SE #14','28','-','','','','','','','SE','14','','','','2 bones and tissue from foot; adult','MBB',''),
 (' /  / SE #15','1','-','','','','','','','SE','15','','','','15 teeth; adult','AWA',''),
 (' /  / SE #15','21','-','','','','','','','SE','15','','','','Powdered tooth sample','MBB',''),
 (' /  / SE #15','21','-','','','','','','','SE','15','','','','Powdered bone sample','MBB',''),
 (' /  / SE #15','18','','','','','','','','SE','15','','','Yes','Tooth; adult; "M8"','AWA',''),
 (' /  / SE #16','18','','','','','','','','SE','16','','','','Tooth fragments','AWA',''),
 (' /  / SE #16','18','','','','','','','','SE','16','','','Yes','Tooth "M9"','AWA',''),
 (' /  / SE #16','8','-','','','','','','','SE','16','','','','~8 broken teeth and fragments; adult','MBB',''),
 (' /  / SE #17','22','-','','','','','','','SE','17','','','','TISSUE/SKIN?','GM',''),
 (' /  / SE #17','','7','','','','','','','SE','17','','','','TEETH','GM',''),
 (' /  / SE #17','1','-','','','','','','','SE','17','','','','9 teeth, pieces of jaw bone; child','AWA',''),
 (' /  / SE #18','13','-','','','','','','','SE','18','','','','5 teeth (some bone); adult','MBB',''),
 (' /  / SE #19','13','-','','','','','','','SE','19','','','','4 teeth; adult','MBB',''),
 (' /  / SE #20','21','-','','','','','','','SE','20','','','','Powdered tooth sample','MBB',''),
 (' /  / SE #21','21','-','','','','','','','SE','21','','','','Powdered tissue sample','MBB',''),
 (' /  / SE #21','18','','','','','','','','SE','21','','','Yes','Broken tooth; adult','AWA',''),
 (' /  / SE #22','21','-','','','','','','','SE','22','','','','Empty tube with dust residue','MBB',''),
 (' /  / SE #22','19','-','','','','','','','SE','22','','','','5 ribs; child','MBB',''),
 (' /  / SE #23','','7','','','','','','','SE','23','','','','EYES','GM',''),
 (' /  / SE #23','15','-','','','','','','','SE','23','','','','HAIR','GM',''),
 (' /  / SE #23','-','2','','','','','','','SE','23','','','','WOOD FRAGMENTS','CIE',''),
 (' /  / SE #24','21','-','','','','','','','SE','24','','','','Powdered tooth sample','MBB',''),
 (' /  / SE #24','5','','','','','','','','SE','24','','','Yes','2 teeth; adult','MBB',''),
 (' /  / SE #24','21','-','','','','','','','SE','24','','','','Empty tube with dust residue','MBB',''),
 (' /  / SE #25','','7','','','','','','','SE','25','','','','VERTEBRAE ','GM',''),
 (' /  / SE #25','15','-','','','','','','','SE','25','','','','TEETH- CHILD','GM',''),
 (' /  / SE #25','','7','','','','','','','SE','25','','','','REED FOR CARBON','GM',''),
 (' /  / SE #25','','7','','','','','','','SE','25','','','','CROSS SECTIONS OF LONG BONE','GM',''),
 (' /  / SE #26','26','-','','','','','','','SE','26','','','','3 bones and tissue (from arm); UKN','MBB',''),
 (' /  / SE #27','15','-','','','','','','','SE','27','','','','HUMOROUS','GM',''),
 (' /  / SE #27','12','-','','','','','','','SE','27','','','YES','1 TOOTH; ADULT * 2ND TUBE W/ #4 TEETH','CIE',''),
 (' /  / SE #28','18','','','','','','','','SE','28','','','Yes','"Found Floating"; tooth; UKN','AWA',''),
 (' /  / SE #28','18','','','','','','','','SE','28','','','Yes','Tooth; adult','AWA',''),
 (' /  / SE #28','21','-','','','','','','','SE','28','','','','Powdered sample','MBB',''),
 (' /  / SE #28','','7','','','','','','','SE','28','','','','BRIAN','GM',''),
 (' /  / SE #29','26','-','','','','','','','SE','29','','','','Skin from face; UKN','MBB',''),
 (' /  / SE #29','7','','','','','','','','SE','29','','','','RIBS WITH TISSUE','GM',''),
 (' /  / SE #29','15','-','','','','','','','SE','29','','','','RIBS','GM',''),
 (' /  / SE #30','18','','','','','','','','SE','30','','','Yes','Tooth, "M10"','AWA',''),
 (' /  / SE #30','7','','','','','','','','SE','30','','','','MAXILLA AND SKIN','GM',''),
 (' /  / SE #30','25','-','','','','','','','SE','30','','','','5 ribs; sub-adult','MBB',''),
 (' /  / SE #30','5','','','','','','','','SE','30','','','Yes','2 teeth; adult','MBB',''),
 (' /  / SE #31','7','','','','','','','','SE','31','','','','MANDIBLE WITH TISSUE AND SKIN','GM',''),
 (' /  / SE #31','15','-','','','','','','','SE','31','','','','TEETH AND BRAIN','GM',''),
 (' /  / SE #32','5','','','','','','','','SE','32','','','','Brain and membrane from inside skull; UKN','MBB',''),
 (' /  / SE #32','9','-','','','','','','','SE','32','','','','5 teeth; adult (some tissue)','MBB',''),
 (' /  / SE #32','-','2','','','','','','','SE','32','','','','FOOT; ADULT','CIE',''),
 (' /  / SE #33','19','-','','','','','','','SE','33','','','','Foot sample (tissue and bone); adult','MBB',''),
 (' /  / SE #33','25','-','','','','','','','SE','33','','','','3 rib fragments; sub-adult','MBB',''),
 (' /  / SE #34','18','','','','','','','','SE','34','','','','Scapula? UKN','AWA',''),
 (' /  / SE #34','15','-','','','','','','','SE','34','','','','RIBS','GM',''),
 (' /  / SE #35','26','-','','','','','','','SE','35','','','','Tissue from skull and jaw (muscle); UKN','MBB',''),
 (' /  / SE #35','15','-','','','','','','','SE','35','','','','HAIR','GM',''),
 (' /  / SE #36','9','-','','','','','','','SE','36','','','','16 teeth; adult (some tissue)','MBB',''),
 (' /  / SE #36','15','-','','','','','','','SE','36','','','','TEETH','GM',''),
 (' /  / SE #36','-','3','','','','','','','SE','36','','','','SMALL TUBE W/ MUSCLE FROM JAW','CIE',''),
 (' /  / SE #36','8','-','','','','','','','SE','36','','','','6 teeth; adult','MBB',''),
 (' /  / SE #37','14','','','','','','','','SE','37','','','','~9 rib fragments; adult','MBB',''),
 (' /  / SE #37','21','-','','','','','','','SE','37','','','','Powdered bone sample','MBB',''),
 (' /  / SE #37','21','-','','','','','','','SE','37','','','','Powdered tooth sample','MBB',''),
 (' /  / SE #37','17','-','','','','','','','SE','37','','','','Empty tube with dust residue','MBB',''),
 (' /  / SE #39','17','-','','','','','','','SE','39','','','','Tissue sample','MBB',''),
 (' /  / SE #39','26','-','','','','','','','SE','39','','','','Tissue from vertebrae; UKN','MBB',''),
 (' /  / SE #39','18','','','','','','','','SE','39','','','Yes','Tooth; adult','AWA',''),
 (' /  / SE #40','16','-','','','','','','','SE','40','','','','1 femur; infant','MBB',''),
 (' /  / SE #40','26','-','','','','','','','SE','40','','','','Tissue (muscle and other); UKN','MBB',''),
 (' /  / SE #40','11','','','','','','','','SE','40','','','','SCALP AND HAIR','GM',''),
 (' /  / SE #40','17','-','','','','','','','SE','40','','','','Tissue sample','MBB',''),
 (' /  / SE #41','-','2','','','','','','','SE','41','','','','BRAIN','CIE',''),
 (' /  / SE #41','17','-','','','','','','','SE','41','','','','Tissue sample','MBB',''),
 (' /  / SE #41','-','2','','','','','','','SE','41','','','','"REED FOR CARBON DATING"','CIE',''),
 (' /  / SE #42','25','-','','','','','','','SE','42','','','','10 rib fragments; infant','MBB',''),
 (' /  / SE #42','18','','','','','','','','SE','42','','','Yes','Tooth; adult','AWA',''),
 (' /  / SE #42','18','','','','','','','','SE','42','','','Yes','Tooth "M11"','AWA',''),
 (' /  / SE #43','17','-','','','','','','','SE','43','','','','Empty tube with dust residue','MBB',''),
 (' /  / SE #43','-','3','','','','','','','SE','43','','','','REED FOR CARBON DATING','CIE',''),
 (' /  / SE #44','18','','','','','','','','SE','44','','','','Tooth; adult','AWA',''),
 (' /  / SE #44','16','-','','','','','','','SE','44','','','','6 rib fragments; child','MBB',''),
 (' /  / SE #45','19','-','','','','','','','SE','45','','','','7 rib fragments; adult','MBB',''),
 (' /  / SE #45','1','-','','','','','','','SE','45','','','','17 teeth; adult','AWA',''),
 (' /  / SE #45','19','-','','','','','','','SE','45','','','','2 bones and tissue (hand); adult','MBB',''),
 (' /  / SE #46','9','-','','','','','','','SE','46','','','','14 broken teeth and fragments; child','MBB',''),
 (' /  / SE #46','18','','','','','','','','SE','46','','','Yes','Tooth; adult "M12"','AWA',''),
 (' /  / SE #46','21','-','','','','','','','SE','46','','','','Tissue sample','MBB',''),
 (' /  / SE #46','19','-','','','','','','','SE','46','','','','Jaw with teeth and tissue; child','MBB',''),
 (' /  / SE #47','17','-','','','','','','','SE','47','','','','Empty tube with dust residue','MBB',''),
 (' /  / SE #47','3','-','','','','','','','SE','47','','','','9 TEETH','GM',''),
 (' /  / SE #47','26','-','','','','','','','SE','47','','','','1 finger (bone and tissue); UKN','MBB',''),
 (' /  / SE #49','21','-','','','','','','','SE','49','','','','Tissue sample','MBB',''),
 (' /  / SE #52','15','-','','','','','','','SE','52','','','','BRAIN','GM',''),
 (' /  / SE #53','26','-','','','','','','','SE','53','','','','Tissue from arm; UKN','MBB',''),
 (' /  / SE ## ?','15','-','','','','','','','SE','# ?','','','','RIBS','GM',''),
 (' /  / SE #08- 05','17','-','','','','','','','SE','08- 05','','','','Powdered tissue sample','MBB',''),
 (' /  / SE #08- 05 ','5','','','','','','','','SE','08- 05 ','','','','10 teeth; adult','MBB',''),
 (' /  / SE #13','18','','','','','','','','SE','13','','','','Broken tooth','AWA',''),
 (' /  / SE #15','18','','','','','','','','SE','15','','','Yes','Tooth fragments','AWA',''),
 (' /  / SE #16','26','-','','','','','','','SE','16','','','','Skin from face; UKN','MBB',''),
 (' /  / SE #17','15','-','','','','','','','SE','17','','','Y','TEETH','GM',''),
 (' /  / SE #19','25','-','','','','','','','SE','19','','','','4 bone fragments (ribs); hair; child','MBB',''),
 (' /  / SE #2','26','-','','','','','','','SE','2','','','','1 finger (bone and tissue); adult','MBB',''),
 (' /  / SE #20','25','-','','','','','','','SE','20','','','','~4 bone fragments (face and skull); UKN','MBB',''),
 (' /  / SE #20','26','-','','','','','','','SE','20','','','','Tissue from mouth; UKN','MBB',''),
 (' /  / SE #22','20','-','','','','','','','SE','22','','','','Skin','AWA',''),
 (' /  / SE #24','26','-','','','','','','','SE','24','','','','Tissue between vertebrae; UKN','MBB',''),
 (' /  / SE #29','25','-','','','','','','','SE','29','','','','2 bone fragments; tissue sample; UKN','MBB',''),
 (' /  / SE #29','18','','','','','','','','SE','29','','','Yes','Tooth; adult','AWA',''),
 (' /  / SE #30','26','-','','','','','','','SE','30','','','','Scalp and hair; UKN','MBB',''),
 (' /  / SE #30-A','26','-','','','','','','','SE','30-A','','','','Brain; UKN','MBB',''),
 (' /  / SE #30B','15','-','','','','','','','SE','30B','','','','TEETH','GM',''),
 (' /  / SE #30B','28','-','','','','','','','SE','30B','','','','1 bone (clavicle) and tissue; Child','MBB',''),
 (' /  / SE #31','20','-','','','','','','','SE','31','','','','Skin','AWA',''),
 (' /  / SE #32','-','2','','','','','','','SE','32','','','','SKIN FROM "CHEST?"','CIE',''),
 (' /  / SE #34','15','-','','','','','','','SE','34','','','','SOFT TISSUE','GM',''),
 (' /  / SE #35','13','-','','','','','','','SE','35','','','','7 teeth; adult','MBB',''),
 (' /  / SE #37','','6','','','','','','','SE','37','','1998','','SKIN, HAIR, TEETH, AND RIBS','GM',''),
 (' /  / SE #37','18','','','','','','','','SE','37','','','','Broken tooth','AWA',''),
 (' /  / SE #38','','6','','','','','','','SE','38','','','','TEETH','GM',''),
 (' /  / SE #38','18','','','','','','','','SE','38','','','','Hair','AWA',''),
 (' /  / SE #38-05','18','','','','','','','','SE','38-05','','','','Skin','AWA',''),
 (' /  / SE #38?','18','','','','','','','','SE','38?','','','Yes','Ribs','AWA',''),
 (' /  / SE #39','18','','','','','','','','SE','39','','','','Brain','AWA',''),
 (' /  / SE #40','','7','','','','','','','SE','40','','','','TIBUOLA','GM',''),
 (' /  / SE #41','11','','','','','','','','SE','41','','','','SKIN ?','GM',''),
 (' /  / SE #41','1','-','','','','','','','SE','41','','','','9 teeth; adult','AWA',''),
 (' /  / SE #41','26','-','','','','','','','SE','41','','','','Skin from femur; UKN','MBB',''),
 (' /  / SE #42','14','','','','','','','','SE','42','','','','2 rib fragments; adult','MBB',''),
 (' /  / SE #44','-','2','','','','','','','SE','44','','','','LEG W/ TISSUE; INFANT','CIE',''),
 (' /  / SE #44-02','8','-','','','','','','','SE','44-02','','','','10 teeth; adult','MBB',''),
 (' /  / SE #45','26','-','','','','','','','SE','45','','','','Tissue; UKN','MBB',''),
 (' /  / SE #47','26','-','','','','','','','SE','47','','','','Tissue from hand; UKN','MBB',''),
 (' /  / SE #48','26','-','','','','','','','SE','48','','','','Scalp with hair; UKN','MBB',''),
 (' /  / SE #48','26','-','','','','','','','SE','48','','','','Reed','MBB',''),
 (' /  / SE #48-01','28','-','','','','','','','SE','48-01','','','','Tissue (skin and muscle) from leg; UKN','MBB',''),
 (' /  / SE #49-02','28','-','','','','','','','SE','49-02','','','','Bone and tissue from hand; adult','MBB',''),
 (' /  / SE #50','28','-','','','','','','','SE','50','','','','Skin from eyes and face (including eyebrows); UKN','MBB',''),
 (' /  / SE #50','-','2','','','','','','','SE','50','','','','SKIN FROM CHEST','CIE',''),
 (' /  / SE #50-05','-','2','','','','','','','SE','50-05','','','','HAIR','CIE',''),
 (' /  / SE #52','17','-','','','','','','','SE','52','','','','Tissue sample','MBB',''),
 (' /  / SE #55-03','-','3','','','','','','','SE','55-03','','','','UPPER FEMUR AND SOCKET; ADULT','CIE',''),
 (' /  / SE #7','14','','','','','','','','SE','7','','','','1 bone (femur); infant','MBB',''),
 (' /  / SE #8','5','','','','','','','','SE','8','','','Yes','Vertebrae; child','MBB',''),
 (' /  / SE  #22','5','','','','','','','','SE ','22','','','','2 femur fragments; child','MBB',''),
 (' /  / SE  #44','16','-','','','','','','','SE ','44','','','','1 bone fragment (radius); adult','MBB',''),
 (' /  / SW #2','5','','','','','','','','SW','2','','','','9 teeth; adult','MBB',''),
 (' /  / SW #4','18','','','','','','','','SW','4','','','','Broken tooth; child','AWA',''),
 (' /  / SW #10','5','','','','','','','','SW','10','','','','~8 broken teeth; child','MBB',''),
 (' /  / SW #12','5','','','','','','','','SW','12','','','','~6 rib fragments; child','MBB',''),
 (' /  / SW #16','16','-','','','','','','','SW','16','','','','5 rib fragments; adult','MBB',''),
 (' /  / SW #20','18','','','','','','','','SW','20','','','','Teeth; adult','AWA',''),
 (' /  / SW #22','17','-','','','','','','','SW','22','','','','Powdered tissue sample','MBB',''),
 (' /  / SW #22','-','4','','','','','','','SW','22','','','','6 TEETH; ADULT','CIE',''),
 (' /  / SW #27','-','4','','','','','','','SW','27','','','','SCALP AND HAIR','CIE',''),
 (' /  / SW #32','17','-','','','','','','','SW','32','','','','Powdered tissue sample','MBB',''),
 (' /  / SW #34','21','-','','','','','','','SW','34','','','','Powdered tissue sample','MBB',''),
 (' /  / SW #35','17','-','','','','','','','SW','35','','','','Powdered tissue sample','MBB',''),
 (' /  / SW #36','5','','','','','','','','SW','36','','','Yes','2 teeth; adult','MBB',''),
 (' /  / SW #38','-','4','','','','','','','SW','38','','','','EYE','CIE',''),
 (' /  / SW #38','-','4','','','','','','','SW','38','','','','RIB FRAGMENTS','CIE',''),
 (' /  / SW #38','-','4','','','','','','','SW','38','','','','WOOD FRAGMENTS AND SOIL?','CIE',''),
 (' /  / SW #40','18','','','','','','','','SW','40','','','Yes','Tooth; adult','AWA',''),
 (' /  / SW #42','15','-','','','','','','','SW','42','','','','TEETH','GM',''),
 (' /  / SW #43','16','-','','','','','','','SW','43','','','','4 rib fragments; child','MBB',''),
 (' /  / SW #44','15','-','','','','','','','SW','44','','','','TEETH','GM',''),
 (' /  / SW #48','15','-','','','','','','','SW','48','','','','SALT TISSUE','GM',''),
 (' /  / SW #50','15','-','','','','','','','SW','50','','','','RIBS','GM',''),
 (' /  / SW #54','21','','','','','','','','SW','54','','','','Powdered tissue sample','MBB',''),
 (' /  / SW #55','15','-','','','','','','','SW','55','','','','BRAIN','GM',''),
 (' /  / SW #55','15','-','','','','','','','SW','55','','','','BRAIN','GM',''),
 (' /  / SW #56','15','-','','','','','','','SW','56','','','','TISSUE FROM FACE','GM',''),
 (' /  / SW #59','21','-','','','','','','','SW','59','','','','Powdered tissue sample','MBB',''),
 (' /  / SW #10','17','-','','','','','','','SW','10','','','','Empty tube with dust residue','MBB',''),
 (' /  / SW #11','21','-','','','','','','','SW','11','','','','Powdered tissue sample','MBB',''),
 (' /  / SW #11','17','-','','','','','','','SW','11','','','','Powdered tissue sample','MBB',''),
 (' /  / SW #12','25','-','','','','','','','SW','12','','','','5 rib fragments; child','MBB',''),
 (' /  / SW #13','1','-','','','','','','','SW','13','','','','13 teeth; child','AWA',''),
 (' /  / SW #17','26','-','','','','','','','SW','17','','','','Soft tissue; UKN','MBB',''),
 (' /  / SW #2','28','-','','','','','','','SW','2','','','','1 femur fragment and other bone; child','MBB',''),
 (' /  / SW #2-03','1','-','','','','','','','SW','2-03','','','Yes','~8 teeth; adult','AWA',''),
 (' /  / SW #24 (8)','15','-','','','','','','','SW','24 (8)','','','','TEETH','GM',''),
 (' /  / SW #24-03','15','-','','','','','','','SW','24-03','','','','RIBS','GM',''),
 (' /  / SW #24-03','15','-','','','','','','','SW','24-03','','','','BRAIN','GM',''),
 (' /  / SW #26','15','-','','','','','','','SW','26','','','','TISSUE FROM MOUTH','GM',''),
 (' /  / SW #27','15','-','','','','','','','SW','27','','','','TEETH','GM',''),
 (' /  / SW #27','17','-','','','','','','','SW','27','','','','Tooth fragments','MBB',''),
 (' /  / SW #28','21','-','','','','','','','SW','28','','','','Brain sample','MBB',''),
 (' /  / SW #3','15','-','','','','','','','SW','3','','','','CLAVICAL','GM',''),
 (' /  / SW #3','15','-','','','','','','','SW','3','','','','RIBS','GM',''),
 (' /  / SW #32','15','-','','','','','','','SW','32','','','','FEMUR','GM',''),
 (' /  / SW #34','17','-','','','','','','','SW','34','','','','Empty tube with dust residue','MBB',''),
 (' /  / SW #34-2','15','-','','','','','','','SW','34-2','','','','SOFT TISSUE','GM',''),
 (' /  / SW #38-08','31','','','','','','','','SW','38-08','','','','"#3 or 2; skin from head"','AWA',''),
 (' /  / SW #39','5','','','','','','','','SW','39','','','','13 teeth; adult','MBB',''),
 (' /  / SW #4','13','-','','','','','','','SW','4','','','','8 broken teeth fragments; adult','MBB',''),
 (' /  / SW #40','16','-','','','','','','','SW','40','','','','1 rib fragment; sub-adult','MBB',''),
 (' /  / SW #40','16','-','','','','','','','SW','40','','','','4 rib fragments; child','MBB',''),
 (' /  / SW #42','21','-','','','','','','','SW','42','','','','Powdered tooth sample','MBB',''),
 (' /  / SW #43','15','-','','','','','','','SW','43','','','','TISSUE','GM',''),
 (' /  / SW #43','16','-','','','','','','','SW','43','','','','6 rib fragments; child','MBB',''),
 (' /  / SW #44','18','','','','','','','','SW','44','','','','Radius','AWA',''),
 (' /  / SW #44','18','','','','','','','','SW','44','','','','Brain','AWA',''),
 (' /  / SW #44-03','22','-','','','','','','','SW','44-03','','','','MOUTH TISSUE','GM',''),
 (' /  / SW #46','18','','','','','','','','SW','46','','','','Soft tissue from skull','AWA',''),
 (' /  / SW #48','18','','','','','','','','SW','48','','','','Ribs','AWA',''),
 (' /  / SW #5','7','','','','','','','','SW','5','','','','REED','GM',''),
 (' /  / SW #51','1','-','','','','','','','SW','51','','','','Broken teeth','AWA',''),
 (' /  / SW #53','20','-','','','','','','','SW','53','','','','Eyes, tissue and skin from head','AWA',''),
 (' /  / SW #54','20','-','','','','','','','SW','54','','','','Foot','AWA',''),
 (' /  / SW #54-04','21','-','','','','','','','SW','54-04','','','','1 tooth; adult ("Green #2") - written on tube','MBB',''),
 (' /  / SW #54-2','5','','','','','','','','SW','54-2','','','Yes','~8 broken teeth; adult','MBB',''),
 (' /  / SW #55','16','-','','','','','','','SW','55','','','','~20 rib fragments; infant','MBB',''),
 (' /  / SW #55','5','','','','','','','','SW','55','','','','Tissue from skull and hair; UKN','MBB',''),
 (' /  / SW #57','2','-','','','','','','','SW','57','','','','11 teeth; adult','MBB',''),
 (' /  / SW #57','14','','','','','','','','SW','57','','','','6 rib fragments; child (some tissue)','MBB',''),
 (' /  / SW #57','13','-','','','','','','','SW','57','','','','4 teeth; adult','MBB',''),
 (' /  / SW #59','18','','','','','','','','SW','59','','','Yes','Tooth; child','AWA',''),
 (' /  / SW #59','21','-','','','','','','','SW','59','','','','Powdered tissue from tibia','MBB',''),
 (' /  / SW #59-04','22','-','','','','','','','SW','59-04','','','','TISSUE FROM FINGER','GM',''),
 (' /  / SW #6','22','-','','','','','','','SW','6','','','','SKULL','GM',''),
 (' /  / SW #7','20','-','','','','','','','SW','7','','','','Foot','AWA',''),
 (' /  / SW #9','16','-','','','','','','','SW','9','','','','tissue fragments; UKN','MBB',''),
 (' /  /  #1','22','-','','','','','','','','1','','','','RIBS ENTAMANBLE ','GM',''),
 (' /  /  #1','22','-','','','','','','','','1','','','','SKIN FROM FOOT','GM',''),
 (' /  /  #3','22','-','','','','','','','','3','','','','HAIR IN SCALP','GM',''),
 (' /  /  #3','19','-','','','','','','','','3','','','','Foot sample and 2 broken tooth; child','MBB',''),
 (' /  /  #3','19','-','','','','','','','','3','','','','7 rib fragments and other tissue; infant','MBB',''),
 (' /  /  #4','18','','','','','','','','','4','','','','Tooth; adult','AWA',''),
 (' /  /  #4','22','-','','','','','','','','4','','','','SKIN FROM FOOT','GM',''),
 (' /  /  #6','16','-','','','','','','','','6','','','','6 skull fragments; 12 broken teeth; child','MBB',''),
 (' /  /  #6','17','-','','','','','','','','6','','','','Tissue sample','MBB',''),
 (' /  /  #7','17','-','','','','','','','','7','','','','Bone fragments','MBB',''),
 (' /  /  #8','17','-','','','','','','','','8','','','','Tissue sample','MBB',''),
 (' /  /  #8','16','-','','','','','','','','8','','','','7 rib fragments; child','MBB',''),
 (' /  /  #9','27','-','','','','','','','','9','','','','Bone and tissue from foot; UKN','MBB',''),
 (' /  /  #9','22','-','','','','','','','','9','','','','SKIN FROM FOOT','GM',''),
 (' /  /  #10','15','-','','','','','','','','10','','','','TEETH- CHILD','GM',''),
 (' /  /  #11','22','-','','','','','','','','11','','','','SKIN?','GM',''),
 (' /  /  #11','2','-','','','','','','','','11','','','','~7 broken teeth and some bone; adult','MBB',''),
 (' /  /  #11','25','-','','','','','','','','11','','','','Skin?','AWA',''),
 (' /  /  #11','25','-','','','','','','','','11','','','','Rib; child','AWA',''),
 (' /  /  #12','15','-','','','','','','','','12','','','','RIBS','GM',''),
 (' /  /  #12','16','-','','','','','','','','12','','','','"Rib #2 (diff)" - Written on the tube; 1 rib and fragments; adult','MBB',''),
 (' /  /  #16','12','-','','','','','','','','16','','','','5 TEETH AND TISSUE; ADULT','CIE',''),
 (' /  /  #23','9','-','','','','','','','','23','','','','11 teeth; adult','MBB',''),
 (' /  /  #23','5','','','','','','','','','23','','','','10 teeth; adult','MBB',''),
 (' /  /  #23','21','-','','','','','','','','23','','','','Tissue or maybe seed sample','MBB',''),
 (' /  /  #24','-','?','','','','','','','','24','','','','UNKNOWN TISSUE','CIE',''),
 (' /  /  #25','16','-','','','','','','','','25','','','','"Reed for c14" - Written on tube','MBB',''),
 (' /  /  #28','22','-','','','','','','','','28','','','','SKIN FROM FOOT','GM',''),
 (' /  /  #2172','20','-','','','','','','','','2172','','','','Part of mandible, pieces of skull, scalp and hair, tibia with some tissue ','AWA',''),
 (' /  /  #2172','19','-','','','','','','','','2172','','','','Fragments of skull, scalp and hair, femur, clavicle, jaw; infant','MBB',''),
 (' /  /  #2249','-','1','','','','','','','','2249','','','','Mouse fur; ("North wall") - written on bag','MBB',''),
 (' /  /  #1','33','','','','','','','','','1',9,'1998','','Skin and piece of bone','AWA',''),
 (' /  /  #1027 (1)','21','','','','','','','','','1027 (1)','','','','Powdered tissue sample','MBB',''),
 (' /  /  #1027 (2)','','7','','','','','','','','1027 (2)','','1989','','TEETH- AREA 18 # I','GM',''),
 (' /  /  #1680-1','-','5','','','','','','','','1680-1','','1993','','6 tubes with tissue samples and bone fragments; UKN ("SOHAG") written on bag','MBB',''),
 (' /  /  #1680-2','-','5','','','','','','','','1680-2','','1993','','2 rib fragments; UKN ("SOHAG") written on bag','MBB',''),
 (' /  /  #1680-3','-','5','','','','','','','','1680-3','','1993','Yes','2 tubes with tooth fragments; UKN','MBB',''),
 (' /  /  #1680-4','-','5','','','','','','','','1680-4','','1993','','Pupae cases; ("SOHAG") written on bag','MBB',''),
 (' /  /  #1680-5','-','5','','','','','','','','1680-5','','1993','Yes','Tooth fragments; UKN ("SOHAG") written on bag','MBB',''),
 (' /  /  #1777 (1)','','6','','','','','','','','1777 (1)','','','','TEETH "ARIA I"','GM',''),
 (' /  /  #1779 (2)','','6','','','','','','','','1779 (2)','','','','TEETH "ARIA I"','GM',''),
 (' /  /  #1779 (3)','','6','','','','','','','','1779 (3)','','','','TEETH "ARIA I"','GM',''),
 (' /  /  #2','5','','','','','','','','','2','','','','11 teeth; adult','MBB',''),
 (' /  /  #20','8','-','','','','','','','','20','','','Yes','~8 broken teeth and fragments: adult','MBB',''),
 (' /  /  #2172 (1)','5','','','','','','','','','2172 (1)','','','','10 teeth; adult','MBB',''),
 (' /  /  #22 (1)','5','','','','','','','','','22 (1)','','','','Rib fragments; child','MBB',''),
 (' /  /  #22 (2)','5','','','','','','','','','22 (2)','','','','Brain; UKN','MBB',''),
 (' /  /  #22 (3)','5','','','','','','','','','22 (3)','','','','Radias; child','MBB',''),
 (' /  /  #25','5','','','','','','','','','25','','','','11 teeth; adult','MBB',''),
 (' /  /  #3','5','','','','','','','','','3','','','','3 skull fragments; ("18B93") - written on tube','MBB',''),
 (' /  /  #5/9 A','-','3','','','','','','','','5/9 A','','','','"FOURTH ONE WITHOUT NUMBER" and "1989 Area 11 #9"','CIE',''),
 (' /  /  #','21','-','','','','','','','','','','','','Empty tube with dust residue','MBB',''),
 (' /  /  #','5','','','','','','','','','','','','','3 rib fragments; child ("Well wrapped burial?") - written on tube','MBB',''),
 (' /  /  #','5','','','','','','','','','','','','','("Unidentified") - written on tube','MBB',''),
 (' /  /  #','17','-','','','','','','','','','','','','Plant sample; ("Alexander") -written on tube','MBB',''),
 (' /  /  #','17','-','','','','','','','','','','','','Empty tube with dust residue; ("ACHA2 15I92") - written on tube','MBB',''),
 (' /  /  #','17','-','','','','','','','','','','','','Powdered tissue sample; ("42BO 763 FS-41") - written on tube','MBB',''),
 (' /  /  #','17','-','','','','','','','','','','','','Powdered tissue sample; ("42BO 763 FS-41") - written on tube','MBB',''),
 (' /  /  #','21','-','','','','','','','','','','','','Bone dust; ("M+ Carm") -written on tube','MBB',''),
 (' /  /  #','23','','','','','','','','','','','','','LONG BONE POWDER','GM',''),
 (' /  /  #','23','','','','','','','','','','','','','(CANT READ)..SOMETHING GRAVE.....JAW BONE POWDER','GM',''),
 (' /  /  #','23','','','','','','','','','','','','YES','3 TEETH (WITH FILLINGS?)','GM',''),
 (' /  /  #','25','-','','','','','','','','','','','','"Goldfinger"','AWA',''),
 (' /  /  #','25','-','','','','','','','','','','','','6 teeth; adult','AWA',''),
 (' /  /  #','25','-','','','','','','','','','','','','"No head, no tag; child; ribs"','AWA',''),
 (' /  /  #','25','-','','','','','','','','','','','','"Adult; No head, no tag; tissue from pelvis."','AWA',''),
 (' /  /  #','25','-','','','','','','','','','','','','"Adult; No head, no tag; tissue from ankle."','AWA',''),
 (' /  /  #','25','-','','','','','','','','','','','','"No head, no tag; child; skin tissue"','AWA',''),
 (' /  /  #','29','','','','','','','','','','','','','CUT (OR CAT) #1','GM',''),
 (' /  /  #','-','1','','','','','','','','','','','','8 TEETH; ADULT "BLONDIE, OUT OF AREA"','CIE',''),
 (' /  /  #','-','1','','','','','','','','','','','','TISSUE FROM PELVIC REGION; ADULT "NO HEAD, NO TAG"','CIE',''),
 (' /  /  #','-','4','','','','','','','','','','','','THORACIC REGION MASS, UNK INDIVIDUAL ','CIE',''),
 (' /  /  #','-','4','','','','','','','','','','','','ABDOMEN?; UNK INDIVIDUAL ','CIE',''),
 (' /  /  #','-','5','','','','','','','','','','','','Rib fragment; UKN','MBB',''),
 (' /  /  #','LARGE ITEM','4','','','','','','','','','','','','"004I" Cat skull','AWA',''),
 (' /  /  #','','6','','','','','','','','','','','','TEETH- POSSIBLY 1998- BLANK SAMPLE','GM',''),
 (' /  /  #','','6','','','','','','','','','','','','TEETH- POSSIBLY 1998- BLANK SAMPLE','GM',''),
 (' /  /  #','','7','','','','','','','','','','','','TEETH- NO LABEL','GM',''),
 (' /  /  #','','7','','','','','','','','','','','','TEETH- NO LABEL','GM',''),
 (' /  /  #','','7','','','','','','','','','','','','TEETH- AREA I','GM',''),
 (' /  /  #','','7','','','','','','','','','','','','TEETH- "A 27 ACQUOR FOUND 88"','GM',''),
 (' /  /  #','','7','','','','','','','','','','','','TEETH- "18 W/ A"','GM',''),
 (' /  /  #','','7','','','','','','','','','','','','TEETH- "SQ I # 3"','GM',''),
 (' /  /  #','','8','','','','','','','','','','','','LEFT LITTLE FINGER AND NAIL; MUSCLE FROM INSIDE FOREARM','GM',''),
 (' /  /  #','','8','','','','','','','','','','','','SKULL ?','GM',''),
 (' /  /  #','','8','','','','','','','','','','','','SKIN ?','GM',''),
 (' /  /  #','','','','','','','','','','','','','','Tooth; child "M17"','',''),
 ('N 160/170 E 10/20 SW #27-04','5','','160','170','N','10','20','E','SW','27-04','','','','Brain and membrane from inside skull; UKN','MBB',''),
 ('N 140/150 E 0/10 SW #18','5','','140','150','N','0','10','E','SW','18','','','','10 teeth; adult','MBB',''),
 ('N 160/170 W 0/10 NW #9','5','','160','170','N','0','10','W','NW','9','','','','10 teeth; adult','MBB',''),
 ('N 160/170 W 0/10 NW #33','5','','160','170','N','0','10','W','NW','33','','','','10 teeth; adult','MBB',''),
 ('N 50/60 E 50/60 18 #2','5','','50','60','N','50','60','E','18','2','','','','18 teeth; adult','MBB',''),
 ('N 140/150 E 0/10 SW #9','5','','140','150','N','0','10','E','SW','9','','','','8 teeth; adult','MBB',''),
 ('N 160/140 E 30/40 SW #6/8','5','','160','140','N','30','40','E','SW','6/8','','','','10 teeth; adult','MBB',''),
 (' 150/160 W 0/10 NW #15','5','','150','160','','0','10','W','NW','15','','','','11 teeth; adult','MBB',''),
 ('N 160/170 W 0/10 NW #36','5','','160','170','N','0','10','W','NW','36','','','','5 teeth; adult','MBB',''),
 ('N 160/170 W 0/10 NW #7','5','','160','170','N','0','10','W','NW','7','','','','11 teeth; adult','MBB',''),
 ('N 160/170 W 0/10 NW #44','5','','160','170','N','0','10','W','NW','44','','','','~14 broken teeth; adult','MBB',''),
 ('N 160/170 W 0/10 NW #13','5','','160','170','N','0','10','W','NW','13','','','','~5 broken teeth; fragment of textile; child','MBB',''),
 ('N 160/170 W 0/10 NW #14','5','','160','170','N','0','10','W','NW','14','','','','13 teeth; child','MBB',''),
 ('N 160/170 W 0/10 NW #20','5','','160','170','N','0','10','W','NW','20','','','','7 teeth; adult','MBB',''),
 ('N 160/170 W 0/10 NW #30','5','','160','170','N','0','10','W','NW','30','','','','9 teeth; adult','MBB',''),
 ('N 70/80 E 60/70 11 #10','5','','70','80','N','60','70','E','11','10','','','','13 teeth; adult','MBB',''),
 ('N 70/80 E 60/70 11 #6','5','','70','80','N','60','70','E','11','6','','','','14 teeth; adult','MBB',''),
 ('N 40/50 E 70/80 4 #3','5','','40','50','N','70','80','E','4','3','','','','10 teeth; adult','MBB',''),
 ('N 40/50 E 70/80 4 #5#1','5','','40','50','N','70','80','E','4','5#1','','','','6 teeth; adult','MBB',''),
 ('N 40/50 E 70/80 4 #2','5','','40','50','N','70','80','E','4','2','','','','11 teeth; adult','MBB',''),
 ('N 30/40 E 70/80 3 #2B','5','','30','40','N','70','80','E','3','2B','','','','9 teeth; adult','MBB',''),
 ('N 30/40 E 70/80 3 #2A','5','','30','40','N','70','80','E','3','2A','','','','11 teeth; adult','MBB',''),
 ('N 30/40 E 70/80 3 #3','5','','30','40','N','70','80','E','3','3','','','','15 teeth; adult','MBB',''),
 ('N 30/40 E 70/80 3 #4','5','','30','40','N','70','80','E','3','4','','','','9 teeth; adult','MBB',''),
 ('N 30/40 E 70/80 3 #6','5','','30','40','N','70','80','E','3','6','','','','6 teeth; adult','MBB',''),
 ('N 160/170 E 10/20 SW #42','5','','160','170','N','10','20','E','SW','42','','','Yes','8 teeth; child','MBB',''),
 ('N 160/170 E 10/20 SE #10-02','5','','160','170','N','10','20','E','SE','10-02','','','','Tissue; UKN','MBB',''),
 ('N 160/170 E 10/20 SE #10-01','5','','160','170','N','10','20','E','SE','10-01','','','','~14 rib fragments; child','MBB',''),
 ('N 160/170 E 10/20 SE #10-03','5','','160','170','N','10','20','E','SE','10-03','','','','2 bone fragments; UKN','MBB',''),
 ('N 160/170 E 10/20 SW #6-02','5','','160','170','N','10','20','E','SW','6-02','','','','Tissue from skull and hair; UKN','MBB',''),
 ('N 160/170 E 10/20 SW #6-01','5','','160','170','N','10','20','E','SW','6-01','','','Yes','~8 broken teeth; adult','MBB',''),
 ('N 160/170 E 10/20 SW #42-02','5','','160','170','N','10','20','E','SW','42-02','','','','6 rib fragments; child','MBB',''),
 ('N 160/170 E 10/20 SW #60-03','5','','160','170','N','10','20','E','SW','60-03','','','','Brain; UKN','MBB',''),
 ('N 160/170 E 10/20 SW #60-03','5','','160','170','N','10','20','E','SW','60-03','','','','Radias; child','MBB',''),
 ('N 160/170 E 10/20 SW #60-02','5','','160','170','N','10','20','E','SW','60-02','','','','Rib fragments; child','MBB',''),
 ('N 160/170 E 10/20 SE #37-02','5','','160','170','N','10','20','E','SE','37-02','','','','Brain; UKN','MBB',''),
 ('N 160/170 E 10/20 SE #37-03','5','','160','170','N','10','20','E','SE','37-03','','','','Hair and scalp; UKN','MBB',''),
 ('N 160/170 E 10/20 SE #37-01','5','','160','170','N','10','20','E','SE','37-01','','','Yes','3 teeth; adult','MBB',''),
 ('N 160/170 E 10/20 SW #53-04','5','','160','170','N','10','20','E','SW','53-04','','','','~6 rib fragments; child','MBB',''),
 ('N 160/170 E 10/20 SW #53-02','5','','160','170','N','10','20','E','SW','53-02','','','','2 femur fragments; child','MBB',''),
 ('N 160/170 E 10/20 SW #35-03','5','','160','170','N','10','20','E','SW','35-03','','','','Hair; UKN','MBB',''),
 ('N 160/170 E 10/20 SW #35-01','5','','160','170','N','10','20','E','SW','35-01','','','','12 teeth; adult','MBB',''),
 ('N 160/170 E 10/20 SW #35-02','5','','160','170','N','10','20','E','SW','35-02','','','','12 teeth; adult','MBB',''),
 ('N 160/170 E 10/20 SE #37-04','5','','160','170','N','10','20','E','SE','37-04','','','','Tissue from skull; UKN','MBB',''),
 ('N 160/170 E 10/20 SW #53-01','5','','160','170','N','10','20','E','SW','53-01','','','Yes','Vertebrae; child','MBB',''),
 ('N 160/170 E 10/20 SW #53-03','5','','160','170','N','10','20','E','SW','53-03','','','','~8 broken teeth; child','MBB',''),
 ('N 160/170 E 10/20 NW #15-04','5','','160','170','N','10','20','E','NW','15-04','','','','Bamboo','MBB',''),
 ('N 160/170 E 10/20 NW #15-03','5','','160','170','N','10','20','E','NW','15-03','','','','Scalp and hair; UKN','MBB',''),
 ('N 160/170 E 10/20 NW #15-01','5','','160','170','N','10','20','E','NW','15-01','','','','Scalp and hair; UKN','MBB',''),
 ('N 160/170 E 10/20 NW #15-02','5','','160','170','N','10','20','E','NW','15-02','','','','8 teeth; adult','MBB',''),
 (' /  /  #25','5','','','','','','','','','25','','','Yes','2 teeth; adult','MBB',''),
 (' /  /  #20','5','','','','','','','','','20','','','Yes','2 teeth; adult','MBB',''),
 (' /  / SW #34','5','','','','','','','','SW','34','','','Yes','2 teeth; adult','MBB',''),
 (' /  / SW #28','5','','','','','','','','SW','28','','','Yes','2 teeth; adult','MBB',''),
 (' /  / SW #4','5','','','','','','','','SW','4','','','Yes','2 teeth; adult','MBB',''),
 (' /  / SW #3','5','','','','','','','','SW','3','','','Yes','2 teeth; adult','MBB',''),
 (' /  / SW #7','5','','','','','','','','SW','7','','','Yes','2 teeth; adult','MBB',''),
 (' /  / SW #27','5','','','','','','','','SW','27','','','Yes','2 teeth; adult','MBB',''),
 (' /  / SW #10','5','','','','','','','','SW','10','','','Yes','2 teeth; adult','MBB',''),
 (' /  / SW #11','5','','','','','','','','SW','11','','','Yes','2 teeth; adult','MBB',''),
 (' /  / SW #5','5','','','','','','','','SW','5','','','Yes','2 teeth; adult','MBB',''),
 (' /  / SW #26','5','','','','','','','','SW','26','','','Yes','2 teeth; adult','MBB',''),
 (' /  / SW #12','5','','','','','','','','SW','12','','','Yes','2 teeth; child','MBB',''),
 (' /  / NNW #','5','','','','','','','','NNW','','','','','3 rib fragments; child ("Well wrapped burial?") - written on tube','MBB',''),
 ('N 160/170 E 10/20 SE #9','5','','160','170','N','10','20','E','SE','9','','','','3 skull fragments; ("18B93") - written on tube','MBB',''),
 (' /  / NNW #','5','','','','','','','','NNW','','','','','("Unidentified") - written on tube','MBB',''),
 ('N 150/160  50/60 NNW #16','5','','150','160','N','50','60','','NNW','16','','','','("Flowers?? Over face") - written on tube','MBB',''),
 ('N 200/210 E 30/40 SW #31','21','-','200','210','N','30','40','E','SW','31','','','','Bone dust','MBB',''),
 ('N 200/210 E 30/40 SW #31','21','-','200','210','N','30','40','E','SW','31','','','','Skin dust','MBB',''),
 ('N 200/210 E 30/40 SW #31','21','-','200','210','N','30','40','E','SW','31','','','','Bone dust','MBB',''),
 (' /  / SE #29','21','-','','','','','','','SE','29','','','','Powdered sample','MBB',''),
 (' /  / SE #13','21','-','','','','','','','SE','13','','','Yes','1 tooth; child','MBB',''),
 (' /  / SE #17','21','-','','','','','','','SE','17','','','','Skin sample','MBB',''),
 (' /  / SE #37','21','-','','','','','','','SE','37','','','','Brain sample','MBB',''),
 (' /  / SW #38-08','21','-','','','','','','','SW','38-08','','','','Tissue or maybe seed sample','MBB',''),
 ('N 160/170 E 10/20 SE #9-01','21','-','160','170','N','10','20','E','SE','9-01','','','','Skin sample','MBB',''),
 ('N 160/170 E 10/20 SW #4-02','21','-','160','170','N','10','20','E','SW','4-02','','','','Tissue sample','MBB',''),
 ('N 160/170 E 10/20 SW #4-03','21','-','160','170','N','10','20','E','SW','4-03','','','','Tissue sample','MBB',''),
 ('N 160/170 E 10/20 SW #16-05','21','-','160','170','N','10','20','E','SW','16-05','','','','Tissue from mouth and upper jaw','MBB',''),
 ('N 160/170 E 10/20 SW #16-04','21','-','160','170','N','10','20','E','SW','16-04','','','','Tissue lining inside of skull','MBB',''),
 ('N 160/170 E 10/20 SW #8-03','21','-','160','170','N','10','20','E','SW','8-03','','','','Tissue sample','MBB',''),
 ('N 160/170 E 10/20 SW #8-04','21','-','160','170','N','10','20','E','SW','8-04','','','','Bone fragments','MBB',''),
 ('N 160/170 E 10/20 SE #2-04','21','-','160','170','N','10','20','E','SE','2-04','','','','Tissue sample','MBB',''),
 ('N 160/170 E 10/20 SE #39-08','21','-','160','170','N','10','20','E','SE','39-08','','','','Tissue from tibia','MBB',''),
 ('N 160/170 E 20/30 SW #','21','-','160','170','N','20','30','E','SW','','','','','1 tooth; adult ("Green #2") - written on tube','MBB',''),
 ('N 160/170 E 10/20 SE #20-4','21','-','160','170','N','10','20','E','SE','20-4','','','','Tissue sample','MBB',''),
 ('N 160/170 E 10/20 SE #29-01','21','-','160','170','N','10','20','E','SE','29-01','','','','Tissue sample','MBB',''),
 ('N 160/170 E 10/20 SE #21-01','21','-','160','170','N','10','20','E','SE','21-01','','','','Skin sample','MBB',''),
 ('N 160/170 E 10/20 SE #29-02','21','-','160','170','N','10','20','E','SE','29-02','','','','Tissue sample','MBB',''),
 ('N 160/170 E 10/20 SE #33-05','21','-','160','170','N','10','20','E','SE','33-05','','','','Wasp and seed samples','MBB',''),
 (' /  / SW #2-03','21','-','','','','','','','SW','2-03','','','','("Internal + skin") - written on tube','MBB',''),
 (' /  /  #','21','-','','','','','','','','','','','','Bone dust; ("M+ Carm") -written on tube','MBB',''),
 (' /  / SW #59-04','21','-','','','','','','','SW','59-04','','','','Tissue from skull','MBB',''),
 (' /  / SE #44-02','21','-','','','','','','','SE','44-02','','','','Tissue from intestine and tibia','MBB',''),
 (' /  / SE #48-01','21','-','','','','','','','SE','48-01','','','','Powdered brain sample','MBB',''),
 (' /  / SE #38-05','21','-','','','','','','','SE','38-05','','','','Powdered tissue from tibia','MBB',''),
 (' /  / SE #50-05','21','-','','','','','','','SE','50-05','','','','Soft tissue','MBB',''),
 (' /  / SE #55-03','21','-','','','','','','','SE','55-03','','','','Soft tissue','MBB',''),
 (' /  / SW #54-04','21','-','','','','','','','SW','54-04','','','','Powdered eye sample','MBB',''),
 (' /  / SW #44-03','21','-','','','','','','','SW','44-03','','','','Powdered foot sample','MBB',''),
 (' /  / SW #59','21','-','','','','','','','SW','59','','','','Powdered tooth sample','MBB',''),
 (' /  / SW #9','21','-','','','','','','','SW','9','','','','Empty tube with dust residue','MBB',''),
 ('N 200/210 E 30/40 SW #56','21','-','200','210','N','30','40','E','SW','56','','','','Powdered tissue sample','MBB',''),
 ('N 200/210 E 20/30 SE #51','21','-','200','210','N','20','30','E','SE','51','','','','Powdered tissue sample','MBB',''),
 ('N 200/210 E 20/30 SE #16','21','-','200','210','N','20','30','E','SE','16','','','','Powdered tissue sample','MBB',''),
 ('N 200/210 E 30/40 SW #42','21','-','200','210','N','30','40','E','SW','42','','','','Powdered tissue sample','MBB',''),
 ('N 200/210 E 20/30 SE #34','21','-','200','210','N','20','30','E','SE','34','','','','Powdered tissue sample','MBB',''),
 ('N 200/210 E 30/40 SW #38','21','-','200','210','N','30','40','E','SW','38','','','','Powdered tooth sample','MBB',''),
 (' /  / SW #51','21','-','','','','','','','SW','51','','','','Powdered rib sample','MBB',''),
 (' /  / SW #40','21','-','','','','','','','SW','40','','','','Empty tube with dust residue','MBB',''),
 (' /  / NW #15','21','-','','','','','','','NW','15','','','','Powdered tooth sample','MBB',''),
 ('N 200/210 E 30/40 SW #43','21','-','200','210','N','30','40','E','SW','43','','','','Powdered tooth sample','MBB',''),
 (' /  / NW #14','21','-','','','','','','','NW','14','','','','Powdered tooth sample','MBB',''),
 (' /  / SW #39','21','-','','','','','','','SW','39','','','','Empty tube with dust residue','MBB',''),
 (' /  / SE #44','21','-','','','','','','','SE','44','','','','Powdered tooth sample','MBB',''),
 ('N 200/210 E 30/40 SW #41','21','-','200','210','N','30','40','E','SW','41','','','','Powdered bone sample','MBB',''),
 (' /  / SW #43','21','-','','','','','','','SW','43','','','','Powdered tooth sample','MBB',''),
 (' /  / SW #6','21','-','','','','','','','SW','6','','','','Powdered tooth sample','MBB',''),
 ('N 200/210 E 30/40 SW #35','21','-','200','210','N','30','40','E','SW','35','','','','Powdered tooth sample','MBB',''),
 ('N 200/210 E 20/30 SE #33','21','-','200','210','N','20','30','E','SE','33','','','','Powdered tissue sample','MBB',''),
 (' /  / SW #11','21','-','','','','','','','SW','11','','','','Powdered tissue sample','MBB',''),
 (' /  / SW #27','21','-','','','','','','','SW','27','','','','Empty tube with dust residue','MBB',''),
 ('N 200/210 E 30/40 SW #41','21','-','200','210','N','30','40','E','SW','41','','','','Powdered tooth sample','MBB',''),
 (' /  / SW #53','21','-','','','','','','','SW','53','','','','Powdered tooth sample','MBB',''),
 (' /  / SE #38','21','-','','','','','','','SE','38','','','','Powdered tooth sample','MBB',''),
 (' /  / SW #2','21','-','','','','','','','SW','2','','','','Powdered tooth sample','MBB',''),
 (' /  / SW #54-2','21','-','','','','','','','SW','54-2','','','','Powdered tissue sample','MBB',''),
 (' /  / SW #34-2','21','-','','','','','','','SW','34-2','','','','Powdered tissue sample','MBB',''),
 (' /  / SW #17','21','-','','','','','','','SW','17','','','','Powdered tooth sample','MBB',''),
 (' /  / SE #48','21','-','','','','','','','SE','48','','','','Powdered tooth sample','MBB',''),
 (' /  / SW #55','21','-','','','','','','','SW','55','','','','Powdered tooth sample','MBB',''),
 (' /  / SW #44','21','-','','','','','','','SW','44','','','','Powdered tooth sample','MBB',''),
 (' /  / SW #57','21','-','','','','','','','SW','57','','','','Empty tube with dust residue','MBB',''),
 ('N 200/210 E 30/40 SW #42','21','-','200','210','N','30','40','E','SW','42','','1998','','Powdered tooth sample','MBB',''),
 ('N 200/210 E 30/40 SW #46','21','-','200','210','N','30','40','E','SW','46','','','','Powdered bone sample','MBB',''),
 ('N 200/210 E 30/40 SW #46','21','-','200','210','N','30','40','E','SW','46','','','','Powdered tooth sample','MBB',''),
 (' /  / NW #28','21','-','','','','','','','NW','28','','','','Empty tube with dust residue','MBB',''),
 (' /  / SE #50','21','-','','','','','','','SE','50','','','','Powdered tooth sample','MBB',''),
 ('N 200/210 E 30/40 SW #57','21','-','200','210','N','30','40','E','SW','57','','','','Powdered tissue sample','MBB',''),
 ('N 200/210 E 30/40 SW #55','21','-','200','210','N','30','40','E','SW','55','','','','Powdered tissue sample','MBB',''),
 ('N 160/170 E 10/20 SW #5-03','17','-','160','170','N','10','20','E','SW','5-03','','','','Tissue sample','MBB',''),
 ('N 160/170 E 10/20 SW #5-02','17','-','160','170','N','10','20','E','SW','5-02','','','','Tissue sample','MBB',''),
 ('N 160/170 E 10/20 SW #5-04','17','-','160','170','N','10','20','E','SW','5-04','','','','Tissue sample','MBB',''),
 ('N 160/170 E 10/20 SW #9-03','17','-','160','170','N','10','20','E','SW','9-03','','','','Tissue sample','MBB',''),
 ('N 160/170 E 10/20 SW #9-04','17','-','160','170','N','10','20','E','SW','9-04','','','','Tissue sample','MBB',''),
 ('N 160/170 E 10/20 SW #6-05','17','-','160','170','N','10','20','E','SW','6-05','','','','Tissue sample','MBB',''),
 ('N 160/170 E 10/20 SW #6-03','17','-','160','170','N','10','20','E','SW','6-03','','','','Tissue sample','MBB',''),
 ('N 160/170 E 10/20 SW #6-04','17','-','160','170','N','10','20','E','SW','6-04','','','','Bone fragments','MBB',''),
 (' /  / SW #55','17','-','','','','','','','SW','55','','','','Empty tube with dust residue','MBB',''),
 (' /  /  #','17','-','','','','','','','','','','','','Plant sample; ("Alexander") -written on tube','MBB',''),
 (' /  / SE #42','17','-','','','','','','','SE','42','','','','Powdered tissue sample','MBB',''),
 (' /  /  #2','17','-','','','','','','','','2','','','','Tissue sample','MBB',''),
 (' /  /  #3','17','-','','','','','','','','3','','','','Empty tube with dust residue','MBB',''),
 (' /  / SE #50','17','-','','','','','','','SE','50','','','','Empty tube with dust residue','MBB',''),
 (' /  / SE #15','17','-','','','','','','','SE','15','','','','Tooth fragments','MBB',''),
 (' /  / SW #44','17','-','','','','','','','SW','44','','','','Powdered bone sample','MBB',''),
 (' /  / SW #3','17','-','','','','','','','SW','3','','','','Empty tube with dust residue','MBB',''),
 (' /  /  #','17','-','','','','','','','','','','','','Empty tube with dust residue; ("ACHA2 15I92") - written on tube','MBB',''),
 (' /  / SW #32','17','-','','','','','','','SW','32','','','','Powdered tissue sample','MBB',''),
 (' /  / SW #48','17','-','','','','','','','SW','48','','','','Powdered tissue sample','MBB',''),
 (' /  / SE #47','17','-','','','','','','','SE','47','','','','Bone or tooth fragments','MBB',''),
 (' /  / SE #35','17','-','','','','','','','SE','35','','','','Powdered tissue sample','MBB',''),
 (' /  / SW #54','17','-','','','','','','','SW','54','','','','Powdered tissue sample','MBB',''),
 (' /  / SE #8','17','-','','','','','','','SE','8','','','','Powdered tissue sample','MBB',''),
 (' /  / SE #19','17','-','','','','','','','SE','19','','','','Powdered tissue sample','MBB',''),
 (' /  /  #','17','-','','','','','','','','','','','','Powdered tissue sample; ("42BO 763 FS-41") - written on tube','MBB',''),
 (' /  / SW #42','17','-','','','','','','','SW','42','','','','Empty tube with dust residue','MBB',''),
 (' /  / SW #59','17','-','','','','','','','SW','59','','','','Powdered tissue sample','MBB',''),
 (' /  / SW #46','17','-','','','','','','','SW','46','','','','Empty tube with dust residue','MBB',''),
 (' /  / SE #48','17','-','','','','','','','SE','48','','','','Empty tube with dust residue','MBB',''),
 (' /  / SE #16','17','-','','','','','','','SE','16','','','','Empty tube with dust residue','MBB',''),
 (' /  / SE #30','17','-','','','','','','','SE','30','','','','Empty tube with dust residue','MBB',''),
 (' /  / SW #57','17','-','','','','','','','SW','57','','','','Powdered tissue sample','MBB',''),
 (' /  /  #','17','-','','','','','','','','','','','','Powdered tissue sample; ("42BO 763 FS-41") - written on tube','MBB',''),
 (' /  / SW #13','17','-','','','','','','','SW','13','','','','Empty tube with dust residue','MBB',''),
 (' /  / SE #37','17','-','','','','','','','SE','37','','','','Tooth fragments','MBB',''),
 (' /  / SW #43','17','-','','','','','','','SW','43','','','','Powdered tissue sample','MBB',''),
 (' /  / SW #40','17','-','','','','','','','SW','40','','','','Powdered bone sample','MBB',''),
 (' /  / SE #52','17','-','','','','','','','SE','52','','','','Empty tube with dust residue','MBB',''),
 (' /  / SE #41','17','-','','','','','','','SE','41','','','','Empty tube with dust residue','MBB',''),
 (' /  / SE #40','17','-','','','','','','','SE','40','','','','Powdered tissue sample','MBB',''),
 (' /  /  #1','17','-','','','','','','','','1','','','','Empty tube with dust residue','MBB',''),
 (' /  / SE #34','17','-','','','','','','','SE','34','','','','Empty tube with dust residue','MBB',''),
 (' /  / SE #30B','17','-','','','','','','','SE','30B','','','','Tissue sample','MBB',''),
 (' /  / SE #24','17','-','','','','','','','SE','24','','','','Tissue sample','MBB',''),
 (' /  / SE #41','17','-','','','','','','','SE','41','','','','Empty tube with dust residue','MBB',''),
 (' /  / SE #31','17','-','','','','','','','SE','31','','','','Powdered tissue sample','MBB',''),
 (' /  / SE #39','17','-','','','','','','','SE','39','','','','Powdered tissue sample','MBB',''),
 (' /  / SE #41','17','-','','','','','','','SE','41','','','','Powdered tissue sample','MBB',''),
 (' /  / SE #20','17','-','','','','','','','SE','20','','','','Powdered tissue sample','MBB',''),
 (' /  / SE #20','17','-','','','','','','','SE','20','','','','Empty tube with dust residue','MBB',''),
 (' /  / SE #32','17','-','','','','','','','SE','32','','','','Powdered tissue sample','MBB',''),
 (' /  / SE #22','17','-','','','','','','','SE','22','','','','Powdered tissue sample','MBB',''),
 (' /  / SW #57','17','-','','','','','','','SW','57','','','','Bone fragments','MBB',''),
 (' /  / SE #2','17','-','','','','','','','SE','2','','','','Empty tube with dust residue','MBB',''),
 (' /  / SE #38','17','-','','','','','','','SE','38','','','','Empty tube with dust residue','MBB',''),
 (' /  / SE #7','17','-','','','','','','','SE','7','','','','Empty tube with dust residue','MBB',''),
 (' /  / SE #45','17','-','','','','','','','SE','45','','','','Empty tube with dust residue','MBB',''),
 ('N 160/170 E  10/20 SW #55-06','15','-','160','170','N','10','20','E ','SW','55-06','','40500','','TISSUE FROM FACE','GM',''),
 ('N 160/170 E  10/20 SW #55-04','15','-','160','170','N','10','20','E ','SW','55-04','','40500','','RIBS','GM',''),
 ('N 160/170 E  10/20 SW #55-05','15','-','160','170','N','10','20','E ','SW','55-05','','40500','','BRAIN','GM',''),
 ('N 160/170 E  10/20 SW #55-03','15','-','160','170','N','10','20','E ','SW','55-03','','40500','','SALT TISSUE','GM',''),
 ('N 160/170 E  10/20 SW #55-01','15','-','160','170','N','10','20','E ','SW','55-01','','40500','','TEETH','GM',''),
 ('N 160/170 E  10/20 SW #55-02','15','-','160','170','N','10','20','E ','SW','55-02','','40500','','TEETH','GM',''),
 ('N 160/170 E  10/20 SW #38-07','15','-','160','170','N','10','20','E ','SW','38-07','','40500','','TEETH','GM',''),
 ('N 160/170 E  10/20 SE #55-05','15','-','160','170','N','10','20','E ','SE','55-05','','40500','','BRAIN','GM',''),
 ('N 160/170 E  10/20 SE #38-01','15','-','160','170','N','10','20','E ','SE','38-01','','40500','','TEETH','GM',''),
 ('N 160/170 E  10/20 SE #38-02','15','-','160','170','N','10','20','E ','SE','38-02','','40500','','BRAIN','GM',''),
 ('N 160/170 E  10/20 SE #38-05','15','-','160','170','N','10','20','E ','SE','38-05','','40500','','TISSUE FROM TIBIA','GM',''),
 ('N 160/170 E  10/20 SE #38-04','15','-','160','170','N','10','20','E ','SE','38-04','','40500','','HAIR','GM',''),
 ('N 160/170 E  10/20 SE #38-03','15','-','160','170','N','10','20','E ','SE','38-03','','40500','','HAIR','GM',''),
 ('N 160/170 E  10/20 SW #02- 04','15','-','160','170','N','10','20','E ','SW','02- 04','','40500','','TISSUE','GM',''),
 ('N 160/170 E  10/20 SW #02- 02','15','-','160','170','N','10','20','E ','SW','02- 02','','40500','','RIBS','GM',''),
 ('N 160/170 E  10/20 SW #02- 01','15','-','160','170','N','10','20','E ','SW','02- 01','','40500','','TEETH','GM',''),
 ('N 160/170 E  10/20 SW #40-02','15','-','160','170','N','10','20','E ','SW','40-02','','40500','','FEMUR','GM',''),
 ('N 160/170 E  10/20 SW #57-03','15','-','160','170','N','10','20','E ','SW','57-03','','40500','','RIBS','GM',''),
 ('N 160/170 E  10/20 SW #57-01','15','-','160','170','N','10','20','E ','SW','57-01','','40500','','TEETH','GM',''),
 ('N 160/170 E  10/20 SW #57-05','15','-','160','170','N','10','20','E ','SW','57-05','','40500','','TISSUE FROM MOUTH','GM',''),
 ('N 160/170 E  10/20 SW #40-01','15','-','160','170','N','10','20','E ','SW','40-01','','40500','','TEETH','GM',''),
 ('N 160/170 E  10/20 SW #40-03','15','-','160','170','N','10','20','E ','SW','40-03','','40500','','BRAIN','GM',''),
 ('N 160/170 E  10/20 SW #40-04','15','-','160','170','N','10','20','E ','SW','40-04','','40500','','RIBS','GM',''),
 ('N 160/170 E  10/20 SW #57-04','15','-','160','170','N','10','20','E ','SW','57-04','','40500','','BRAIN','GM',''),
 ('N 160/170 E  10/20 SW #05- 01','15','-','160','170','N','10','20','E ','SW','05- 01','','40500','','TEETH- CHILD','GM',''),
 ('N 160/170 E  10/20 SE #48-01','15','-','160','170','N','10','20','E ','SE','48-01','','40500','','TEETH AND BRAIN','GM',''),
 ('N 160/170 E  10/20 SE #48-02','15','-','160','170','N','10','20','E ','SE','48-02','','40500','','RIBS','GM',''),
 ('N 160/170 E  10/20 SE #48-04','15','-','160','170','N','10','20','E ','SE','48-04','','40500','','TEETH','GM',''),
 ('N 160/170 E  10/20 SE #48-03','15','-','160','170','N','10','20','E ','SE','48-03','','40500','','HAIR','GM',''),
 ('N 160/170 E  10/20 SW #58-01','15','-','160','170','N','10','20','E ','SW','58-01','','40500','','TEETH','GM',''),
 ('N 160/170 E  10/20 SW #58-02','15','-','160','170','N','10','20','E ','SW','58-02','','40500','','CLAVICAL','GM',''),
 ('N 160/170 E  10/20 SE #25-04','15','-','160','170','N','10','20','E ','SE','25-04','','40500','','TEETH','GM',''),
 ('N 160/170 E  10/20 SE #25-01','15','-','160','170','N','10','20','E ','SE','25-01','','40500','','SCALP AND HAIR','GM',''),
 ('N 160/170 E  10/20 SE #25-03','15','-','160','170','N','10','20','E ','SE','25-03','','40500','','RIBS','GM',''),
 ('N 160/170 E  10/20 SE #25-02','15','-','160','170','N','10','20','E ','SE','25-02','','40500','','HAIR AND SCALP','GM',''),
 ('N 160/170 E  10/20 SW #58-03','15','-','160','170','N','10','20','E ','SW','58-03','','40500','','RIBS','GM',''),
 ('N 160/170 E  10/20 SW #58-04','15','-','160','170','N','10','20','E ','SW','58-04','','40500','','FEMUR','GM',''),
 ('N 160/170 E  10/20 SW #58-05','15','-','160','170','N','10','20','E ','SW','58-05','','40500','','SOFT TISSUE','GM',''),
 ('N 160/170 E  10/20 SE #50-1','15','-','160','170','N','10','20','E ','SE','50-1','','40500','','TEETH','GM',''),
 ('N 160/170 E  10/20 SE #50-04','15','-','160','170','N','10','20','E ','SE','50-04','','40500','Y','TEETH','GM',''),
 ('N 160/170 E  10/20 SE #50-02','15','-','160','170','N','10','20','E ','SE','50-02','','40500','','BRAIN','GM',''),
 ('N 160/170 E  10/20 SE #47-04','15','-','160','170','N','10','20','E ','SE','47-04','','40500','','RIBS','GM',''),
 ('N 160/170 E  10/20 SE #47-03','15','-','160','170','N','10','20','E ','SE','47-03','','40500','','HUMOROUS','GM',''),
 ('N 160/170 E  10/20 SW #09- 02','15','-','160','170','N','10','20','E ','SW','09- 02','','40500','','HAIR AND SKIN','GM',''),
 ('N 160/170 E  10/20 SW #09- 01','15','-','160','170','N','10','20','E ','SW','09- 01','','40500','','TEETH','GM',''),
 ('N 160/170 E  10/20 SE #50-5','15','-','160','170','N','10','20','E ','SE','50-5','','40500','','SOFT TISSUE','GM',''),
 ('N 160/170 E  10/20 SE #50-03','15','-','160','170','N','10','20','E ','SE','50-03','','40500','','RIBS','GM',''),
 ('N 160/170 E  10/20 SE #47-01','15','-','160','170','N','10','20','E ','SE','47-01','','40500','','HAIR','GM',''),
 ('N 160/170 E  10/20 SE #47-02','15','-','160','170','N','10','20','E ','SE','47-02','','40500','','TEETH- CHILD','GM',''),
 ('N 160/170 E  10/20 SW #39-01','15','-','160','170','N','10','20','E ','SW','39-01','','40500','','BRAIN','GM',''),
 ('N 160/170 E  10/20 SW #39-02','15','-','160','170','N','10','20','E ','SW','39-02','','40500','','TEETH AND HAIR','GM',''),
 ('N 160/170 E  10/20 SE #01- 04','15','-','160','170','N','10','20','E ','SE','01- 04','','40500','','TEETH- CHILD','GM',''),
 ('N 160/170 E  10/20 SE #01- 01','15','-','160','170','N','10','20','E ','SE','01- 01','','40500','','BRAIN ?','GM',''),
 ('N 150/160 E  50/60 SW #11','15','-','150','160','N','50','60','E ','SW','11','','40500','','RIB ','GM',''),
 ('N 150/160 E  50/60 SW #11','15','-','150','160','N','50','60','E ','SW','11','','40500','','TEETH','GM',''),
 ('N 140/160 E  50/60 NW #28','15','-','140','160','N','50','60','E ','NW','28','','40500','','TEETH','GM',''),
 ('N 150/160 E  50/60 SW #8','15','-','150','160','N','50','60','E ','SW','8','','40500','','TEETH- CHILD','GM',''),
 ('N 160/170 E  10/20 SE #01- 03','15','-','160','170','N','10','20','E ','SE','01- 03','','40500','','FOOT','GM',''),
 ('N 160/170 E  10/20 SE #01- 02','15','-','160','170','N','10','20','E ','SE','01- 02','','40500','','SKIN ?','GM',''),
 ('N 160/170 E  10/20 SW #44-01','15','-','160','170','N','10','20','E ','SW','44-01','','40500','Y','TEETH','GM',''),
 ('N 160/170 E  10/20 SW #44-04','15','-','160','170','N','10','20','E ','SW','44-04','','40500','','HAIR','GM',''),
 ('N 160/170 E  10/20 SW #44-02','15','-','160','170','N','10','20','E ','SW','44-02','','40500','','VERTEBRA','GM',''),
 ('N 160/170 E  10/20 SW #44-03','15','-','160','170','N','10','20','E ','SW','44-03','','40500','','FOOT BONE','GM',''),
 ('N 150/160 E  50/60 SW #8','15','-','150','160','N','50','60','E ','SW','8','','40500','','RIBS','GM',''),
 ('N 140/160 E  50/60 NW #48-02','15','-','140','160','N','50','60','E ','NW','48-02','','40500','','RIBS','GM',''),
 (' /  /  #','','','','','','','','','','','','','','','',''),
 (' /  / SW #50','11','-','','','','','','','SW','50','','40500','','SKIN ?','GM',''),
 (' /  / SW #27','11','','','','','','','','SW','27','','40500','','SKIN ?','GM',''),
 (' /  / NW #15 (5)','11','','','','','','','','NW','15 (5)','','40500','','HAIR AND SKIN','GM',''),
 (' /  / SW #59','11','','','','','','','','SW','59','','40500','','BRAIN','GM',''),
 (' /  / NW #16 (4)','11','','','','','','','','NW','16 (4)','','40500','','HAIR AND SCALP','GM',''),
 (' /  / NW #14','11','','','','','','','','NW','14','','40500','','SKIN ?','GM',''),
 (' /  / NW #26 (2)','11','','','','','','','','NW','26 (2)','','40500','','SKIN ?','GM',''),
 (' /  / SW #24 (8)','11','','','','','','','','SW','24 (8)','','40500','','HAIR AND SCALP','GM',''),
 (' /  / RC  #22 (1)','11','','','','','','','','RC ','22 (1)','','40500','','TOOTH','GM',''),
 (' /  / SW #55','11','','','','','','','','SW','55','','40500','','SKIN ?','GM',''),
 (' /  / SW #55','11','','','','','','','','SW','55','','40500','','BRIAN','GM',''),
 (' /  / RC  #22 (2)','11','','','','','','','','RC ','22 (2)','','40500','','TOOTH','GM',''),
 (' /  / RC  #22 (3)','11','','','','','','','','RC ','22 (3)','','40500','','TOOTH','GM',''),
 (' /  / RC  #1027 (1)','11','','','','','','','','RC ','1027 (1)','','40500','Y','TOOTH','GM',''),
 (' /  / RC  #1777 (1)','11','','','','','','','','RC ','1777 (1)','','40500','Y','TOOTH','GM',''),
 (' /  / RC  #2249','11','','','','','','','','RC ','2249','','40500','','TOOTH','GM',''),
 (' /  / RC  #1027 (2)','11','','','','','','','','RC ','1027 (2)','','40500','','SKIN ?','GM',''),
 (' /  / RC  #1779 (3)','11','','','','','','','','RC ','1779 (3)','','40500','Y','TOOTH','GM',''),
 (' /  / RC #1779 (2)','11','','','','','','','','RC','1779 (2)','','40500','Y','TOOTH','GM',''),
 (' /  / RC #2172 (1)','11','','','','','','','','RC','2172 (1)','','40500','','TOOTH ?','GM',''),
 ('N 160/170 E 10/20 SW #28-06','11','','160','170','N','10','20','E','SW','28-06','','40500','','SCALP AND HAIR','GM',''),
 (' /  / RC #2172','11','','','','','','','','RC','2172','','40500','','RESIN','GM',''),
 (' /  / RC #2172','11','','','','','','','','RC','2172','','40500','Y','TOOTH','GM',''),
 (' /  /  #','11','','','','','','','','','','','','','','GM',''),
 (' /  /  #','11','','','','','','','','','','','','','','GM',''),
 ('N 150/160 E 0/10  #','31','-','150','160','N','0','10','E','','','','','Yes','Tooth','AWA',''),
 ('N 160/170 E 10/20 SE #52.03','31','-','160','170','N','10','20','E','SE','52.03','','','','Ribs','AWA',''),
 ('N 160/170 E 10/20 SW #43-03','31','-','160','170','N','10','20','E','SW','43-03','','','','Ribs; child','AWA',''),
 ('N 160/170 E 10/20 SE #45-02','31','-','160','170','N','10','20','E','SE','45-02','','','','Rib','AWA',''),
 ('N 200/210 E 30/40 SW #12','31','-','200','210','N','30','40','E','SW','12','','1998','','"Internal"','AWA',''),
 ('N 200/210 E 30/40 SW #12','31','-','200','210','N','30','40','E','SW','12','','1998','','Ribs; child','AWA',''),
 ('N 200/210 E 20/30 SE #20','31','-','200','210','N','20','30','E','SE','20','','1998','','Vertebrae - Tibia','AWA',''),
 ('N 200/210 E 20/30 SE #31','31','-','200','210','N','20','30','E','SE','31','','','','Hair and scalp (?)','AWA',''),
 ('N 200/210 E 20/30 SE #31','31','-','200','210','N','20','30','E','SE','31','','','','Clavicle; child','AWA',''),
 ('N 200/210 E 20/30 SE #31','31','-','200','210','N','20','30','E','SE','31','','','','Skin','AWA',''),
 ('N 200/210 E 30/40 SW #58','31','-','200','210','N','30','40','E','SW','58','','1998','','Scapula (?) and skin','AWA',''),
 ('N 200/210 E 30/40 SW #6','31','-','200','210','N','30','40','E','SW','6','','35833','','Hair','AWA',''),
 ('N 200/210 E 30/40 SW #6','31','-','200','210','N','30','40','E','SW','6','','35833','','Skin','AWA',''),
 ('N 200/210 E 30/40 SW #6','31','-','200','210','N','30','40','E','SW','6','','35833','','2 teeth','AWA',''),
 ('N 200/210 E 30/40 SW #4','31','-','200','210','N','30','40','E','SW','4','','1998','','"Fibula"; child','AWA',''),
 ('N 200/210 E 30/40 SW #4','31','-','200','210','N','30','40','E','SW','4','','1998','','Skin; femur','AWA',''),
 ('N 200/210 E 30/40 SW #25','31','-','200','210','N','30','40','E','SW','25','','1998','','Skin - jaw and skull','AWA',''),
 ('N 200/210 E 30/40 SW #25','31','-','200','210','N','30','40','E','SW','25','','1998','','Humerus','AWA',''),
 ('N 200/210 E 30/40 SW #25','31','-','200','210','N','30','40','E','SW','25','','1998','','Fibula','AWA',''),
 ('N 200/210 E 30/40 SW #39','31','-','200','210','N','30','40','E','SW','39','','','Yes','2 teeth','AWA',''),
 ('N 200/210 E 30/40 SW #39','31','-','200','210','N','30','40','E','SW','39','','','','Bone fragments','AWA',''),
 ('N 200/210 E 30/40 SW #39','31','-','200','210','N','30','40','E','SW','39','','','','Skin','AWA',''),
 ('N 200/210 E 20/30 SW #2','31','-','200','210','N','20','30','E','SW','2','','35833','Yes','3 teeth','AWA',''),
 ('N 200/210 E 20/30 SW #2','31','-','200','210','N','20','30','E','SW','2','','35833','','Skin','AWA',''),
 ('N 200/210 E 30/40 SW #1','31','-','200','210','N','30','40','E','SW','1','','35833','Yes','3 teeth','AWA',''),
 ('N 200/210 E 30/40 SW #1','31','-','200','210','N','30','40','E','SW','1','','35833','','Skin','AWA',''),
 ('N 200/210 E 30/40 SW #10','31','-','200','210','N','30','40','E','SW','10','','1998','','Skin','AWA',''),
 ('N 200/210 E 30/40 SW #10','31','-','200','210','N','30','40','E','SW','10','','1998','','"Internal"','AWA',''),
 ('N 200/210 E 30/40 SW #10','31','-','200','210','N','30','40','E','SW','10','','1998','Yes','4 teeth; adult','AWA',''),
 ('N 200/210 E 30/40 SW #29','31','-','200','210','N','30','40','E','SW','29','','1998','','Skin','AWA',''),
 ('N 200/210 E 30/40 SW #29','31','-','200','210','N','30','40','E','SW','29','','1998','','Scapula (?); child','AWA',''),
 ('N 200/210 E 30/40 SW #40','31','-','200','210','N','30','40','E','SW','40','','','','Scapula (?)','AWA',''),
 ('N 200/210 E 30/40 SW #16','31','-','200','210','N','30','40','E','SW','16','','1998','','Skull membrane','AWA',''),
 ('N 200/210 E 30/40 SW #16','31','-','200','210','N','30','40','E','SW','16','','1998','','Ribs; child','AWA',''),
 ('N 200/210 E 30/40 SW #3','31','','200','210','N','30','40','E','SW','3','','1998','','Skin and fungi','AWA',''),
 ('N 200/210 E 30/40 SW #3','31','','200','210','N','30','40','E','SW','3','','1998','','Bone','AWA',''),
 ('N 200/210 E 30/40 SW #3','31','','200','210','N','30','40','E','SW','3','','1998','','Teeth; adult','AWA',''),
 ('N 200/210 E 30/40 SW #7','31','','200','210','N','30','40','E','SW','7','','1998','','Long bone','AWA',''),
 ('N 200/210 E 30/40 SW #7','31','','200','210','N','30','40','E','SW','7','','1998','','Teeth; child','AWA',''),
 ('N 200/210 E 30/40 SW #15','31','','200','210','N','30','40','E','SW','15','','1998','','Rib and fungus','AWA',''),
 ('N 200/210 E 30/40 SW #15','31','','200','210','N','30','40','E','SW','15','','1998','','Hair and Scalp','AWA',''),
 ('N 200/210 E 30/40 SW #15','31','','200','210','N','30','40','E','SW','15','','1998','Yes','Teeth; UNK','AWA',''),
 ('N 200/210 E 30/40 SW #20','31','','200','210','N','30','40','E','SW','20','','1998','','Humerus','AWA',''),
 ('N 200/210 E 30/40 SW #20','31','','200','210','N','30','40','E','SW','20','','1998','','Skin - mandible','AWA',''),
 ('N 200/210 E 30/40 SW #26','31','','200','210','N','30','40','E','SW','26','','1998','','Clavicle; child','AWA',''),
 ('N 30/40 E 50/60 Area 1 #','31','','30','40','N','50','60','E','Area 1','','','','','"Mummified head old; #3 or 2; pieces from face"','AWA',''),
 ('N 30/40 E 50/60 Area 1 #','31','','30','40','N','50','60','E','Area 1','','','','','"#3 or 2; nose"','AWA',''),
 ('N 30/40 E 50/60 Area 1 #','31','','30','40','N','50','60','E','Area 1','','','','','"#3 or 2; Muscle from face"','AWA',''),
 ('N 30/40 E 50/60 Area 1 #','31','','30','40','N','50','60','E','Area 1','','','','','"#3 or 2; skin from head"','AWA',''),
 ('N 30/40 E 50/60 Area 1 #','31','','30','40','N','50','60','E','Area 1','','','','','"#3 or 2; ear"','AWA',''),
 ('N 200/210 E 30/40 SW #35','31','','200','210','N','30','40','E','SW','35','','1998','','3 molars; child','AWA',''),
 ('N 200/210 E 30/40 SW #35','31','','200','210','N','30','40','E','SW','35','','1998','','Broken rib pieces','AWA',''),
 ('N 200/210 E 30/40 SW #30','31','','200','210','N','30','40','E','SW','30','','1998','','Tissue','AWA',''),
 ('N 200/210 E 30/40 SW #30','31','','200','210','N','30','40','E','SW','30','','1998','Yes','5 teeth; adult','AWA',''),
 ('N 200/210 E 30/40 SW #27','31','','200','210','N','30','40','E','SW','27','','1998','','Skin','AWA',''),
 ('N 200/210 E 30/40 SW #27','31','','200','210','N','30','40','E','SW','27','','1998','','6 teeth; adult','AWA',''),
 ('N 200/210 E 30/40 SW #47','31','','200','210','N','30','40','E','SW','47','','1998','','Teeth and skin; UKN','AWA',''),
 ('N 200/210 E 30/40 SW #54','31','','200','210','N','30','40','E','SW','54','','1998','','Teeth and rib; child (?)','AWA',''),
 ('N 200/210 E 30/40 SW #28','37','','200','210','N','30','40','E','SW','28','','1998','','Internal','AWA',''),
 ('N 200/210 E 30/40 SW #28','37','','200','210','N','30','40','E','SW','28','','1998','','Skin','AWA',''),
 ('N 200/210 E 30/40 SW #28','37','','200','210','N','30','40','E','SW','28','','1998','','8 teeth; adult','AWA',''),
 ('N 200/210 E 30/40 SW #44','37','','200','210','N','30','40','E','SW','44','','1998','','Internal tissue','AWA',''),
 ('N 200/210 E 30/40 SW #44','37','','200','210','N','30','40','E','SW','44','','1998','','Skin','AWA',''),
 ('N 200/210 E 30/40 SW #44','37','','200','210','N','30','40','E','SW','44','','1998','','Ribs and teeth; child','AWA',''),
 ('N 200/210 E 30/40 SW #48','37','','200','210','N','30','40','E','SW','48','','1998','','Bone, skin, and teeth; adult','AWA',''),
 ('N 200/210 E 30/40 SW #48','37','','200','210','N','30','40','E','SW','48','','1998','','Tissue from pelvic area','AWA',''),
 ('N 200/210 E 30/40 SW #5','37','','200','210','N','30','40','E','SW','5','','1998','','"Thoracic along vertebrae"; 2 metal rings','AWA',''),
 ('N 200/210 E 30/40 SW #5','37','','200','210','N','30','40','E','SW','5','','1998','','Broken teeth; UKN','AWA',''),
 ('N 200/210 E 30/40 SW #5','37','','200','210','N','30','40','E','SW','5','','1998','','Skin','AWA',''),
 ('N 160/170 E 10/20 SE #4 - 1','37','','160','170','N','10','20','E','SE','4 - 1','','','','Ribs; infant','AWA',''),
 (' /  /  #','37','','','','','','','','','','','36647','','Powdered tooth; "NCNA 2 gm"','AWA',''),
 ('N 200/210 E 30/40 SW #43','37','','200','210','N','30','40','E','SW','43','','1998','','Lung','AWA',''),
 ('N 200/210 E 30/40 SW #43','37','','200','210','N','30','40','E','SW','43','','1998','','4 teeth; adult','AWA',''),
 ('N 200/210 E 30/40 SW #43','37','','200','210','N','30','40','E','SW','43','','1998','','Skin','AWA',''),
 ('N 200/210 E 30/40 SW #43','37','','200','210','N','30','40','E','SW','43','','1998','','Scat.','AWA',''),
 ('N 200/210 E 30/40 SW #46','37','','200','210','N','30','40','E','SW','46','','1998','','Skin, teeth, and bone; adult','AWA',''),
 ('N 200/210 E 30/40 SW #46','37','','200','210','N','30','40','E','SW','46','','1998','','Long bone','AWA',''),
 ('N 200/210 E 30/40 SW #24','37','','200','210','N','30','40','E','SW','24','','1998','Yes','Long bone and muscle','AWA',''),
 ('N 200/210 E 30/40 SW #49','37','','200','210','N','30','40','E','SW','49','','1998','','Lung','AWA',''),
 ('N 200/210 E 30/40 SW #49','37','','200','210','N','30','40','E','SW','49','','1998','','Rib/skin','AWA',''),
 ('N 200/210 E 30/40 SW #49','37','','200','210','N','30','40','E','SW','49','','1998','','Teeth and skin; adult','AWA',''),
 ('N 200/210 E 30/40 SW #50','37','','200','210','N','30','40','E','SW','50','','1998','Yes','Skin, bones, teeth; adult','AWA',''),
 ('N 200/210 E 30/40 SW #53','38','','200','210','N','30','40','E','SW','53','','1998','','Teeth, brain, skin, bone; adult','AWA',''),
 ('N 200/210 E 30/40 SW #52','38','','200','210','N','30','40','E','SW','52','','1998',' ','"Not tooth or bone"; tissue','AWA',''),
 ('N 200/210 E 30/40 SW #52','38','','200','210','N','30','40','E','SW','52','','1998','','Tissue','AWA',''),
 ('N 200/210 E 30/40 SW #52','38','','200','210','N','30','40','E','SW','52','','1998','','Bone','AWA',''),
 ('N 200/210 E 30/40 SW #56','38','','200','210','N','30','40','E','SW','56','','1998','Yes','Skin, bones; UKN','AWA',''),
 ('N 200/210 E 20/30 SW #Above #8','LARGE ITEM','4','200','210','N','20','30','E','SW','Above #8','','35833','','Salt wrapped with hand; whole hand','AWA',''),
 (' /  /  #','LARGE ITEM','4','','','','','','','','','','','','"004I" Cat skull','AWA',''),
 ('N  200/210 E  20/30 SE #42','','6','200','210','N ','20','30','E ','SE','42','','1998','','TEETH, TISSUE, AND VERTEBRAE ','GM',''),
 ('N  200/210 E  20/30 SE #3','','6','200','210','N ','20','30','E ','SE','3','','1998','','SKIN AND JEWELLERY','GM',''),
 ('N  200/210 E  30/40 SW #1','','6','200','210','N ','30','40','E ','SW','1','','','','ROCK','GM',''),
 ('N  200/210 E  30/40 SW #37','','6','200','210','N ','30','40','E ','SW','37','','1998','','RIBS AND INTERNAL SAMPLE','GM',''),
 (' /  / SE #10','','6','','','','','','','SE','10','','','','TEETH- POSSIBLY 1998','GM',''),
 (' /  / SW #16','','6','','','','','','','SW','16','','','','TEETH- POSSIBLY 1998','GM',''),
 (' /  / SW #12','','6','','','','','','','SW','12','','','','TEETH- POSSIBLY 1998','GM',''),
 (' /  /  #16','','6','','','','','','','','16','','','','TEETH- POSSIBLY 1998','GM',''),
 (' /  / NW #34','','6','','','','','','','NW','34','','','','TEETH- POSSIBLY 1998','GM',''),
 (' /  /  #3','','6','','','','','','','','3','','','','TEETH- POSSIBLY 1998','GM',''),
 (' /  / SW #22','','6','','','','','','','SW','22','','','','TEETH- POSSIBLY 1998','GM',''),
 (' /  /  #','','6','','','','','','','','','','','','TEETH- POSSIBLY 1998- BLANK SAMPLE','GM',''),
 (' /  /  #','','6','','','','','','','','','','','','TEETH- POSSIBLY 1998- BLANK SAMPLE','GM',''),
 ('N 160/170 E 10/20 SW #51-01','','6','160','170','N','10','20','E','SW','51-01','','','','TEETH','GM',''),
 ('N 30/40 E 50/60  #2','','6','30','40','N','50','60','E','','2','','','','TEETH "ARIA I"','GM',''),
 ('N 30/40 E 50/60  #1','','6','30','40','N','50','60','E','','1','','','','TEETH "ARIA I"','GM',''),
 ('N 30/40 E 50/60  #3','','6','30','40','N','50','60','E','','3','','','','TEETH "ARIA I"','GM',''),
 ('N 200/210 E 20/30 SE #28','','6','200','210','N','20','30','E','SE','28','','1998','','SKIN, HAIR, TEETH, AND RIBS','GM',''),
 ('N 200/210 E 20/30 SE #34','','6','200','210','N','20','30','E','SE','34','','','','RIBS AND BONE. "REVERSAL" ','GM',''),
 ('N 200/210 E 20/30 SE #30','','6','200','210','N','20','30','E','SE','30','','1998','','SKIN, TEETH, AND INTERNAL TISSUE','GM',''),
 ('N 200/210 E 30/40 SW #38','','6','200','210','N','30','40','E','SW','38','','1998','','RIBS, TEETH, AND SKIN OR TISSUE','GM',''),
 ('N 200/210 E 30/40 SW #34','','6','200','210','N','30','40','E','SW','34','','1998','','RIBS AND TISSUE','GM',''),
 ('N 160/170 E 10/20 SW #60','','6','160','170','N','10','20','E','SW','60','','','','TEETH','GM',''),
 ('N 200/210 E 20/30 SE #33','','6','200','210','N','20','30','E','SE','33','','1998','Y','TEETH','GM',''),
 ('N 200/210 E 30/40 SW #57','','6','200','210','N','30','40','E','SW','57','','1998','','LONG BONE','GM',''),
 ('N 200/210 E 30/40 SW #33','','6','200','210','N','30','40','E','SW','33','','1998','','SKIN','GM',''),
 ('N 200/210 E 20/30 SE #35','','6','200','210','N','20','30','E','SE','35','','1998','','LONG BONE, SKIN, AND INTERNAL?','GM',''),
 ('N 200/210 E 30/40 SW #41','','6','200','210','N','30','40','E','SW','41','','1998','','TEETH AND LONG BONE','GM',''),
 ('N 200/210 E 30/40 SW #43','','6','200','210','N','30','40','E','SW','43','','1998','','SKIN AND TEETH','GM',''),
 ('N 200/210 E 30/40 SW #42','','6','200','210','N','30','40','E','SW','42','','1998','','RIBS, SKIN, AND TEETH','GM',''),
 ('N 200/210 E 20/30 SE #16','','6','200','210','N','20','30','E','SE','16','','1998','','LONG BONE AND TEETH','GM',''),
 (' /  / SE #25','','6','','','','','','','SE','25','','','Y','TOOTH','GM',''),
 ('N 160/170 E 10/20 SW #51-06','','7','160','170','N','10','20','E','SW','51-06','','','','TIBUOLA','GM',''),
 ('N 160/170 E 10/20 SW #26-03','','7','160','170','N','10','20','E','SW','26-03','','','','EYES','GM',''),
 ('N 160/170 E 10/20 SW #26-01','','7','160','170','N','10','20','E','SW','26-01','','','','SCALP, HAIR, AND SKIN','GM',''),
 ('N 160/170 E 10/20 SW #26','','7','160','170','N','10','20','E','SW','26','','','','TISSUE FROM MOUTH','GM',''),
 ('N 160/170 E 10/20 SW #26-07','','7','160','170','N','10','20','E','SW','26-07','','','','BRIAN','GM',''),
 ('N 160/170 E 10/20 SW #26-06','','7','160','170','N','10','20','E','SW','26-06','','','','CROSS SECTIONS OF LONG BONE','GM',''),
 ('N 160/170 E 10/20 SW #26-02','','7','160','170','N','10','20','E','SW','26-02','','','','TEETH','GM',''),
 ('N 160/170 E 10/20 SW #26-05','','7','160','170','N','10','20','E','SW','26-05','','','','REED FOR CARBON','GM',''),
 ('N 160/170 E 10/20 SW #26-04','','7','160','170','N','10','20','E','SW','26-04','','','','VERTEBRAE ','GM',''),
 ('N 160/170 E 10/20 SE #43-01','','7','160','170','N','10','20','E','SE','43-01','','','','HAIR','GM',''),
 ('N 160/170 E 10/20 SE #43-02','','7','160','170','N','10','20','E','SE','43-02','','','','BRAIN','GM',''),
 ('N 160/170 E 10/20 SE #43-03','','7','160','170','N','10','20','E','SE','43-03','','','','SKIN AND EYE','GM',''),
 ('N 160/170 E 10/20 SE #35-01','','7','160','170','N','10','20','E','SE','35-01','','','','INSIDE THE CHEST','GM',''),
 ('N 160/170 E 10/20 SE #35-05','','7','160','170','N','10','20','E','SE','35-05','','','Y','TEETH','GM',''),
 ('N 160/170 E 10/20 SE #35-04','','7','160','170','N','10','20','E','SE','35-04','','','','RIBS','GM',''),
 ('N 160/170 E 10/20 SE #35-03','','7','160','170','N','10','20','E','SE','35-03','','','','BONES','GM',''),
 ('N 160/170 E 10/20 SE #35-02','','7','160','170','N','10','20','E','SE','35-02','','','','HAIR','GM',''),
 ('N 160/170 E 10/20 SE #35-06','','7','160','170','N','10','20','E','SE','35-06','','','','RADIUS ??','GM',''),
 ('N 160/170 E 10/20 SE #44-01','','7','160','170','N','10','20','E','SE','44-01','','','','BONES','GM',''),
 ('N 160/170 E 10/20 SE #44-06','','7','160','170','N','10','20','E','SE','44-06','','','','FOOT TISSUE AND BONE','GM',''),
 ('N 160/170 E 10/20 SE #44-05','','7','160','170','N','10','20','E','SE','44-05','','','','RIBS','GM',''),
 ('N 160/170 E 10/20 SE #44-08','','7','160','170','N','10','20','E','SE','44-08','','','','HAIR/BRAIN ??','GM',''),
 ('N 160/170 E 10/20 SE #44-07','','7','160','170','N','10','20','E','SE','44-07','','','','VERTEBRAE ','GM',''),
 ('N 160/170 E 10/20 SE #44-03','','7','160','170','N','10','20','E','SE','44-03','','','','TEETH','GM',''),
 ('N 160/170 E 10/20 SE #44-04','','7','160','170','N','10','20','E','SE','44-04','','','','SKIN/TISSUE','GM',''),
 ('N 160/170 E 10/20 SE #44-02','','7','160','170','N','10','20','E','SE','44-02','','','','TISSUE INSIDE TIBIA','GM',''),
 ('N 160/170 E 10/20 SE #37-05','','7','160','170','N','10','20','E','SE','37-05','','','','RIBS','GM',''),
 (' /  / SW #4','','7','','','','','','','SW','4','','','','TEETH','GM',''),
 (' /  / NW #18','','7','','','','','','','NW','18','','','','TEETH','GM',''),
 (' /  /  #','','7','','','','','','','','','','','','TEETH- NO LABEL','GM',''),
 (' /  /  #','','7','','','','','','','','','','','','TEETH- NO LABEL','GM',''),
 (' /  /  #','','7','','','','','','','','','','1989','','TEETH- AREA 18 # I','GM',''),
 (' /  /  #','','7','','','','','','','','','','','','TEETH- AREA I','GM',''),
 (' /  / SW #20','','7','','','','','','','SW','20','','','','TEETH','GM',''),
 (' /  / SW #10','','7','','','','','','','SW','10','','','','TEETH','GM',''),
 (' /  / SW #22','','7','','','','','','','SW','22','','','','TEETH','GM',''),
 (' /  /  #','','7','','','','','','','','','','','','TEETH- "A 27 ACQUOR FOUND 88"','GM',''),
 (' /  /  #','','7','','','','','','','','','','','','TEETH- "18 W/ A"','GM',''),
 (' /  /  #','','7','','','','','','','','','','','','TEETH- "SQ I # 3"','GM','');
INSERT INTO "C14" ("Burial ID","Rack #","Bag #","Low #","High #","N/S","Low #_1","High #_1","E/W","Area","Burial #","Cluster #","Date","Previously Sampled","Notes","Initials","Additional Notes") VALUES ('N 40/50 E 70/80 NULL #1','5','40','N','70','E','NULL','4','1','5','','TOMB 5   TEETH (5)','15','5','1','Hill B excavation; east side of Hill B; possibly from tomb 5','Hill B burials are likely Ptolomeic contrasted with the open burials which date to Roman.  Are Hill B burials Ptolomeic?  '),
 ('N 30/40 E 50/60 NULL #3','31','30','N','50','E','NULL','1','3','31','','Muscle tissue from face, maybe burial 2?','15','5','2','Hill B excavation; west side of Hill B; possibly from tomb 1','Hill B burials are likely Ptolomeic contrasted with the open burials which date to Roman.  Are Hill B burials Ptolomeic? '),
 ('N 30/40 E 50/60 NULL #3','31','30','N','50','E','NULL','1','3','31','','Muscle tissue from face, maybe burial 2?','15','5','2','Hill B excavation; west side of Hill B; possibly from tomb 1','Hill B burials are likely Ptolomeic contrasted with the open burials which date to Roman.  Are Hill B burials Ptolomeic? '),
 ('N 140/150 E 50/60 NW #25','13','140','N','50','E','NW','','25','13','','Teeth 4','15','4','3','Deepest Head East at 2.3m; Adult','What is the age of the deepest Head East burials?  Is there a relationship between depth of burial and chronological date?'),
 ('N 150/160 E 50/60 SW #20','8','150','N','50','E','SW','','20','4','','Rib fragments 4','15','4','6','Deepest Head East at 2.3m; Adult','What is the age of the deepest Head East burials?  Is there a relationship between depth of burial and chronological date?'),
 ('N 200/210 E 30/40 SW #35','31','200','N','30','E','SW','','35','31','','Teeth 2','15','1','11','Deepest Head East at 1.92m; Adult','What is the age of the deepest Head East burials?'),
 ('N 150/160 W 0/10 NE #37','3','150','N','0','W','NE','','37','3','','TEETH (4)','15','2','14','Deepest Head East at 2.3m; Adult','What is the age of the deepest Head East burials?  Is there a relationship between depth of burial and chronological date?'),
 ('N 160/170 E 10/20 SE #50','15','160','N','10','E','SE','','50','15','4','Teeth 5','15','3','16','Deepest Head East at 2.64m; Adult','What is the age of the deepest Head East burials?  Is there a relationship between depth of burial and chronological date?'),
 (' /10  /10 SE #47','','','','','','SE','','47','','','','','','','','Deepest head east burial'),
 ('N 150/160 E 50/60 SW #11','15','150','N','50','E','SW','','11','15','','Teeth 3','15','4','8','Deepest Head West at 2.87m; adult','What is the age of the deepest Head West burials?  Is there a relationship between depth of burial and chronological date?'),
 ('N 200/210 E 30/40 SW #36','14','200','N','30','E','SW','','36','14','1','Teeth 5','15','1','10','Deepest Head West at 2.34m; Adult','What is the age of the deepest Head West burials?'),
 ('N 150/160 W 0/10 NE #36','3','150','N','0','W','NE','','36','3','','TEETH (9)','15','2','15','Deepest Head West at 2.2 m; Adult','What is the age of the deepest Head West burials?  Is there a relationship between depth of burial and chronological date?'),
 ('N 160/170 E 10/20 SE #53','10','160','N','10','E','SE','','53','10','','Teeth 3','15','3','18','Deepest Head West at 1.95m; adult','What is the age of the deepest Head West burials?  Is there a relationship between depth of burial and chronological date?'),
 (' /10  /10 SE #43','','','','','','SE','','43','','','','','','','','Deepest head west burial'),
 ('N 200/210 E 30/40 SW #50','30','200','N','30','E','SW','','50','30','','Teeth 2, skin, bone fragments','50','1','12','Meter depth (1.0); Head West; adult','Are burials at 1 meter in depth the same age across the cemetery?'),
 ('N 200/210 E 30/40 SW #54','31','200','N','30','E','SW','','54','31','','Teeth 3, rib fragments','15','1','13','Meter depth (1.25); Head East; adult','Are burials at 1 meter in depth the same age across the cemetery?'),
 ('N 150/160 W 0/10 NE #12','3','150','N','0','W','NE','','12','3','','TEETH (10) THREE HAVE JAW BONE FRAGMENT ATTACHED','15','2','17','Meter depth (1.0); Head West; adult','Are burials at 1 meter in depth the same age across the cemetery?'),
 ('N 160/170 E 10/20 SE #16','10','160','N','10','E','SE','','16','10','','Teeth 4 caries','15','3','19','Meter depth (1.0); Head West; adult','Are burials at 1 meter in depth the same age across the cemetery?'),
 ('N 150/160 E 50/60 SW #9','4','150','N','50','E','SW','','9','4','','TEETH (3) JAW BONE FRAGMENT','15','4','7','Meter depth (1.23); Head East; adult','Are burials at 1 meter in depth the same age across the cemetery?'),
 ('N 150/160 E 50/60 SW #7','4','150','N','50','E','SW','','7','4','','TEETH (6)','15','4','9','Meter depth (1.0); Head West; adult','Are burials at 1 meter in depth the same age across the cemetery?'),
 ('N 160/170 E 10/20 SW #2','7','160','N','10','E','SW','','2','7','5','REED','15','3','20','Plant vs. Human Remains; shallowest burial (0.08)','Is there a difference between the chronological dates of remains and burial artifacts?  What is the date of the shallowest burials?'),
 ('N 160/170 E 10/20 SW #2','15','160','N','10','E','SW','','2','15','1','Teeth 3','15','3','21','Plant vs. Human Remains; shallowest burial (0.08)','Is there a difference between the chronological dates of remains and burial artifacts?  What is the date of the shallowest burials?'),
 ('N 150/160 W 0/10 NE #10','','150','N','0','W','NE','','10','','','','','','','','Earliest Christian symbol'),
 ('N 200/210 E 20/30 SE #50','','200','N','20','E','SE','','50','','','','','','','','In the same shaft, when did burial reversal occur?'),
 ('N 200/210 E 20/30 SE #51','','200','N','20','E','SE','','51','','','','','','','','In the same shaft, when did burial reversal occur?');
INSERT INTO "Fag_el_Gamous_All" ("ARC GIS","Burial ID","Year on skull","Month on skull","Date on Skull","Field Book","Field Book Page Number","Initials of Data Entry Expert","Initials of Data Entry Checker","BYU Sample","Body Analysis","Skull at Magazine","Postcrania at Magazine","Sex _(Skull; 2018)","Age _(Skull; _2018)","Rack and Shelf","TO BE CONFIRMED","Skull Trauma","Postcrania Trauma","Cribra Orbitala","Porotic Hyperostosis","Porotic Hyperostosis (LOCATIONS)","Metopic Suture","Button Osteoma","Postcrania Trauma_1","Osteology unknown comment","Temporal Mandibular Joint Osteoarthritis (TMJ OA)","Linear Hypoplasia Enamel","Area (Hill burials)","Tomb","burial area North or South","burialnors","burial area east or west","burialxeorw","Square","Burial Number","burial west to head","burial west to feet","burial south to head","burial south to feet","burial depth","length","year excav","Month Excavated","Date Excavated","burial direction 1","burial preservation","burial wrapping","burial adult child","Gender Code","burialgendermethod","Age Code SINGLE","Burial Direction 2","burialageatdeath","burialagemethod","Hair Color Code","burialhaircolor","burialsampletaken","length(M)","length(CM)","Goods","Cluster","Face Bundle","Osteology Notes","Note 1","Note 2","Note 3","Note 4","Note 5","Note 6","Note 7","Note 8","Note 9","Note 10","Note 11","Note 12","Note 13","Note 14") VALUES ('',' /10  /10 NE #44','2002','','','','','','','','','Y','','','','1A.01','','','','','','','','','','','','','','','','','','','NE','44','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','');
INSERT INTO "main_tbl" ("Burial_ID","burial_location_NS","burial_location_EW","low_pair_NS","high_pair_NS","low_pair_EW","high_pair_EW","burial_subplot","burial_depth","south_to_head","south_to_feet","west_to_head","west_to_feet","burial_situation","length_of_remains","burial_number","sample_number","gender_GE","GE_function_total","gender_body_col","basilar_suture","ventral_arc","subpubic_angle","sciatic_notch","pubic_bone","preaur_sulcus","medial_IP_ramus","dorsal_pitting","foreman_magnum","femur_head","humerus_head","osteophytosis","pubic_symphysis","femur_length","humerus_length","tibia_length","robust","supraorbital_ridges","orbit_edge","parietal_bossing","gonian","nuchal_crest","zygomatic_crest","cranial_suture","maximum_cranial_length","maximum_cranial_breadth","basion_bregma_height","basion_nasion","basion_prosthion_length","bizygomatic_diameter","nasion_prosthion","maximum_nasal_breadth","interorbital_breadth","artifacts_description","hair_color","preservation_index","hair_taken","soft_tissue_taken","bone_taken","tooth_taken","textile_taken","description_of_taken","artifact_found","estimate_age","estimate_living_stature","tooth_attrition","tooth_eruption","pathology_anomalies","epiphyseal_union","year_found","month_found","day_found","head_direction") VALUES ('N 150/160  W 0/10  NE #23','N','W',150,160,0,10,'SE',1.3,5.4,4.5,2.1,4.4,'','',23,65,'Female',836.4952,'Female','',0,0,0,0,0,0,0,'','','','','','','','',0,0,0,0,0,0,0,'',170.9,131.34,120.4,93.66,85.86,118.33,63.43,23.55,21.93,'','Brown','',0,0,0,0,0,'',0,'','','','','','','','','','West'),
 ('N 170/180  E 20/30  SE #1','N','E',170,180,20,30,'SE',0.6,2.37,2.4,3.7,4.28,'Basket case NO SKULL, NO FEMUR, NO HUMEROUS',70,1,'','Undetermined',0.0,'Male','',1,1,1,1,1,1,0,'','','','','IV','','','',0,0,0,0,0,0,0,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','','',0,0,1,0,0,'2 Ribs sampled',0,'','','','','','',2000,'Feb',15,'West'),
 ('N 170/180  E 20/30  SE #10','N','E',170,180,20,30,'SE',0.45,4.29,5.0,3.5,5.0,'Hair: Auburn

Textile: Black, white, red ribbon criss-crossing outer
Profuse red at feet
Black ribbon too fragile to collect
2 hats on back on head next to hair - open weave w/ border

4 reed sticks under body inside wrap from shoulder to feet - for support?',162,10,'','Undetermined',0.0,'Female','',3,3,3,3,3,3,0,'',39.4,38.0,'Heavy','',42.0,28.5,'',0,0,0,0,0,0,0,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','Brown','',0,0,0,1,1,'',0,'',157.84,'V','','','',2000,'Feb',14,'West'),
 ('N 170/180  E 20/30  SE #11','N','E',170,180,20,30,'SE',0.226,1.91,1.83,2.39,4.0,'NO SKULL

Textile: Top layer 50cm wide
0.5cm band without waft on backside     ________
                                                                |    |      |    |
                                                                |    |      |    |
                                                                |    |      |    |
                                                                |__|___|__|
                                                                || || || || || || || |
                                                                || || || || || || || |
3 coarse layers w/ 15cm fringe - cross wrapping ribbon (was descent) on layer immediately next to skin.',182,11,'','Undetermined',0.0,'Male','',1,1,1,1,1,1,0,'',47.5,'','','IV',49.0,'','',0,0,0,0,0,0,0,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','','',0,0,0,0,0,'',0,'',179.21,'','','','',2000,'Feb',15,'West'),
 ('N 170/180  E 20/30  SE #12','N','E',170,180,20,30,'SE',1.73,1.07,1.13,2.09,3.65,'NO SKULL

Textile: Well wrapped: extensive 4-strand red ribbon - linen in uniform bunch at head postion - looked like it was a wad
2 layers then strips crossing: wrap pattern repeated 6 times
one stick on each side 3 cloth layers up from body

(details for head wrap missing)',155,12,'','Undetermined',0.0,'Male','',1,1,1,1,1,1,0,'',46.5,44.0,'','',46.0,33.3,'',0,0,0,0,0,0,0,'Closed',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','','II',0,0,0,0,0,'',0,'',172.25,'','','','',2000,'Feb',14,'West'),
 ('N 170/180  E 20/30  SE #13','N','E',170,180,20,30,'SE',0.55,4.47,5.3,4.4,5.95,'Hair: Brown / Red

Textile: 34cm x 5cm PURPLE ribbon - 2 bands of PURPLE
5 sticks under body - each hold together w. coarse cord.',176,13,22,'Female',883.0004,'Male','Closed',0,1,1,1,1,1,0,'',47.9,45.0,'Moderate','IV',47.0,34.2,39.4,1,0,1,0,1,1,0,'',179.6,139.9,123.85,96.84,94.71,127.32,66.16,24.1,23.98,'','Red','',0,1,1,1,1,'Lung',0,'',228.67,'III','','','',2000,'Feb',14,'West'),
 ('N 170/180  E 20/30  SE #14','N','E',170,180,20,30,'SE',1.6,1.0,1.1,2.1,3.6,'',160,14,'','Undetermined',0.0,'Male','Closed',1,1,1,1,0,1,0,'',44.2,43.5,'','IV','','','',1,1,0,0,1,1,0,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','Brown','',0,0,0,0,0,'',0,'','','','','','',2000,'Feb',15,'West'),
 ('N 170/180  E 20/30  SE #15','N','E',170,180,20,30,'SE',1.6,0.75,0.96,2.15,3.75,'ROMAN PERIOD

Red & white ribbon

Textile: 7 layers + out wrap - twigs & palm sticks associated w/ burial wrapped w/ red & white ribbon
outer wrap coarse linen - 7 finer woven lineninside - Face bundle = many layers of folded linen wrapped w/ red & white ribbon - linen strap tied w/ thread over nose

Teeth: little chip in #9 - beautifully developed teeth, cavities in 2 back 3rd molars, front right tooth chipped slightly

Comments: Linen folded over feet toward front of body / palm sticks are inside wrappings - 7 layers inside tied w/ 2-3cm wide linen bands - a lot of palm rods inside coarse wrappings - outside - above fine wrapping inside.',165,15,'','Undetermined',0.0,'Male','Closed',1,1,1,1,0,1,1,'',48.0,50.0,'Slight','','','','',1,1,1,1,1,1,1,'Closed',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'Wood','Brown','II',0,0,1,1,1,'Rib
1st molar - 2nd upper molar
Red & white ribbon / face pack',1,25.0,'','II','3rd molar','1 lower incisor crowded & puched inward

Cavities in back 3rd molar - lower jaw','Yes',2000,'Feb',21,'West'),
 ('N 170/180  E 20/30  SE #16','N','E',170,180,20,30,'SE',0.75,5.0,4.85,3.5,5.1,'ROMAN PERIOD

POORLY PRESERVED/WRAPPED

Flat chin indicates a MALE

Textile: coarse outer wrap - multiple inner wrapping - 14+ coarse outer wraps

Face bundle - not well preserved - many layers in face bundle

Beautiful long ft. / Right foot place over left foot in burial.',172,16,'','Undetermined',0.0,'Male','Closed',0,0,0,0,0,0,0,'',48.5,55.0,'','','','','',3,0,1,0,1,1,3,'Closed',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','Brown','IV',0,0,0,1,0,'Taking lower right molar & lower left molar',0,35.0,'','','','Upper molars lost - periodontal disease#3 / bad absess on lower right mandible

Cavities in molars - all of them.','',2000,'Feb',21,'West'),
 ('N 170/180  E 20/30  SE #17','N','E',170,180,20,30,'SE',0.83,4.8,4.75,3.55,4.2,'BURIED W/ 2 ADULTS (SE#17,18)

Textile: linen w/ PURPLE stripe - PURPLE stripe down length - front - PURPLE stripe goes over the head.',84,17,'','Undetermined',0.0,'Undetermined','',0,0,0,0,0,0,0,'','','','','','','','',0,0,0,0,0,0,0,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','Brown','III',0,0,1,1,0,'',0,7.0,'','','1st molar','','',2000,'Feb',16,'West'),
 ('N 170/180  E 20/30  SE #18','N','E',170,180,20,30,'SE',0.9,4.75,4.7,3.4,5.0,'ROMAN PERIOD

Hair: Red / Brown

Textile: Face bundle - nice
BADLY PRESERVED

Hemp rope - face bundle - beautiful hair',176,18,'','Undetermined',0.0,'Male','Closed',0,0,0,0,0,0,0,'','',50.0,'','','','','',3,1,1,1,1,1,1,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','Red','IV',0,0,0,1,0,'Taking 2nd lower molar & 1 upper 2nd molar',0,30.0,'','','','','',2000,'Feb',21,'West'),
 ('N 170/180  E 20/30  SE #19','N','E',170,180,20,30,'SE',0.51,2.05,2.05,1.17,1.17,'UNDER PLUNDERED BURIAL - NO HONORS
ONLY KNEES TO FEET PRESERVED

LINEN WRAPPED - Red & White Ribbon

RIGHT FOOT OVER LEFT FOOT.',56,19,'','Undetermined',0.0,'Undetermined','',0,0,0,0,0,0,0,'','','','','','','','',0,0,0,0,0,0,0,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','','',0,0,0,0,0,'',0,'','','','','','',2000,'Feb',21,''),
 ('N 170/180  E 20/30  SE #2','N','E',170,180,20,30,'SE',0.47,0.66,0.0,2.5,5.0,'MISSING PELVIS, MISSING SKULL

MISC. BONES','',2,'','Undetermined',0.0,'Undetermined','',0,0,0,0,0,0,0,'',45.3,35.7,'','',45.0,29.0,35.0,0,0,0,0,0,0,0,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','','',0,0,0,0,0,'',0,'',165.25,'','','','',2000,'Feb',21,''),
 ('N 170/180  E 20/30  SE #20','N','E',170,180,20,30,'SE',0.7,2.15,2.4,-0.7,1.3,'Palm branches w/ burial - multiple layers - POORLY PRESERVED - TALL PERSON - larvae in cloth & hair - wide pelvic notch - 

Textile: rope around linen - lower body (slide) - salt crystals underneath linen

A lot of dorsal pitting - deep.',198,20,'','Undetermined',0.0,'Undetermined','',0,3,3,3,0,0,3,'','','','','','','','',0,0,0,0,0,0,0,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','Brown','IV',0,0,0,0,0,'',0,'','','','','','',2000,'Feb',21,'West'),
 ('N 170/180  E 20/30  SE #21','N','E',170,180,20,30,'SE',2.3,1.3,0.4,4.0,5.29,'SKELETON ONLY - NO TEXTILES - BURIED NAKED

not tall.',159,21,39,'Female',889.0782,'Female','',0,3,3,3,0,0,0,'',46.0,44.0,'','','','','',3,3,3,3,3,3,3,'',180.43,143.75,135.15,97.6,91.43,127.17,66.92,24.3,24.41,'','','',0,0,0,0,0,'',0,40.0,'','','','No upper teeth - pre (anti) mortom - periodontal disease (advanced).','',2000,'Feb',21,'West'),
 ('N 170/180  E 20/30  SE #22','N','E',170,180,20,30,'SE',1.75,3.05,2.8,0.8,2.5,'POORLY PRESERVED / FEW TEXTILES

Textile: linen - little ribbon
some linen scraps',160,22,23,'Male',917.6714,'Male','Closed',0,1,1,1,0,0,0,'',46.5,42.0,'Slight','',44.5,32.6,'',1,1,1,1,1,1,1,'Closed',188.57,138.21,134.35,109.49,95.42,124.86,75.1,24.37,26.01,'','Brown','IV',0,0,0,1,0,'',0,40.0,222.87,'','3rd molar','','',2000,'Feb',21,'West'),
 ('N 170/180  E 20/30  SE #23','N','E',170,180,20,30,'SE',1.95,3.35,3.35,1.5,0.85,'CHILD

Textile: Beautiful PURPLE strip - PURPLE stripped linen bag w/ draw string - baby inside',45,23,'','Undetermined',0.0,'Undetermined','',0,0,0,0,0,0,0,'','','','','','','','',0,0,0,0,0,0,0,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','Red','',0,0,1,0,0,'3 Ribs',0,2.5,'','','2 lower front','','',2000,'Feb',21,'West'),
 ('N 170/180  E 20/30  SE #24','N','E',170,180,20,30,'SE',1.9,2.85,2.6,0.75,2.35,'Preservation Index: bewtween III & IV

Textile: (slide & sample) - long straight fringe linen - palm leaves / fronds - palm branches under outer wrap - coarse outer wrap w/ red & white ribbons - 7 wraps total inclupin (?)

Long straight black hair
Osteoporosis
Beautiful teeth',165,24,31,'Male',934.8716,'Male','Closed',0,0,1,1,0,0,1,'',49.0,50.0,'','','','','',0,1,0,1,1,1,1,'',189.03,135.47,136.16,104.23,94.07,133.22,69.11,23.18,26.21,'','Black','IV',0,0,0,1,0,'Upper & lower molars - have samples',0,'','','','All molars','','',2000,'Feb',21,'West'),
 ('N 170/180  E 20/30  SE #25','N','E',170,180,20,30,'SE',1.35,3.1,3.25,3.1,5.0,'PURPLE wool in linen wrap / wool disintegrating (slide taken) - LEAVING IN MAGZIN FOR FUTURE ANALYSIS.',180,25,'','Undetermined',0.0,'Undetermined','',0,0,0,0,0,0,0,'','','','','','','','',0,0,0,0,0,0,0,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','','',0,0,0,0,0,'',0,'','','','','','',2000,'Feb',21,'West'),
 ('N 170/180  E 20/30  SE #26','N','E',170,180,20,30,'SE',2.4,2.8,2.9,2.1,1.0,'YOUNG PERSON

Textile: linen wrap

femur head no developed - too young
basilar suture not closed all the way

Teeth: Hardly worn teeth - 2 molars on each side - bottom & top in - 3rd molar not in yet - ridges on bottom teeth indicating youth.',110,26,'','Undetermined',0.0,'Female','',0,0,3,0,0,0,0,'','','','','','','','',3,3,3,3,3,0,3,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','Brown','II',0,0,0,1,0,'',0,14.0,'','','','','',2000,'Feb',21,'East'),
 ('N 170/180  E 20/30  SE #27','N','E',170,180,20,30,'SE',1.25,4.2,4.25,0.9,1.5,'POOR PRESERVED - linen wrap, linen strips banding

Hair: blond / red

Textile: 7 layers of linen on head.',65,27,'','Undetermined',0.0,'Undetermined','',0,0,0,0,0,0,0,'','','','','','','','',0,0,0,0,0,0,0,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','Blonde','IV',0,0,1,1,0,'2 teeth (molars)
Ribs',0,6.0,'','','1st molar','','',2000,'Feb',22,'West'),
 ('N 170/180  E 20/30  SE #28','N','E',170,180,20,30,'SE',1.3,2.4,2.45,0.4,1.05,'YOUNG - Badly preserved

Crystalline formation',65,28,'','Undetermined',0.0,'Undetermined','Open',0,0,0,0,0,0,0,'','','','','','','','',0,0,0,0,0,0,0,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','Blonde','V',0,0,0,0,0,'crystal from body',0,3.0,'','','None','','',2000,'Feb',22,'West'),
 ('N 170/180  E 20/30  SE #29','N','E',170,180,20,30,'SE',1.35,2.3,2.35,-0.35,0.45,'CHILD

Textile: coarse linen - 3 layers - linen bands.',85,29,'','Undetermined',0.0,'Undetermined','Open',0,0,0,0,0,0,0,'','','','','','','','',0,0,0,0,0,0,0,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','','IV',0,0,0,0,0,'',0,12.0,'','','2nd molar','','',2000,'Feb',22,'West'),
 ('N 170/180  E 20/30  SE #3','N','E',170,180,20,30,'SE',0.55,3.65,3.69,2.53,3.94,'Hair: Blond / Brown

Arms @ side - left foot crosses right foot

Textile: 4-strand red ribbon outer wrap - some crossing - 10 layers of outer wrapping - exterior layer = finer weave than 9 interior layers
2cm wide coarse strips / wrapping under outside fine layer

Bound w/ reed stick interior along legs up to mid-rib cage.',156,3,'','Undetermined',0.0,'Female','',0,0,3,0,0,0,0,'',44.2,39.9,'Heavy','',41.5,29.3,36.0,3,1,3,0,3,1,0,'Closed',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','Blonde','',0,1,1,1,0,'Lung
Rib',0,'',156.605,'V','','','',2000,'Feb',12,'West'),
 ('N 170/180  E 20/30  SE #30','N','E',170,180,20,30,'SE',1.3,3.45,3.25,3.15,4.8,'A LOT OF SKIN / BITOMINOUS MATERIAL (BLACK)

Bugs in pelvis

RIGHT FOOT OVER LEFT - Right upper orbit broken near nose

Textile: Face bundle - 

Hair: long brown hair',170,30,106,'Female',863.8136,'Female','Closed',0,3,3,3,0,0,0,'',46.5,48.0,'','','','','',3,3,3,3,3,3,3,'',174.92,136.82,127.43,92.41,88.61,121.52,73.03,26.18,22.52,'','Brown','III',0,0,0,0,0,'',0,23.0,'','','2nd molar','','',2000,'Feb',22,'West'),
 ('N 170/180  E 20/30  SE #31','N','E',170,180,20,30,'SE',1.45,2.9,2.65,3.25,4.45,'BADLY DETERIORATED CHILD

Textile: No ribbons or banding - shrouded in coarse linen - finer underneath - then under that coarse w/ linen binding - then 15 layers of linen wrapping underneath.',125,31,'','Undetermined',0.0,'Undetermined','',0,0,0,0,0,0,0,'','','','','','','','',3,3,3,3,3,3,3,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','Brown','III',0,0,1,1,0,'',0,'','','','2nd molar','','No',2000,'Feb',23,'West'),
 ('N 170/180  E 20/30  SE #32','N','E',170,180,20,30,'SE',1.25,4.7,4.8,0.3,1.8,'Textile: Linen - red & white ribbon

Face bundle - in bad condition.',160,32,80,'Male',896.1484,'Male','Closed',1,1,1,1,0,0,0,'',48.5,42.4,'','','','','',3,1,1,1,1,1,1,'',174.77,137.25,135.95,100.66,90.06,127.66,70.32,23.23,20.14,'','Red','IV',0,0,1,1,0,'',0,38.0,'','IV','3rd molar','Tooth attrition: between III & IV

3rd molar in then lost.','',2000,'Feb',23,'West'),
 ('N 170/180  E 20/30  SE #33','N','E',170,180,20,30,'SE',1.35,4.7,4.7,0.2,1.8,'Preservation Index: between III & V

Palm branches inside wrapping

Textile: red & white ribbon
Face bundle - coarse - fine - coarse

All layers next to body carbonized - photo taken',174,33,81,'Male',932.9494,'Male','Closed',1,1,1,1,0,0,1,'',52.0,46.5,'','','','','',3,1,1,1,3,3,3,'',188.68,145.5,137.52,112.38,98.16,128.97,72.98,22.02,24.2,'','Red','V',0,0,1,0,1,'red & black threads on linen wrapped w/ red & white ribbon - palm branches inside wrapof feet.',0,'','','III','3rd molar','Upper & lower molars missing - 3rd molar had erupted.','',2000,'Feb',23,'West'),
 ('N 170/180  E 20/30  SE #34','N','E',170,180,20,30,'SE',0.75,0.4,0.5,1.25,1.95,'POORLY PRESERVED - Dates listed w/ burial

Hair: red / brown

Hands: Fingers, fingernails well preserved

Textile: Red & white ribbon & cord - heavy coarse weave - wrappings = rope wrap underneath & on top.',80,34,'','Undetermined',0.0,'Undetermined','',0,0,0,0,0,0,0,'','','','','','','','',0,0,0,0,0,0,0,'Open',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'Pottery - wine drinking cups - Roman dishes (ridges & shapes) - Glass beads found w/ burial around neck.','Red','IV',0,0,1,1,0,'',1,7.0,'','','1st molar','','',2000,'Feb',23,'West'),
 ('N 170/180  E 20/30  SE #35','N','E',170,180,20,30,'SE',1.45,3.35,3.3,3.2,5.0,'Hair: red / brown

Textile: heavy linen wrappings w/ red & white ribbon - 2 layers of linen fine then red thread - LOTS OF BUGS / larvae (flourescent) in head / hair

PHOTO TAKEN - 
LARGE KNOT -',185,35,90,'Male',941.2778,'Male','',0,1,1,0,0,0,3,'',49.5,43.6,'','','','','',0,0,1,0,1,0,0,'',186.98,137.89,131.82,99.46,94.16,127.82,93.97,23.13,21.36,'Wood piece found on shoulder','Red','III',0,0,1,1,1,'Wool Fabric in welf of linen - nice samples',1,'','','II','3rd molar','1st molar missing below','',2000,'Feb',23,'West'),
 ('N 170/180  E 20/30  SE #36','N','E',170,180,20,30,'SE',0.95,1.1,0.0,0.6,5.0,'IN PIECES - ONLY CLOTH

NEW BORN to 1 YEAR','',36,'','Undetermined',0.0,'Undetermined','',0,0,0,0,0,0,0,'','','','','','','','',0,0,0,0,0,0,0,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','Red','',0,0,1,0,1,'Ribs
Cloth taken',0,1.0,'','','','','',2000,'Feb',23,''),
 ('N 170/180  E 20/30  SE #37','N','E',170,180,20,30,'SE',1.68,4.15,4.17,0.25,0.8,'SMALL CHILD - POORLY PRESERVED',70,37,'','Undetermined',0.0,'Undetermined','Open',0,0,0,0,0,0,0,'','','','','','','','',0,0,0,0,0,0,0,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','Red','V',0,0,0,0,0,'',0,3.0,'','','','','',2000,'Feb',23,'West'),
 ('N 170/180  E 20/30  SE #38','N','E',170,180,20,30,'SE',1.75,4.2,4.2,0.9,1.65,'CHILD

Textile: Linen plain - coarse linen next to skin - finer on exterior on head - coarser exterior on legs - finer exterior linen begins at thighs & going over body - fiber rope wrap - finen linen only in on front - wrapping on interior = coarse / fine / coarse - rope holding 3 layers linen.',80,38,'','Undetermined',0.0,'Undetermined','',0,0,0,0,0,0,0,'','','','','','','','',0,0,0,0,0,0,0,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','Blonde','III',0,0,0,0,0,'',0,11.0,'','','2nd molars','','',2000,'Feb',23,'West'),
 ('N 170/180  E 20/30  SE #39','N','E',170,180,20,30,'SE',1.95,4.25,4.25,0.25,1.75,'Head west

Textile: Linen nubby - rough exterior linen becoming finer inside - under layers linen also wrapped & tied linen strips - under outer wrap 3 BIG layers w/ fringe - sample taken - bottom layer was rope fringe - 3 layers w/ rope fringe then another w/ loose fringe - Face bundle - many layers of linen - 7 layers linen - linen strips tied in knot in back - looped through self for half-hitch knots.

3 PHOTOS TAKEN',170,39,'','Undetermined',0.0,'Undetermined','',0,0,1,1,0,0,3,'',47.1,42.1,'None','','','','',0,0,0,0,0,0,0,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','','III',0,0,0,0,1,'Fabric',0,'','','II','3rd molar','No cavities','',2000,'Feb',22,'West'),
 ('N 170/180  E 20/30  SE #4','N','E',170,180,20,30,'SE',0.46,3.55,3.54,3.33,4.06,'INFANT

Hair: auburn

Textile: coarse weave / red & white ribbon

Crosote hay on chest',85,4,'','Undetermined',0.0,'Undetermined','',0,0,0,0,0,0,0,'',16.6,'','','',16.0,'','',0,0,0,0,0,0,0,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'Brass bracelet
Bead bracelet','Brown','',0,1,0,0,0,'Chest area',1,5.0,93.62,'','','','',2000,'Feb',12,'West'),
 ('N 170/180  E 20/30  SE #40','N','E',170,180,20,30,'SE',2.57,2.0,1.9,1.1,-0.0999999999999996,'REVERSAL',140,40,'','Undetermined',0.0,'Female','',0,0,0,0,0,0,0,'','','','','','','','',3,3,3,3,3,3,3,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','Brown','',0,0,0,1,0,'',0,15.0,'','II','2nd molar','','',2000,'Feb',23,'East'),
 ('N 170/180  E 20/30  SE #41','N','E',170,180,20,30,'SE',2.6,2.2,2.1,1.07,-0.15,'REVERSAL - HEAD EAST

No textile',145,41,87,'Female',842.7956,'Female','',3,3,3,3,0,0,3,'',40.0,38.3,'','II','','','',3,3,3,3,0,3,3,'',165.23,142.44,121.77,92.51,92.27,119.74,73.55,23.39,20.85,'','Brown','V',0,0,1,1,0,'',0,'','','','3rd molar','','',2000,'Feb',23,'East'),
 ('N 170/180  E 20/30  SE #42','N','E',170,180,20,30,'SE',2.1,2.7,2.8,3.4,4.8,'Head West',140,42,'','Undetermined',0.0,'Male','Closed',0,1,1,1,0,0,0,'',49.6,43.6,'None','','','','',3,1,1,1,1,1,1,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','Brown','V',0,0,0,1,0,'Tooth for DNA',0,'','','III','3rd molar','','Yes',2000,'Feb',23,'West'),
 ('N 170/180  E 20/30  SE #43','N','E',170,180,20,30,'SE',2.2,4.4,4.5,-0.0999999999999996,1.65,'Head West

Hair: Brown / Red
Beard: Red beard

PHOTO TAKEN',165,43,77,'Male',925.6816,'Male','Closed',1,1,1,1,0,0,1,'',54.0,49.2,'','','','','',1,1,1,0,1,1,1,'',186.52,146.8,133.94,109.15,96.41,131.73,65.1,27.7,22.13,'','Brown','V',0,0,1,0,0,'',0,'','','V','','All teeth gone except #9 - #9 has a cavity','',2000,'Feb',23,'West'),
 ('N 170/180  E 20/30  SE #44','N','E',170,180,20,30,'SE',2.2,4.2,4.1,2.45,1.65,'REVERSAL - HEAD EAST (PRECHRISTIAN)

VERY POORLY PRESERVED SKELETON

Small amount of textile',80,44,'','Undetermined',0.0,'Undetermined','',0,0,0,0,0,0,0,'','','','','','','','',0,0,0,0,0,0,0,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','','V',0,0,1,1,1,'Textile: green w/ dark strip',0,12.0,'','','2nd molar','','',2000,'Feb',23,'East'),
 ('N 170/180  E 20/30  SE #45','N','E',170,180,20,30,'SE',2.45,3.1,1.5,1.4,1.6,'REVERSAL - HEAD EAST

SKELETON ONLY

Hair: brown / red

Textile: linen scraps - medium weave',180,45,'','Undetermined',0.0,'Male','Closed',0,0,3,0,0,0,1,'',48.4,43.0,'','','','','',3,1,1,1,1,1,1,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','Brown','V',0,0,1,1,0,'Ribs
Upper molar',0,25.0,'','II','3rd molar','Upper molars lost during life','',2000,'Feb',23,'East'),
 ('N 170/180  E 20/30  SE #46','N','E',170,180,20,30,'SE',2.0,4.2,4.3,3.25,5.0,'POORLY PRESERVED - SEEMS TO BE WEALTH B/C 21 LAYERS OF COARSE LINEN

Head West

Textile: Large face bundle - many layers - large rope twist - 7 layers - 25 folded layers over face',178,46,86,'Male',895.9896,'Male','Closed',0,3,1,1,0,0,1,'',46.5,43.6,'','','','','',1,1,0,1,1,1,3,'',177.88,145.38,136.95,102.01,98.4,128.9,68.63,23.74,22.19,'','Brown','IV',0,0,0,1,0,'',0,30.0,'','','3rd molar','','',2000,'Feb',23,'West'),
 ('N 170/180  E 20/30  SE #47','N','E',170,180,20,30,'SE',2.55,2.1,0.5,1.05,0.9,'REVERSAL - HEAD EAST

POORLY PRESERVED',180,47,'','Undetermined',0.0,'Female','Closed',3,3,3,3,0,0,0,'',41.0,35.7,'','','','','',3,0,1,1,1,3,1,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','Brown','V',0,0,1,1,0,'',0,'','','II','3rd molar','Upper teeth missing','',2000,'Feb',23,'East'),
 ('N 170/180  E 20/30  SE #5','N','E',170,180,20,30,'SE',0.74,3.2,3.57,1.81,3.31,'NO SKULL

Hair: Auburn
Pubic hair:

Heavy resin in abdomen

Textile: 4 layers coarse cloth - ? Coat on ventral',147,5,'','Undetermined',0.0,'Male','',0,1,1,0,1,1,0,'',47.0,45.4,'','',46.0,33.0,38.0,0,0,0,0,0,0,0,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','Brown','',0,0,0,0,0,'',0,'',172.25,'','','','',2000,'Feb',12,'West'),
 ('N 170/180  E 20/30  SE #6','N','E',170,180,20,30,'SE',0.61,2.05,2.1,2.61,4.1,'Hair: auburn

Textile: coarse outer, multiple linen interior

4 layers coarse
7 layers line',160,6,'','Undetermined',0.0,'Female','',0,3,3,3,3,0,0,'',40.1,30.92,'Slight','II',39.0,28.0,38.5,3,3,3,0,3,0,3,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','Brown','',0,0,0,0,0,'',0,20.0,150.43,'III','','','',2000,'Feb',12,'West'),
 ('N 170/180  E 20/30  SE #7','N','E',170,180,20,30,'SE',0.23,2.04,0.0,0.15,5.0,'DISTURBED - Plundered / Distrubed

CHILD / INFANT skull in magani red hair

2 humerous of different sizes
2 mandibles - exterior peaudo?

1 left pelvic girdle
2 femurs

Textile: Red, PURPLE fine weave pattern - coarse weave w/ 6 fringe - yellow, red, blue.','',7,'','Undetermined',0.0,'Male','',1,1,1,1,1,1,0,'',42.5,'','','',44.0,'','',0,0,0,0,0,0,0,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','Red','',0,0,0,0,0,'',0,'',167.61,'','','','',2000,'Feb',13,''),
 ('N 170/180  E 20/30  SE #8','N','E',170,180,20,30,'SE',0.7,3.81,0.0,4.72,4.31,'INFANT 

Textile: coarse yellow w/ blue thread outer layer - multi patched inner fine linen

No evidence of tooth eruption.',40,8,'','Undetermined',0.0,'Undetermined','Open',0,0,0,0,0,0,0,'','','','','',8.2,'','',0,0,0,0,0,0,0,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','','',0,0,1,0,1,'Rib sampled',0,'',74.354,'','None','','',2000,'Feb',13,'East'),
 ('N 170/180  E 20/30  SE #9','N','E',170,180,20,30,'SE',0.27,5.0,5.0,3.35,5.0,'chest area affected by salt deposits from rock

Textile: 9 layers of wrap - each uniform

some wraps between legs - reed sticks on both sides (3 left, 2 right) - 3-strand red ribbon over outer body w/ crossing pattern
Head wrap - multiple layers w/ strips - bunched at maxilla and tucked under      
                                                             
3 layers of wrapping next to body / sticks / one layer coarse wrapping.',165,9,26,'Female',859.1662,'Male','',1,1,1,0,1,1,0,'',40.0,37.7,'','',40.0,'',34.4,1,1,1,1,1,1,0,'',170.96,133.35,130.51,88.9,86.2,125.65,64.54,24.15,25.92,'','Brown','',0,0,1,1,1,'',0,'',212.43,'','','','',2000,'Feb',13,'West'),
 ('N 180/190  E 40/50  NW #23','N','E',180,190,40,50,'NW',0.0,0.0,0.0,5.0,5.0,'On edge of area - sole burial 

Textile: outer= coarse linen - jute twine - double strand rope - twine wrap
red threads in outer linen at feet .75cm wide running length of body
fine linen w/ wool thread woven some hem evident','',23,'','Undetermined',0.0,'Undetermined','',0,0,0,0,0,0,0,'','','','','','','','',0,0,0,0,0,0,0,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'Necklace - woven of 13 red threads - twisted w/ 2 bone beads at each end to act as the end holders - like on shoelaces.','Brown','IV',0,0,1,0,1,'Bone: ribs',1,2.0,'','','2 front teeth','','',2003,'Feb',3,''),
 ('N 180/190  E 40/50  NW #24','N','E',180,190,40,50,'NW',2.0,0.0,0.0,5.0,5.0,'In a shaft - bottom burial

Textile: 2 types of textile - outer = coarse & fragile linen
inner = fine

Age: between 12-13 yrs.

Stature: femur & humerus measured w/o heads','',24,'','Undetermined',0.0,'Female','',0,0,3,0,0,0,0,'','','','','',20.5,17.1,'',3,3,0,0,3,0,0,'Open',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','Brown','V',0,0,0,0,0,'',0,12.0,104.735,'','2nd molar','','No',2003,'Feb',3,''),
 ('N 180/190  E 40/50  NW #25','N','E',180,190,40,50,'NW',0.0,0.0,0.0,5.0,5.0,'(RPE 5/12/03)

NUMBER NOT USED','',25,'','Undetermined',0.0,'','',0,0,0,0,0,0,0,'','','','','','','','',0,0,0,0,0,0,0,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','','',0,0,0,0,0,'',0,'','','','','','',2003,'Feb',3,''),
 ('N 180/190  E 40/50  NW #26','N','E',180,190,40,50,'NW',0.0,0.0,0.0,5.0,5.0,'RESERVED FOR ANALYSIS IN FUTURE SEASONS @ REQUEST OF Fayum Antiquetic - Ali Bazeedi (RPE 5/12/03)','',26,'','Undetermined',0.0,'','',0,0,0,0,0,0,0,'','','','','','','','',0,0,0,0,0,0,0,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','','',0,0,0,0,0,'',0,'','','','','','',2003,'Feb',4,''),
 ('N 180/190  E 40/50  NW #27','N','E',180,190,40,50,'NW',0.0,0.0,0.0,5.0,5.0,'Skull & feet ok - middle of body not well preserved

Textile: square ribbon wrapon head - criss-cross on body
coarse exterior 
fine interior w/ red & green band in linen fragment
extra linen turned up over feet

Face bundle - with folded linen & twisted linen on top
2 kinds of ribbon = 1) regular linen w/ wool threads (red) 2) torn & folded for outer wrapping coarse','',27,'','Undetermined',0.0,'Male','',0,0,1,0,0,1,0,'',48.0,43.7,'','',45.7,31.5,'',0,1,1,1,1,1,1,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','Brown','V',0,0,0,0,0,'',0,'',171.554,'III','3rd molar','extensive periodontal disease - missing teeth & reabsorbtion of bone','',2003,'Feb',4,''),
 ('N 180/190  E 40/50  NW #28','N','E',180,190,40,50,'NW',0.0,0.0,0.0,5.0,5.0,'In shaft w/ rocks on southside

Hair: beard & mustache = a lot

Textile: coarse linen has 3-cord weave as in past

Face bundle - with folded linen & twisted linen on top

from outer to in:
------- wrap
==== coarse & wrap 
==== fine
fine exterior linen = criss-cross wrap of ribbons, some fine, some torn & rough some wrappings & riboons under outer layer
2 layers then 5 fine layers in interior
ends of linen - 3cm of fringe.','',28,'','Undetermined',0.0,'Male','',0,3,3,0,0,0,0,'',49.3,46.1,'','',46.5,32.2,'',0,1,1,1,0,0,0,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','Red','',0,0,0,0,0,'',0,'',173.41,'IV','3rd molar','Molars gone, bone reabsorbed - abscess on right mandible - most teeth badly worn away','',2003,'Feb',4,''),
 ('N 180/190  E 40/50  NW #29','N','E',180,190,40,50,'NW',0.0,0.0,0.0,5.0,5.0,'Deep skeleton - in shaft

Hair: brown, long, curly

Textile: a small amount of fine linen on the head','',29,'','Undetermined',0.0,'Male','',0,0,1,0,0,0,0,'',45.1,40.7,'','',41.5,30.8,'',1,1,1,1,1,0,1,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','Brown','',0,0,0,1,0,'',0,'',161.81,'II','3rd molar','3rd molars have carries - no periodontal disease - cusps still defined','',2003,'Feb',4,''),
 ('N 180/190  E 40/50  NW #30','N','E',180,190,40,50,'NW',0.0,0.0,0.0,5.0,5.0,'CHILD

Top of 3 burial unit

Hair: golden brown, blond, very fine

Textile: 7 layers of cloth on head - 2 inner most layers = fine
outside wrap - medium coarse - double twist jute twine over linen, knotted @ chest

NO RED RIBBON on this burial, but 2 below it had red ribbon wrapping.','',30,'','Undetermined',0.0,'Undetermined','',0,0,0,0,0,0,0,'','','','','','','','',0,0,0,0,0,0,0,'Open',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','Blonde','IV',0,0,0,0,0,'',0,5.0,'','','','No molars erupted but 1st molars almost erupting','',2003,'Feb',5,''),
 ('N 180/190  E 40/50  NW #31','N','E',180,190,40,50,'NW',0.0,0.0,0.0,5.0,5.0,'CHILD

Middle of 3 burials

Hair: red/brown

Textile: 7 coarse layers inside 2 fine layers outside
fine layers have purple thread pattern in them

outer ribbon = 4-strand red ribbon

Face bundle - inner layer of red ribbon as well as outer and so on - 3 in total - folded not twisted 

Feet - wrapped w/ coarse linen strips.','',31,'','Undetermined',0.0,'Female','',0,0,0,0,0,0,0,'','','','','','','','',0,3,3,3,0,0,3,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','Red','III',0,0,0,0,0,'',0,12.0,'','','2nd molars','','',2003,'Feb',5,''),
 ('N 180/190  E 40/50  NW #32','N','E',180,190,40,50,'NW',0.0,0.0,0.0,5.0,5.0,'Bottom of 3 burial cluster

Hair: red/brown

Textile: Outer layer wraps - white ribbon for most of body - red - 4-strand ribbon on feet & head - good head bundle, but only folded - not twisted

layering of linen - 
1 ribbon
1 linen fine
1 linen strap
3 wave wrap 
1 wave strap
4 rough wave linen','',32,'','Undetermined',0.0,'Undetermined','',0,0,1,0,0,0,0,'',40.7,'','','',41.9,29.7,'',1,0,1,1,1,0,1,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','Red','II',0,0,0,0,0,'',0,'',157.593,'II','2nd molars','3rd molars near eruption

Humerous w/o head

Tooth attrition - between 1 & 2','Not complete',2003,'Feb',5,''),
 ('N 180/190  E 40/50  NW #33','N','E',180,190,40,50,'NW',0.0,0.0,0.0,5.0,5.0,'ADULT LARGE - match in garlands (2) & wraps for NW26

Preservation Index: between IV & V

Textile: 2 reed-palm garlands around neck

multiple layers of linen at feet -
4-strand - red ribbon fringe 2-3cm long
8 layers of fine weave close to body then 2 layers of medium then 13 layers of coarse outer wraps

AT LEAST 23 LAYERS','',33,'','Undetermined',0.0,'Male','',0,1,1,0,0,1,0,'',50.0,44.7,'','',49.0,33.7,'',0,0,0,0,0,0,0,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','Brown','V',0,0,0,0,0,'',0,'',179.21,'III','3rd molar','Extensive perio

Tooth attrition - between III & IV

most teeth missing - much bone reabsorbtion & abscess in left mandible','',2003,'Feb',13,''),
 ('N 180/190  E 40/50  NW #34','N','E',180,190,40,50,'NW',0.0,0.0,0.0,5.0,5.0,'Textile: fine linen - not marked or colored','',34,'','Undetermined',0.0,'Undetermined','',0,0,0,0,0,0,0,'','','','','',17.0,12.8,'',0,0,0,0,0,0,0,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','','',0,0,0,0,0,'',0,12.0,96.09,'I','2nd molar','Femur & Humerous measured w/o heads','',2003,'Feb',8,''),
 ('N 180/190  E 40/50  NW #35','N','E',180,190,40,50,'NW',0.0,0.0,0.0,5.0,5.0,'Textile: fine weave inside & outside w/ several coarse layers inbetween -
outer layer w/ red banding

Face bundle - large face bundle, but just wads of cloth.','',35,'','Undetermined',0.0,'Undetermined','',0,0,1,0,0,0,0,'','','','','',42.9,29.5,'',0,0,1,3,0,0,0,'Closed',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','Brown','V',0,0,0,0,0,'',0,16.0,160.063,'I','2nd molar','Femur & Humerous measured w/o head','Not complete',2003,'Feb',13,''),
 ('N 180/190  E 40/50  NW #36','N','E',180,190,40,50,'NW',0.0,0.0,0.0,5.0,5.0,'RESERVED FOR ANALYSIS IN FUTURE SEASONS AT REQUEST OF Fayum Antiquities - Ali Bazeedi (RPE 5/12/03)','',36,'','Undetermined',0.0,'','',0,0,0,0,0,0,0,'','','','','','','','',0,0,0,0,0,0,0,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','','',0,0,0,0,0,'',0,'','','','','','',2003,'Feb',8,''),
 ('N 180/190  E 40/50  NW #37','N','E',180,190,40,50,'NW',0.0,0.0,0.0,5.0,5.0,'No Textiles','',37,'','Undetermined',0.0,'Male','',0,0,1,0,0,1,0,'',46.2,47.2,'','',41.2,30.2,'',1,1,1,1,1,0,1,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','Brown','',0,0,0,0,0,'',0,'',161.114,'III','3rd molar','Tooth attrition: between III & IV

some carries on 1st molar - some periodontal disease','',2003,'Feb',8,''),
 ('N 180/190  E 40/50  NW #38','N','E',180,190,40,50,'NW',0.0,0.0,0.0,5.0,5.0,'In small chamber to south of shaft adjacent to NW24

CHILD

No Textiles','',38,'','Undetermined',0.0,'Undetermined','',0,0,0,0,0,0,0,'','','','','','','','',0,0,0,0,0,0,0,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','','V',0,0,0,0,0,'',0,1.5,'','','','','',2003,'Feb',8,''),
 ('N 180/190  E 40/50  NW #39','N','E',180,190,40,50,'NW',0.0,0.0,0.0,5.0,5.0,'RESERVED FOR ANALYSIS IN FUTURE SEASON AT REQUEST OF Fayum Antiquities - Ali Bazeedi (RPE 5/12/03)','',39,'','Undetermined',0.0,'','',0,0,0,0,0,0,0,'','','','','','','','',0,0,0,0,0,0,0,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','','',0,0,0,0,0,'',0,'','','','','','',2003,'Feb',9,''),
 ('N 180/190  E 40/50  NW #40','N','E',180,190,40,50,'NW',0.0,0.0,0.0,5.0,5.0,'REVERSAL - HEAD EAST in offset of shaft

No Textiles','',40,'','Undetermined',0.0,'Male','',0,0,1,0,0,1,0,'',44.0,40.0,'','',41.4,30.1,'',0,1,1,1,0,0,1,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','Brown','V',0,0,0,0,0,'',0,40.0,161.578,'III','3rd molar','Large cavity on 2nd molar - left mandible

No perio','',2003,'Feb',9,''),
 ('N 180/190  E 40/50  NW #41','N','E',180,190,40,50,'NW',0.0,0.0,0.0,5.0,5.0,'MISSING SKULL - except part of mandible

Textile: some jute rope wrapped around linen
yellow & green wool - closest to body - but maybe more - 
some red anciently & blue - only thread now.','',41,'','Undetermined',0.0,'Undetermined','',0,0,0,0,0,0,0,'','','','','','','','',0,0,0,0,0,0,0,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','','IV',0,0,0,0,0,'',0,12.5,'','','2nd molar','','',2003,'Feb',9,''),
 ('N 180/190  E 40/50  NW #42','N','E',180,190,40,50,'NW',0.0,0.0,0.0,5.0,5.0,'Textile: Face bundle - reeds & linen - 1 part braided & tied on head - totally decomposed.','',42,'','Undetermined',0.0,'Undetermined','',0,0,0,0,0,0,0,'','','','','','','','',0,0,0,0,0,0,0,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'7 glass beads -
4 blue
1 green-black
1 silver
1 bone','','IV',0,0,0,0,0,'',1,8.5,'','','1st molar','2nd molar beginning to erupt','',2003,'Feb',9,''),
 ('N 180/190  E 40/50  NW #44','N','E',180,190,40,50,'NW',0.0,0.0,0.0,5.0,5.0,'PART OF CLUSTER OF 5 CHILDREN

Textile: fabric on head - some at feet 
in most fabric - medium fine linen w/ no obvious pattern or color
4 layer on the head

Face bundle - has fiber - 10cm2 after being folded - another piece folded 4 times (1/2, 1/2, 1/2, 1/2) - some fibers in bundle - horizontal jute rope around face w/ 2 vertical around the bundle - 2 layers of fine & 1 or coarse linen.','',44,'','Undetermined',0.0,'Undetermined','',0,0,0,0,0,0,0,'','','','','','','','',0,0,0,0,0,0,0,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','Brown','IV',0,0,1,0,0,'Ribs sampled',0,'','','','','','',2003,'Feb',9,''),
 ('N 180/190  E 40/50  NW #45','N','E',180,190,40,50,'NW',0.0,0.0,0.0,5.0,5.0,'PART OF A CLUSTER OF 5 CHILDREN

Textile: fine linen on head - some design - red maybe hairnet - fragile.','',45,'','Undetermined',0.0,'Undetermined','',0,0,0,0,0,0,0,'','','','','','','','',0,0,0,0,0,0,0,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','Brown','V',0,0,1,0,0,'Ribs sampled',0,1.0,'','','none','','none',2003,'Feb',9,''),
 ('N 180/190  E 40/50  SW #1','N','E',180,190,40,50,'SW',0.1,1.14,1.16,3.4,2.74,'NO DATASHEET (RPE 5/12/03)',69,1,'','Undetermined',0.0,'','',0,0,0,0,0,0,0,'','','','','','','','',0,0,0,0,0,0,0,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','','',0,0,0,0,0,'',0,'','','','','','',2003,'Feb',9,'West'),
 ('N 180/190  E 40/50  SW #10','N','E',180,190,40,50,'SW',0.8,3.5,3.5,3.5,5.0,'Skin: skin on lower portion

Textiles: textiles under the head
1) both fine & coarse 
2) 4 medium coarse, covered by 1 fine
3) ribbon - 4 red-strand ribbons
4) no color in fabric - long fringe 6cm

double twisted hemp to hold reed garland in place
reed garland tied w/ palm strands - palm strips - all braided in triple strands.',150,10,'','Undetermined',0.0,'Female','',0,0,3,0,0,3,0,'',38.2,38.1,'','',42.9,29.3,'',0,3,3,3,3,0,0,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','','IV',0,0,0,0,0,'',0,'',160.063,'II','3rd molar','Tooth attrition: between II & III

No carries, some perio in molar area','',2003,'Feb',8,'West'),
 ('N 180/190  E 40/50  SW #11','N','E',180,190,40,50,'SW',0.9,1.0,1.0,2.95,3.7,'Burial adjacent to woven basket

CHILD

Skin intact

Textile: textiles at feet - coarse w/ fringe 6-8cm
also a fine linen',85,11,'','Undetermined',0.0,'Female','',0,0,0,0,0,0,0,'','','','','','','','',0,3,3,3,0,0,3,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','','III',0,0,0,0,0,'',0,12.0,'','I','2nd molar','','',2003,'Feb',8,'West'),
 ('N 180/190  E 40/50  SW #12','N','E',180,190,40,50,'SW',0.75,4.15,4.7,1.35,2.8,'MATCHED W/ SKULL #7

Skull and body seperated - we guessed on the bone coloration and general location

No textile
No hair',150,12,'','Undetermined',0.0,'Undetermined','',0,0,0,0,0,0,0,'',46.1,41.5,'','',45.0,31.7,'',0,0,0,0,0,0,0,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','','',0,0,0,0,0,'',0,'',165.25,'II','3rd molar','Some perio','',2003,'Feb',8,'West'),
 ('N 180/190  E 40/50  SW #13','N','E',180,190,40,50,'SW',0.6,4.0,4.65,4.8,6.0,'RESERVED FOR ANALYSIS IN FUTURE SEASON AT REQUEST OF Fayum Antiquities - Ali Bazeedi',162,13,'','Undetermined',0.0,'','',0,0,0,0,0,0,0,'','','','','','','','',0,0,0,0,0,0,0,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','','',0,0,0,0,0,'',0,'','','','','','',2003,'Feb',8,'West'),
 ('N 180/190  E 40/50  SW #14','N','E',180,190,40,50,'SW',1.2,4.22,3.84,2.42,3.06,'PART OF A CLUSTER OF 4 - (2 young, 2 old)

No obvious trauma

Textiles: bundle of fragemnts at the head

Though only a trend, bossing suggests a FEMALE',78,14,'','Undetermined',0.0,'Undetermined','',0,0,0,0,0,0,0,'','','','','','','','',0,0,0,0,0,0,0,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','Brown','V',0,0,0,0,0,'',0,12.5,'','I','12.5','','',2003,'Feb',9,'West'),
 ('N 180/190  E 40/50  SW #15','N','E',180,190,40,50,'SW',1.17,4.25,4.25,1.4,2.21,'PART OF CLUSTER OF 4 - (2 young, 2 old)

Textile: some fragment of textiles, coarse & fine',92,15,'','Undetermined',0.0,'Undetermined','Open',0,0,0,0,0,0,0,'','','','','','','','',0,0,0,0,0,0,0,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','Brown','',0,0,0,0,0,'',0,12.5,'','I','2nd molar','No carries','No',2003,'Feb',9,'West'),
 ('N 180/190  E 40/50  SW #16','N','E',180,190,40,50,'SW',1.22,4.27,0.81,1.28,2.78,'PART OF CLUSTER OF 4 (2 young, 2 old,) - SW14, 15, 16, 17

Bottom of a clust of 4

Hair: golden brown

Injuries: left humerous broken & healed before death (3 humeri?)
right humerous = 30cm, left = 31.2cm

Textile: PURPLE & red threaded fine fabric - folded over many times, many layers of coarse minen - fragile, 
SHE was covered by 5 CHILDREN & many limestones placed vertically between burials SW14 & SW15 on one side & SW17 on the other.',152,16,'','Undetermined',0.0,'Female','',0,0,3,0,0,3,0,'',41.5,38.7,'','',44.4,31.2,'',0,3,3,3,0,0,0,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','Brown','IV',0,0,0,0,0,'',0,35.0,163.768,'IV','','Upper maxilla - massive perio - 2nd molar only, lowerleft 4 front teeth all else lost, bone reabsorbed - hardly any teeth in the skull

Tooth attrition: between III & IV','',2003,'Feb',9,'West'),
 ('N 180/190  E 40/50  SW #17','N','E',180,190,40,50,'SW',1.19,4.12,3.84,1.32,2.66,'PART OF A CLUSTER OF 4 (2 young, 2 old) SW14, 15, 16, 17

Atop SW16 but opposite SW14, 15, seperated by vertically placed limestones

Textile: fabric on head - poor condition some fine, some coarse.',154,17,'','Undetermined',0.0,'Undetermined','',0,0,3,0,0,3,0,'',40.7,37.4,'','',41.9,29.2,'',0,0,0,0,0,0,3,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','Brown','IV',0,0,0,0,0,'',0,35.0,157.593,'III','3rd molar','Some perio - 2nd & 3rd molars, mandible rt. - missing, bones reabsorbed - left 1st molar gone','',2003,'Feb',9,'West'),
 ('N 180/190  E 40/50  SW #18','N','E',180,190,40,50,'SW',1.2,0.65,0.7,1.37,2.9,'Buried under rocks

No trauma

Reed along body, both top & bottom

Hair: dark brown, short

Textile: orange, blue green
Face bundle - red ribbon - (4 reds) linen strips under ribbon - 
4 bundles of linen folded - linen twine ties each bundle - only a few remnant pieces - fine outer linen - at feet had at least 7 lines of color
head to toe (1/2cm seperated) =
green
orange
orange
orange
blue
blue 
orange

two PURPLES about 5cm - shoulder had PURPLE band & maybe hem 3cm wide.',173,18,'','Undetermined',0.0,'Male','',0,0,1,0,0,1,0,'',45.9,43.5,'','',44.4,31.6,'',0,0,1,1,1,0,3,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','Brown','IV',0,0,0,0,0,'',0,25.0,168.538,'III','3rd molar','Tooth attrition: between II & III','',2003,'Feb',9,'East'),
 ('N 180/190  E 40/50  SW #19','N','E',180,190,40,50,'SW',2.1,4.76,4.6,3.54,5.0,'Hair: lots of dark brown hair

Textile: Wrapped w/ linen straps
large red cloth on head - lots of layers -
extensive pattern development in red & PURPLE bands of head wrap

Purple, red, .. - banded cloth down body - fine cloth w/ red, green, PURPLE - all down the body

1 fine outer layer, & 8 or 9 coarse layers beneath.',146,19,'','Undetermined',0.0,'Female','',0,0,3,0,0,0,3,'','','','','',42.0,29.3,'',0,3,3,3,3,0,3,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','Brown','V',0,0,0,0,0,'',0,18.5,157.84,'II','3rd molar','Tooth attrition: between I & II

Excellent teeth

No periodontal disease

Humerous & Femur measured w/o heads','Incomplete',2003,'Feb',13,'West'),
 ('N 180/190  E 40/50  SW #2','N','E',180,190,40,50,'SW',0.3,1.6,1.9,0.7,2.1,'Rear surface of area - under limestone rocks

Newborn infant buried w/ her - infant placed at her knees

BIG WOMAN

Hair: curly
Pubic hair: red

Textile: coarse linen (2) outside 
fine linen w/ wool threads woven to give a quilted pattern - red piece of cloth at head - big robe has 8x15cm design w/ 1cm border - fine cord wave in head part of garment

Head cap - w/ multiple angle weave

2 long reeds - length of body (under)',160,2,'','Undetermined',0.0,'Female','',0,0,3,0,0,0,0,'',42.4,39.1,'','',44.2,30.4,'',3,3,3,3,0,3,3,'Closed',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','Brown','',0,0,0,1,1,'',0,'',163.274,'II','3rd molar','Excellent teeth - no carries - no periodontal disease','Yes',2003,'Feb',3,'West'),
 ('N 180/190  E 40/50  SW #20','N','E',180,190,40,50,'SW',1.25,1.68,1.34,1.48,3.04,'Hair: dark brown, curly, long

Hands: Left hand preserved - clenched, good nails - right hand ok

Skin: skin intact on some bones

Textile: red ribbon - 4-strand red
Foot bundle - foot bundle most intact - not good
fine exterior linen, 6+ layers of coarse linen beneath

ribbon- criss-crossed pattern on outside linen strips under fine, above coarse.

Face bundle - face bundle w/ folded linen pieces

NEXT TO BODY - PURPLE ROBE - BROAD BAND OF PURPLE w/ RED THREAD.',168,20,'','Undetermined',0.0,'Female','',0,0,3,0,0,3,0,'',45.1,41.8,'','',43.9,30.5,'',0,3,0,3,3,3,0,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','Brown','',0,0,0,0,0,'',0,'',162.533,'III','3rd molar','Tooth attrition: between II & III

Some periodontal disease

2 3rd molars lost - bone reabsorbed','',2003,'Feb',15,'West'),
 ('N 180/190  E 40/50  SW #21','N','E',180,190,40,50,'SW',1.37,1.49,1.34,2.34,3.04,'Buried below pelvic and between legs of SW20

Skin: skin intact

Textile: no evidence of textiles - when in situ, red ribbon noted on north side of body.',81,21,'','Undetermined',0.0,'Undetermined','Open',0,0,0,0,0,0,0,'','','','','','','','',0,0,0,0,0,0,0,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','Brown','IV',0,0,1,1,0,'Teeth

Ribs sampled',0,'','','','1st molar','','No',2003,'Feb',15,'West'),
 ('N 180/190  E 40/50  SW #22','N','E',180,190,40,50,'SW',1.6,1.9,0.0,2.3,5.0,'2 CRANIA, NO BODY

small cranium','',22,'','Undetermined',0.0,'Undetermined','Closed',0,0,0,0,0,0,0,'','','','','','','','',0,3,0,3,0,0,3,'Mostly Closed',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','','VI',0,0,0,0,0,'',0,13.0,'','I','2nd molars','','',2003,'Feb',15,''),
 ('N 180/190  E 40/50  SW #23','N','E',180,190,40,50,'SW',2.5,1.3,1.29,3.96,4.41,'MISSING SKULL & FEET

Offset burial for SW19

Humerous & Femur measured w/o heads',60,23,'','Undetermined',0.0,'Undetermined','',0,0,0,0,0,0,0,'','','','','',17.8,13.7,'',0,0,0,0,0,0,0,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','','V',0,0,1,0,0,'Ribs sampled',0,'',98.066,'','','','No',2003,'Feb',15,'West'),
 ('N 180/190  E 40/50  SW #24','N','E',180,190,40,50,'SW',1.52,2.44,2.41,1.83,3.24,'Hair: dark brown, curly, long

Textile: Foot bundle - foot bundle ONLY surviving textiles
red ribbon - 4 strand red
outer layer of fine linen - at least 7 layers of coarse linen beneath, 15cm long fringe on coarse linens, next to skin = PURPLE bands and fine linen.',160,24,'','Undetermined',0.0,'Female','',0,0,3,0,0,3,0,'',40.8,38.0,'','',41.9,30.2,'',0,3,3,3,3,3,3,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','Brown','',0,0,0,0,0,'',0,'',157.593,'II','3rd molar','No perio - no carries','',2003,'Feb',15,'West'),
 ('N 180/190  E 40/50  SW #25','N','E',180,190,40,50,'SW',1.47,1.79,1.69,1.61,3.02,'Hair: medium light brown, curly

Textile: PURPLE and red threads in head bundle , PURPLE material @ head.',155,25,'','Undetermined',0.0,'Female','',0,0,3,0,0,3,0,'',40.6,38.3,'','',42.1,29.4,'',0,1,1,0,3,3,0,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','Brown','V',0,0,0,0,0,'',0,'',158.087,'III','3rd molar','Some carries - no significant periodontal disease

Lipping on heads','',2003,'Feb',15,'West'),
 ('N 180/190  E 40/50  SW #26','N','E',180,190,40,50,'SW',1.72,4.37,4.12,1.4,3.1,'SKELETALIZED ADULT

Textile: little cloth - no red ribbons, linen straps
10 coarse layers -
Foot bundle - fringe of 10 cm - weave - 2 over / 2 under.',175,26,'','Undetermined',0.0,'Male','',0,0,1,0,0,0,0,'',49.2,44.6,'','',50.9,34.3,'',0,1,1,0,1,1,1,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','','V',0,0,0,1,0,'',0,'',183.618,'III','3rd molar','Tooth attrition: between II & III

Some perio','',2003,'Feb',17,'West'),
 ('N 180/190  E 40/50  SW #27','N','E',180,190,40,50,'SW',2.0,2.94,2.97,2.38,3.9,'Hair: brown hair - fine

Textile: some fabric over eyes',160,27,'','Undetermined',0.0,'Male','',0,0,1,0,0,1,0,'',40.29,41.8,'','',42.2,31.0,'',0,1,1,0,1,1,1,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','Brown','V',0,0,0,0,0,'',0,'',163.434,'II','3rd molar','No perio - No carries','',2003,'Feb',17,'West'),
 ('N 180/190  E 40/50  SW #28','N','E',180,190,40,50,'SW',1.52,1.63,1.72,-0.86,0.86,'Pelvic - not defined

Textile: Head bundle - red ribbons - folded & twisted piece
4 folded packets of linen

1 fine layer outside
6-10 more coarse inner layers',163,28,'','Undetermined',0.0,'Male','',0,0,1,0,0,0,0,'','','','','',41.2,28.7,'',0,1,1,1,0,0,1,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','Brown','',0,0,0,1,0,'',0,17.0,161.114,'I','3rd molar','Tooth attrition: between I & II
Lower molar erupted, Upper no.

Hunerous & Femur measured w/o heads','',2003,'Feb',17,'West'),
 ('N 180/190  E 40/50  SW #29','N','E',180,190,40,50,'SW',2.09,3.74,2.79,1.48,2.78,'Hair: medium to short, curly

No textiles',173,29,'','Undetermined',0.0,'Male','',0,0,1,0,0,1,0,'',48.5,45.8,'','',48.5,34.6,'',0,1,1,1,0,1,1,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','Brown','V',0,0,0,0,0,'',0,'',178.05,'III','3rd molar','Some teeth pulled - bone reabsorbed','',2003,'Feb',17,'West'),
 ('N 180/190  E 40/50  SW #3','N','E',180,190,40,50,'SW',0.0,0.0,0.0,5.0,5.0,'NO DATA SHEET (RPE 5/12/03)','',3,'','Undetermined',0.0,'','',0,0,0,0,0,0,0,'','','','','','','','',0,0,0,0,0,0,0,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','','',0,0,0,0,0,'',0,'','','','','','','','','',''),
 ('N 180/190  E 40/50  SW #30','N','E',180,190,40,50,'SW',2.14,0.0,0.0,1.87,5.0,'Textile: coarse exterior 
Face bundle - folded & twisted
Interior - w/ red & green threads
fine - many layers, but cannot be determined','',30,'','Undetermined',0.0,'Female','',0,0,0,0,0,0,0,'','',34.8,'','','',29.3,'',0,3,3,3,3,0,3,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','Brown','',0,0,0,0,0,'',0,14.0,'','','2nd molar','','',2003,'Feb',17,''),
 ('N 180/190  E 40/50  SW #31','N','E',180,190,40,50,'SW',2.25,-0.2,0.0,2.0,5.0,'SKULL & FEW BONES ONLY','',31,'','Undetermined',0.0,'Undetermined','',0,0,0,0,0,0,0,'','','','','','','','',0,3,3,3,0,0,3,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','Brown','',0,0,0,0,0,'',0,11.0,'','','1st molar','2nd molar coming','',2003,'Feb',17,''),
 ('N 180/190  E 40/50  SW #32','N','E',180,190,40,50,'SW',2.03,-0.1,0.0,2.17,5.0,'SKULL & FEW BONES

Textile: good Face bundle - folded & twisted
red ribbons - 4-strands red
palm reed garland
square ribbon wraps
fine linen over linen strips - then medium coarse with PURPLE stripes in it.','',32,'','Undetermined',0.0,'Undetermined','',0,0,0,0,0,0,0,'','',40.8,'','','',30.5,'',0,0,0,0,0,0,0,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','','',0,0,0,0,0,'',0,'','','III','2nd molar','1st molars gone - bone reabsorbed

No 3rds.','',2003,'Feb',17,''),
 ('N 180/190  E 40/50  SW #33','N','E',180,190,40,50,'SW',1.97,-0.15,0.0,2.73,5.0,'HEAD & FEW BONES ONLY

Hair: light brown, longer than shorter','',33,'','Undetermined',0.0,'Undetermined','',0,0,0,0,0,0,0,'','','','','','','','',0,0,3,1,0,0,0,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','Brown','',0,0,0,0,0,'',0,13.0,'','I','2nd molar','','',2003,'Feb',17,''),
 ('N 180/190  E 40/50  SW #34','N','E',180,190,40,50,'SW',0.0,0.0,0.0,5.0,5.0,'DISTURBED

bones from at least 2 people','',34,'','Undetermined',0.0,'Undetermined','',0,0,0,0,0,0,0,'','','','','','','','',0,0,0,0,0,0,0,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','','',0,0,0,0,0,'',0,'','','','','','',2003,'Feb',17,''),
 ('N 180/190  E 40/50  SW #35','N','E',180,190,40,50,'SW',0.0,0.0,0.0,5.0,5.0,'REVERSAL

FROM PELVIS & FEET - rest of body inaccessable

Large burial at base of offset chamber in shaft running along south of area.','',35,'','Undetermined',0.0,'Undetermined','',0,0,1,0,0,1,0,'',46.8,'','','',45.0,'','',0,0,0,0,0,0,0,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','','VI',0,0,0,0,0,'',0,'',165.25,'','','','',2003,'Feb',17,'East'),
 ('N 180/190  E 40/50  SW #4','N','E',180,190,40,50,'SW',0.45,1.75,1.57,3.4,4.95,'Encased in hard mud - rear surface - chest abdly caved in

4 reed sticks under body

Hair: brown/red
Pubic hair: dark brown/red

Textile: 4 coarse outer layers of linen
ribbon - 3 light & 4 dark strands

=================  \
|  |  |  |  |  |  |  |  |  |  |  |  |     \
|=|=|=|  |=|=|=|  |=|=|=|  |=     \
|  |  |  |  |  |  |  |  |  |  |  |  |         > dark strands (horz.) 
|=|  |=|=|=|  |=|=|=|  |=|=|=     /       & light strands (vert.)
|  |  |  |  |  |  |  |  |  |  |  |  |     /
==================/

Foot bundle - extra cloth turned up over feet criss cross wrap of ribbon over body and all over foot bundle.',161,4,'','Undetermined',0.0,'Undetermined','',0,0,0,0,0,0,0,'',39.4,38.7,'','',43.0,27.9,'',0,0,0,0,3,0,0,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','Brown','III',0,0,0,0,0,'',0,'',160.31,'II','3rd molar','','',2003,'Feb',4,'West'),
 ('N 180/190  E 40/50  SW #5','N','E',180,190,40,50,'SW',0.32,2.9,3.37,2.18,3.63,'',159,5,'','Undetermined',0.0,'Female','',0,0,3,0,0,0,0,'',37.5,37.1,'','',41.1,29.0,'',0,3,3,3,3,0,3,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','','',0,0,0,0,0,'',0,'',155.617,'III','3rd molar','1st molar on left gone w/ bone reabsorbtion','',2003,'Feb',4,'West'),
 ('N 180/190  E 40/50  SW #6','N','E',180,190,40,50,'SW',0.31,4.16,4.55,1.24,2.55,'Very close to the surface

1 of 2 BURIED TOGETHER

PART OF SKULL DESTROYED

Bones bleached & salt crystals growing from them - bones are white from some chemical reaction - but what? Lime? Salt?',149,6,'','Undetermined',0.0,'Undetermined','',0,0,1,0,0,0,0,'','','','','',33.7,24.1,'',0,0,0,0,1,0,1,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','','V',0,0,0,0,0,'',0,17.5,137.339,'I','3rd molar','Femur & Humerous measured w/o heads

Lower wisdom teeth not erupted 

Cusps are lovely - no wear
3rd molars erupted on top 2nd in mandible','No',2003,'Feb',5,'West'),
 ('N 180/190  E 40/50  SW #7','N','E',180,190,40,50,'SW',0.0,0.0,0.0,5.0,5.0,'NO DATA SHEET (RPE 5/12/03)','',7,'','Undetermined',0.0,'','',0,0,0,0,0,0,0,'','','','','','','','',0,0,0,0,0,0,0,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','','',0,0,0,0,0,'',0,'','','','','','','','','',''),
 ('N 180/190  E 40/50  SW #8','N','E',180,190,40,50,'SW',0.21,2.27,2.15,1.47,2.6,'Hair: curly

Hair braided - forward & to one side - her left side

Textile: layer of fine linen over hair net, & 3 layers of coarse linen above that - PURPLE cloth in linen above hair net

Face bundle - not twisted just folded

Hair net - red hair net (PURPLE cloth above red hairnet) - across brow & the back of head - red thread in <><><> & bigger diamonds - all in pattern',125,8,'','Undetermined',0.0,'Female','',0,0,3,0,0,0,0,'','','','','',33.2,22.2,'',0,3,3,3,0,0,0,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'1 bronze & 2 ivory hairpins','Brown','',0,0,0,0,0,'',1,'',136.104,'II','3rd molar','No perio - some wear on cusps

Tooth attrition - between II & III

Femur & Humerous measured w/o heads','No',2003,'Feb',5,'West'),
 ('N 180/190  E 40/50  SW #9','N','E',180,190,40,50,'SW',0.7,3.1,3.6,-0.3,1.0,'Close to surface - NO SKULL

No textile
No skin

HEADLESS MALE',155,9,'','Undetermined',0.0,'Male','',0,1,1,0,0,1,0,'',46.4,42.0,'','',44.2,30.6,'',0,0,0,0,0,0,0,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','','V',0,0,1,0,0,'Ribs sampled',0,'',168.074,'','','','',2003,'Feb',8,'West'),
 ('N 190/200  E 40/50  SE #1','N','E',190,200,40,50,'SE',0.74,3.78,3.74,1.75,1.15,'Textile: single layer with 2 green stripes (2 thread wide)',63,1,'','Undetermined',0.0,'Undetermined','',0,0,0,0,0,0,0,'','','','','','','','',0,0,0,0,0,0,0,'Open',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','Brown','III',0,0,0,0,0,'',0,1.5,'','','first molar','','',2005,'Feb',3,'East'),
 ('N 190/200  E 40/50  SE #10','N','E',190,200,40,50,'SE',0.8,3.92,4.66,2.7,4.0,'Hair: blonde w/ curls

Textile: red ribbon 5 strands wide
            multiple irregular wraps around head
            4 outer layers coarse cloth, 6 layers fine weave inside',152,10,'','Undetermined',0.0,'Male','',1,1,1,1,0,0,0,'',40.6,'','','',37.9,'','',0,1,1,0,1,1,0,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','Blonde','V',0,0,0,0,0,'',0,'',153.458,'V','','advanced periodontal - many teeth missing, only incisors & pre-molar on mandible & incisors on upper jaw','',2005,'Feb',5,'West'),
 ('N 190/200  E 40/50  SE #11','N','E',190,200,40,50,'SE',0.98,0.96,0.85,3.58,4.37,'CHILD

Textile: medium quality linen shrouding the body
coarse linen stripes diagonally over shroud
Purple & Green design in textiles - nicely wrapped 

1) outer layer medium quality weave
2) 2nd layer also covered w/ diagonal pattern strips
3) 3 layers fine linen
4) 5 layers probably folded from 1 piece of cloth - nice green wool band in cloth

Head Bundle: w/ irregularly folded linen cloth inside/ twisted cord linen also. Cloth decorated w/ purple band & rounded',90,11,'','Undetermined',0.0,'Undetermined','',0,0,0,0,0,0,0,'','','','','','','','',0,3,3,3,0,0,3,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','','',0,0,0,0,0,'',0,'','','I','1st,2nd molar','','No',2005,'Feb',5,'West'),
 ('N 190/200  E 40/50  SE #12','N','E',190,200,40,50,'SE',0.97,1.03,0.85,2.84,4.48,'Hair: Dark brown

Textile: Palm material - braided rope about neck twice down to pelvis - under braid on top

red ribbon - 4 threads evenly spaced
twisteted linen - 10 in. (25 cm) long

3 layers of fine linen woven in tufting

reeds under body',172,12,'','Undetermined',0.0,'Male','',1,0,1,0,1,1,0,'',48.8,43.2,'','',46.0,31.6,'',0,1,1,1,1,0,0,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','Brown','',0,0,0,0,0,'',0,'',172.25,'II','3rd molar','No canines - no perio','',2005,'Feb',5,'West'),
 ('N 190/200  E 40/50  SE #13','N','E',190,200,40,50,'SE',0.99,0.39,0.25,3.91,4.46,'Found on top of (N190/200 E40/50 SE #14)

INFANT

Textile: dense diagonal torn linen stripes
much purple - 1 band (8cm wide) goes from head to toe - part of larger piece of cloth, but folded under at top and folded so that purple band is on top of body

at least 11 layers of linen below multiple layers of folded purple

more than 11 layers in toto

Head Bundle: Medium quality linen outside w/ knots of strips at neck, chest, & abdomen, wrapped about head but not at face.

Broad bands of purple folded double in form of a cross over face of burial 7 cm wide across, 6 cm wide verticle.',69,13,'','Undetermined',0.0,'Undetermined','',0,0,0,0,0,0,0,'','','','','','','','',0,0,0,0,0,0,0,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','','',0,0,0,0,0,'',0,1.5,'','','front incisors','','',2005,'Feb',5,'West'),
 ('N 190/200  E 40/50  SE #14','N','E',190,200,40,50,'SE',0.83,0.28,0.25,2.9,4.54,'ADULT with child buried on top from waist to feet

Hair: Very blonde - blonde beard & mustache

Skull: skull left w/ skin and hair in place - no analysis of cranium apart from teeth

Textile: red 4 strand ribbon overwrap
15 wraps (at least) over head
Layers:
1) torn linen strips - 5cm wide folded to 1 cm
2) 6 layers of fine weave linen
3) 4 layers of medium
4) 3 layers of fine',177,14,'','Undetermined',0.0,'Male','',0,1,1,0,0,0,0,'','','','','',45.0,30.8,'',0,0,0,0,0,0,0,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','Blonde','IV',0,0,0,0,0,'',0,'',169.93,'II','3rd molar','some perio on upper molars','',2005,'Feb',16,'West'),
 ('N 190/200  E 40/50  SE #15','N','E',190,200,40,50,'SE',1.14,2.2,2.05,2.97,4.6,'Mostly skeletalized

Beard: blond',163,15,'','Undetermined',0.0,'Male','',0,1,1,1,0,1,0,'',47.1,43.2,'','',43.7,35.0,'',0,0,0,0,0,0,0,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','Blonde','',0,0,0,0,0,'',0,'',166.914,'V','','No teeth left on upper - permolars on both L & R on mandible (1 on left)','',2005,'Feb',5,'West'),
 ('N 190/200  E 40/50  SE #16','N','E',190,200,40,50,'SE',1.12,3.85,3.96,2.98,3.79,'INFANT

Basket containing burial 16 was mistakenly reintered before study',92,16,'','Undetermined',0.0,'Undetermined','',0,0,0,0,0,0,0,'','','','','','','','',0,0,0,0,0,0,0,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','','',0,0,0,0,0,'',0,'','','','','','',2005,'Feb',6,'West'),
 ('N 190/200  E 40/50  SE #17','N','E',190,200,40,50,'SE',1.23,4.22,4.48,1.76,3.29,'Face crushed & some bones broken (modern) - workers

HARD TO ANALYZE A BODY THAT HAS BEEN TAMPERED WITH BY WORKERS

Textile: 1 medium quality weave linen outer wrap over laid with torn linen strips horizontal over body/ diagonal over feet, many times around neck, mass of linen strips gathered and placed over waist (gathered end and last 1 or 2 meters of strips)
linen wrapping strip tied to 18 cm long fringe of linen enclosing head:
2 pieces 18 cm fringe under outer layer
2 layers of same below that
2 layers of same below that

4 layers of cloth, each folded twice over body.',168,17,'','Undetermined',0.0,'Undetermined','',0,0,0,0,0,0,0,'','','','','','','','',0,0,0,0,0,0,0,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'2 palm frond necklaces over wrapped w/ palm strings','Blonde','III',0,0,0,0,0,'',1,'','','III','3rd molar','No Perio','',2005,'Feb',16,'West'),
 ('N 190/200  E 40/50  SE #18','N','E',190,200,40,50,'SE',1.5,3.01,3.1,3.02,3.54,'Found next to #19 - possible sibling to SE19?

Hair: light brown (auburn) coiffed

Textile: cloth NOT the same as SE19 - weave is 1x2 not 1x1 as in SE19, not as coarse or heavy as SE19.',65,18,'','Undetermined',0.0,'Undetermined','',0,0,0,0,0,0,0,'','','','','','','','',0,0,0,0,0,0,0,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','Brown','',0,0,0,0,0,'',0,'','','','1st molar, canines, incisors in mandiblula','No molar in maxilla','',2005,'Feb',6,'West'),
 ('N 190/200  E 40/50  SE #19','N','E',190,200,40,50,'SE',1.56,3.26,2.88,3.02,3.54,'CHILD

6mo-1yr. Next to SE18 - possible sibling to S18?

Samples taken to check relationship to SE18.',64,19,'','Undetermined',0.0,'Undetermined','',0,0,0,0,0,0,0,'','','','','','','','',0,0,0,0,0,0,0,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','','',0,0,0,0,0,'',0,'','','','Mandible incisors','','',2005,'Feb',6,'West'),
 ('N 190/200  E 40/50  SE #2','N','E',190,200,40,50,'SE',0.48,1.72,2.04,-0.62,0.36,'',103,2,'','Undetermined',0.0,'Undetermined','',0,0,0,0,0,0,0,'','','','','','','','',0,0,0,0,0,0,0,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','Brown','III',0,0,0,0,0,'',0,'','','II','1st,2nd molar','','',2005,'Feb',3,'West'),
 ('N 190/200  E 40/50  SE #20','N','E',190,200,40,50,'SE',1.41,0.74,0.72,1.58,3.3,'Textile: torn linen & ribbons evident on a medium coarse linen exterior cloth - only linen rements on feet',175,20,'','Undetermined',0.0,'Male','Closed',1,0,1,1,0,1,0,'',46.8,40.3,'','V',46.7,'','',0,0,1,1,1,0,1,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','Brown','VI',0,0,0,1,0,'Molar 31,32',0,'',173.874,'III','','','',2005,'Feb',8,'West'),
 ('N 190/200  E 40/50  SE #21','N','E',190,200,40,50,'SE',1.46,0.94,0.94,2.75,2.28,'INFANT

Hair: Light brown

Textile: coarse plain linen cloth - totally
1 large piece of cloth wrapped several times around body',64,21,'','Undetermined',0.0,'Undetermined','',0,0,0,0,0,0,0,'','','','','','','','',0,0,0,0,0,0,0,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','Brown','V',0,0,0,0,0,'',0,'','','','mandibular incisors','','',2005,'Feb',8,'East'),
 ('N 190/200  E 40/50  SE #22','N','E',190,200,40,50,'SE',1.58,2.06,0.0,1.91,5.0,'Textile: Yellow bundle - (30 cm2) likely associated w/ this skull, since some yellow cloth attached to forehead.','',22,'','Undetermined',0.0,'Male','Closed',0,0,0,0,0,0,0,'','','','','','','','',1,1,1,1,0,1,1,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','Brown','V',0,0,0,0,0,'',0,'','','','','','',2005,'Feb',8,''),
 ('N 190/200  E 40/50  SE #23','N','E',190,200,40,50,'SE',1.52,2.36,0.0,1.85,5.0,'SUB-ADULT

Hair: Light Brown

BRAIN IN SKULL','',23,'','Undetermined',0.0,'Female','Open',0,0,0,0,0,0,0,'','','','','','','','',0,0,0,3,3,0,3,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','Brown','',0,0,0,0,0,'',0,'','','','1st,2nd molar','','',2005,'Feb',8,''),
 ('N 190/200  E 40/50  SE #24','N','E',190,200,40,50,'SE',1.6,2.42,0.0,1.82,5.0,'SKULL ONLY

Hair: lots of dark brown hair 4-5cm long.','',24,'','Undetermined',0.0,'Male','',0,0,0,0,0,0,0,'','','','','','','','',1,1,1,1,1,0,0,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','Brown','',0,0,0,0,0,'',0,'','','III','3rd molar','nice teeth - no perio','',2005,'Feb',8,''),
 ('N 190/200  E 40/50  SE #25','N','E',190,200,40,50,'SE',1.74,2.26,0.0,1.98,5.0,'SUB-ADULT

SKULL ONLY','',25,'','Undetermined',0.0,'Undetermined','',0,0,0,0,0,0,0,'','','','','','','','',0,0,0,0,0,0,0,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','','',0,0,0,0,0,'',0,'','','','','','',2005,'Feb',8,''),
 ('N 190/200  E 40/50  SE #26','N','E',190,200,40,50,'SE',2.12,3.79,4.17,3.65,2.2,'REVERSAL

Hair: Long curly brown

Textile: Medium coarse linens over feet, torn linen strips for wrapping.',150,26,'','Undetermined',0.0,'Female','',0,3,3,0,0,0,0,'',39.8,36.1,'','',40.6,28.9,'',3,3,3,3,0,0,0,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','Brown','VI',0,0,0,0,0,'',0,'',154.382,'IV','2nd moral','Extensive periodontal disease - most molars missing','',2005,'Feb',12,'East'),
 ('N 190/200  E 40/50  SE #27','N','E',190,200,40,50,'SE',1.78,3.12,2.69,0.84,2.3,'Large Skull

Textile: textile on feet - torn linen strips, knotted on end
med coarse outer wrap then more torn linen strips - diagonal wrap - layer of linen w/ 2cm fringe next layer linen w/ 15c, fringe
     no evidence of face bundle - 7 layers of fine linen over head
linen layers up to 12 layers of coarse outer wraps.',165,27,'','Undetermined',0.0,'Male','',0,0,1,1,0,1,0,'',47.8,44.0,'','',45.8,32.9,'',1,1,1,0,1,0,0,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','','V',0,0,0,0,0,'',0,'',171.786,'IV','3rd molar','','',2005,'Feb',12,'West'),
 ('N 190/200  E 40/50  SE #28','N','E',190,200,40,50,'SE',2.0,2.34,2.19,1.58,2.99,'Textile: some fabric - torn linen ribbons - 1 made by double folding of torn strip
Medium coarse linens at least 5 layers',141,28,'','Undetermined',0.0,'Female','',0,3,3,0,0,3,3,'',38.4,36.3,'','',44.0,29.3,'',0,0,0,0,0,0,0,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','','',0,0,0,0,0,'',0,'',162.78,'','','','',2005,'Feb',8,'West'),
 ('N 190/200  E 40/50  SE #29','N','E',190,200,40,50,'SE',0.76,3.32,2.95,4.19,5.63,'Much resisn on body making analysis of pelvis and body difficult

Reed stick beneath body

Textile: Red 4 strand ribbon on outside
outer layer - fine weave linen
then 12 layers of coarse linen under outer layer
face bundle w/ red  ribbons - fibrous mass in face bundle - palm?
Fiber mass also on feet.',157,29,'','Undetermined',0.0,'Female','',0,3,3,0,0,0,0,'',43.0,'','','',39.6,'','',0,3,0,0,3,0,3,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','Brown','V',0,0,0,0,0,'',0,'',151.912,'III','2nd molar','3rd molar erupted once - but perio has taken many teeth','',2005,'Feb',12,'West'),
 ('N 190/200  E 40/50  SE #3','N','E',190,200,40,50,'SE',0.79,0.65,0.76,2.15,3.8,'No Head',182,3,'','Undetermined',0.0,'Female','',0,3,3,3,0,3,0,'',39.8,'','','',42.0,'','',0,0,0,0,0,0,0,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'blue glass beads
3-4 reeds asback support for burial
4 layer coaru weave
2 twist wpe w/ kast @ end (overhand kast)','','IV',0,0,0,0,0,'',1,'',157.84,'','','','',2005,'Feb',3,'West'),
 ('N 190/200  E 40/50  SE #30','N','E',190,200,40,50,'SE',0.74,2.92,2.83,4.16,5.61,'Textile: extensive remnants of textiles at feet w/ footprints (skin) attached to linen layer

4 strand red ribbon
outer layer - medium coarse
5 layers of coarse then many layers of fine-intermediate

face bundle - 4 strand red ribbon bundle disintegrated.',168,30,'','Undetermined',0.0,'Female','',0,0,3,0,0,3,0,'',43.9,40.0,'','',46.5,33.2,'',0,0,3,0,1,3,3,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','Brown','',0,0,0,0,0,'',0,'',168.955,'','3rd molars','no perio','',2005,'Feb',8,'West'),
 ('N 190/200  E 40/50  SE #31','N','E',190,200,40,50,'SE',1.9,3.65,3.45,-0.14,1.41,'ADULT

Hair: Bright brown

Pelvis: damaged

Textile: coarse linen fragments',170,31,'','Undetermined',0.0,'Male','',0,0,1,0,0,0,0,'',48.1,41.1,'','',47.1,32.1,'',1,0,1,1,0,0,3,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','Brown','',0,0,0,0,0,'',0,'',170.437,'','','only front teeth remain - extensive perio
molars erupted & disappeared','',2005,'Feb',8,'West'),
 ('N 190/200  E 40/50  SE #32','N','E',190,200,40,50,'SE',0.92,4.32,4.14,-0.48,0.35,'SUB-ADULT

Textile: 1m wide cloth outer wrap has a purple band 3-4cm wide - wrapped diagonally around the body
next cloth 120cm wide over laid w/ torn linen strips - long fringe (18cm long) gathered & folded over feet & tied in a knot @ the end of the 3rd piece has some fringe (18cm long) but wrapped w/ fringe going up te body
4th piece of linen = fine w/ open weaqve band (3.5cm wide) then linen & another open weae before end of cloth
5th piece is ribbed weave w/ little silverfish still crawling around the cloth

Face bundle: bundle is held to skull w/ 4-strand red ribbons - multiple wraps - fine outer wrap - 3 coarse under face bundle - multiple packs of folded linen each bound w/ twine - NO TWISTED LINEN',111,32,'','Undetermined',0.0,'Undetermined','',0,0,0,0,0,0,0,'','','','','','','','',0,0,0,0,0,0,0,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','Brown','II',0,0,0,0,0,'',0,'','','I','2nd molar','','',2005,'Feb',16,'West'),
 ('N 190/200  E 40/50  SE #33','N','E',190,200,40,50,'SE',1.28,2.9,2.79,4.16,5.78,'Found w/ SE34 - child

Textile: ribbon - no color - diagonal wrap preserved @ feet
very fine linen next to body (5cm fringe) - 2 layers coarse next, then medium weave w/ torn linen strips from wrap this layer (medium weave) has 8cm fringe',172,33,'','Undetermined',0.0,'Female','',0,0,3,0,0,0,0,'',42.9,'','','',42.6,'','',3,3,3,3,3,0,0,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','Brown','V',0,0,0,0,0,'',0,'',159.322,'','3rd molar','canines on 2nd molars-outside','',2005,'Feb',12,'West'),
 ('N 190/200  E 40/50  SE #34','N','E',190,200,40,50,'SE',1.3,3.02,2.93,5.0,5.5,'INFANT - buried w/ adult SE33

Hair: medium to bright brown hair

Preservation Index: between V & VI

Skull: pieces of skull oddly shaped

Textile: medium fine weave linen - 1 piece of cloth folded over & over - no markings or color
2nd textile -',50,34,'','Undetermined',0.0,'Undetermined','',0,0,0,0,0,0,0,'','','','','','','','',0,0,0,0,0,0,0,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','Brown','VI',0,0,0,0,0,'',0,'','','','','Part of right mandible-incisors NOT erupted - pitting on mandible (porosity of bone)','',2005,'Feb',12,'West'),
 ('N 190/200  E 40/50  SE #35','N','E',190,200,40,50,'SE',0.74,1.7,1.81,0.16,0.81,'INFANT

Textile: 3 layers medium weave linen & one fine layer & 3 additional layers, perhaps once colored..
(internal fringed on fine layer - OPEN WEAVE of 1cm width)',56,35,'','Undetermined',0.0,'Undetermined','',0,0,0,0,0,0,0,'','','','','','','','',0,0,0,0,0,0,0,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','Brown','IV',0,0,0,0,0,'',0,'','','','Pre-molars','1st molar not erupted','',2005,'Feb',14,'West'),
 ('N 190/200  E 40/50  SE #36','N','E',190,200,40,50,'SE',0.5,4.69,5.0,0.0,1.26,'Hair: long auburn

Textile: Hiarnet covers eyes & nose

under outer layer - reeds going length of body - under - for support LOTS of rope in under layers also
10-12 wraps - insect infestation - living sliverfish - also purple-blue irridescent sheels of insects

Face bundle - overlaid w/ 2 strand twisted rope, 1 strand goes down center of body - lots of excess rope about the feet - face bundle consists of 2 bundles of palm fiber',132,36,'','Undetermined',0.0,'Female','',0,0,0,0,0,0,0,'','','','','','','','',0,0,0,0,0,0,0,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','Brown','',0,0,0,0,0,'',0,'','','II','2nd molars','','No',2005,'Feb',16,'West'),
 ('N 190/200  E 40/50  SE #37','N','E',190,200,40,50,'SE',0.59,5.02,5.31,-0.0300000000000002,1.55,'Preservation Index: between III & IV

Hair: light brown very long curly

Textile: twisted palm material rope over coarse outer layer - 20 palm stems as supports under body 1 fragment of textile with colored pattern
fine linen next to the skin - undefined mass of folded linen over face - nice hair net over light brown hair - foot bundle w/ lots of rope wrapping

UNIQUE - coarse outer wrap - lots of rope underneath (double strand weave rope) palm sticks under feet - a bundle of them solled up in linen over the feet - stick bundle tied with twine linen over sticks very loose weave - not even gunny sack quality (60x67cm)',162,37,'','Undetermined',0.0,'Female','',0,0,3,0,0,0,0,'',38.3,36.3,'','',40.9,28.9,'',3,3,3,3,0,0,3,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','Brown','IV',0,0,0,0,0,'',0,'',155.123,'II','2nd molar','No mandible - no canines','',2005,'Feb',14,'West'),
 ('N 190/200  E 40/50  SE #4','N','E',190,200,40,50,'SE',0.85,2.77,2.63,3.02,3.58,'Textile: evidence of diagonal ribbons some fine weave linen remaining ~ 4 layers

linen with pattern @ fringe',55,4,'','Undetermined',0.0,'Undetermined','',0,0,0,0,0,0,0,'','','','','','','','',0,0,0,0,0,0,0,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','','V',0,0,0,0,0,'',0,'','','','','','',2005,'Feb',3,'West'),
 ('N 190/200  E 40/50  SE #5','N','E',190,200,40,50,'SE',0.95,3.38,3.14,1.65,2.6,'some skin intact on lateral of skull

Textile: diagonal wrap (ribbon)
2 double red thread ribbons
1 ribbon running head to toe in top of body
fine linen layer under ribbons
then coarse layer
the coarse white ribbon both diagonal & 1 down length of body
2 layers coarse linen
then 6 layers coarse linen folded up & over feet - best perserved there.

Head: no canines, tongue intact
front lower incisor (right) not erupted

Body: toes curled from rigor mortis',101,5,'','Undetermined',0.0,'Female','',0,0,0,0,0,0,0,'','','','','','','','',0,3,3,3,3,0,3,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','','IV',0,0,0,0,0,'',0,'','','I','','','No',2005,'Feb',3,'West'),
 ('N 190/200  E 40/50  SE #6','N','E',190,200,40,50,'SE',0.6,3.74,3.84,3.63,5.2,'Textiles: coarse linen only - most missing

Face : beard - reddish brown',160,6,'','Undetermined',0.0,'Male','',1,1,1,1,0,0,0,'',40.1,'','','',43.2,'','',0,0,0,0,0,0,0,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'reed sticks for support for the burial','','V',0,0,0,0,0,'',1,'',165.754,'IV','','Extensive periodontal upper & lower','',2005,'Feb',3,'West'),
 ('N 190/200  E 40/50  SE #7','N','E',190,200,40,50,'SE',0.68,2.6,3.21,-0.67,0.96,'Head found seperately on 16 Feb 2005

Face bundle: huge face bundle - 

Textile: 2 layers coarse linen',166,7,'','Undetermined',0.0,'Undetermined','',0,0,1,0,0,0,0,'',47.3,45.5,'','',45.2,33.1,'',0,0,0,0,0,0,0,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','Red','III',0,0,0,0,0,'',0,'',165.744,'III','3rd molar','','Yes',2005,'Feb',3,'West'),
 ('N 190/200  E 40/50  SE #8','N','E',190,200,40,50,'SE',0.73,3.09,2.94,1.08,2.1,'Hair:Long Blonde/Red
kept in nice hair net cap

Textile: 3&2 braid twisted rope w/ end ''splice'' & interior ''splice'' - nicely done to keep from fraying

Support: up to 20 reed supports running length under body',115,8,'','Undetermined',0.0,'Female','',0,0,0,0,0,0,0,'',27.6,'','','',30.0,'','',0,3,3,3,3,0,0,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'iron necklaces - hook shape
     2 pieces - hook together - back
     missing','Red','IV',0,0,0,0,0,'',1,'',128.2,'I','1st,2nd Molar','','No',2005,'Feb',3,'West'),
 ('N 190/200  E 40/50  SE #9','N','E',190,200,40,50,'SE',1.02,3.2,2.81,1.21,1.93,'Hair: long auburn - not curly

Textile: double red thread on ribbon - bordered as in (N 190/200 E 40/50 SE #5)

linen w/ red ribbon diagonal wrap feet wrapped w/linen & folded over long (6cm) fringe
Medium quality weave at least 5 layers',101,9,'','Undetermined',0.0,'Undetermined','',0,0,0,0,0,0,0,'','','','','','','','',0,3,3,3,3,0,0,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','Brown','IV',0,0,0,0,0,'',0,'','','I','1st,2nd molar','','No',2005,'Feb',3,'West'),
 ('N 190/200  E 40/50  SW #1','N','E',190,200,40,50,'SW',0.42,2.66,2.64,2.62,4.24,'Textile: (going in) 1st layer - medium qualtiy outer layer
2nd layer - color ribbon over next coarse (3 layers) then palm stems for support of body - all around body
3 layers of coarse linen
2 layers of medium quality linen
five rows of green/red pattern on outer layer folded up over feet

BIG TOES TIED W/ LINEN TWINE - W/ SLIP KNOT',170,1,'','Undetermined',0.0,'Male','',0,0,1,0,0,0,0,'',47.9,44.4,'','',43.7,31.3,'',1,1,1,1,1,0,1,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','Brown','II',0,0,0,0,0,'',0,'',162.039,'II','3rd molar','no canines - no perio','',2005,'Feb',16,'West'),
 ('N 190/200  E 40/50  SW #11','N','E',190,200,40,50,'SW',0.73,2.83,2.78,2.17,2.65,'INFANT

Textile: 5 layers medium weave linen - all same - deteriorated - torn linen strips are overwrap',68,11,'','Undetermined',0.0,'Undetermined','',0,0,0,0,0,0,0,'','','','','','','','',0,0,0,0,0,0,0,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','','V',0,0,0,0,0,'',0,'','','','1st molar (maxilla & mandible)','','',2005,'Feb',9,'West'),
 ('N 190/200  E 40/50  SW #12','N','E',190,200,40,50,'SW',0.86,3.09,3.08,2.01,2.57,'Buried next to SW#11 - younger than SW#11

Textile: Face bundle - medium quality linen w/ torn linen strips for over wrap - red, yellow, green thread in one of the linen strips - (red-green, red-green, yellow) - some have PURPLE, red, blue thread -

linen layer, strips, linen layer - folded ot wadded & piece of linen, 4 layers of fine linen.',70,12,'','Undetermined',0.0,'Undetermined','',0,0,0,0,0,0,0,'','','','','','','','',0,0,0,0,0,0,0,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','Brown','IV',0,0,0,0,0,'',0,'','','','incisors','1st molars not erupted only incisors','',2005,'Feb',9,'West'),
 ('N 190/200  E 40/50  SW #14','N','E',190,200,40,50,'SW',1.03,2.43,2.5,-0.56,0.7,'HEADLESS - no skull

5 total reed sticks over and under to provide support

Textile: all red ribbon & striped ribbon over foot bundle
torn linen strips & red ribbon over next layer - 2 layers, folded then red ribbon over folded linen (2 layers) then torn linen strips tied over next layer of material (folded) much SALT extruding from feet - some kind of bug ate a tunnel into the foot bundle.',163,14,'','Undetermined',0.0,'Male','',0,1,1,0,0,0,0,'',55.4,'','','',49.4,'','',0,0,0,0,0,0,0,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','','IV',0,0,0,0,0,'',0,'',176.118,'','','','',2005,'Feb',14,'West'),
 ('N 190/200  E 40/50  SW #15','N','E',190,200,40,50,'SW',0.97,2.12,2.37,-0.47,0.67,'SKULL MISSING

Preservaton Index: between IV & V

Hair: Brown pubic hair

2 Reed sticks under body

Textile: tufted linen wrap - medium quality
diagonal wrap red ribbon 3 strand - irregular quality
then 5 layers coarse linen
next layer - torn linen strips wrap diagonal criss-cross in large design - linen folded up over feet  w/ fringe of 10cm  - wrapped around body twice 110cm wide piece
2 more pieces of linen underneath folded in similar fashion 
next layer  - fine linen has band composed of 2 red-orange lines & central green band inbetween 2 red ones

Cord wrapped around feet beneath 1st fine layer

outer layer =  {       }  \
                     {        }   \ wrap fold over feet
                     {____}   /
                      ||||||||||||||  /

next 2 layers = {           }           {             }  \
                        {           }           {|||||||||||||||||||}    \ fold fringe up to give
                        {_____ }           {______ }    / solid edge THEN
                         |||||||||||||||||||                             / wrap around the body',146,15,'','Undetermined',0.0,'Male','',0,1,1,0,0,0,0,'',44.2,45.1,'','',43.2,32.1,'',0,0,0,0,0,0,0,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','Brown','V',0,0,0,0,0,'',0,'',160.804,'','','','',2005,'Feb',12,'West'),
 ('N 190/200  E 40/50  SW #16','N','E',190,200,40,50,'SW',0.52,0.5,0.4,4.73,5.4,'INFANT

Hair: Brown approx 6cm long

NOT MUCH TO SAY

No remaing skull part with identification properties

Textile: fabric poorly preserved - medium quality linen',69,16,'','Undetermined',0.0,'Undetermined','',0,0,0,0,0,0,0,'','','','','','','','',0,0,0,0,0,0,0,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','Brown','VI',0,0,0,0,0,'',0,'','','','','','',2005,'Feb',13,'West'),
 ('N 190/200  E 40/50  SW #17','N','E',190,200,40,50,'SW',0.57,4.5,4.4,0.14,1.61,'3 femurs w/ buried, 1 1 cut through anciently - epiphyseal cap broken off',57,17,'','Undetermined',0.0,'Male','',0,1,1,0,0,0,0,'','',43.2,'','','',31.9,'',1,1,1,0,1,0,1,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','Brown','V',0,0,0,0,0,'',0,'','','','3rd molar','right lower 2nd molar gone anciently','',2005,'Feb',13,'West'),
 ('N 190/200  E 40/50  SW #18','N','E',190,200,40,50,'SW',0.82,3.31,3.22,1.88,3.03,'ADULT - well wrapped

Supraorbital ridges: porosity in orbits

Textile: lots of ribbon wrapping
from inside : 4 layers coarse - torn linen strips w/ random knots 
4 layers coarse - diagonal torn linen strips
fine layer & red ribbon on surface 

going to body: 4 pieces of linen each wrapped around body numerous times:
outer layer w/ 3cm fringe, piece 117cm wide
next layer has 10cm fringe
3rd layer has 16cm fringe
4th layer has shorter fringe of 3cm

Face bundle - multiple red ribbon wraps
3 packets of triple-fold linen (fold in half then lengthwise in thirds) NO TWISTED LINEN - packets tied w/ twine - red ribbon = 4-strand red ribbon knotted @ foot , to use as beginning of diagonal wrap - one ribbon going down top of body FULL - length

ribbon down middle around feet & then back up in diagonal wrap
1 layer - medium qualtiy outer wrap 2 red threads open weave, 2 red threads pattern often seen  | |
                                                 | |
5 piece of linen - multiple folds for each linen strips torn -',126,18,'','Undetermined',0.0,'Female','',0,0,3,0,0,0,0,'','','','','','','','',3,0,3,3,0,3,3,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','Brown','II',0,0,0,0,0,'',0,'','','II','2nd molar','not pre-molar eruption
3rd molar in bone but no space for eruption in maxilla - - there is room in the mandible','No',2005,'Feb',15,'West'),
 ('N 190/200  E 40/50  SW #19','N','E',190,200,40,50,'SW',0.71,0.52,0.2,4.54,5.57,'Palm fiber on face - to give definintion?

Textile: coarse outer linen wrap w/ 10cm long fringe
2 layers torn linen strips wrapped over outerlayer - diagonal wrap',113,19,'','Undetermined',0.0,'Undetermined','',0,0,0,0,0,0,0,'','','','','','','','',0,0,0,0,0,0,0,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','','',0,0,0,0,0,'',0,'','','','1st,2nd molar','','',2005,'Feb',13,'West'),
 ('N 190/200  E 40/50  SW #20','N','E',190,200,40,50,'SW',1.26,2.71,2.63,3.95,5.27,'CHILD

Textile: coarse outer layer
linen strips (torn) folded in half and wrapped diagonally over outerlayer - multiple layers below
2 knots @ feet - at least 5 layers',120,20,'','Undetermined',0.0,'Female','',0,0,0,0,0,0,0,'','','','','','','','',3,3,3,3,3,3,3,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','Brown','III',0,0,0,0,0,'',0,'','','','1st,2nd molars','','No',2005,'Feb',13,'West'),
 ('N 190/200  E 40/50  SW #21','N','E',190,200,40,50,'SW',1.22,2.62,2.59,3.73,5.2,'Buried beneath SW20 - both partially covered w/ limestone slabs

Textile: linen wrap has 2cm fringe then 2 red threads woven into cloth, then open weave & 2 red threads again - linen 67cm wide - then linen w/ linen strips (torn) over inner layers

red ribbon, 4-strand, over the face 
1 fine layer outeside 
2 layers of coarse weave inside
beautiful ribbon wrapping over lower body
ribbon down body, around front, & then up body in diagonal - -
4 major pieces of linen folded twice over body & then folded over feet to back.',145,21,'','Undetermined',0.0,'Female','',0,0,3,0,0,0,0,'','','','','','','','',3,3,3,3,0,0,3,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','Brown','III',0,0,0,0,0,'',0,'','','II','2nd molars','some perio - 1st molar on left - carries on medial of upperr 1st molar','No',2005,'Feb',13,'West'),
 ('N 190/200  E 40/50  SW #23','N','E',190,200,40,50,'SW',0.77,3.21,3.26,-0.83,0.36,'Hair: almost 4cm long

Skull: skull fragmented

Textile: 4 layers - coarse fabric (fringe 10cm long)
4-strand red ribbon = over all good quality
fine linen next to skin - 3 layers no decorations

Skin: skin & tendons still extant on ankles',121,23,'','Undetermined',0.0,'Undetermined','',0,0,0,0,0,0,0,'','','','','','','','',0,0,3,0,0,0,0,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','Brown','V',0,0,0,0,0,'',0,'','','II','2nd molars','no adult teeth','No',2005,'Feb',13,'West'),
 ('N 190/200  E 40/50  SW #24','N','E',190,200,40,50,'SW',0.7,0.42,0.15,2.95,4.08,'Hair: nice RED hair

Skin: very waxy skin on cranium & feet

Textile: some palm stems supporting body
fine linen outer wrap
multiple coarse weave layers underneath
design layer
10 layers of coarse linen underneath design layer
some decors - photographed - 2 kinds of colored ribbon = red & perhaps purple

Design layers: 3 flower plant - like lotus - over forehead
fragile hairnet - photographed - went over the eyes down to mouth.',170,24,'','Undetermined',0.0,'Female','',0,0,3,0,0,0,0,'',42.2,40.2,'','',44.5,31.4,'',0,3,3,3,3,3,3,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','Red','III',0,0,0,0,0,'',0,'',164.015,'','2nd molars','','',2005,'Feb',15,'West'),
 ('N 190/200  E 40/50  SW #25','N','E',190,200,40,50,'SW',0.75,1.48,1.83,0.62,2.29,'Hair: long brown hair

Textile: hairnet in poor condition - group of hairnets bunched up = blue, gold, w/ red threads woven into them - from where? head, feet?

Many layers of line linen close to body - badly DECOMPOSED cannont count
3 layers fine linen outside - then folded irregularly fine linen, good hem - green, red, green lines woven into cloth - narrow, wide narrow, etc...',159,25,'','Undetermined',0.0,'Undetermined','',0,0,0,0,0,0,0,'','','','','','','','',0,0,0,0,0,0,0,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'buried with rings, leather strap etc..','Brown','',0,0,0,0,0,'',1,'','','','3rd molar','no perio - only a couple of carries','',2005,'Feb',15,'West'),
 ('N 190/200  E 40/50  SW #27','N','E',190,200,40,50,'SW',2.45,3.0,2.87,3.84,5.52,'Preservation Index: between V & VI

Textile: torn linen strips over outer medium coarse linen - 8 layers poorly preserved',176,27,'','Undetermined',0.0,'Male','',0,0,1,0,0,0,0,'',46.7,40.5,'','',42.1,30.1,'',1,1,1,0,0,1,1,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','Brown','VI',0,0,0,0,0,'',0,'',163.202,'V','3rd molar','perio - rampant','',2005,'Feb',14,'West'),
 ('N 190/200  E 40/50  SW #28','N','E',190,200,40,50,'SW',1.1,1.4,1.64,0.7,2.3,'Hair: brown slightly curly hair - beard a lot

Textile: 1st layer medium quality linen - torn strips NOT diagonal
then 5 layers of medium coarse weave torn ribbon strips of linen
4 more layers of medium coarse linen
4-strand red ribbon diagonal wrap over feet bundle
10cm long fringe on linen folded over feet 
layer closest to body = differing weave w/ 20cm long fringe (folded 5 times around feet)',169,28,'','Undetermined',0.0,'Male','',0,1,1,0,0,0,0,'',46.5,42.1,'','',43.5,32.4,'',1,1,1,0,1,1,1,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','Brown','III',0,0,0,0,0,'',0,'',166.45,'III','3rd molars','no perio, no carries','',2005,'Feb',14,'West'),
 ('N 190/200  E 40/50  SW #29','N','E',190,200,40,50,'SW',1.5,1.48,1.66,5.78,4.43,'REVERSAL - skeletalized

Preservation Index: between V & VI

Hair: 4-5cm long

Textile: medium quality fabric, perhaps 5 layers once.',157,29,'','Undetermined',0.0,'Undetermined','',0,3,3,0,0,0,0,'',40.4,36.1,'','',39.0,27.1,'',0,1,1,0,0,1,3,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','Blonde','VI',0,0,0,0,0,'',0,'',150.43,'IV','','','',2005,'Feb',14,'East'),
 ('N 190/200  E 40/50  SW #3','N','E',190,200,40,50,'SW',0.38,3.03,3.1,1.1,2.35,'Bundle of reeds (6 or more) under body

Textile: 3 strand red ribbon over face - rope criss-cross over face then twine & coarse outer layer - blue decorative pattern woven into next linen layer - rounded w/ crossing linen bands through rounded - then another design - outer wrap then rop diagonal (criss-cross) tie over next layer

-------------------- red  \
 ||||||||||||||||||||||||    blue  > 2 red threads like a border along design
-------------------- red  /

Face bundle: bound w/ twine rope - knot on top - coarse linen weave w/ red & blue wool thread pattern in it.',125,3,'','Undetermined',0.0,'Undetermined','',0,0,0,0,0,0,0,'','','','','','','','',0,0,0,0,0,0,0,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'Bronze (GOLD)  bracelet (left arm)','','',0,0,0,0,0,'',1,'','','II','2nd molar','','',2005,'Feb',3,'West'),
 ('N 190/200  E 40/50  SW #30','N','E',190,200,40,50,'SW',2.4,0.98,0.77,4.01,5.74,'Hair: brown & curly

Textile: coarse linen wrap @ feet 4 or more layers - 2 fine layers beneath',189,30,'','Undetermined',0.0,'Male','',0,0,0,0,0,0,0,'',47.9,43.2,'','',46.2,32.9,'',0,0,1,1,1,1,1,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','Brown','V',0,0,0,0,0,'',0,'',172.714,'IV','3rd molars','Tooth attrition: between III & IV

great mouth - no perio - good teeth but worn','',2005,'Feb',15,'West'),
 ('N 190/200  E 40/50  SW #31','N','E',190,200,40,50,'SW',1.38,2.55,2.97,1.22,2.88,'Textile: partial fabric on feet - 10 layers inside medium quality
4 layers medium quality outside
torn linen strips wrapping - 2cm wide',179,31,'','Undetermined',0.0,'Male','',0,3,3,0,0,0,0,'',47.8,44.5,'','',46.7,34.0,'',1,1,1,1,1,1,1,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','','V',0,0,0,0,0,'',0,'',173.874,'IV','3rd molar','Tooth attririon: between III & IV

much perio - no carries','',2005,'Feb',15,'West'),
 ('N 190/200  E 40/50  SW #32','N','E',190,200,40,50,'SW',1.11,1.59,1.5,0.57,2.25,'Textile: 4-strand red ribbon wrap - diagonal wrap
outside wrap = medium quality weave 
torn linen strips - 2cm wide over coarse inner layer - diagonal 5 layers of coarse 
then another torn linen strips horizontal arounf body - 3 more layers coarse then linen strips horizontal wrap
 4 layers coarse

face bundle - structured - multiple bundles of folded linen (6 of them) "no twisted" linen - red thread near top of face bundle.',171,32,'','Undetermined',0.0,'Male','',0,1,1,0,0,0,0,'',46.3,43.1,'','',44.1,32.1,'',1,1,3,1,1,1,3,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','Brown','',0,0,0,0,0,'',0,'',167.842,'III','3rd molar','maloclusion - some perio','',2005,'Feb',15,'West'),
 ('N 190/200  E 40/50  SW #33','N','E',190,200,40,50,'SW',1.06,1.15,1.21,0.63,2.12,'One of a trio - this one buried on top of SW34

Presevation Index: between II & III

Hair: long brown hair curled

Textile: lots of textiles on burial
torn line strips in diagonal wrap, medium quality outer wrap
rough linen strips -
then medium quality linen w/ nice red thread (folded so that red thread directly over feet - red thread also centered over middle of body)

4 pieces of linen wrapped over & over again - 
1st = foot structure made large by folding linen over feet
2nd = then coarse plain linen
3rd = another " " " " 
4th = another " " " "

Face bundle -',160,33,'','Undetermined',0.0,'Female','',0,0,3,0,0,0,0,'',43.4,39.2,'','',41.8,30.0,'',3,3,3,3,3,3,3,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','Brown','III',0,0,0,0,0,'',0,'',157.346,'','2nd molar','no carries - some perio esp. upper left maxilla','',2005,'Feb',15,'West'),
 ('N 190/200  E 40/50  SW #34','N','E',190,200,40,50,'SW',1.26,0.97,0.89,0.67,2.03,'Part of trio - buried underneath SW33

Hair: long brown hair

Textile: 14 layers coarse linen - torn strips over wrapping 3cm wide
3 layers of fine linen inside',145,34,'','Undetermined',0.0,'Female','',0,0,0,3,0,0,0,'','','','','','','','',3,3,3,0,3,3,3,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','Brown','IV',0,0,0,0,0,'',0,'','','II','2nd molar','','No',2005,'Feb',15,'West'),
 ('N 190/200  E 40/50  SW #36','N','E',190,200,40,50,'SW',2.27,1.46,1.36,1.37,3.1,'Offset chamber - POOR PRESERVED

Hair: dark brown

Textile: fragments of medium quality linen

Injuries - left arm broken then healed , skull has some trauma on left side',178,36,'','Undetermined',0.0,'Male','',0,1,1,0,0,0,0,'',44.5,41.8,'','',42.7,32.3,'',1,1,1,1,1,0,1,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','Brown','V',0,0,0,0,0,'',0,'',164.594,'III','','no carries - some perio

lower 2nd molar extruded because opposite upper molar was gone','',2005,'Feb',15,'West'),
 ('N 190/200  E 40/50  SW #37','N','E',190,200,40,50,'SW',1.27,4.43,3.92,-0.0599999999999996,1.29,'Hair: drak brown hair - VERY TIGHTLY curled

BIG EYE SOCKETS - VERY WIDE BONE BETWEEN EYES

Textile: coarse fragments of textiles - 
2 coarse outer layers
2 fine inner layers
torn linen strip wraps 2cm wide.',152,37,'','Undetermined',0.0,'Male','',0,1,1,0,0,0,0,'',46.1,42.5,'','',42.0,30.6,'',0,1,1,1,1,1,1,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','Brown','V',0,0,0,0,0,'',0,'',217.07,'V','3rd molars','Tooth attrition: between IV & V

extinsive carries - loss of bone in molar region - 2nd on LR mandible nearly gone from decay','',2005,'Feb',15,'West'),
 ('N 190/200  E 40/50  SW #38','N','E',190,200,40,50,'SW',1.17,4.48,4.32,4.01,5.5,'Hair: blond/brown

Textile: coarse outer layer of linen, overlaid w/ torn linen strips 2cm wide
5 layers total - all the same to the skin
non-structured material in foot bundle w/ 2cm fringe.',151,38,'','Undetermined',0.0,'Female','',0,3,3,0,0,0,0,'',40.9,'','','',41.2,'','',3,3,3,0,0,0,1,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','Blonde','V',0,0,0,0,0,'',0,'',155.864,'IV','2nd molar','perio took almost all teeth from mandible - only front teeth in mandible','',2005,'Feb',15,'West'),
 ('N 190/200  E 40/50  SW #4','N','E',190,200,40,50,'SW',0.65,1.12,1.33,4.5,5.13,'CHILD buried w/ SW#5 - another child

Hair: blond/red - reddish auburn

Textile: coarse linen - body filled w/ sand - braided linen beneath outer layer - yellow coarse linen underlayer

4 reeds under body - full length',82,4,'','Undetermined',0.0,'Undetermined','',0,0,0,0,0,0,0,'','','','','','','','',0,0,0,0,0,0,0,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','Blonde','',0,0,0,0,0,'',0,'','','','all pre-molars','all pre-molars (maxilla & mandible)','',2005,'Feb',9,'West'),
 ('N 190/200  E 40/50  SW #5','N','E',190,200,40,50,'SW',0.65,1.02,0.9,4.75,5.58,'CHILD buried w/ SW#4 - another child

Textile: decorative threads in textiles - red - coarse outer layer w/ 

4 strand red ribbon - inner layer not well preserved 

Face bundle: face bundle w/ twisted then over face  = <>
                                                                                       <>
                                                                                       <>
                                                                                       <>
                                                                                       <>
                                                                                       /\',90,5,'','Undetermined',0.0,'Undetermined','',0,0,0,0,0,0,0,'','','','','','','','',0,0,0,0,0,0,0,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'Jewelry - some beads (glass)
-bronze earings for pieced ears
-beads on leather string (8 beads 1 pearl)','Brown','V',0,0,0,0,0,'',1,'','','I','1st molars','','',2005,'Feb',5,'West'),
 ('N 190/200  E 40/50  SW #6','N','E',190,200,40,50,'SW',0.8,3.85,3.9,1.97,3.68,'Buried w/ SW#7 - a child

Hair: brown curly

Palm frond stems for body support (7 of them)

Textile: textiles on feet - big toes tied together to keep feet together - tied w/ a looped slip knot
 - some red thread over patella in linen

Face bundle - thick palm fiber mass -bound w/ plain ribbon then wadded linen - all for mass',169,6,'','Undetermined',0.0,'Male','',0,0,1,0,0,0,0,'','','','','','','','',1,0,1,0,1,0,1,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','Brown','IV',0,0,0,0,0,'',0,'','','II','2nd molars','','No',2005,'Feb',12,'West'),
 ('N 190/200  E 40/50  SW #7','N','E',190,200,40,50,'SW',0.8,4.04,4.1,2.8,3.7,'CHILD

Hair: red-brown

Textile: burlap quality weave - long fringe on inner layer (18cm long)

coarse outer wrap - held on by torn linen strips folded around body
next linen layer also held on by torn linen strips - diagonal tied at feet - palm sticks inside layers to give support

4 strand red ribbon - not neat but diagonal wrapping knot at waist

Face bundle - cloth encrusted with salt and attached to body - held to body by 2 wraps of torn linen strips - palm fiber bundle tied w/ twine - 3 bundles of fiber folded & twisted once, 1 bundle folded & twisted (as w/ linen) ->  <>
                                                   <>
                                                   <>
                                                   /\',90,7,'','Undetermined',0.0,'Female','',0,0,0,0,0,0,0,'','','','','','','','',3,3,3,3,3,0,0,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','Red','II',0,0,0,0,0,'',0,'','','','2nd molar','','',2005,'Feb',14,'West'),
 ('N 190/200  E 40/50  SW #8','N','E',190,200,40,50,'SW',0.35,1.12,1.24,0.7,2.05,'Big toes tied together - palm stems along back of body for support

Lots of rope wrapping over 3 layers of coarse linen - rope = 2 strands but a pair used for wrapping

2nd layer has a 2 strand rope - singles this time, holding next layer around body twist on itself, down body 20cm, twist on itself, 20cm down body , twists on itself, etc..',133,8,'','Undetermined',0.0,'Undetermined','',0,0,0,0,0,0,0,'','','','','','','','',0,0,0,0,0,0,0,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','','II',0,0,0,0,0,'',0,'','','','','','',2005,'Feb',8,'West'),
 ('N 190/200  E 40/50  SW #9','N','E',190,200,40,50,'SW',0.55,1.87,1.87,0.77,1.16,'INFANT 0-6mo.

Textile: twisted rope bundled on outside - palm fiber decorative weave on lots of textiles - linen & wool - decorative hem on cloth

skull fragments',40,9,'','Undetermined',0.0,'Undetermined','',0,0,0,0,0,0,0,'','','','','','','','',0,0,0,0,0,0,0,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'Fine glass fragments associated w/ burial','','',0,0,0,0,0,'',1,0.5,'','','None','','',2005,'Feb',9,'West'),
 ('N 200/210  E 20/30  SE #1','N','E',200,210,20,30,'SE',0.55,1.67,1.79,3.27,3.9,'Child',77,1,'','Undetermined',0.0,'','',0,0,0,0,0,0,0,'','','','','','','','',0,0,0,0,0,0,0,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','','',0,0,0,0,0,'',0,'','','','','','',1998,'','',''),
 ('N 200/210  E 20/30  SE #10','N','E',200,210,20,30,'SE',0.92,3.67,4.24,1.77,3.4,'burials 6 & 10 together, 6 over left shoulder & touching 10, both wrapped, ribbons, face bundles',174,10,'','Undetermined',0.0,'','',0,0,0,0,0,0,0,'','','','','','','','',0,0,0,0,0,0,0,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','','',0,0,0,0,0,'',0,'','','','','','',1998,'','',''),
 ('N 200/210  E 20/30  SE #11','N','E',200,210,20,30,'SE',0.9,3.87,4.0,3.35,4.35,'',110,11,'','Undetermined',0.0,'','',0,0,0,0,0,0,0,'','','','','','','','',0,0,0,0,0,0,0,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','','',0,0,0,0,0,'',0,'','','','','','',1998,'','',''),
 ('N 200/210  E 20/30  SE #2','N','E',200,210,20,30,'SE',0.56,1.44,2.02,2.18,3.47,'Adult (?) - Feet missing',165,2,'','Undetermined',0.0,'','',0,0,0,0,0,0,0,'','','','','','','','',0,0,0,0,0,0,0,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','','',0,0,0,0,0,'',0,'','','','','','',1998,'','',''),
 ('N 200/210  E 20/30  SE #3','N','E',200,210,20,30,'SE',0.72,1.34,1.24,1.17,1.85,'Child',67,3,'','Undetermined',0.0,'','',0,0,0,0,0,0,0,'','','','','','','','',0,0,0,0,0,0,0,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','','',0,0,0,0,0,'',0,'','','','','','',1998,'','',''),
 ('N 200/210  E 20/30  SE #4','N','E',200,210,20,30,'SE',0.6,0.84,1.02,2.13,2.72,'',61,4,'','Undetermined',0.0,'','',0,0,0,0,0,0,0,'','','','','','','','',0,0,0,0,0,0,0,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','','',0,0,0,0,0,'',0,'','','','','','',1998,'','',''),
 ('N 200/210  E 20/30  SE #5','N','E',200,210,20,30,'SE',0.95,2.87,3.03,0.9,2.31,'',149,5,'','Undetermined',0.0,'','',0,0,0,0,0,0,0,'','','','','','','','',0,0,0,0,0,0,0,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','','',0,0,0,0,0,'',0,'','','','','','',1998,'','',''),
 ('N 200/210  E 20/30  SE #6','N','E',200,210,20,30,'SE',0.85,3.82,4.3,1.6,3.31,'burials 6 & 10 together, 6 over left shoulder & touching 10, both wrapped, ribbons, face bundles',180,6,'','Undetermined',0.0,'','',0,0,0,0,0,0,0,'','','','','','','','',0,0,0,0,0,0,0,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','','',0,0,0,0,0,'',0,'','','','','','',1998,'','',''),
 ('N 200/210  E 20/30  SE #7','N','E',200,210,20,30,'SE',0.84,3.22,3.49,3.83,5.36,'',178,7,'','Undetermined',0.0,'','',0,0,0,0,0,0,0,'','','','','','','','',0,0,0,0,0,0,0,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','','',0,0,0,0,0,'',0,'','','','','','',1998,'','',''),
 ('N 200/210  E 20/30  SE #8','N','E',200,210,20,30,'SE',0.4,1.9,1.9,4.66,5.09,'',42,8,'','Undetermined',0.0,'','',0,0,0,0,0,0,0,'','','','','','','','',0,0,0,0,0,0,0,'',0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,'','','',0,0,0,0,0,'',0,'','','','','','',1998,'','',''),
 ('N 200/210  E 20/30  SE #9','N','E',200,210,20,30,'SE',0.98,0.78,1.18,3.88,5.78,'',182,9,9,'Female',848.3818,'','',0,0,0,0,0,0,0,'','','','','','','','',0,0,0,0,0,0,0,'',179.06,134.64,129.37,95.0,89.3,118.11,66.36,23.84,22.51,'','','',0,0,0,0,0,'',0,'','','','','','',1998,'','',''),
 ('N 180/190 E 40/50 NE #10','N','E',180,190,40,50,'NE',0.5021,NULL,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,180.7,143.52,126.65,96.77,99.12,121.18,66.93,23.83,17.2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('S 0/0 South 0/0 NW #1','S','South',0,0,0,0,'NW',0.0,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,195.46,147.38,136.7,103.05,99.84,142.17,103.65,26.66,28.36,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('N 0/0 South 10/20  #0','N','South',0,0,10,20,'',0.0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,182.3,139.65,135.69,102.02,87.62,128.12,74.18,23.64,22.4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('N 200/210 E 20/30 NE #22','N','E',200,210,20,30,'NE',0.0,NULL,NULL,NULL,NULL,NULL,NULL,22,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,185.57,146.11,128.52,114.91,104.96,135.02,72.76,24.28,24.96,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('N 200/210 E 30/40 SW #30','N','E',200,210,30,40,'SW',0.0,NULL,NULL,NULL,NULL,NULL,NULL,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,177.54,132.53,124.07,99.06,95.79,122.52,65.45,22.0,25.7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('N 200/210 E 20/30 SE #19','N','E',200,210,20,30,'SE',0.0,NULL,NULL,NULL,NULL,NULL,NULL,19,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,181.4,132.86,127.65,98.85,95.85,127.05,56.38,24.02,25.8,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('N 200/210 E 20/30 SE #28','N','E',200,210,20,30,'SE',0.0,NULL,NULL,NULL,NULL,NULL,NULL,28,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,176.15,132.3,134.65,104.65,101.2,122.71,72.02,24.26,23.69,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (' 0/0  0/0  #0',NULL,NULL,0,0,0,0,NULL,0.0,0.0,0.0,5.0,5.0,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,2005,'Dec',0,NULL),
 ('N 12/23 W 23/23 NE #44','N','W',12,23,23,23,'NE',12.0,12.0,13.0,12.0,44.0,NULL,33,44,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Brown',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,2011,'Dec',NULL,NULL),
 ('N 34/34 E 34/34 NE #23','N','E',34,34,34,34,'NE',12.0,12.0,12.0,12.0,12.0,NULL,12,23,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Red',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,2011,'0',NULL,NULL),
 ('N 12/12 E 12/12 NW #11','N','E',12,12,12,12,'NW',23.0,23.0,23.0,23.0,23.0,NULL,23,11,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Brown',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,2001,'Dec',NULL,NULL),
 ('N 140/150 E 0/11 SE #20','N','E',140,150,0,11,'SE',1.9,0.21,0.59,3.44,2.14,NULL,0,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Brown',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,0,'0',0,NULL);
COMMIT;
