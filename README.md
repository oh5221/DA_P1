# DA_P1
프로그래머스 데이터 분석 3기
1차 프로젝트
**국내 주요 숙박업소 데이터를 이용한 여행자별 여행지 및 숙박시설 추천**

### 활용 데이터
[국내 주요 숙박업소별 정보](https://www.bigdata-culture.kr/bigdata/user/data_market/detail.do?id=354c0cc0-6403-11ee-9c85-79328b353134)

| 순서 | 컬럼영문명                         | 컬럼한글명             | 데이터타입 | 길이 | PK여부 | NOT NULL여부 |
|------|------------------------------------|------------------------|------------|------|-------|--------------|
| 1    | MCATE_CD_NM                        | 분류코드명             | VARCHAR    | 200  | Y     | Y            |
| 2    | SEXDSTN_CD                         | 성별코드               | VARCHAR    | 30   | N     | Y            |
| 3    | BIRTH_YEAR                         | 출생년도               | VARCHAR    | 4    | N     | Y            |
| 4    | MRRG_AT_CD                         | 결혼여부코드           | VARCHAR    | 30   | N     | Y            |
| 5    | CHLDRN_AT_CD                       | 자녀여부코드           | VARCHAR    | 30   | N     | Y            |
| 6    | FAMILY_TY_NM                       | 가족유형명             | VARCHAR    | 200  | N     | Y            |
| 7    | OC_AREA_CD                         | 거주지역코드           | VARCHAR    | 30   | N     | Y            |
| 8    | ANSWRR_OC_AREA_NM                  | 답변자거주지역명       | VARCHAR    | 200  | N     | Y            |
| 9    | OCCP_CL_NM                         | 직업분류명             | VARCHAR    | 200  | N     | Y            |
| 10   | MT_AVRG_HSHLD_INCOME_DGREE_NM      | 월평균가구소득정도명   | VARCHAR    | 200  | N     | Y            |
| 11   | COM_AT                             | 동행자여부             | VARCHAR    | 1    | N     | Y            |
| 12   | COM_TY                             | 동행자유형             | VARCHAR    | 4000 | N     | Y            |
| 13   | TOUR_PD                            | 여행기간               | DECIMAL    | 38   | N     | Y            |
| 14   | LDGS_NM                            | 숙박업명               | VARCHAR    | 200  | N     | Y            |
| 15   | LDGS_ADDR                          | 숙박업주소             | VARCHAR    | 500  | N     | Y            |
| 16   | LDGS_ROAD_NM_ADDR                  | 숙박업도로명주소       | VARCHAR    | 500  | N     | Y            |
| 17   | GSRM_SCALE_CN                      | 객실규모내용           | VARCHAR    | 500  | N     | Y            |
| 18   | LDGS_GRAD_VALUE                    | 숙박업등급값           | VARCHAR    | 200  | N     | Y            |
| 19   | LDGMNT_TY_NM                       | 숙박유형명             | VARCHAR    | 200  | N     | Y            |
| 20   | LDGS_AVRG_PRC                      | 숙박업평균가격         | DECIMAL    | 28,5 | N     | Y            |
| 21   | LDGS_MIN_PRC                       | 숙박업최저가격         | DECIMAL    | 28,5 | N     | Y            |
| 22   | LDGS_MXMM_PRC                      | 숙박업최대가격         | DECIMAL    | 28,5 | N     | Y            |
| 23   | LDGS_AVRG_SCORE_CO                 | 숙박업평점수           | DECIMAL    | 38   | N     | Y            |


### 주제
국내 주요 숙박업소 데이터를 이용한 여행자별 여행지 및 숙박시설 추천

### 회의 기록
https://www.notion.so/prgrms/1-88921808cc1c42609c8b73822f0a4662
