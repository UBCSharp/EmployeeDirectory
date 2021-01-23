INSERT INTO LocationCompany (CompanyCode, Label, ManagerEmployeeNumber) VALUES ('01', 'Acme Seeds Inc.', '10001');
INSERT INTO LocationCompany (CompanyCode, Label, ManagerEmployeeNumber) VALUES ('02', 'Acme Planting Ltd.', '20006');
INSERT INTO LocationCompany (CompanyCode, Label, ManagerEmployeeNumber) VALUES ('03', 'Acme Harvesting Ltd.', '30015');

INSERT INTO LocationOffice (CompanyCode, OfficeCode, Label, ManagerEmployeeNumber) VALUES ('01', '01', 'Corporate', '10001');
INSERT INTO LocationOffice (CompanyCode, OfficeCode, Label, ManagerEmployeeNumber) VALUES ('02', '01', 'Vancouver', '20006');
INSERT INTO LocationOffice (CompanyCode, OfficeCode, Label, ManagerEmployeeNumber) VALUES ('02', '02', 'Victoria', '20002');
INSERT INTO LocationOffice (CompanyCode, OfficeCode, Label, ManagerEmployeeNumber) VALUES ('03', '03', 'Kelowna', '30008');
INSERT INTO LocationOffice (CompanyCode, OfficeCode, Label, ManagerEmployeeNumber) VALUES ('03', '04', 'Prince George', '30012');

INSERT INTO LocationGroup (CompanyCode, OfficeCode, GroupCode, Label, ManagerEmployeeNumber) VALUES ('01', '01', '01', 'Administration', '10002');
INSERT INTO LocationGroup (CompanyCode, OfficeCode, GroupCode, Label, ManagerEmployeeNumber) VALUES ('01', '01', '02', 'Marketing', '10003');
INSERT INTO LocationGroup (CompanyCode, OfficeCode, GroupCode, Label, ManagerEmployeeNumber) VALUES ('01', '01', '03', 'Sales', '10004');
INSERT INTO LocationGroup (CompanyCode, OfficeCode, GroupCode, Label, ManagerEmployeeNumber) VALUES ('01', '01', '04', 'Accounting', '10005');
INSERT INTO LocationGroup (CompanyCode, OfficeCode, GroupCode, Label, ManagerEmployeeNumber) VALUES ('01', '01', '05', 'Human Resources', '10005');

INSERT INTO LocationGroup (CompanyCode, OfficeCode, GroupCode, Label, ManagerEmployeeNumber) VALUES ('02', '01', '02', 'Administration', '20006');
INSERT INTO LocationGroup (CompanyCode, OfficeCode, GroupCode, Label, ManagerEmployeeNumber) VALUES ('02', '01', '03', 'Marketing', '20003');
INSERT INTO LocationGroup (CompanyCode, OfficeCode, GroupCode, Label, ManagerEmployeeNumber) VALUES ('02', '02', '04', 'Sales', '20004');
INSERT INTO LocationGroup (CompanyCode, OfficeCode, GroupCode, Label, ManagerEmployeeNumber) VALUES ('02', '02', '05', 'Service', '20005');

INSERT INTO LocationGroup (CompanyCode, OfficeCode, GroupCode, Label, ManagerEmployeeNumber) VALUES ('03', '03', '03', 'Administration', '30012');
INSERT INTO LocationGroup (CompanyCode, OfficeCode, GroupCode, Label, ManagerEmployeeNumber) VALUES ('03', '03', '04', 'Marketing & Sales', '30023');
INSERT INTO LocationGroup (CompanyCode, OfficeCode, GroupCode, Label, ManagerEmployeeNumber) VALUES ('03', '03', '05', 'Distribution', '30024');
INSERT INTO LocationGroup (CompanyCode, OfficeCode, GroupCode, Label, ManagerEmployeeNumber) VALUES ('03', '04', '08', 'Operations', '30025');

