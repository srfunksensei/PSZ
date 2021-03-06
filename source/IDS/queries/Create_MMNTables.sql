USE PSZTest

CREATE TABLE MMN_Validation_Set(
	[id] [numeric](20, 0) PRIMARY KEY NOT NULL,
	[duration] FLOAT NOT NULL,
	[protocol_type] [varchar](13) NOT NULL,
	[service] [varchar](20) NOT NULL,
	[flag] [varchar](20) NOT NULL,
	[src_bytes] FLOAT NOT NULL,
	[dst_bytes] FLOAT NOT NULL,
	[land] [bit] NOT NULL,
	[wrong_fragment] FLOAT NOT NULL,
	[urgent] FLOAT NOT NULL,
	[hot] FLOAT NOT NULL,
	[num_failed_logins] FLOAT NOT NULL,
	[logged_in] [bit] NOT NULL,
	[num_compromised] FLOAT NOT NULL,
	[root_shell] [bit] NOT NULL,
	[su_attempted] [bit] NOT NULL,
	[num_root] FLOAT NOT NULL,
	[num_file_creations] FLOAT NOT NULL,
	[num_shells] FLOAT NOT NULL,
	[num_access_files] FLOAT NOT NULL,
	[num_outbound_cmds] FLOAT NOT NULL,
	[is_host_login] [bit] NOT NULL,
	[is_guest_login] [bit] NOT NULL,
	[count] FLOAT NOT NULL,
	[srv_count] FLOAT NOT NULL,
	[serror_rate] FLOAT NOT NULL,
	[srv_serror_rate] FLOAT NOT NULL,
	[rerror_rate] FLOAT NOT NULL,
	[srv_rerror_rate] FLOAT NOT NULL,
	[same_srv_rate] FLOAT NOT NULL,
	[diff_srv_rate] FLOAT NOT NULL,
	[srv_diff_host_rate] FLOAT NOT NULL,
	[dst_host_count] FLOAT NOT NULL,
	[dst_host_srv_count] FLOAT NOT NULL,
	[dst_host_same_srv_rate] FLOAT NOT NULL,
	[dst_host_diff_srv_rate] FLOAT NOT NULL,
	[dst_host_same_src_port_rate] FLOAT NOT NULL,
	[dst_host_srv_diff_host_rate] FLOAT NOT NULL,
	[dst_host_serror_rate] FLOAT NOT NULL,
	[dst_host_srv_serror_rate] FLOAT NOT NULL,
	[dst_host_rerror_rate] FLOAT NOT NULL,
	[dst_host_srv_rerror_rate] FLOAT NOT NULL,
	[attack_type] [varchar](20) NOT NULL,
	[is_attack] [bit] NOT NULL,
	[attack_group] [nvarchar](5) NOT NULL
) ON [PRIMARY]
GO


