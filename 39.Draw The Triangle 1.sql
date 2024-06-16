DELIMITER $$
Create Procedure while_proc()
begin 

    DECLARE i int default 20;
    While i> 0 DO
        Select repeat('* ',i);
        set i = i-1;
        END WHILE;
End$$
DELIMITER ;

CALL while_proc();