INSERT INTO LocationPhysical (PhysicalLocationId, Label, SortValue) VALUES ('GHHDT1H7', 'Vancouver', 'A');
INSERT INTO LocationPhysical (PhysicalLocationId, Label, SortValue) VALUES ('TH8LF9', 'Victoria', 'B');
INSERT INTO LocationPhysical (PhysicalLocationId, Label, SortValue) VALUES ('LDFS8F3DDS', 'Kelowna', 'C');
INSERT INTO LocationPhysical (PhysicalLocationId, Label, SortValue) VALUES ('JGH7T', 'Prince George', 'D');

INSERT INTO SkillCategory (SkillCategoryId, Label, SortValue) VALUES ('1', 'Agriculture', 'A');
INSERT INTO SkillCategory (SkillCategoryId, Label, SortValue) VALUES ('2', 'Accounting', 'A');
INSERT INTO SkillCategory (SkillCategoryId, Label, SortValue) VALUES ('3', 'Management', 'A');
INSERT INTO SkillCategory (SkillCategoryId, Label, SortValue) VALUES ('4', 'Marketing & Sales', 'A');

INSERT INTO Skill (SkillCategoryId, SkillId, Label, SortValue) VALUES ('1', '1', 'Planting', 'B');
INSERT INTO Skill (SkillCategoryId, SkillId, Label, SortValue) VALUES ('1', '2', 'Harvesting', 'E');
INSERT INTO Skill (SkillCategoryId, SkillId, Label, SortValue) VALUES ('1', '3', 'Fertilizing', 'C');
INSERT INTO Skill (SkillCategoryId, SkillId, Label, SortValue) VALUES ('1', '4', 'Irrigating', 'D');
INSERT INTO Skill (SkillCategoryId, SkillId, Label, SortValue) VALUES ('1', '5', 'Soil Preparation', 'A');

INSERT INTO Skill (SkillCategoryId, SkillId, Label, SortValue) VALUES ('2', '1', 'Transaction Processing', 'A');
INSERT INTO Skill (SkillCategoryId, SkillId, Label, SortValue) VALUES ('2', '2', 'Reconciling', 'A');
INSERT INTO Skill (SkillCategoryId, SkillId, Label, SortValue) VALUES ('2', '3', 'Auditing', 'A');

INSERT INTO Skill (SkillCategoryId, SkillId, Label, SortValue) VALUES ('3', '1', 'Planning', 'A');
INSERT INTO Skill (SkillCategoryId, SkillId, Label, SortValue) VALUES ('3', '2', 'Budgeting', 'A');
INSERT INTO Skill (SkillCategoryId, SkillId, Label, SortValue) VALUES ('3', '3', 'Performance Reviews', 'A');

INSERT INTO Skill (SkillCategoryId, SkillId, Label, SortValue) VALUES ('4', '1', 'Preparing Marketing Materials', 'A');
INSERT INTO Skill (SkillCategoryId, SkillId, Label, SortValue) VALUES ('4', '2', 'Customer Service', 'A');
INSERT INTO Skill (SkillCategoryId, SkillId, Label, SortValue) VALUES ('4', '3', 'Marketing Strategies', 'A');

INSERT INTO Employee (EmployeeNumber, CompanyCode, OfficeCode, GroupCode, LastName, FirstName, EmploymentType, Title, HireDate, TerminationDate,
                      SupervisorEmployeeNumber, YearsPriorExperience, Email, WorkPhone, WorkCell, PhysicalLocationId, PhotoUrl)
              VALUES ('10001', '01', '01', '01', 'Acme', 'Susan', 'Salary', 'President and CEO', '1995-06-01', NULL,
                      '10001', 11.2, 'acmes@acme.ca', '604-123-4567', '604-123-7654', 'GHHDT1H7', 'some-url/acmes.jpg');