CREATE TABLE MMN_Train_Set(
	[id] [numeric](20, 0) PRIMARY KEY NOT NULL,
	[duration] FLOAT NOT NULL,
	[protocol_type] [varchar](13) NOT NULL,
	[service] [varchar](20) NOT NULL,
	[flag] [varchar](20) NOT NULL,
	[src_bytes] FLOAT NOT NULL,
	[dst_bytes] FLOAT NOT NULL,
	[land] [bit] NOT NULL,
	[wrong_fragment] FLOAT NOT NULL,
	[urgent] FLOAT NOT NULL,
	[hot] FLOAT NOT NULL,
	[num_failed_logins] FLOAT NOT NULL,
	[logged_in] [bit] NOT NULL,
	[num_compromised] FLOAT NOT NULL,
	[root_shell] [bit] NOT NULL,
	[su_attempted] [bit] NOT NULL,
	[num_root] FLOAT NOT NULL,
	[num_file_creations] FLOAT NOT NULL,
	[num_shells] FLOAT NOT NULL,
	[num_access_files] FLOAT NOT NULL,
	[num_outbound_cmds] FLOAT NOT NULL,
	[is_host_login] [bit] NOT NULL,
	[is_guest_login] [bit] NOT NULL,
	[count] FLOAT NOT NULL,
	[srv_count] FLOAT NOT NULL,
	[serror_rate] FLOAT NOT NULL,
	[srv_serror_rate] FLOAT NOT NULL,
	[rerror_rate] FLOAT NOT NULL,
	[srv_rerror_rate] FLOAT NOT NULL,
	[same_srv_rate] FLOAT NOT NULL,
	[diff_srv_rate] FLOAT NOT NULL,
	[srv_diff_host_rate] FLOAT NOT NULL,
	[dst_host_count] FLOAT NOT NULL,
	[dst_host_srv_count] FLOAT NOT NULL,
	[dst_host_same_srv_rate] FLOAT NOT NULL,
	[dst_host_diff_srv_rate] FLOAT NOT NULL,
	[dst_host_same_src_port_rate] FLOAT NOT NULL,
	[dst_host_srv_diff_host_rate] FLOAT NOT NULL,
	[dst_host_serror_rate] FLOAT NOT NULL,
	[dst_host_srv_serror_rate] FLOAT NOT NULL,
	[dst_host_rerror_rate] FLOAT NOT NULL,
	[dst_host_srv_rerror_rate] FLOAT NOT NULL,
	[attack_type] [varchar](20) NOT NULL,
	[is_attack] [bit] NOT NULL,
	[attack_group] [nvarchar](5) NOT NULL
) ON [PRIMARY]

 
INSERT INTO MMN_Train_Set
           ([id]
           ,[duration]
           ,[protocol_type]
           ,[service]
           ,[flag]
           ,[src_bytes]
           ,[dst_bytes]
           ,[land]
           ,[wrong_fragment]
           ,[urgent]
           ,[hot]
           ,[num_failed_logins]
           ,[logged_in]
           ,[num_compromised]
           ,[root_shell]
           ,[su_attempted]
           ,[num_root]
           ,[num_file_creations]
           ,[num_shells]
           ,[num_access_files]
           ,[num_outbound_cmds]
           ,[is_host_login]
           ,[is_guest_login]
           ,[count]
           ,[srv_count]
           ,[serror_rate]
           ,[srv_serror_rate]
           ,[rerror_rate]
           ,[srv_rerror_rate]
           ,[same_srv_rate]
           ,[diff_srv_rate]
           ,[srv_diff_host_rate]
           ,[dst_host_count]
           ,[dst_host_srv_count]
           ,[dst_host_same_srv_rate]
           ,[dst_host_diff_srv_rate]
           ,[dst_host_same_src_port_rate]
           ,[dst_host_srv_diff_host_rate]
           ,[dst_host_serror_rate]
           ,[dst_host_srv_serror_rate]
           ,[dst_host_rerror_rate]
           ,[dst_host_srv_rerror_rate]
           ,[attack_type]
           ,[is_attack]
           ,[attack_group])
       SELECT * FROM Train_Set
       
INSERT INTO MMN_Validation_Set
           ([id]
           ,[duration]
           ,[protocol_type]
           ,[service]
           ,[flag]
           ,[src_bytes]
           ,[dst_bytes]
           ,[land]
           ,[wrong_fragment]
           ,[urgent]
           ,[hot]
           ,[num_failed_logins]
           ,[logged_in]
           ,[num_compromised]
           ,[root_shell]
           ,[su_attempted]
           ,[num_root]
           ,[num_file_creations]
           ,[num_shells]
           ,[num_access_files]
           ,[num_outbound_cmds]
           ,[is_host_login]
           ,[is_guest_login]
           ,[count]
           ,[srv_count]
           ,[serror_rate]
           ,[srv_serror_rate]
           ,[rerror_rate]
           ,[srv_rerror_rate]
           ,[same_srv_rate]
           ,[diff_srv_rate]
           ,[srv_diff_host_rate]
           ,[dst_host_count]
           ,[dst_host_srv_count]
           ,[dst_host_same_srv_rate]
           ,[dst_host_diff_srv_rate]
           ,[dst_host_same_src_port_rate]
           ,[dst_host_srv_diff_host_rate]
           ,[dst_host_serror_rate]
           ,[dst_host_srv_serror_rate]
           ,[dst_host_rerror_rate]
           ,[dst_host_srv_rerror_rate]
           ,[attack_type]
           ,[is_attack]
           ,[attack_group])
       SELECT * FROM Validation_Set

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

