/****** Script for SelectTopNRows command from SSMS  ******/
SELECT *  
	Into Initial_Construction_6
  FROM [LCA_thesis].[dbo].[Initial_Construction_5];

  ALTER TABLE [LCA_thesis].[dbo].[Initial_Construction_5]
  ADD CO2_EMISSION_ASPHALT_PAVER decimal(10,2);

  UPDATE [LCA_thesis].[dbo].[Initial_Construction_5]
  SET CO2_EMISSION_ASPHALT_PAVER/*gram*/ = [Volume]*0.046*49.1*852*3.16/2400
  WHERE [Layer_Code_No] LIKE 'Original Surface Layer';

  ALTER TABLE [LCA_thesis].[dbo].[Initial_Construction_5]
  ADD CO2_EMISSION_Pneumatic_Roller decimal(10,2);

  UPDATE [LCA_thesis].[dbo].[Initial_Construction_5]
  SET CO2_EMISSION_Pneumatic_Roller/*gram*/ = [Volume]*0.046*26.1*852*3.16/668
  WHERE [Layer_Code_No] LIKE 'Original Surface Layer';

  ALTER TABLE [LCA_thesis].[dbo].[Initial_Construction_5]
  ADD CO2_EMISSION_Tandem_Roller decimal(10,2);

  UPDATE [LCA_thesis].[dbo].[Initial_Construction_5]
  SET CO2_EMISSION_Tandem_Roller/*gram*/ = [Volume]*0.046*32.7*852*3.16/285
  WHERE [Layer_Code_No] LIKE 'Original Surface Layer';


  /* below codes for AC layer below surface (binder course)*/

  UPDATE [LCA_thesis].[dbo].[Initial_Construction_5]
  SET CO2_EMISSION_ASPHALT_PAVER/*gram*/ = [Volume]*0.046*49.1*852*3.16/2400
  WHERE [Layer_Code_No] LIKE 'AC layer below surface (binder course)';

  UPDATE [LCA_thesis].[dbo].[Initial_Construction_5]
  SET CO2_EMISSION_Pneumatic_Roller/*gram*/ = [Volume]*0.046*26.1*852*3.16/668
  WHERE [Layer_Code_No] LIKE 'AC layer below surface (binder course)';

  UPDATE [LCA_thesis].[dbo].[Initial_Construction_5]
  SET CO2_EMISSION_Tandem_Roller/*gram*/ = [Volume]*0.046*32.7*852*3.16/285
  WHERE [Layer_Code_No] LIKE 'AC layer below surface (binder course)';

  /* below codes for granular unbound layer*/

  ALTER TABLE [LCA_thesis].[dbo].[Initial_Construction_5]
  ADD CO2_EMISSION_Excavator decimal(10,2);

  UPDATE [LCA_thesis].[dbo].[Initial_Construction_5]
  SET CO2_EMISSION_Excavator/*gram*/ = [Volume]*0.048*34.2*852*3.16/315
  WHERE [Layer_Code_No] LIKE 'Base'
	OR [Layer_Code_No] LIKE 'Subbase'

  ALTER TABLE [LCA_thesis].[dbo].[Initial_Construction_5]
  ADD CO2_EMISSION_Vibratory_Compactor decimal(10,2);

  UPDATE [LCA_thesis].[dbo].[Initial_Construction_5]
  SET CO2_EMISSION_Vibratory_Compactor/*gram*/ = [Volume]*0.048*27.6*852*3.16/1832
  WHERE [Layer_Code_No] LIKE 'Base'
	OR [Layer_Code_No] LIKE 'Subbase'




