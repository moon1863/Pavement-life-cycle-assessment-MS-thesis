/****** Script for SelectTopNRows command from SSMS  ******/
SELECT   [STATE_CODE_EXP]
		,[SHRP_ID]
		,MIN([Initial_Year]) AS Initial_Yr
		,MAX([Final_Year]) AS Final_Yr
  FROM [Bucket_30922].[dbo].[Layer_Thickness_Table]
  GROUP BY [SHRP_ID],[STATE_CODE_EXP];
  SELECT   [STATE_CODE_EXP]
		,[SHRP_ID]
		,MAX([Final_Year]) AS Final_Yr
  FROM [Bucket_30922].[dbo].[Layer_Thickness_Table]
  GROUP BY [SHRP_ID],[STATE_CODE_EXP]

	