/*
	declare variables for
	evaluation of Min-Max Normalization
*/
-- min(X)
		@duration_min FLOAT,
		@src_bytes_min FLOAT,
		@dst_bytes_min FLOAT,
		@wrong_fragment_min FLOAT,
		@urgent_min FLOAT,
		@hot_min FLOAT,
		@num_failed_logins_min FLOAT,
		@num_compromised_min FLOAT,
		@num_root_min FLOAT,
		@num_file_creations_min FLOAT,
		@num_shells_min FLOAT,
		@num_access_files_min FLOAT,
		@num_outbound_cmds_min FLOAT,
		@count_min FLOAT,
		@srv_count_min FLOAT,
		@serror_rate_min FLOAT,
		@srv_serror_rate_min FLOAT,
		@rerror_rate_min FLOAT,
		@srv_rerror_rate_min FLOAT,
		@same_srv_rate_min FLOAT,
		@diff_srv_rate_min FLOAT,
		@srv_diff_host_rate_min FLOAT,
		@dst_host_count_min FLOAT,
		@dst_host_srv_count_min FLOAT,
		@dst_host_same_srv_rate_min FLOAT,
		@dst_host_diff_srv_rate_min FLOAT,
		@dst_host_same_src_port_rate_min FLOAT,
		@dst_host_srv_diff_host_rate_min FLOAT,
		@dst_host_serror_rate_min FLOAT,
		@dst_host_srv_serror_rate_min FLOAT,
		@dst_host_rerror_rate_min FLOAT,
		@dst_host_srv_rerror_rate_min FLOAT, 
		
-- range(X) = max(X) - min(X)		
		@duration_range FLOAT,
		@src_bytes_range FLOAT,
		@dst_bytes_range FLOAT,
		@wrong_fragment_range FLOAT,
		@urgent_range FLOAT,
		@hot_range FLOAT,
		@num_failed_logins_range FLOAT,
		@num_compromised_range FLOAT,
		@num_root_range FLOAT,
		@num_file_creations_range FLOAT,
		@num_shells_range FLOAT,
		@num_access_files_range FLOAT,
		@num_outbound_cmds_range FLOAT,
		@count_range FLOAT,
		@srv_count_range FLOAT,
		@serror_rate_range FLOAT,
		@srv_serror_rate_range FLOAT,
		@rerror_rate_range FLOAT,
		@srv_rerror_rate_range FLOAT,
		@same_srv_rate_range FLOAT,
		@diff_srv_rate_range FLOAT,
		@srv_diff_host_rate_range FLOAT,
		@dst_host_count_range FLOAT,
		@dst_host_srv_count_range FLOAT,
		@dst_host_same_srv_rate_range FLOAT,
		@dst_host_diff_srv_rate_range FLOAT,
		@dst_host_same_src_port_rate_range FLOAT,
		@dst_host_srv_diff_host_rate_range FLOAT,
		@dst_host_serror_rate_range FLOAT,
		@dst_host_srv_serror_rate_range FLOAT,
		@dst_host_rerror_rate_range FLOAT,
		@dst_host_srv_rerror_rate_range FLOAT;

