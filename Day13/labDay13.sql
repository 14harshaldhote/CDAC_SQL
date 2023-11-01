-- 3
delimiter //
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertRecord`(in id int,in name varchar(50) )
BEGIN
		#declare exit handler for 1062
        #begin 
		#	select "please avoid duplicate id" as message;
        #end;
		#insert into userInfo(userid, username)
        #values(id,name);
        
        #select * from userinfo;
        
        declare continue handler for 1062
        begin 
			select "please avoid duplicate id" as message;
        end;
		insert into userInfo(userid, username)
        values(id,name);
        
        select * from userinfo;
END//
delimiter ;


use dac_sept23;
-- 1
 DELIMITER $$

CREATE PROCEDURE DivideByZeroHandler(IN numerator INT, IN denominator INT)
BEGIN
    DECLARE customErrorMessage VARCHAR(255);
    DECLARE result DECIMAL(10, 2);
 
    IF denominator = 0 THEN
        select "Error: Division by zero is not allowed." as message;
    ELSE
        
        SET result = numerator / denominator;
        SELECT result AS Result;
    END IF;
END$$

DELIMITER ;

CALL DivideByZeroHandler(10, 5); -- Example with non-zero denominator
CALL DivideByZeroHandler(10, 0); -- Example with zero denominator

-- 2
