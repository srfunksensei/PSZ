/*
	PREDICTION OF IS_ATTACK, ATTACK_GROUP
	ON FLAG, SERVICE AND PROTOCOL TYPE
*/

USE PSZTest
/* 
	table for evaluation
*/
CREATE TABLE [Result_Table_KNN_Prediction2](
	[ID] INT NOT NULL,
	[isAttackPrediction] BIT NOT NULL,
	[isAttack] BIT NOT NULL,
	[attackGroupPrediction] NVARCHAR(5) NOT NULL,
	[attackGroup] NVARCHAR(5) NOT NULL,
) ON [PRIMARY]

/*
	temporary table for calculating KNN 
*/
CREATE TABLE #Temp(
	[ID] INT NOT NULL, 
	[isAttack] BIT NOT NULL,
	[attackGroup] NVARCHAR(5) NOT NULL,
	[distance] DECIMAL(38, 2) NOT NULL
				-- 38 maximum total number of decimal digits that can be stored (default 18)
				-- 2 maximum number of decimal digits that can be stored to the right of the decimal point
)

/*
	declare variables for KNN algorythm
*/
DECLARE @duration FLOAT,
		@src_bytes FLOAT,
		@dst_bytes FLOAT,
		@wrong_fragment FLOAT,
		@urgent FLOAT,
		@hot FLOAT,
		@num_failed_logins FLOAT,
		@num_compromised FLOAT,
		@num_root FLOAT,
		@num_file_creations FLOAT,
		@num_shells FLOAT,
		@num_access_files FLOAT,
		@num_outbound_cmds FLOAT,
		@count FLOAT,
		@srv_count FLOAT,
		@serror_rate FLOAT,
		@srv_serror_rate FLOAT,
		@rerror_rate FLOAT,
		@srv_rerror_rate FLOAT,
		@same_srv_rate FLOAT,
		@diff_srv_rate FLOAT,
		@srv_diff_host_rate FLOAT,
		@dst_host_count FLOAT,
		@dst_host_srv_count FLOAT,
		@dst_host_same_srv_rate FLOAT,
		@dst_host_diff_srv_rate FLOAT,
		@dst_host_same_src_port_rate FLOAT,
		@dst_host_srv_diff_host_rate FLOAT,
		@dst_host_serror_rate FLOAT,
		@dst_host_srv_serror_rate FLOAT,
		@dst_host_rerror_rate FLOAT,
		@dst_host_srv_rerror_rate FLOAT,

		@protocol_type NVARCHAR(20),
		@service NVARCHAR(20),
		@flag NVARCHAR(20),
		@attack_type NVARCHAR(20),
		@attack_group NVARCHAR(20),
		
		@land BIT,
		@logged_in BIT,
		@root_shell BIT,
		@su_attempted BIT,
		@is_host_login BIT,
		@is_guest_login BIT,
		@is_attack BIT

DECLARE @ID INT -- database ID

/*
	declare cursor  
*/
DECLARE db_cursor CURSOR FOR
SELECT id
FROM MMN_Validation_Set

/*
	OPEN - Open the cursor to begin data processing
	and
	FETCH - Assign the specific values from the cursor to the variables
*/
OPEN db_cursor   
FETCH NEXT FROM db_cursor INTO @ID

