CREATE TABLE WalmartCalls(
    CalleName varchar(255), 
    RecipientName varchar(255),
    Datecalled datetime
);

insert into WalmartCalls(CalleName, RecipientName, Datecalled)
values('Alex', 'Nora', '2017-01-01 09:00:00.000'),
       ('Alex', 'Sara', '2017-01-01 17:00:00.000'),
       ('Alex', 'Anna', '2017-01-01 23:00:00.000'),
       ('Alex', 'Emily', '2017-07-05 09:00:00.000'),
       ('Alex', 'Sara', '2017-07-05 17:00:00.000'),
       ('Alex', 'Sara', '2017-07-05 17:20:00.000'),
       ('Alex', 'Emily', '2017-07-05 23:00:00.000'),
       ('Maria', 'Sara', '2017-08-01 09:00:00.000'),
       ('Maria', 'Sara', '2017-08-01 17:00:00.000'),
       ('Maria', 'Emily', '2017-08-01 19:30:00.000'),
       ('Maria', 'Anna', '2017-08-02 09:00:00.000'),
       ('Maria', 'Emily', '2017-08-02 10:00:00.000'),
       ('Maria', 'Emily', '2017-08-02 10:45:00.000'),
       ('Maria', 'Anna', '2017-08-02 11:00:00.000');

SELECT * FROM WalmartCalls;


SELECT CalleName, CAST(dateCalled AS date) AS CalledDate,MIN (dateCalled) AS FirstCall,
MAX (dateCalled) AS LastCall FROM WalmartCalls
GROUP BY CalleName, CAST(dateCalled AS date);