/*
	select minimum values from table
	and assign to the variable delclared
	above
*/
SELECT @duration_min = MIN(duration),
		@src_bytes_min = MIN(src_bytes),
		@dst_bytes_min = MIN(dst_bytes),
		@wrong_fragment_min = MIN(wrong_fragment),
		@urgent_min = MIN(urgent),
		@hot_min = MIN(hot),
		@num_failed_logins_min = MIN(num_failed_logins),
		@num_compromised_min = MIN(num_compromised),
		@num_root_min = MIN(num_root),
		@num_file_creations_min = MIN(num_file_creations),
		@num_shells_min = MIN(num_shells),
		@num_access_files_min = MIN(num_access_files),
		@num_outbound_cmds_min = MIN(num_outbound_cmds),
		@count_min = MIN(count),
		@srv_count_min = MIN(srv_count),
		@serror_rate_min = MIN(serror_rate),
		@srv_serror_rate_min = MIN(srv_serror_rate),
		@rerror_rate_min = MIN(rerror_rate),
		@srv_rerror_rate_min = MIN(srv_rerror_rate),
		@same_srv_rate_min = MIN(same_srv_rate),
		@diff_srv_rate_min = MIN(diff_srv_rate),
		@srv_diff_host_rate_min = MIN(srv_diff_host_rate),
		@dst_host_count_min = MIN(dst_host_count),
		@dst_host_srv_count_min = MIN(dst_host_srv_count),
		@dst_host_same_srv_rate_min = MIN(dst_host_same_srv_rate),
		@dst_host_diff_srv_rate_min = MIN(dst_host_diff_srv_rate),
		@dst_host_same_src_port_rate_min = MIN(dst_host_same_src_port_rate),
		@dst_host_srv_diff_host_rate_min = MIN(dst_host_srv_diff_host_rate),
		@dst_host_serror_rate_min = MIN(dst_host_serror_rate),
		@dst_host_srv_serror_rate_min = MIN(dst_host_srv_serror_rate),
		@dst_host_rerror_rate_min = MIN(dst_host_rerror_rate),
		@dst_host_srv_rerror_rate_min = MIN(dst_host_srv_rerror_rate)
FROM Train_Set

/*
	select max and min values from table,
	calculate the range,
	and assign to the variable delclared
	above
*/
SELECT	@duration_range = MAX(duration) - MIN(duration),
		@src_bytes_range = MAX(src_bytes) - MIN(src_bytes),
		@dst_bytes_range = MAX(dst_bytes) - MIN(dst_bytes),
		@wrong_fragment_range = MAX(wrong_fragment) - MIN(wrong_fragment),
		@urgent_range = MAX(urgent) - MIN(urgent),
		@hot_range = MAX(hot) - MIN(hot),
		@num_failed_logins_range = MAX(num_failed_logins) - MIN(num_failed_logins),
		@num_compromised_range = MAX(num_compromised) - MIN(num_compromised),
		@num_root_range = MAX(num_root) - MIN(num_root),
		@num_file_creations_range = MAX(num_file_creations) - MIN(num_file_creations),
		@num_shells_range = MAX(num_shells) - MIN(num_shells),
		@num_access_files_range = MAX(num_access_files) - MIN(num_access_files),
		@num_outbound_cmds_range = MAX(num_outbound_cmds) - MIN(num_outbound_cmds),
		@count_range = MAX(count) - MIN(count),
		@srv_count_range = MAX(srv_count) - MIN(srv_count),
		@serror_rate_range = MAX(serror_rate) - MIN(serror_rate),
		@srv_serror_rate_range = MAX(srv_serror_rate) - MIN(srv_serror_rate),
		@rerror_rate_range = MAX(rerror_rate) - MIN(rerror_rate),
		@srv_rerror_rate_range = MAX(srv_rerror_rate) - MIN(srv_rerror_rate),
		@same_srv_rate_range = MAX(same_srv_rate) - MIN(same_srv_rate),
		@diff_srv_rate_range = MAX(diff_srv_rate) - MIN(diff_srv_rate),
		@srv_diff_host_rate_range = MAX(srv_diff_host_rate) - MIN(srv_diff_host_rate),
		@dst_host_count_range = MAX(dst_host_count) - MIN(dst_host_count),
		@dst_host_srv_count_range = MAX(dst_host_srv_count) - MIN(dst_host_srv_count),
		@dst_host_same_srv_rate_range = MAX(dst_host_same_srv_rate) - MIN(dst_host_same_srv_rate),
		@dst_host_diff_srv_rate_range = MAX(dst_host_diff_srv_rate) - MIN(dst_host_diff_srv_rate),
		@dst_host_same_src_port_rate_range = MAX(dst_host_same_src_port_rate) - MIN(dst_host_same_src_port_rate),
		@dst_host_srv_diff_host_rate_range = MAX(dst_host_srv_diff_host_rate) - MIN(dst_host_srv_diff_host_rate),
		@dst_host_serror_rate_range = MAX(dst_host_serror_rate) - MIN(dst_host_serror_rate),
		@dst_host_srv_serror_rate_range = MAX(dst_host_srv_serror_rate) - MIN(dst_host_srv_serror_rate),
		@dst_host_rerror_rate_range = MAX(dst_host_rerror_rate) - MIN(dst_host_rerror_rate),
		@dst_host_srv_rerror_rate_range = MAX(dst_host_srv_rerror_rate) - MIN(dst_host_srv_rerror_rate)
