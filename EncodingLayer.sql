/****** Script for SelectTopNRows command from SSMS  ******/
/*SELECT TOP (1000) [STATE_CODE_EXP]
      ,[SHRP_ID]
      ,REPLACE(REPLACE(REPLACE(REPLACE(REPLACE([Layer_Code_No],'3','Original Surface Layer'),'5','Base')
	  ,'6','Subbase'),'7','Subgrade'),'4','AC layer below surface (binder course)') as layer_Name
      ,[BINDER_SPEC_GRAV]
      ,[BINDER_PCT]
      ,[AGG_COARSE_SPEC_GRAV]
      ,[AGG_COARSE_PCT]
      ,[AGG_FINE_SPEC_GRAV]
      ,[AGG_FINE_PCT]
      ,[AGG_FILLER_SPEC_GRAV]
      ,[AGG_FILLER_PCT]
DELETE [LCA_thesis].[dbo].[Asphalt_Agg_Filler_Percent_Spgravity_Info_1]
WHERE [LCA_thesis].[dbo].[Asphalt_Agg_Filler_Percent_Spgravity_Info_1].Layer_Code_No=10
      OR [LCA_thesis].[dbo].[Asphalt_Agg_Filler_Percent_Spgravity_Info_1].Layer_Code_No=8
	  OR [LCA_thesis].[dbo].[Asphalt_Agg_Filler_Percent_Spgravity_Info_1].Layer_Code_No=9
FROM [LCA_thesis].[dbo].[Asphalt_Agg_Filler_Percent_Spgravity_Info_1]


  REPLACE(REPLACE(REPLACE(REPLACE(REPLACE([Layer_Code_No],'3','Original Surface Layer'),'5','Base')
	  ,'6','Subbase'),'7','Subgrade'),'4','AC layer below surface (binder course)') as layer_Name
	  FROM [LCA_thesis].[dbo].[Asphalt_Agg_Filler_Percent_Spgravity_Info_1]*/

	UPDATE [LCA_thesis].[dbo].[Ini_Final_Year_Layer_Code_Thickness]
	SET [LCA_thesis].[dbo].[Ini_Final_Year_Layer_Code_Thickness].[Layer_Code_No]='Original Surface Layer'
		WHERE [LCA_thesis].[dbo].[Ini_Final_Year_Layer_Code_Thickness].[Layer_Code_No]='3'
		UPDATE [LCA_thesis].[dbo].[Ini_Final_Year_Layer_Code_Thickness]
	SET [LCA_thesis].[dbo].[Ini_Final_Year_Layer_Code_Thickness].[Layer_Code_No]='AC layer below surface (binder course)'
		WHERE [LCA_thesis].[dbo].[Ini_Final_Year_Layer_Code_Thickness].[Layer_Code_No]='4'
		UPDATE [LCA_thesis].[dbo].[Ini_Final_Year_Layer_Code_Thickness]
	SET [LCA_thesis].[dbo].[Ini_Final_Year_Layer_Code_Thickness].[Layer_Code_No]='Base'
		WHERE [LCA_thesis].[dbo].[Ini_Final_Year_Layer_Code_Thickness].[Layer_Code_No]='5'
		UPDATE [LCA_thesis].[dbo].[Ini_Final_Year_Layer_Code_Thickness]
	SET [LCA_thesis].[dbo].[Ini_Final_Year_Layer_Code_Thickness].[Layer_Code_No]='Subbase'
		WHERE [LCA_thesis].[dbo].[Ini_Final_Year_Layer_Code_Thickness].[Layer_Code_No]='6'
		UPDATE [LCA_thesis].[dbo].[Ini_Final_Year_Layer_Code_Thickness]
	SET [LCA_thesis].[dbo].[Ini_Final_Year_Layer_Code_Thickness].[Layer_Code_No]='Subgrade'
		WHERE [LCA_thesis].[dbo].[Ini_Final_Year_Layer_Code_Thickness].[Layer_Code_No]='7'

