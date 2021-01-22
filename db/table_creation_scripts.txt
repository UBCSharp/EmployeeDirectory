
CREATE TABLE LocationCompany
    (
        CompanyCode                    VARCHAR(2)    NOT NULL,
        Label                          VARCHAR(20)   NOT NULL,
        ManagerEmployeeNumber          VARCHAR(10)   NOT NULL,
CONSTRAINT pkLocationCompany PRIMARY KEY
    (
        CompanyCode
    ));

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
    ));

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
    ));

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
    ));

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
    ));

/****************************************************************/

CREATE TABLE EmployeeSkills
    (
        EmployeeNumber                 VARCHAR(10)   NOT NULL,
        SkillCategoryId                VARCHAR(32)   NOT NULL,
        SkillId                        VARCHAR(32)   NOT NULL,
CONSTRAINT pkEmployeeSkills PRIMARY KEY
    (
        EmployeeNumber,
        SkillCategoryId,
        SkillId
    ));