FROM Train_Set

DECLARE @ID INT -- database ID

SET @num_outbound_cmds_range = 1
/*
	declare cursor  
*/
DECLARE db_cursor CURSOR FOR
SELECT id
FROM Train_Set

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
				@src_bytes = src_bytes,
				@dst_bytes = dst_bytes,
				@wrong_fragment = wrong_fragment,
				@urgent = urgent,
				@hot = hot,
				@num_failed_logins = num_failed_logins,
				@num_compromised = num_compromised,
				@num_root = num_root,
				@num_file_creations = num_file_creations,
				@num_shells = num_shells,
				@num_access_files = num_access_files,
				@num_outbound_cmds = num_outbound_cmds,
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
				@dst_host_srv_rerror_rate = dst_host_srv_rerror_rate
		FROM Train_Set
		WHERE id = @ID
		
		/*
			insert normalized values into 
			normalized table
		*/
		UPDATE MMN_Train_Set SET 
           [duration] = (@duration - @duration_min)/@duration_range
           ,[src_bytes] = (@src_bytes - @src_bytes_min)/@src_bytes_range 
           ,[dst_bytes] = (@dst_bytes - @dst_bytes_min)/@dst_bytes_range
           ,[wrong_fragment] = (@wrong_fragment - @wrong_fragment_min)/@wrong_fragment_range
           ,[urgent] = (@urgent - @urgent_min)/@urgent_range
           ,[hot] = (@hot - @hot_min)/@hot_range
           ,[num_failed_logins] = (@num_failed_logins - @num_failed_logins_min)/@num_failed_logins_range
           ,[num_compromised] = (@num_compromised - @num_compromised_min)/@num_compromised_range
           ,[num_root] = (@num_root - @num_root_min)/@num_root_range
           ,[num_file_creations] = (@num_file_creations - @num_file_creations_min)/@num_file_creations_range
           ,[num_shells] = (@num_shells - @num_shells_min)/@num_shells_range
           ,[num_access_files] = (@num_access_files - @num_access_files_min)/@num_access_files_range
           ,[num_outbound_cmds] = (@num_outbound_cmds - @num_outbound_cmds_min)/@num_outbound_cmds_range
           ,[count] = (@count - @count_min)/@count_range
           ,[srv_count] = (@srv_count - @srv_count_min)/@srv_count_range
           ,[serror_rate] = (@serror_rate - @serror_rate_min)/@serror_rate_range
           ,[srv_serror_rate] = (@srv_serror_rate - @srv_serror_rate_min)/@srv_serror_rate_range
           ,[rerror_rate] = (@rerror_rate - @rerror_rate_min)/@rerror_rate_range
           ,[srv_rerror_rate] = (@srv_rerror_rate - @srv_rerror_rate_min)/@srv_rerror_rate_range
           ,[same_srv_rate] = (@same_srv_rate - @same_srv_rate_min)/@same_srv_rate_range
           ,[diff_srv_rate] = (@diff_srv_rate - @diff_srv_rate_min)/@diff_srv_rate_range
           ,[srv_diff_host_rate] = (@srv_diff_host_rate - @srv_diff_host_rate_min)/@srv_diff_host_rate_range
           ,[dst_host_count] = (@dst_host_count - @dst_host_count_min)/@dst_host_count_range
           ,[dst_host_srv_count] = (@dst_host_srv_count - @dst_host_srv_count_min)/@dst_host_srv_count_range
           ,[dst_host_same_srv_rate] = (@dst_host_same_srv_rate - @dst_host_same_srv_rate_min)/@dst_host_same_srv_rate_range
           ,[dst_host_diff_srv_rate] = (@dst_host_diff_srv_rate - @dst_host_diff_srv_rate_min)/@dst_host_diff_srv_rate_range
           ,[dst_host_same_src_port_rate] = (@dst_host_same_src_port_rate - @dst_host_same_src_port_rate_min)/@dst_host_same_src_port_rate_range
           ,[dst_host_srv_diff_host_rate] = (@dst_host_srv_diff_host_rate - @dst_host_srv_diff_host_rate_min)/@dst_host_srv_diff_host_rate_range
           ,[dst_host_serror_rate] = (@dst_host_serror_rate - @dst_host_serror_rate_min)/@dst_host_serror_rate_range
           ,[dst_host_srv_serror_rate] = (@dst_host_srv_serror_rate - @dst_host_srv_serror_rate_min)/@dst_host_srv_serror_rate_range
           ,[dst_host_rerror_rate] = (@dst_host_rerror_rate - @dst_host_rerror_rate_min)/@dst_host_rerror_rate_range
           ,[dst_host_srv_rerror_rate] = (@dst_host_srv_rerror_rate - @dst_host_srv_rerror_rate_min)/@dst_host_srv_rerror_rate_range
		WHERE id= @ID
		
		FETCH NEXT FROM db_cursor INTO @ID
