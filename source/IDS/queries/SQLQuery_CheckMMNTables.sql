SELECT 
      MIN([duration]), MAX([duration])
      ,MIN([src_bytes]), MAX([src_bytes])
      ,MIN([dst_bytes]), MAX([dst_bytes])
      ,MIN([wrong_fragment]), MAX([wrong_fragment])
      ,MIN([urgent]), MAX([urgent])
      ,MIN([hot]), MAX([hot])
      ,MIN([num_failed_logins]), MAX([num_failed_logins])
      ,MIN([num_compromised]), MAX([num_compromised])
      ,MIN([num_root]), MAX([num_root])
      ,MIN([num_file_creations]), MAX([num_file_creations])
      ,MIN([num_shells]), MAX([num_shells])
      ,MIN([num_access_files]), MAX([num_access_files])
      ,MIN([num_outbound_cmds]), MAX([num_outbound_cmds])
      ,MIN([count]), MAX([count])
      ,MIN([srv_count]), MAX([srv_count])
      ,MIN([serror_rate]), MAX([serror_rate])
      ,MIN([srv_serror_rate]), MAX([srv_serror_rate])
      ,MIN([rerror_rate]), MAX([rerror_rate])
      ,MIN([srv_rerror_rate]), MAX([srv_rerror_rate])
      ,MIN([same_srv_rate]), MAX([same_srv_rate])
      ,MIN([diff_srv_rate]), MAX([diff_srv_rate])
      ,MIN([srv_diff_host_rate]), MAX([srv_diff_host_rate])
      ,MIN([dst_host_count]), MAX([dst_host_count])
      ,MIN([dst_host_srv_count]), MAX([dst_host_srv_count])
      ,MIN([dst_host_same_srv_rate]), MAX([dst_host_same_srv_rate])
      ,MIN([dst_host_diff_srv_rate]), MAX([dst_host_diff_srv_rate])
      ,MIN([dst_host_same_src_port_rate]), MAX([dst_host_same_src_port_rate])
      ,MIN([dst_host_srv_diff_host_rate]), MAX([dst_host_srv_diff_host_rate])
      ,MIN([dst_host_serror_rate]), MAX([dst_host_serror_rate])
      ,MIN([dst_host_srv_serror_rate]), MAX([dst_host_srv_serror_rate])
      ,MIN([dst_host_rerror_rate]), MAX([dst_host_rerror_rate])
      ,MIN([dst_host_srv_rerror_rate]), MAX([dst_host_srv_rerror_rate])
  FROM [PSZTest].[dbo].[MMN_Train_Set]
GO


