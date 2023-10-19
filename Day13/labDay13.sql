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

-- 1