INSERT INTO Employee (EmployeeNumber, CompanyCode, OfficeCode, GroupCode, LastName, FirstName, EmploymentType, Title, HireDate, TerminationDate,
                      SupervisorEmployeeNumber, YearsPriorExperience, Email, WorkPhone, WorkCell, PhysicalLocationId, PhotoUrl)
              VALUES ('10002', '01', '01', '01', 'Johnson', 'Jill', 'Salary', 'COO', '1997-02-15', NULL,
                      '10001', 2.0, 'johnsonj@acme.ca', '604-123-5678', '604-123-8765', 'GHHDT1H7', 'some-url/johnsonj.jpg');
INSERT INTO Employee (EmployeeNumber, CompanyCode, OfficeCode, GroupCode, LastName, FirstName, EmploymentType, Title, HireDate, TerminationDate,
                      SupervisorEmployeeNumber, YearsPriorExperience, Email, WorkPhone, WorkCell, PhysicalLocationId, PhotoUrl)
              VALUES ('10003', '01', '01', '02', 'Sampson', 'Saul', 'Salary', 'Manager-Marketing', '1999-10-01', NULL,
                      '10002', 0.0, 'sampsons@acme.ca', '604-123-4567', '604-123-7654', 'GHHDT1H7', 'some-url/sampsons.jpg');
INSERT INTO Employee (EmployeeNumber, CompanyCode, OfficeCode, GroupCode, LastName, FirstName, EmploymentType, Title, HireDate, TerminationDate,
                      SupervisorEmployeeNumber, YearsPriorExperience, Email, WorkPhone, WorkCell, PhysicalLocationId, PhotoUrl)
              VALUES ('10004', '01', '01', '03', 'Da Silva', 'Gregore', 'Salary', 'Manager-Sales', '1998-02-01', NULL,
                      '10002', 2.1, 'dasilvag@acme.ca', '604-123-4567', '604-123-7654', 'GHHDT1H7', 'some-url/dasilvag.jpg');
INSERT INTO Employee (EmployeeNumber, CompanyCode, OfficeCode, GroupCode, LastName, FirstName, EmploymentType, Title, HireDate, TerminationDate,
                      SupervisorEmployeeNumber, YearsPriorExperience, Email, WorkPhone, WorkCell, PhysicalLocationId, PhotoUrl)
              VALUES ('10005', '01', '01', '05', 'Conner', 'Connie', 'Salary', 'Manager-HR/Accounting', '1997-05-28', NULL,
                      '10002', 3.2, 'connerc@acme.ca', '604-123-4567', '604-123-7654', 'GHHDT1H7', 'some-url/connerc.jpg');

INSERT INTO Employee (EmployeeNumber, CompanyCode, OfficeCode, GroupCode, LastName, FirstName, EmploymentType, Title, HireDate, TerminationDate,
                      SupervisorEmployeeNumber, YearsPriorExperience, Email, WorkPhone, WorkCell, PhysicalLocationId, PhotoUrl)
              VALUES ('20006', '02', '01', '02', 'Broadfoot', 'Brad', 'Salary', 'General Manager', '2001-05-28', NULL,
                      '10002', 3.2, 'broadfootb@acme.ca', '604-123-4567', '604-123-7654', 'GHHDT1H7', 'some-url/broadfootb.jpg');
INSERT INTO Employee (EmployeeNumber, CompanyCode, OfficeCode, GroupCode, LastName, FirstName, EmploymentType, Title, HireDate, TerminationDate,
                      SupervisorEmployeeNumber, YearsPriorExperience, Email, WorkPhone, WorkCell, PhysicalLocationId, PhotoUrl)
              VALUES ('20002', '02', '01', '02', 'Smithers', 'Sam', 'Salary', 'Operations Manager', '2002-05-28', NULL,
                      '20006', 3.2, 'smitherss@acme.ca', '604-123-4567', '604-123-7654', 'TH8LF9', 'some-url/smitherss.jpg');