WHILE @@FETCH_STATUS = 0   
BEGIN   
       /*
		select all variables except attack_type
		from selected row of validation set
		where id = @ID
       */
		
		SELECT	@duration = duration,
				@protocol_type = protocol_type,
				@service = service,
				@flag = flag,
				@src_bytes = src_bytes,
				@dst_bytes = dst_bytes,
				@land = land,
				@wrong_fragment = wrong_fragment,
				@urgent = urgent,
				@hot = hot,
				@num_failed_logins = num_failed_logins,
				@logged_in = logged_in,
				@num_compromised = num_compromised,
				@root_shell = root_shell,
				@su_attempted = su_attempted,
				@num_root = num_root,
				@num_file_creations = num_file_creations,
				@num_shells = num_shells,
				@num_access_files = num_access_files,
				@num_outbound_cmds = num_outbound_cmds,
				@is_host_login = is_host_login,
				@is_guest_login = is_guest_login,
				@count = count,
				@srv_count = srv_count,
				@serror_rate = serror_rate,
				@srv_serror_rate = srv_serror_rate,
				@rerror_rate = rerror_rate,
				@srv_rerror_rate = srv_rerror_rate,
				@same_srv_rate = same_srv_rate,
				@diff_srv_rate = diff_srv_rate,
				@srv_diff_host_rate = srv_diff_host_rate,
				@dst_host_count = dst_host_count,
				@dst_host_srv_count = dst_host_srv_count,
				@dst_host_same_srv_rate = dst_host_same_srv_rate,
				@dst_host_diff_srv_rate = dst_host_diff_srv_rate,
				@dst_host_same_src_port_rate = dst_host_same_src_port_rate,
				@dst_host_srv_diff_host_rate = dst_host_srv_diff_host_rate,
				@dst_host_serror_rate = dst_host_serror_rate,
				@dst_host_srv_serror_rate = dst_host_srv_serror_rate,
				@dst_host_rerror_rate = dst_host_rerror_rate,
				@dst_host_srv_rerror_rate = dst_host_srv_rerror_rate,
				@attack_type = attack_type,
				@is_attack = is_attack,
				@attack_group = attack_group
		FROM MMN_Validation_Set
		WHERE id = @ID
		
		
		/* 
		 SELECT TOP(3) 
		 from Euclidean distance
		 where service = @service
		 and protocolType = @protocolType
		 order by distance
		 
		 and insert values in #Temp table
		*/
		INSERT INTO #Temp(ID, isAttack, attackGroup, distance)
		SELECT TOP(3) id, is_attack, attack_group, 
		SQRT(
			SQUARE(duration - @duration) +
			SQUARE(src_bytes - @src_bytes) +
			SQUARE(dst_bytes - @dst_bytes) +
			SQUARE(wrong_fragment - @wrong_fragment) +
			SQUARE(urgent - @urgent) +
			SQUARE(hot - @hot) +
			SQUARE(num_failed_logins - @num_failed_logins) +
			SQUARE(num_compromised - @num_compromised) +
			SQUARE(num_root - @num_root) +
			SQUARE(num_file_creations - @num_file_creations) +
			SQUARE(num_shells - @num_shells) +
			SQUARE(num_access_files - @num_access_files) +
			SQUARE(num_outbound_cmds - @num_outbound_cmds) +
			SQUARE(count - @count) + 
			SQUARE(srv_count - @srv_count) +
			SQUARE(serror_rate - @serror_rate) +
			SQUARE(srv_serror_rate - @srv_serror_rate) +
			SQUARE(rerror_rate - @rerror_rate) +
			SQUARE(srv_rerror_rate - @srv_rerror_rate) +
			SQUARE(same_srv_rate - @same_srv_rate) +
			SQUARE(diff_srv_rate - @diff_srv_rate) +
			SQUARE(srv_diff_host_rate - @srv_diff_host_rate) +
			SQUARE(dst_host_count - @dst_host_count) +
			SQUARE(dst_host_srv_count - @dst_host_srv_count) +
			SQUARE(dst_host_same_srv_rate - @dst_host_same_srv_rate) +
			SQUARE(dst_host_diff_srv_rate - @dst_host_diff_srv_rate) +
			SQUARE(dst_host_same_src_port_rate - @dst_host_same_src_port_rate) +
			SQUARE(dst_host_srv_diff_host_rate - @dst_host_srv_diff_host_rate) +
			SQUARE(dst_host_serror_rate - @dst_host_serror_rate) +
			SQUARE(dst_host_srv_serror_rate - @dst_host_srv_serror_rate) +
			SQUARE(dst_host_rerror_rate - @dst_host_rerror_rate) +
			SQUARE(dst_host_rerror_rate - @dst_host_rerror_rate) +
			SQUARE(dst_host_srv_rerror_rate - @dst_host_srv_rerror_rate) +
			CASE 
				WHEN land<>@land THEN 1 ELSE 0
			END +
			CASE 
				WHEN logged_in<>@logged_in THEN 1 ELSE 0
			END +
			CASE 
				WHEN root_shell<>@root_shell THEN 1 ELSE 0
			END +
			CASE 
				WHEN su_attempted<>@su_attempted THEN 1 ELSE 0
			END +
			CASE 
				WHEN is_host_login<>@is_host_login THEN 1 ELSE 0
			END +
			CASE 
				WHEN is_guest_login<>@is_guest_login THEN 1 ELSE 0
			END
		) AS Distance_Range
		FROM MMN_Train_Set
		WHERE (service = @service) AND (protocol_type = @protocol_type) AND (flag = @flag) 
		ORDER BY Distance_Range
		
		
		DECLARE @num_of_attacks INT
		SET @num_of_attacks = 0;
		
		/* 
		 insert into predictionTable values
		*/
		SELECT @num_of_attacks = COUNT(ID)
		FROM #Temp
		WHERE isAttack = 1

		IF @num_of_attacks >= 2 
		BEGIN
			DECLARE @attackGroupDOS INT,
					@attackGroupU2R INT,
					@attackGroupR2L INT,
					@attackGroupPROBE INT,
					@attackGroup NVARCHAR(5)
			
			SET @attackGroupDOS = (SELECT COUNT(ID) FROM #Temp WHERE attackGroup = 'dos')
			SET @attackGroupU2R = (SELECT COUNT(ID) FROM #Temp WHERE attackGroup = 'u2r')
			SET @attackGroupR2L = (SELECT COUNT(ID) FROM #Temp WHERE attackGroup = 'r2l')
			SET @attackGroupPROBE = (SELECT COUNT(ID) FROM #Temp WHERE attackGroup = 'probe')
			SET @attackGroup = ''
			
			IF @attackGroupDOS >= 2 SET @attackGroup = 'dos'
			ELSE IF @attackGroupU2R>= 2 SET @attackGroup = 'u2r'
			ELSE IF @attackGroupR2L>= 2 SET @attackGroup = 'r2l'
			ELSE IF @attackGroupPROBE>= 2 SET @attackGroup = 'probe'
			ELSE SET @attackGroup = (SELECT TOP(1) attackGroup FROM #Temp)
	
			INSERT INTO Result_Table_KNN_Prediction2(ID, isAttack, isAttackPrediction, attackGroup, attackGroupPrediction)
			VALUES (@ID, @is_attack, 1, @attack_group, @attackGroup)
		END
		ELSE 
			INSERT INTO Result_Table_KNN_Prediction2(ID, isAttack, isAttackPrediction, attackGroup, attackGroupPrediction)
			VALUES (@ID, @is_attack, 0, @attack_group, '')
			
		/*
			delete from tempTable for next iteration
		*/
		DELETE FROM #Temp
		
		FETCH NEXT FROM db_cursor INTO @ID
END   

/*
	close cursor and deallocate it
*/
CLOSE db_cursor   
DEALLOCATE db_cursor