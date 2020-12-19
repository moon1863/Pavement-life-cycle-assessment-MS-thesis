/****** Script for SelectTopNRows command from SSMS  ******/
SELECT *
FROM [Bucket_33775].[dbo].[ESAL_Table] ET

	INNER JOIN [Bucket_33775].[dbo].[Roughness_Table] RT
	ON ET.STATE_CODE_EXP = RT.STATE_CODE_EXP
	AND ET.SHRP_ID = RT.SHRP_ID
	AND ET.[YEAR] = RT.[YEAR]
	
	INNER JOIN [Bucket_33775].[dbo].[Texture_Depth_Table] TT
	ON TT.STATE_CODE_EXP = RT.STATE_CODE_EXP
	AND TT.SHRP_ID = RT.SHRP_ID
	AND TT.[YEAR] = RT.[YEAR]
	