INSERT INTO Employee (EmployeeNumber, CompanyCode, OfficeCode, GroupCode, LastName, FirstName, EmploymentType, Title, HireDate, TerminationDate,
                      SupervisorEmployeeNumber, YearsPriorExperience, Email, WorkPhone, WorkCell, PhysicalLocationId, PhotoUrl)
              VALUES ('20003', '02', '01', '03', 'Jones', 'Owen', 'Salary', 'Manager-Marketing', '2003-05-28', NULL,
                      '20006', 3.2, 'joneso@acme.ca', '604-123-4567', '604-123-7654', 'GHHDT1H7', 'some-url/joneso.jpg');
INSERT INTO Employee (EmployeeNumber, CompanyCode, OfficeCode, GroupCode, LastName, FirstName, EmploymentType, Title, HireDate, TerminationDate,
                      SupervisorEmployeeNumber, YearsPriorExperience, Email, WorkPhone, WorkCell, PhysicalLocationId, PhotoUrl)
              VALUES ('20004', '02', '02', '04', 'Westerson', 'Wally', 'Salary', 'Manager-Sales', '2004-05-28', NULL,
                      '20006', 3.2, 'westersonw@acme.ca', '604-123-4567', '604-123-7654', 'TH8LF9', 'some-url/westersonw.jpg');
INSERT INTO Employee (EmployeeNumber, CompanyCode, OfficeCode, GroupCode, LastName, FirstName, EmploymentType, Title, HireDate, TerminationDate,
                      SupervisorEmployeeNumber, YearsPriorExperience, Email, WorkPhone, WorkCell, PhysicalLocationId, PhotoUrl)
              VALUES ('20005', '02', '02', '05', 'Masters', 'Mark', 'Salary', 'Manager-Service', '2005-05-28', NULL,
                      '20006', 3.2, 'mastersm@acme.ca', '604-123-4567', '604-123-7654', 'TH8LF9', 'some-url/mastersm.jpg');

INSERT INTO Employee (EmployeeNumber, CompanyCode, OfficeCode, GroupCode, LastName, FirstName, EmploymentType, Title, HireDate, TerminationDate,
                      SupervisorEmployeeNumber, YearsPriorExperience, Email, WorkPhone, WorkCell, PhysicalLocationId, PhotoUrl)
              VALUES ('30015', '03', '03', '03', 'Ameras', 'Annie', 'Salary', 'General Manager', '2011-05-28', NULL,
                      '10002', 3.2, 'amerasa@acme.ca', '604-123-4567', '604-123-7654', 'LDFS8F3DDS', 'some-url/amerasa.jpg');
INSERT INTO Employee (EmployeeNumber, CompanyCode, OfficeCode, GroupCode, LastName, FirstName, EmploymentType, Title, HireDate, TerminationDate,
                      SupervisorEmployeeNumber, YearsPriorExperience, Email, WorkPhone, WorkCell, PhysicalLocationId, PhotoUrl)
              VALUES ('30008', '03', '03', '03', 'Lons', 'Lesley', 'Salary', 'Office Manager - Kelowna', '2012-05-28', NULL,
                      '30015', 3.2, 'lonsl@acme.ca', '604-123-4567', '604-123-7654', 'LDFS8F3DDS', 'some-url/lonsl.jpg');
INSERT INTO Employee (EmployeeNumber, CompanyCode, OfficeCode, GroupCode, LastName, FirstName, EmploymentType, Title, HireDate, TerminationDate,
                      SupervisorEmployeeNumber, YearsPriorExperience, Email, WorkPhone, WorkCell, PhysicalLocationId, PhotoUrl)
              VALUES ('30012', '03', '03', '03', 'Pessur', 'Polly', 'Salary', 'Office Manager - Prince George', '2013-05-28', NULL,
                      '30015', 3.2, 'pessurp@acme.ca', '250-123-4567', '250-123-7654', 'JGH7T', 'some-url/pessurp.jpg');
INSERT INTO Employee (EmployeeNumber, CompanyCode, OfficeCode, GroupCode, LastName, FirstName, EmploymentType, Title, HireDate, TerminationDate,
                      SupervisorEmployeeNumber, YearsPriorExperience, Email, WorkPhone, WorkCell, PhysicalLocationId, PhotoUrl)
              VALUES ('30023', '03', '03', '04', 'Robson', 'Rocky', 'Salary', 'Manager-Marketing & Sales', '2014-05-28', NULL,
                      '30008', 3.2, 'robsonr@acme.ca', '604-123-4567', '604-123-7654', 'LDFS8F3DDS', 'some-url/robsonr.jpg');
