/****** Script for SelectTopNRows command from SSMS  ******/
SELECT thickness.*
	,materialperct.AGG_COARSE_PCT
	,materialperct.AGG_COARSE_SPEC_GRAV
	,materialperct.AGG_FINE_PCT
	,materialperct.AGG_FINE_SPEC_GRAV
	,materialperct.BINDER_PCT
	,materialperct.BINDER_SPEC_GRAV
	,materialperct.AGG_FILLER_PCT
	,materialperct.AGG_FILLER_SPEC_GRAV
	INTO Initial_Construction_2
FROM [LCA_thesis].[dbo].[Ini_Final_Year_Layer_Code_Thickness] as thickness
Left JOIN [LCA_thesis].[dbo].[Asphalt_Agg_Filler_Percent_Spgravity_Info_1] materialperct

ON thickness.STATE_CODE_EXP
	=materialperct.STATE_CODE_EXP

	AND thickness.SHRP_ID
		= materialperct.SHRP_ID

		AND thickness.Layer_Code_No
		=materialperct.Layer_Code_No
