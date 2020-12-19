SELECT *
FROM [LCA_thesis].[dbo].[Ini_Final_Year_Layer_Code_Thickness]
LEFT JOIN [LCA_thesis].[dbo].[Asphalt_Agg_Filler_Percent_Spgravity_Info_1]
ON [LCA_thesis].[dbo].[Ini_Final_Year_Layer_Code_Thickness].STATE_CODE_EXP
	=[LCA_thesis].[dbo].[Asphalt_Agg_Filler_Percent_Spgravity_Info_1].STATE_CODE_EXP

	AND [LCA_thesis].[dbo].[Ini_Final_Year_Layer_Code_Thickness].SHRP_ID
		=[LCA_thesis].[dbo].[Asphalt_Agg_Filler_Percent_Spgravity_Info_1].SHRP_ID

		AND [LCA_thesis].[dbo].[Ini_Final_Year_Layer_Code_Thickness].Layer_Code_No
		=[LCA_thesis].[dbo].[Asphalt_Agg_Filler_Percent_Spgravity_Info_1].Layer_Code_No;