INSERT INTO Employee (EmployeeNumber, CompanyCode, OfficeCode, GroupCode, LastName, FirstName, EmploymentType, Title, HireDate, TerminationDate,
                      SupervisorEmployeeNumber, YearsPriorExperience, Email, WorkPhone, WorkCell, PhysicalLocationId, PhotoUrl)
              VALUES ('30024', '03', '03', '05', 'Sanders', 'Sandy', 'Salary', 'Manager-Distribution', '2015-05-28', NULL,
                      '30008', 3.2, 'sanderss@acme.ca', '604-123-4567', '604-123-7654', 'LDFS8F3DDS', 'some-url/sanderss.jpg');
INSERT INTO Employee (EmployeeNumber, CompanyCode, OfficeCode, GroupCode, LastName, FirstName, EmploymentType, Title, HireDate, TerminationDate,
                      SupervisorEmployeeNumber, YearsPriorExperience, Email, WorkPhone, WorkCell, PhysicalLocationId, PhotoUrl)
              VALUES ('30025', '03', '04', '08', 'Thompson', 'Tony', 'Salary', 'Manager-Operations', '2016-05-28', NULL,
                      '30012', 3.2, 'thompsont@acme.ca', '250-123-4567', '250-123-7654', 'JGH7T', 'some-url/thompsont.jpg');

INSERT INTO Employee (EmployeeNumber, CompanyCode, OfficeCode, GroupCode, LastName, FirstName, EmploymentType, Title, HireDate, TerminationDate,
                      SupervisorEmployeeNumber, YearsPriorExperience, Email, WorkPhone, WorkCell, PhysicalLocationId, PhotoUrl)
              VALUES ('10101', '01', '01', '01', 'Employee01', 'Name', 'Salary', 'Some title', '2020-01-01', NULL,
                      '10001', 0, 'something@acme.ca', '604-555-5555', '604-555-5555', 'GHHDT1H7', 'some-url/photo_default.jpg');
INSERT INTO Employee (EmployeeNumber, CompanyCode, OfficeCode, GroupCode, LastName, FirstName, EmploymentType, Title, HireDate, TerminationDate,
                      SupervisorEmployeeNumber, YearsPriorExperience, Email, WorkPhone, WorkCell, PhysicalLocationId, PhotoUrl)
              VALUES ('10102', '01', '01', '01', 'Employee02', 'Name', 'Salary', 'Some title', '2020-01-01', NULL,
                      '10002', 0, 'something@acme.ca', '604-555-5555', '604-555-5555', 'GHHDT1H7', 'some-url/photo_default.jpg');
INSERT INTO Employee (EmployeeNumber, CompanyCode, OfficeCode, GroupCode, LastName, FirstName, EmploymentType, Title, HireDate, TerminationDate,
                      SupervisorEmployeeNumber, YearsPriorExperience, Email, WorkPhone, WorkCell, PhysicalLocationId, PhotoUrl)
              VALUES ('10103', '01', '01', '02', 'Employee03', 'Name', 'Salary', 'Some title', '2020-01-01', NULL,
                      '10003', 0, 'something@acme.ca', '604-555-5555', '604-555-5555', 'GHHDT1H7', 'some-url/photo_default.jpg');
INSERT INTO Employee (EmployeeNumber, CompanyCode, OfficeCode, GroupCode, LastName, FirstName, EmploymentType, Title, HireDate, TerminationDate,
                      SupervisorEmployeeNumber, YearsPriorExperience, Email, WorkPhone, WorkCell, PhysicalLocationId, PhotoUrl)
              VALUES ('10104', '01', '01', '03', 'Employee04', 'Name', 'Salary', 'Some title', '2020-01-01', NULL,
                      '10004', 0, 'something@acme.ca', '604-555-5555', '604-555-5555', 'GHHDT1H7', 'some-url/photo_default.jpg');
