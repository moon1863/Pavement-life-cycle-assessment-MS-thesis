/****** Script for SelectTopNRows command from SSMS  ******/
/*Development of Initila constrcution 2*/
SELECT *    
  FROM [LCA_thesis].[dbo].[Intial_Construction_2];

UPDATE [LCA_thesis].[dbo].[Intial_Construction_2]
	SET [LCA_thesis].[dbo].[Intial_Construction_2].[BINDER_PCT]=FLOOR(RAND(CHECKSUM(NEWID()))*(6-4+1)+4)
	WHERE [LCA_thesis].[dbo].[Intial_Construction_2].[Layer_Code_No] LIKE 'Original Surface Layer'
			AND [LCA_thesis].[dbo].[Intial_Construction_2].[BINDER_PCT] IS NULL;
 
 UPDATE [LCA_thesis].[dbo].[Intial_Construction_2]
	SET [LCA_thesis].[dbo].[Intial_Construction_2].[BINDER_PCT]=FLOOR(RAND(CHECKSUM(NEWID()))*(6-4+1)+4)
	WHERE [LCA_thesis].[dbo].[Intial_Construction_2].[Layer_Code_No] LIKE 'Original Surface Layer'
			AND [LCA_thesis].[dbo].[Intial_Construction_2].[BINDER_PCT] = 0;
 

 UPDATE [LCA_thesis].[dbo].[Intial_Construction_2]
	SET [LCA_thesis].[dbo].[Intial_Construction_2].[BINDER_PCT]=FLOOR(RAND(CHECKSUM(NEWID()))*(6-4+1)+4)
	WHERE [LCA_thesis].[dbo].[Intial_Construction_2].[Layer_Code_No] LIKE 'AC layer below surface (binder course)'
			AND [LCA_thesis].[dbo].[Intial_Construction_2].[BINDER_PCT] IS NULL;
 
 UPDATE [LCA_thesis].[dbo].[Intial_Construction_2]
	SET [LCA_thesis].[dbo].[Intial_Construction_2].[AGG_COARSE_PCT]=FLOOR(RAND(CHECKSUM(NEWID()))*(55-48+1)+48)
	WHERE [LCA_thesis].[dbo].[Intial_Construction_2].[Layer_Code_No] LIKE 'Original Surface Layer'
			AND [LCA_thesis].[dbo].[Intial_Construction_2].[AGG_COARSE_PCT] IS NULL;

UPDATE [LCA_thesis].[dbo].[Intial_Construction_2]
	SET [LCA_thesis].[dbo].[Intial_Construction_2].[AGG_COARSE_PCT]=FLOOR(RAND(CHECKSUM(NEWID()))*(55-48+1)+48)
	WHERE [LCA_thesis].[dbo].[Intial_Construction_2].[Layer_Code_No] LIKE 'Original Surface Layer'
			AND [LCA_thesis].[dbo].[Intial_Construction_2].[AGG_COARSE_PCT] LIKE '0';

UPDATE [LCA_thesis].[dbo].[Intial_Construction_2]
	SET [LCA_thesis].[dbo].[Intial_Construction_2].[AGG_COARSE_PCT]=FLOOR(RAND(CHECKSUM(NEWID()))*(55-48+1)+48)
	WHERE [LCA_thesis].[dbo].[Intial_Construction_2].[Layer_Code_No] LIKE 'AC layer below surface (binder course)'
			AND [LCA_thesis].[dbo].[Intial_Construction_2].[AGG_COARSE_PCT] IS NULL;


	UPDATE [LCA_thesis].[dbo].[Intial_Construction_2]
	SET [LCA_thesis].[dbo].[Intial_Construction_2].[AGG_FINE_PCT]=FLOOR(RAND(CHECKSUM(NEWID()))*(40-35+1)+35)
	WHERE  [LCA_thesis].[dbo].[Intial_Construction_2].[Layer_Code_No] LIKE 'Original Surface Layer'
		AND [LCA_thesis].[dbo].[Intial_Construction_2].[AGG_FINE_PCT] IS NULL;

