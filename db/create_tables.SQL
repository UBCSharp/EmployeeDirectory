
CREATE TABLE LocationCompany
    (
        CompanyCode                    VARCHAR(2)    NOT NULL,
        Label                          VARCHAR(20)   NOT NULL,
        ManagerEmployeeNumber          VARCHAR(10)   NOT NULL,
CONSTRAINT pkLocationCompany PRIMARY KEY
    (
        CompanyCode
    ),
CONSTRAINT fkCompanyManager FOREIGN KEY (ManagerEmployeeNumber) REFERENCES Employee(EmployeeNumber));

/****************************************************************/

CREATE TABLE LocationOffice
    (
        CompanyCode                    VARCHAR(2)    NOT NULL,
        OfficeCode                     VARCHAR(2)    NOT NULL,
        Label                          VARCHAR(20)   NOT NULL,
        ManagerEmployeeNumber          VARCHAR(10)   NOT NULL,
CONSTRAINT pkLocationOffice PRIMARY KEY
    (
        CompanyCode,
        OfficeCode
    ),
CONSTRAINT fkCompanyOffice FOREIGN KEY (CompanyCode) REFERENCES LocationCompany(CompanyCode),
CONSTRAINT fkOfficeManager FOREIGN KEY (ManagerEmployeeNumber) REFERENCES Employee(EmployeeNumber));

/****************************************************************/

CREATE TABLE LocationGroup
    (
        CompanyCode                    VARCHAR(2)    NOT NULL,
        OfficeCode                     VARCHAR(2)    NOT NULL,
        GroupCode                      VARCHAR(2)    NOT NULL,
        Label                          VARCHAR(20)   NOT NULL,
        ManagerEmployeeNumber          VARCHAR(10)   NOT NULL,
CONSTRAINT pkLocationGroup PRIMARY KEY
    (
        CompanyCode,
        OfficeCode,
        GroupCode
    ),
CONSTRAINT fkOfficeGroup FOREIGN KEY (CompanyCode, OfficeCode) REFERENCES LocationOffice(CompanyCode, OfficeCode),
CONSTRAINT FK_Company FOREIGN KEY (CompanyCode) REFERENCES LocationCompany(CompanyCode),
CONSTRAINT fkGroupManager FOREIGN KEY (ManagerEmployeeNumber) REFERENCES Employee(EmployeeNumber));

/****************************************************************/

CREATE TABLE LocationPhysical
    (
        PhysicalLocationId             VARCHAR(20)   NOT NULL,
        Label                          VARCHAR(100)  NOT NULL,
        SortValue                      VARCHAR(100)  NOT NULL,
CONSTRAINT pkLocationPhysical PRIMARY KEY
    (
        PhysicalLocationId
    ));

/****************************************************************/

CREATE TABLE SkillCategory
    (
        SkillCategoryId                VARCHAR(20)   NOT NULL,
        Label                          VARCHAR(100)  NOT NULL,
        SortValue                      VARCHAR(10)   NOT NULL,
CONSTRAINT pkSkillCategory PRIMARY KEY
    (
        SkillCategoryId
    ));

/****************************************************************/

CREATE TABLE Skill
    (
        SkillCategoryId                VARCHAR(32)   NOT NULL,
        SkillId                        VARCHAR(32)   NOT NULL,
        Label                          VARCHAR(100)  NOT NULL,
        SortValue                      VARCHAR(10)   NOT NULL,
CONSTRAINT pkSkill PRIMARY KEY
    (
        SkillCategoryId,
        SkillId
    ),
CONSTRAINT fkSkillCategorySkill FOREIGN KEY (SkillCategoryId) REFERENCES SkillCategory(SkillCategoryId));

/****************************************************************/

CREATE TABLE Employee
    (
        EmployeeNumber                 VARCHAR(10)   NOT NULL,
        CompanyCode                    VARCHAR(2)    NOT NULL,
        OfficeCode                     VARCHAR(2)    NOT NULL,
        GroupCode                      VARCHAR(2)    NOT NULL,
        LastName                       VARCHAR(50),
        FirstName                      VARCHAR(25),
        EmploymentType                 VARCHAR(10),
        Title                          VARCHAR(50),
        HireDate                       DATE,
        TerminationDate                DATE,
        SupervisorEmployeeNumber       VARCHAR(10)   NOT NULL,
        YearsPriorExperience           NUMERIC(3,1),
        Email                          VARCHAR(50),
        WorkPhone                      VARCHAR(24),
        WorkCell                       VARCHAR(24),
        PhysicalLocationId             VARCHAR(20)   NOT NULL,
        PhotoUrl                       VARCHAR(255)
CONSTRAINT pkEmployee PRIMARY KEY
    (
        EmployeeNumber
    ),
CONSTRAINT fkGroupEmployee FOREIGN KEY (CompanyCode, OfficeCode, GroupCode) REFERENCES LocationGroup(CompanyCode, OfficeCode, GroupCode),
CONSTRAINT fkOfficeEmployee FOREIGN KEY (CompanyCode, OfficeCode) REFERENCES LocationOffice(CompanyCode, OfficeCode),
CONSTRAINT fkCompanyEmployee FOREIGN KEY (CompanyCode) REFERENCES LocationCompany(CompanyCode),
CONSTRAINT fkSupervisorEmployee FOREIGN KEY (SupervisorEmployeeNumber) REFERENCES Employee(EmployeeNumber),
CONSTRAINT fkPhysicalLocationEmployee FOREIGN KEY (PhysicalLocationId) REFERENCES LocationPhysical(PhysicalLocationId));

/****************************************************************/

CREATE TABLE EmployeeSkill
    (
        EmployeeNumber                 VARCHAR(10)   NOT NULL,
        SkillCategoryId                VARCHAR(32)   NOT NULL,
        SkillId                        VARCHAR(32)   NOT NULL,
        SkillLevel                     VARCHAR(12)   NOT NULL CHECK (SkillLevel IN('novice', 'intermediate', 'expert')),
CONSTRAINT pkEmployeeSkills PRIMARY KEY
    (
        EmployeeNumber,
        SkillCategoryId,
        SkillId
    ),
CONSTRAINT fkEmployeeEmployeeSkill FOREIGN KEY (EmployeeNumber) REFERENCES Employee(EmployeeNumber),
CONSTRAINT fkSkillEmployeeSkill FOREIGN KEY (SkillCategoryId, SkillId) REFERENCES Skill(SkillCategoryId, SkillId),
CONSTRAINT fkSkillCategory FOREIGN KEY (SkillCategoryId) REFERENCES SkillCategory(SkillCategoryId));