INSERT INTO Employee (EmployeeNumber, CompanyCode, OfficeCode, GroupCode, LastName, FirstName, EmploymentType, Title, HireDate, TerminationDate,
                      SupervisorEmployeeNumber, YearsPriorExperience, Email, WorkPhone, WorkCell, PhysicalLocationId, PhotoUrl)
              VALUES ('10105', '01', '01', '04', 'Employee05', 'Name', 'Salary', 'Some title', '2020-01-01', NULL,
                      '10005', 0, 'something@acme.ca', '604-555-5555', '604-555-5555', 'GHHDT1H7', 'some-url/photo_default.jpg');
INSERT INTO Employee (EmployeeNumber, CompanyCode, OfficeCode, GroupCode, LastName, FirstName, EmploymentType, Title, HireDate, TerminationDate,
                      SupervisorEmployeeNumber, YearsPriorExperience, Email, WorkPhone, WorkCell, PhysicalLocationId, PhotoUrl)
              VALUES ('10106', '01', '01', '05', 'Employee06', 'Name', 'Salary', 'Some title', '2020-01-01', NULL,
                      '10005', 0, 'something@acme.ca', '604-555-5555', '604-555-5555', 'GHHDT1H7', 'some-url/photo_default.jpg');

INSERT INTO Employee (EmployeeNumber, CompanyCode, OfficeCode, GroupCode, LastName, FirstName, EmploymentType, Title, HireDate, TerminationDate,
                      SupervisorEmployeeNumber, YearsPriorExperience, Email, WorkPhone, WorkCell, PhysicalLocationId, PhotoUrl)
              VALUES ('20106', '02', '01', '02', 'Employee07', 'Name', 'Salary', 'Some title', '2020-01-01', NULL,
                      '20006', 0, 'something@acme.ca', '604-555-5555', '604-555-5555', 'GHHDT1H7', 'some-url/photo_default.jpg');
INSERT INTO Employee (EmployeeNumber, CompanyCode, OfficeCode, GroupCode, LastName, FirstName, EmploymentType, Title, HireDate, TerminationDate,
                      SupervisorEmployeeNumber, YearsPriorExperience, Email, WorkPhone, WorkCell, PhysicalLocationId, PhotoUrl)
              VALUES ('20102', '02', '02', '04', 'Employee08', 'Name', 'Salary', 'Some title', '2020-01-01', NULL,
                      '20002', 0, 'something@acme.ca', '604-555-5555', '604-555-5555', 'TH8LF9', 'some-url/photo_default.jpg');
INSERT INTO Employee (EmployeeNumber, CompanyCode, OfficeCode, GroupCode, LastName, FirstName, EmploymentType, Title, HireDate, TerminationDate,
                      SupervisorEmployeeNumber, YearsPriorExperience, Email, WorkPhone, WorkCell, PhysicalLocationId, PhotoUrl)
              VALUES ('20103', '02', '01', '03', 'Employee09', 'Name', 'Salary', 'Some title', '2020-01-01', NULL,
                      '20003', 0, 'something@acme.ca', '604-555-5555', '604-555-5555', 'TH8LF9', 'some-url/photo_default.jpg');
INSERT INTO Employee (EmployeeNumber, CompanyCode, OfficeCode, GroupCode, LastName, FirstName, EmploymentType, Title, HireDate, TerminationDate,
                      SupervisorEmployeeNumber, YearsPriorExperience, Email, WorkPhone, WorkCell, PhysicalLocationId, PhotoUrl)
              VALUES ('20104', '02', '02', '04', 'Employee10', 'Name', 'Salary', 'Some title', '2020-01-01', NULL,
                      '20004', 0, 'something@acme.ca', '604-555-5555', '604-555-5555', 'TH8LF9', 'some-url/photo_default.jpg');
