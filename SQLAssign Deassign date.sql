/****** Script for SelectTopNRows command from SSMS  ******/
SELECT  [STATE_CODE_EXP]
      ,[SHRP_ID]
      ,[CN_CHANGE_REASON_EXP]
      ,[ASSIGN_DATE]
      ,[DEASSIGN_DATE]
  FROM [Bucket_30922].[dbo].[EXPERIMENT_SECTION]
  where CN_CHANGE_REASON_EXP like 'Crack Sealing'
	or CN_CHANGE_REASON_EXP like  'Asphalt Concrete Overlay'
	or CN_CHANGE_REASON_EXP like  'Full Depth Patch of AC Pavement (removing damaged material, repairing supporting material, and repairing)'
	or CN_CHANGE_REASON_EXP like  'Mill Existing Pavement and Overlay with Hot-Mix Recycled AC'
	 or CN_CHANGE_REASON_EXP like 'Skin Patching (hand tools/hot pot to apply liquid asphalt and aggregate)'
	or CN_CHANGE_REASON_EXP like  'Patch Pot Holes - Hand Spread, Compacted with Truck'
	or CN_CHANGE_REASON_EXP like  'Mill Off AC and Overlay with AC'
	or CN_CHANGE_REASON_EXP like  'Strip Patching (using spreader and distributor to apply hot liquid asphalt and aggregate)';
