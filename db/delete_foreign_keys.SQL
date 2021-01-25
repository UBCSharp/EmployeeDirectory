ALTER TABLE LocationCompany DROP CONSTRAINT fkManagerCompany;
ALTER TABLE LocationOffice DROP CONSTRAINT fkManagerOffice;
ALTER TABLE LocationOffice DROP CONSTRAINT fkCompanyOffice;
ALTER TABLE LocationGroup DROP CONSTRAINT fkManagerGroup;
ALTER TABLE LocationGroup DROP CONSTRAINT fkOfficeGroup;
-- ALTER TABLE LocationGroup DROP CONSTRAINT fkCompanyGroup;
ALTER TABLE Skill DROP CONSTRAINT fkSkillCategorySkill;
ALTER TABLE Worker DROP CONSTRAINT fkLocationPhysicalWorker;
ALTER TABLE Employee DROP CONSTRAINT fkGroupEmployee;
ALTER TABLE Employee DROP CONSTRAINT fkWorkerEmployee;
-- ALTER TABLE Employee DROP CONSTRAINT fkOfficeEmployee;
-- ALTER TABLE Employee DROP CONSTRAINT fkCompanyEmployee;
ALTER TABLE Employee DROP CONSTRAINT fkSupervisorEmployee;
ALTER TABLE Contractor DROP CONSTRAINT fkWorkerContractor;
ALTER TABLE WorkerSkill DROP CONSTRAINT fkWorkerWorkerSkill;
-- ALTER TABLE WorkerSkill DROP CONSTRAINT fkSkillCategoryWorkerSkill;
ALTER TABLE WorkerSkill DROP CONSTRAINT fkSkillWorkerSkill;

