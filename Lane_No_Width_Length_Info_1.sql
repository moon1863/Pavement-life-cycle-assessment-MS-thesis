/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [STATE_CODE_EXP]
      ,[SHRP_ID]
      ,[MONITORED_LANE]
      ,ISNULL([LANE_WIDTH],0) AS Study_Lane_Width/*ft*/
      ,ISNULL([SECTION_LENGTH],0) AS Study_Section_Length/*ft*/
  FROM [Bucket_30922].[dbo].[SECTION_GENERAL_EXP]