END   

/*
	close cursor and deallocate it
*/
CLOSE db_cursor   
DEALLOCATE db_cursor
		
SELECT @duration_min = MIN(duration),
		@src_bytes_min = MIN(src_bytes),
		@dst_bytes_min = MIN(dst_bytes),
		@wrong_fragment_min = MIN(wrong_fragment),
		@urgent_min = MIN(urgent),
		@hot_min = MIN(hot),
		@num_failed_logins_min = MIN(num_failed_logins),
		@num_compromised_min = MIN(num_compromised),
		@num_root_min = MIN(num_root),
		@num_file_creations_min = MIN(num_file_creations),
		@num_shells_min = MIN(num_shells),
		@num_access_files_min = MIN(num_access_files),
		@num_outbound_cmds_min = MIN(num_outbound_cmds),
		@count_min = MIN(count),
		@srv_count_min = MIN(srv_count),
		@serror_rate_min = MIN(serror_rate),
		@srv_serror_rate_min = MIN(srv_serror_rate),
		@rerror_rate_min = MIN(rerror_rate),
		@srv_rerror_rate_min = MIN(srv_rerror_rate),
		@same_srv_rate_min = MIN(same_srv_rate),
		@diff_srv_rate_min = MIN(diff_srv_rate),
		@srv_diff_host_rate_min = MIN(srv_diff_host_rate),
		@dst_host_count_min = MIN(dst_host_count),
		@dst_host_srv_count_min = MIN(dst_host_srv_count),
		@dst_host_same_srv_rate_min = MIN(dst_host_same_srv_rate),
		@dst_host_diff_srv_rate_min = MIN(dst_host_diff_srv_rate),
		@dst_host_same_src_port_rate_min = MIN(dst_host_same_src_port_rate),
		@dst_host_srv_diff_host_rate_min = MIN(dst_host_srv_diff_host_rate),
		@dst_host_serror_rate_min = MIN(dst_host_serror_rate),
		@dst_host_srv_serror_rate_min = MIN(dst_host_srv_serror_rate),
		@dst_host_rerror_rate_min = MIN(dst_host_rerror_rate),
		@dst_host_srv_rerror_rate_min = MIN(dst_host_srv_rerror_rate)
FROM Validation_Set