INSERT INTO Employee (EmployeeNumber, CompanyCode, OfficeCode, GroupCode, LastName, FirstName, EmploymentType, Title, HireDate, TerminationDate,
                      SupervisorEmployeeNumber, YearsPriorExperience, Email, WorkPhone, WorkCell, PhysicalLocationId, PhotoUrl)
              VALUES ('20105', '02', '02', '05', 'Employee11', 'Name', 'Salary', 'Some title', '2020-01-01', NULL,
                      '20005', 0, 'something@acme.ca', '604-555-5555', '604-555-5555', 'TH8LF9', 'some-url/photo_default.jpg');

INSERT INTO Employee (EmployeeNumber, CompanyCode, OfficeCode, GroupCode, LastName, FirstName, EmploymentType, Title, HireDate, TerminationDate,
                      SupervisorEmployeeNumber, YearsPriorExperience, Email, WorkPhone, WorkCell, PhysicalLocationId, PhotoUrl)
              VALUES ('30115', '03', '03', '03', 'Employee12', 'Name', 'Salary', 'Some title', '2020-01-01', NULL,
                      '30015', 0, 'something@acme.ca', '604-555-5555', '604-555-5555', 'LDFS8F3DDS', 'some-url/photo_default.jpg');
INSERT INTO Employee (EmployeeNumber, CompanyCode, OfficeCode, GroupCode, LastName, FirstName, EmploymentType, Title, HireDate, TerminationDate,
                      SupervisorEmployeeNumber, YearsPriorExperience, Email, WorkPhone, WorkCell, PhysicalLocationId, PhotoUrl)
              VALUES ('30112', '03', '03', '03', 'Employee13', 'Name', 'Salary', 'Some title', '2020-01-01', NULL,
                      '30012', 0, 'something@acme.ca', '604-555-5555', '604-555-5555', 'LDFS8F3DDS', 'some-url/photo_default.jpg');
INSERT INTO Employee (EmployeeNumber, CompanyCode, OfficeCode, GroupCode, LastName, FirstName, EmploymentType, Title, HireDate, TerminationDate,
                      SupervisorEmployeeNumber, YearsPriorExperience, Email, WorkPhone, WorkCell, PhysicalLocationId, PhotoUrl)
              VALUES ('30123', '03', '03', '04', 'Employee14', 'Name', 'Salary', 'Some title', '2020-01-01', NULL,
                      '30023', 0, 'something@acme.ca', '604-555-5555', '604-555-5555', 'LDFS8F3DDS', 'some-url/photo_default.jpg');
INSERT INTO Employee (EmployeeNumber, CompanyCode, OfficeCode, GroupCode, LastName, FirstName, EmploymentType, Title, HireDate, TerminationDate,
                      SupervisorEmployeeNumber, YearsPriorExperience, Email, WorkPhone, WorkCell, PhysicalLocationId, PhotoUrl)
              VALUES ('30124', '03', '03', '05', 'Employee15', 'Name', 'Salary', 'Some title', '2020-01-01', NULL,
                      '30024', 0, 'something@acme.ca', '604-555-5555', '604-555-5555', 'LDFS8F3DDS', 'some-url/photo_default.jpg');
INSERT INTO Employee (EmployeeNumber, CompanyCode, OfficeCode, GroupCode, LastName, FirstName, EmploymentType, Title, HireDate, TerminationDate,
                      SupervisorEmployeeNumber, YearsPriorExperience, Email, WorkPhone, WorkCell, PhysicalLocationId, PhotoUrl)
              VALUES ('30125', '03', '04', '08', 'Employee16', 'Name', 'Salary', 'Some title', '2020-01-01', NULL,
                      '30025', 0, 'something@acme.ca', '604-555-5555', '604-555-5555', 'JGH7T', 'some-url/photo_default.jpg');

/* Terminated employees */

