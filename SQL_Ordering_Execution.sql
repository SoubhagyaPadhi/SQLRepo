CREATE TABLE employee (
    empid     NUMBER,
    empname   VARCHAR2(100),
    empdept   VARCHAR2(100)
);
commit;

insert into employee(empid,empname,empdept) values ('1','SKP','LIBRARY');
insert into employee(empid,empname,empdept) values ('2','RAHUL','MATH');
insert into employee(empid,empname,empdept) values ('3','JOHN','SCIENCE');
insert into employee(empid,empname,empdept) values ('4','HITESH','CHEMISTRY');
insert into employee(empid,empname,empdept) values ('5','HIMESH','ODIA');


CREATE TABLE employee_dept (
    empid     NUMBER,
    deptname   VARCHAR2(100),
    deptid   NUMBER
);

insert into employee_dept(empid,deptname,deptid) values ('1','LIBRARY','101');
insert into employee_dept(empid,deptname,deptid) values ('2','MATH','202');
insert into employee_dept(empid,deptname,deptid) values ('3','SCIENCE','303');
insert into employee_dept(empid,deptname,deptid) values ('4','CHEMISTRY','404');
insert into employee_dept(empid,deptname,deptid) values ('5','ODIA','505');

select * from employee;
select * from employee_dept;

--Join based on employee ID

with employee_join as (
select * from employee where empid in ('1','2','3')
),emp_dept_join as (
select * from employee_dept where deptid in ('101','202','303')
)
select count(*) from employee_join join emp_dept_join on employee_join.empid = emp_dept_join.empid;


SELECT
    COUNT(*)
FROM
    employee
    JOIN employee_dept ON employee.empid = employee_dept.empid
WHERE
    employee.empid IN (
        '1',
        '2',
        '3'
    )
    AND employee_dept.deptid IN (
        '101',
        '202',
        '303'
    );