/*
	select max and min values from table,
	calculate the range,
	and assign to the variable delclared
	above
*/
SELECT	@duration_range = MAX(duration) - MIN(duration),
		@src_bytes_range = MAX(src_bytes) - MIN(src_bytes),
		@dst_bytes_range = MAX(dst_bytes) - MIN(dst_bytes),
		@wrong_fragment_range = MAX(wrong_fragment) - MIN(wrong_fragment),
		@urgent_range = MAX(urgent) - MIN(urgent),
		@hot_range = MAX(hot) - MIN(hot),
		@num_failed_logins_range = MAX(num_failed_logins) - MIN(num_failed_logins),
		@num_compromised_range = MAX(num_compromised) - MIN(num_compromised),
		@num_root_range = MAX(num_root) - MIN(num_root),
		@num_file_creations_range = MAX(num_file_creations) - MIN(num_file_creations),
		@num_shells_range = MAX(num_shells) - MIN(num_shells),
		@num_access_files_range = MAX(num_access_files) - MIN(num_access_files),
		@num_outbound_cmds_range = MAX(num_outbound_cmds) - MIN(num_outbound_cmds),
		@count_range = MAX(count) - MIN(count),
		@srv_count_range = MAX(srv_count) - MIN(srv_count),
		@serror_rate_range = MAX(serror_rate) - MIN(serror_rate),
		@srv_serror_rate_range = MAX(srv_serror_rate) - MIN(srv_serror_rate),
		@rerror_rate_range = MAX(rerror_rate) - MIN(rerror_rate),
		@srv_rerror_rate_range = MAX(srv_rerror_rate) - MIN(srv_rerror_rate),
		@same_srv_rate_range = MAX(same_srv_rate) - MIN(same_srv_rate),
		@diff_srv_rate_range = MAX(diff_srv_rate) - MIN(diff_srv_rate),
		@srv_diff_host_rate_range = MAX(srv_diff_host_rate) - MIN(srv_diff_host_rate),
		@dst_host_count_range = MAX(dst_host_count) - MIN(dst_host_count),
		@dst_host_srv_count_range = MAX(dst_host_srv_count) - MIN(dst_host_srv_count),
		@dst_host_same_srv_rate_range = MAX(dst_host_same_srv_rate) - MIN(dst_host_same_srv_rate),
		@dst_host_diff_srv_rate_range = MAX(dst_host_diff_srv_rate) - MIN(dst_host_diff_srv_rate),
		@dst_host_same_src_port_rate_range = MAX(dst_host_same_src_port_rate) - MIN(dst_host_same_src_port_rate),
		@dst_host_srv_diff_host_rate_range = MAX(dst_host_srv_diff_host_rate) - MIN(dst_host_srv_diff_host_rate),
		@dst_host_serror_rate_range = MAX(dst_host_serror_rate) - MIN(dst_host_serror_rate),
		@dst_host_srv_serror_rate_range = MAX(dst_host_srv_serror_rate) - MIN(dst_host_srv_serror_rate),
		@dst_host_rerror_rate_range = MAX(dst_host_rerror_rate) - MIN(dst_host_rerror_rate),
		@dst_host_srv_rerror_rate_range = MAX(dst_host_srv_rerror_rate) - MIN(dst_host_srv_rerror_rate)
FROM Validation_Set