INSERT INTO Employee (EmployeeNumber, CompanyCode, OfficeCode, GroupCode, LastName, FirstName, EmploymentType, Title, HireDate, TerminationDate,
                      SupervisorEmployeeNumber, YearsPriorExperience, Email, WorkPhone, WorkCell, PhysicalLocationId, PhotoUrl)
              VALUES ('19102', '01', '01', '01', 'TermEmployee01', 'Name', 'Salary', 'Some title', '2015-01-01', '2018-06-01',
                      '10002', 0, 'something@acme.ca', '604-555-5555', '604-555-5555', 'GHHDT1H7', 'some-url/photo_default.jpg');
INSERT INTO Employee (EmployeeNumber, CompanyCode, OfficeCode, GroupCode, LastName, FirstName, EmploymentType, Title, HireDate, TerminationDate,
                      SupervisorEmployeeNumber, YearsPriorExperience, Email, WorkPhone, WorkCell, PhysicalLocationId, PhotoUrl)
              VALUES ('29102', '02', '02', '04', 'TermEmployee02', 'Name', 'Salary', 'Some title', '2016-01-01', '2019-06-01',
                      '20004', 0, 'something@acme.ca', '604-555-5555', '604-555-5555', 'TH8LF9', 'some-url/photo_default.jpg');
INSERT INTO Employee (EmployeeNumber, CompanyCode, OfficeCode, GroupCode, LastName, FirstName, EmploymentType, Title, HireDate, TerminationDate,
                      SupervisorEmployeeNumber, YearsPriorExperience, Email, WorkPhone, WorkCell, PhysicalLocationId, PhotoUrl)
              VALUES ('39123', '03', '03', '04', 'TermEmployee03', 'Name', 'Salary', 'Some title', '2017-01-01', '2020-06-01',
                      '30023', 0, 'something@acme.ca', '604-555-5555', '604-555-5555', 'LDFS8F3DDS', 'some-url/photo_default.jpg');

INSERT INTO EmployeeSkills (EmployeeNumber, SkillCategoryId, SkillId, SkillLevel) VALUES ('30015', '2', '2', 'Novice');
INSERT INTO EmployeeSkills (EmployeeNumber, SkillCategoryId, SkillId, SkillLevel) VALUES ('30015', '3', '1', 'Intermediate');
INSERT INTO EmployeeSkills (EmployeeNumber, SkillCategoryId, SkillId, SkillLevel) VALUES ('30015', '3', '3', 'Novice');

INSERT INTO EmployeeSkills (EmployeeNumber, SkillCategoryId, SkillId, SkillLevel) VALUES ('10105', '2', '1', 'Intermediate');
INSERT INTO EmployeeSkills (EmployeeNumber, SkillCategoryId, SkillId, SkillLevel) VALUES ('10105', '2', '2', 'Intermediate');
INSERT INTO EmployeeSkills (EmployeeNumber, SkillCategoryId, SkillId, SkillLevel) VALUES ('10105', '2', '3', 'Intermediate');
INSERT INTO EmployeeSkills (EmployeeNumber, SkillCategoryId, SkillId, SkillLevel) VALUES ('10105', '3', '2', 'Expert');

INSERT INTO EmployeeSkills (EmployeeNumber, SkillCategoryId, SkillId, SkillLevel) VALUES ('20004', '4', '1', 'Intermediate');
INSERT INTO EmployeeSkills (EmployeeNumber, SkillCategoryId, SkillId, SkillLevel) VALUES ('20004', '4', '2', 'Expert');
INSERT INTO EmployeeSkills (EmployeeNumber, SkillCategoryId, SkillId, SkillLevel) VALUES ('20004', '3', '1', 'Intermediate');

INSERT INTO EmployeeSkills (EmployeeNumber, SkillCategoryId, SkillId, SkillLevel) VALUES ('30125', '1', '2', 'Intermediate');
INSERT INTO EmployeeSkills (EmployeeNumber, SkillCategoryId, SkillId, SkillLevel) VALUES ('30125', '1', '3', 'Novice');
INSERT INTO EmployeeSkills (EmployeeNumber, SkillCategoryId, SkillId, SkillLevel) VALUES ('30125', '1', '5', 'Expert');
