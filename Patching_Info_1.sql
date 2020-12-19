/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [SHRP_ID]
      ,[STATE_CODE_EXP]
      ,datepart(yyyy,[DATE_BEGAN]) AS Patching_Year
      ,ISNULL([SURFACE_PATCHES_SF],0) AS Surface_Patching_Area
      ,ISNULL([SURFACE_OVERLAID_SF],0) AS Surface_and_Overlaid_Patching_Area
      /*[AC_PC_SF] not considered*/
      ,ISNULL([FULL_DEPTH_SF],0) AS Full_Depth_Patching_Area
  FROM [Bucket_30922].[dbo].[MNT_ASPHALT_PATCH]