SET @num_outbound_cmds_range = 1
/*
	declare cursor  
*/
DECLARE db_cursor CURSOR FOR
SELECT id
FROM Validation_Set

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
				@src_bytes = src_bytes,
				@dst_bytes = dst_bytes,
				@wrong_fragment = wrong_fragment,
				@urgent = urgent,
				@hot = hot,
				@num_failed_logins = num_failed_logins,
				@num_compromised = num_compromised,
				@num_root = num_root,
				@num_file_creations = num_file_creations,
				@num_shells = num_shells,
				@num_access_files = num_access_files,
				@num_outbound_cmds = num_outbound_cmds,
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
				@dst_host_srv_rerror_rate = dst_host_srv_rerror_rate
		FROM Validation_Set
		WHERE id = @ID
		
		
		/*
			insert normalized values into 
			normalized table
		*/
		UPDATE MMN_Validation_Set SET 
           [duration] = (@duration - @duration_min)/@duration_range
           ,[src_bytes] = (@src_bytes - @src_bytes_min)/@src_bytes_range 
           ,[dst_bytes] = (@dst_bytes - @dst_bytes_min)/@dst_bytes_range
           ,[wrong_fragment] = (@wrong_fragment - @wrong_fragment_min)/@wrong_fragment_range
           ,[urgent] = (@urgent - @urgent_min)/@urgent_range
           ,[hot] = (@hot - @hot_min)/@hot_range
           ,[num_failed_logins] = (@num_failed_logins - @num_failed_logins_min)/@num_failed_logins_range
           ,[num_compromised] = (@num_compromised - @num_compromised_min)/@num_compromised_range
           ,[num_root] = (@num_root - @num_root_min)/@num_root_range
           ,[num_file_creations] = (@num_file_creations - @num_file_creations_min)/@num_file_creations_range
           ,[num_shells] = (@num_shells - @num_shells_min)/@num_shells_range
           ,[num_access_files] = (@num_access_files - @num_access_files_min)/@num_access_files_range
           ,[num_outbound_cmds] = (@num_outbound_cmds - @num_outbound_cmds_min)/@num_outbound_cmds_range
           ,[count] = (@count - @count_min)/@count_range
           ,[srv_count] = (@srv_count - @srv_count_min)/@srv_count_range
           ,[serror_rate] = (@serror_rate - @serror_rate_min)/@serror_rate_range
           ,[srv_serror_rate] = (@srv_serror_rate - @srv_serror_rate_min)/@srv_serror_rate_range
           ,[rerror_rate] = (@rerror_rate - @rerror_rate_min)/@rerror_rate_range
           ,[srv_rerror_rate] = (@srv_rerror_rate - @srv_rerror_rate_min)/@srv_rerror_rate_range
           ,[same_srv_rate] = (@same_srv_rate - @same_srv_rate_min)/@same_srv_rate_range
           ,[diff_srv_rate] = (@diff_srv_rate - @diff_srv_rate_min)/@diff_srv_rate_range
           ,[srv_diff_host_rate] = (@srv_diff_host_rate - @srv_diff_host_rate_min)/@srv_diff_host_rate_range
           ,[dst_host_count] = (@dst_host_count - @dst_host_count_min)/@dst_host_count_range
           ,[dst_host_srv_count] = (@dst_host_srv_count - @dst_host_srv_count_min)/@dst_host_srv_count_range
           ,[dst_host_same_srv_rate] = (@dst_host_same_srv_rate - @dst_host_same_srv_rate_min)/@dst_host_same_srv_rate_range
           ,[dst_host_diff_srv_rate] = (@dst_host_diff_srv_rate - @dst_host_diff_srv_rate_min)/@dst_host_diff_srv_rate_range
           ,[dst_host_same_src_port_rate] = (@dst_host_same_src_port_rate - @dst_host_same_src_port_rate_min)/@dst_host_same_src_port_rate_range
           ,[dst_host_srv_diff_host_rate] = (@dst_host_srv_diff_host_rate - @dst_host_srv_diff_host_rate_min)/@dst_host_srv_diff_host_rate_range
           ,[dst_host_serror_rate] = (@dst_host_serror_rate - @dst_host_serror_rate_min)/@dst_host_serror_rate_range
           ,[dst_host_srv_serror_rate] = (@dst_host_srv_serror_rate - @dst_host_srv_serror_rate_min)/@dst_host_srv_serror_rate_range
           ,[dst_host_rerror_rate] = (@dst_host_rerror_rate - @dst_host_rerror_rate_min)/@dst_host_rerror_rate_range
           ,[dst_host_srv_rerror_rate] = (@dst_host_srv_rerror_rate - @dst_host_srv_rerror_rate_min)/@dst_host_srv_rerror_rate_range
		WHERE id= @ID
		
		FETCH NEXT FROM db_cursor INTO @ID
END   

/*
	close cursor and deallocate it
*/
CLOSE db_cursor   
DEALLOCATE db_cursor