UPDATE [LCA_thesis].[dbo].[Intial_Construction_2]
	SET [LCA_thesis].[dbo].[Intial_Construction_2].[AGG_FINE_PCT]=FLOOR(RAND(CHECKSUM(NEWID()))*(40-35+1)+35)
	WHERE  [LCA_thesis].[dbo].[Intial_Construction_2].[Layer_Code_No] LIKE 'Original Surface Layer'
		AND [LCA_thesis].[dbo].[Intial_Construction_2].[AGG_FINE_PCT] LIKE '0';

		UPDATE [LCA_thesis].[dbo].[Intial_Construction_2]
	SET [LCA_thesis].[dbo].[Intial_Construction_2].[AGG_FINE_PCT]=FLOOR(RAND(CHECKSUM(NEWID()))*(40-35+1)+35)
	WHERE  [LCA_thesis].[dbo].[Intial_Construction_2].[Layer_Code_No] LIKE 'AC layer below surface (binder course)'
		AND [LCA_thesis].[dbo].[Intial_Construction_2].[AGG_FINE_PCT] IS NULL;


	UPDATE [LCA_thesis].[dbo].[Intial_Construction_2]
	SET [LCA_thesis].[dbo].[Intial_Construction_2].[AGG_COARSE_PCT]=61.5
	WHERE  [LCA_thesis].[dbo].[Intial_Construction_2].[Layer_Code_No] LIKE 'Base'
		AND [LCA_thesis].[dbo].[Intial_Construction_2].[AGG_COARSE_PCT] IS NULL
		AND [LCA_thesis].[dbo].[Intial_Construction_2].[STATE_CODE_EXP] LIKE 'Ontario';

		UPDATE [LCA_thesis].[dbo].[Intial_Construction_2]
	SET [LCA_thesis].[dbo].[Intial_Construction_2].[AGG_COARSE_PCT]=67.5
	WHERE  [LCA_thesis].[dbo].[Intial_Construction_2].[Layer_Code_No] LIKE 'Base'
		AND [LCA_thesis].[dbo].[Intial_Construction_2].[AGG_COARSE_PCT] IS NULL
		AND [LCA_thesis].[dbo].[Intial_Construction_2].[STATE_CODE_EXP] LIKE 'British Columbia';

		UPDATE [LCA_thesis].[dbo].[Intial_Construction_2]
	SET [LCA_thesis].[dbo].[Intial_Construction_2].[AGG_COARSE_PCT]=58
	WHERE  [LCA_thesis].[dbo].[Intial_Construction_2].[Layer_Code_No] LIKE 'Base'
		AND [LCA_thesis].[dbo].[Intial_Construction_2].[AGG_COARSE_PCT] IS NULL
		AND [LCA_thesis].[dbo].[Intial_Construction_2].[STATE_CODE_EXP] LIKE 'Alberta';

		UPDATE [LCA_thesis].[dbo].[Intial_Construction_2]
	SET [LCA_thesis].[dbo].[Intial_Construction_2].[AGG_COARSE_PCT]=58
	WHERE  [LCA_thesis].[dbo].[Intial_Construction_2].[Layer_Code_No] LIKE 'Base'
		AND [LCA_thesis].[dbo].[Intial_Construction_2].[AGG_COARSE_PCT] LIKE '0'
		AND [LCA_thesis].[dbo].[Intial_Construction_2].[STATE_CODE_EXP] LIKE 'Alberta'

			UPDATE [LCA_thesis].[dbo].[Intial_Construction_2]
	SET [LCA_thesis].[dbo].[Intial_Construction_2].[AGG_COARSE_PCT]=68.5
	WHERE  [LCA_thesis].[dbo].[Intial_Construction_2].[Layer_Code_No] LIKE 'Base'
		AND [LCA_thesis].[dbo].[Intial_Construction_2].[AGG_COARSE_PCT] IS NULL
		AND [LCA_thesis].[dbo].[Intial_Construction_2].[STATE_CODE_EXP] LIKE 'Saskatchewan';

			UPDATE [LCA_thesis].[dbo].[Intial_Construction_2]
	SET [LCA_thesis].[dbo].[Intial_Construction_2].[AGG_COARSE_PCT]=75
	WHERE  [LCA_thesis].[dbo].[Intial_Construction_2].[Layer_Code_No] LIKE 'Base'
		AND [LCA_thesis].[dbo].[Intial_Construction_2].[AGG_COARSE_PCT] IS NULL
		AND [LCA_thesis].[dbo].[Intial_Construction_2].[STATE_CODE_EXP] LIKE 'Manitoba';

			UPDATE [LCA_thesis].[dbo].[Intial_Construction_2]
	SET [LCA_thesis].[dbo].[Intial_Construction_2].[AGG_COARSE_PCT]=66.1
	WHERE  [LCA_thesis].[dbo].[Intial_Construction_2].[Layer_Code_No] LIKE 'Base'
		AND [LCA_thesis].[dbo].[Intial_Construction_2].[AGG_COARSE_PCT] IS NULL
		AND [LCA_thesis].[dbo].[Intial_Construction_2].[STATE_CODE_EXP] LIKE 'New Brunswick';
		UPDATE [LCA_thesis].[dbo].[Intial_Construction_2]

	UPDATE [LCA_thesis].[dbo].[Intial_Construction_2]
	SET [LCA_thesis].[dbo].[Intial_Construction_2].[AGG_COARSE_PCT]=66.1
	WHERE  [LCA_thesis].[dbo].[Intial_Construction_2].[Layer_Code_No] LIKE 'Base'
		AND [LCA_thesis].[dbo].[Intial_Construction_2].[AGG_COARSE_PCT] IS NULL
		AND [LCA_thesis].[dbo].[Intial_Construction_2].[STATE_CODE_EXP] LIKE 'Newfoundland';

		UPDATE [LCA_thesis].[dbo].[Intial_Construction_2]
	SET [LCA_thesis].[dbo].[Intial_Construction_2].[AGG_COARSE_PCT]=66.1
	WHERE  [LCA_thesis].[dbo].[Intial_Construction_2].[Layer_Code_No] LIKE 'Base'
		AND [LCA_thesis].[dbo].[Intial_Construction_2].[AGG_COARSE_PCT] IS NULL
		AND [LCA_thesis].[dbo].[Intial_Construction_2].[STATE_CODE_EXP] LIKE 'NovaScotia';

		UPDATE [LCA_thesis].[dbo].[Intial_Construction_2]
	SET [LCA_thesis].[dbo].[Intial_Construction_2].[AGG_COARSE_PCT]=66.1
	WHERE  [LCA_thesis].[dbo].[Intial_Construction_2].[Layer_Code_No] LIKE 'Base'
		AND [LCA_thesis].[dbo].[Intial_Construction_2].[AGG_COARSE_PCT] IS NULL
		AND [LCA_thesis].[dbo].[Intial_Construction_2].[STATE_CODE_EXP] LIKE 'Prince Edward Island';

		UPDATE [LCA_thesis].[dbo].[Intial_Construction_2]
	SET [LCA_thesis].[dbo].[Intial_Construction_2].[AGG_COARSE_PCT]=66.1
	WHERE  [LCA_thesis].[dbo].[Intial_Construction_2].[Layer_Code_No] LIKE 'Base'
		AND [LCA_thesis].[dbo].[Intial_Construction_2].[AGG_COARSE_PCT] IS NULL
		AND [LCA_thesis].[dbo].[Intial_Construction_2].[STATE_CODE_EXP] LIKE 'Quebec';


		UPDATE [LCA_thesis].[dbo].[Intial_Construction_2]
	SET [LCA_thesis].[dbo].[Intial_Construction_2].[AGG_COARSE_PCT]=61.5
	WHERE  [LCA_thesis].[dbo].[Intial_Construction_2].[Layer_Code_No] LIKE 'Subbase'
		AND [LCA_thesis].[dbo].[Intial_Construction_2].[AGG_COARSE_PCT] IS NULL
		AND [LCA_thesis].[dbo].[Intial_Construction_2].[STATE_CODE_EXP] LIKE 'Ontario';

		UPDATE [LCA_thesis].[dbo].[Intial_Construction_2]
	SET [LCA_thesis].[dbo].[Intial_Construction_2].[AGG_COARSE_PCT]=67.5
	WHERE  [LCA_thesis].[dbo].[Intial_Construction_2].[Layer_Code_No] LIKE 'Subbase'
		AND [LCA_thesis].[dbo].[Intial_Construction_2].[AGG_COARSE_PCT] IS NULL
		AND [LCA_thesis].[dbo].[Intial_Construction_2].[STATE_CODE_EXP] LIKE 'British Columbia';

		UPDATE [LCA_thesis].[dbo].[Intial_Construction_2]
	SET [LCA_thesis].[dbo].[Intial_Construction_2].[AGG_COARSE_PCT]=58
	WHERE  [LCA_thesis].[dbo].[Intial_Construction_2].[Layer_Code_No] LIKE 'Subbase'
		AND [LCA_thesis].[dbo].[Intial_Construction_2].[AGG_COARSE_PCT] IS NULL
		AND [LCA_thesis].[dbo].[Intial_Construction_2].[STATE_CODE_EXP] LIKE 'Alberta';

		UPDATE [LCA_thesis].[dbo].[Intial_Construction_2]
	SET [LCA_thesis].[dbo].[Intial_Construction_2].[AGG_COARSE_PCT]=58
	WHERE  [LCA_thesis].[dbo].[Intial_Construction_2].[Layer_Code_No] LIKE 'Subbase'
		AND [LCA_thesis].[dbo].[Intial_Construction_2].[AGG_COARSE_PCT] LIKE '0'
		AND [LCA_thesis].[dbo].[Intial_Construction_2].[STATE_CODE_EXP] LIKE 'Alberta';

			UPDATE [LCA_thesis].[dbo].[Intial_Construction_2]
	SET [LCA_thesis].[dbo].[Intial_Construction_2].[AGG_COARSE_PCT]=68.5
	WHERE  [LCA_thesis].[dbo].[Intial_Construction_2].[Layer_Code_No] LIKE 'Subbase'
		AND [LCA_thesis].[dbo].[Intial_Construction_2].[AGG_COARSE_PCT] IS NULL
		AND [LCA_thesis].[dbo].[Intial_Construction_2].[STATE_CODE_EXP] LIKE 'Saskatchewan';

			UPDATE [LCA_thesis].[dbo].[Intial_Construction_2]
	SET [LCA_thesis].[dbo].[Intial_Construction_2].[AGG_COARSE_PCT]=75
	WHERE  [LCA_thesis].[dbo].[Intial_Construction_2].[Layer_Code_No] LIKE 'Subbase'
		AND [LCA_thesis].[dbo].[Intial_Construction_2].[AGG_COARSE_PCT] IS NULL
		AND [LCA_thesis].[dbo].[Intial_Construction_2].[STATE_CODE_EXP] LIKE 'Manitoba';

			UPDATE [LCA_thesis].[dbo].[Intial_Construction_2]
	SET [LCA_thesis].[dbo].[Intial_Construction_2].[AGG_COARSE_PCT]=66.1
	WHERE  [LCA_thesis].[dbo].[Intial_Construction_2].[Layer_Code_No] LIKE 'Subbase'
		AND [LCA_thesis].[dbo].[Intial_Construction_2].[AGG_COARSE_PCT] IS NULL
		AND [LCA_thesis].[dbo].[Intial_Construction_2].[STATE_CODE_EXP] LIKE 'New Brunswick';
		

	UPDATE [LCA_thesis].[dbo].[Intial_Construction_2]
	SET [LCA_thesis].[dbo].[Intial_Construction_2].[AGG_COARSE_PCT]=66.1
	WHERE  [LCA_thesis].[dbo].[Intial_Construction_2].[Layer_Code_No] LIKE 'Subbase'
		AND [LCA_thesis].[dbo].[Intial_Construction_2].[AGG_COARSE_PCT] IS NULL
		AND [LCA_thesis].[dbo].[Intial_Construction_2].[STATE_CODE_EXP] LIKE 'Newfoundland';

		UPDATE [LCA_thesis].[dbo].[Intial_Construction_2]
	SET [LCA_thesis].[dbo].[Intial_Construction_2].[AGG_COARSE_PCT]=66.1
	WHERE  [LCA_thesis].[dbo].[Intial_Construction_2].[Layer_Code_No] LIKE 'Subbase'
		AND [LCA_thesis].[dbo].[Intial_Construction_2].[AGG_COARSE_PCT] IS NULL
		AND [LCA_thesis].[dbo].[Intial_Construction_2].[STATE_CODE_EXP] LIKE 'NovaScotia';

		UPDATE [LCA_thesis].[dbo].[Intial_Construction_2]
	SET [LCA_thesis].[dbo].[Intial_Construction_2].[AGG_COARSE_PCT]=66.1
	WHERE  [LCA_thesis].[dbo].[Intial_Construction_2].[Layer_Code_No] LIKE 'Subbase'
		AND [LCA_thesis].[dbo].[Intial_Construction_2].[AGG_COARSE_PCT] IS NULL
		AND [LCA_thesis].[dbo].[Intial_Construction_2].[STATE_CODE_EXP] LIKE 'Prince Edward Island';

		UPDATE [LCA_thesis].[dbo].[Intial_Construction_2]
	SET [LCA_thesis].[dbo].[Intial_Construction_2].[AGG_COARSE_PCT]=66.1
	WHERE  [LCA_thesis].[dbo].[Intial_Construction_2].[Layer_Code_No] LIKE 'Subbase'
		AND [LCA_thesis].[dbo].[Intial_Construction_2].[AGG_COARSE_PCT] IS NULL
		AND [LCA_thesis].[dbo].[Intial_Construction_2].[STATE_CODE_EXP] LIKE 'Quebec';

		UPDATE [LCA_thesis].[dbo].[Intial_Construction_2]
		SET [LCA_thesis].[dbo].[Intial_Construction_2].[BINDER_PCT]=0
		WHERE [LCA_thesis].[dbo].[Intial_Construction_2].[Layer_Code_No] LIKE 'Subbase'
			OR [LCA_thesis].[dbo].[Intial_Construction_2].[Layer_Code_No] LIKE 'Base'

		

		UPDATE [LCA_thesis].[dbo].[Intial_Construction_2]
		SET [LCA_thesis].[dbo].[Intial_Construction_2].[AGG_FILLER_PCT]
			=100-CAST([LCA_thesis].[dbo].[Intial_Construction_2].[AGG_COARSE_PCT] AS decimal(4,2))
				-CAST([LCA_thesis].[dbo].[Intial_Construction_2].[AGG_FINE_PCT] AS decimal(4,2));
		

		UPDATE [LCA_thesis].[dbo].[Intial_Construction_2]
		SET [LCA_thesis].[dbo].[Intial_Construction_2].[AGG_COARSE_SPEC_GRAV]=3;

		UPDATE [LCA_thesis].[dbo].[Intial_Construction_2]
		SET [LCA_thesis].[dbo].[Intial_Construction_2].[AGG_FINE_SPEC_GRAV]=3;

			UPDATE [LCA_thesis].[dbo].[Intial_Construction_2]
		SET [LCA_thesis].[dbo].[Intial_Construction_2].[AGG_FILLER_SPEC_GRAV]=2.6;

			UPDATE [LCA_thesis].[dbo].[Intial_Construction_2]
		SET [LCA_thesis].[dbo].[Intial_Construction_2].[BINDER_SPEC_GRAV]=1;
			

		












	




