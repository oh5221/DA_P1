SELECT 
	DISTINCT
    _MCATE_CD_NM, SEXDSTN_CD, BIRTH_YEAR,
    MRRG_AT_CD, CHLDRN_AT_CD, FAMILY_TY_NM,
    OC_AREA_CD, ANSWRR_OC_AREA_NM, OCCP_CL_NM,
    MT_AVRG_HSHLD_INCOME_DGREE_NM, COM_AT, TOUR_PD,
    LDGS_NM, LDGS_ADDR, LDGS_ROAD_NM_ADDR,
    GSRM_SCALE_CN, LDGS_GRAD_VALUE, LDGMNT_TY_NM,
    LDGS_AVRG_PRC, LDGS_MIN_PRC, LDGS_MXMM_PRC,
    LDGS_AVRG_SCORE_CO, COM_TY,
    CASE 
        WHEN COM_TY LIKE '%부모님%' THEN '효도여행'
        WHEN COM_TY LIKE '%반려동물%' THEN '반려동물'
        WHEN COM_TY LIKE '%자녀%' THEN '가족여행'
        WHEN com_ty LIKE '혼자서' THEN '혼자여행'
        WHEN (COM_TY LIKE '배우자' OR COM_TY LIKE '연인') 
             AND NOT (COM_TY LIKE '%친구%' OR COM_TY LIKE '%형제/자매%' OR COM_TY LIKE '%부모님%' OR COM_TY LIKE '%반려동물%') THEN '연애여행'
        WHEN (COM_TY LIKE '친구' OR COM_TY LIKE '형제/자매') 
             AND NOT (COM_TY LIKE '%배우자%' OR COM_TY LIKE '%연인%' OR COM_TY LIKE '%부모님%' OR COM_TY LIKE '%반려동물%') THEN '친목여행'
		  ELSE '기타'
    END AS 여행유형
FROM 
    accomodations
ORDER BY 
    여행유형;
