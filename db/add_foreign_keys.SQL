ALTER TABLE LocationCompany
ADD CONSTRAINT fkManagerCompany
FOREIGN KEY (ManagerEmployeeNumber) REFERENCES Employee(EmployeeNumber);

ALTER TABLE LocationOffice
ADD CONSTRAINT fkManagerOffice
FOREIGN KEY (ManagerEmployeeNumber) REFERENCES Employee(EmployeeNumber);

ALTER TABLE LocationOffice
ADD CONSTRAINT fkCompanyOffice
FOREIGN KEY (CompanyCode) REFERENCES LocationCompany(CompanyCode);

ALTER TABLE LocationGroup
ADD CONSTRAINT fkManagerGroup
FOREIGN KEY (ManagerEmployeeNumber) REFERENCES Employee(EmployeeNumber);

ALTER TABLE LocationGroup
ADD CONSTRAINT fkOfficeGroup
FOREIGN KEY (CompanyCode, OfficeCode) REFERENCES LocationOffice(CompanyCode, OfficeCode);

-- ALTER TABLE LocationGroup
-- ADD CONSTRAINT fkCompanyGroup
-- FOREIGN KEY (CompanyCode) REFERENCES LocationCompany(CompanyCode);

ALTER TABLE Skill
ADD CONSTRAINT fkSkillCategorySkill
FOREIGN KEY (SkillCategoryId) REFERENCES SkillCategory(SkillCategoryId);

ALTER TABLE Worker
ADD CONSTRAINT fkLocationPhysicalWorker
FOREIGN KEY (PhysicalLocationId) REFERENCES LocationPhysical(PhysicalLocationId);

ALTER TABLE Employee
ADD CONSTRAINT fkWorkerEmployee
FOREIGN KEY (EmployeeNumber) REFERENCES Worker(WorkerNumber);

ALTER TABLE Employee
ADD CONSTRAINT fkGroupEmployee
FOREIGN KEY (CompanyCode, OfficeCode, GroupCode) REFERENCES LocationGroup(CompanyCode, OfficeCode, GroupCode);

-- ALTER TABLE Employee
-- ADD CONSTRAINT fkOfficeEmployee
-- FOREIGN KEY (CompanyCode, OfficeCode) REFERENCES LocationOffice(CompanyCode, OfficeCode);

-- ALTER TABLE Employee
-- ADD CONSTRAINT fkCompanyEmployee
-- FOREIGN KEY (CompanyCode) REFERENCES LocationCompany(CompanyCode);

ALTER TABLE Employee
ADD CONSTRAINT fkSupervisorEmployee
FOREIGN KEY (SupervisorEmployeeNumber) REFERENCES Employee(EmployeeNumber);

ALTER TABLE Contractor
ADD CONSTRAINT fkWorkerContractor
FOREIGN KEY (ContractorNumber) REFERENCES Worker(WorkerNumber);

ALTER TABLE WorkerSkill
ADD CONSTRAINT fkWorkerWorkerSkill
FOREIGN KEY (WorkerNumber) REFERENCES Worker(WorkerNumber);

ALTER TABLE WorkerSkill
ADD CONSTRAINT fkSkillWorkerSkill
FOREIGN KEY (SkillCategoryId, SkillId) REFERENCES Skill(SkillCategoryId, SkillId);

-- ALTER TABLE WorkerSkill
-- ADD CONSTRAINT fkSkillCategoryWorkerSkill
-- FOREIGN KEY (SkillCategoryId) REFERENCES SkillCategory(SkillCategoryId);