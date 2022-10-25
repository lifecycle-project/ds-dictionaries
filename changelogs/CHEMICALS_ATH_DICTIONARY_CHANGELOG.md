# Versions of data dictionaries (chemical data)
We define here in what versions of the data dictionaries contains which tables

## 1.1
**dsUpload R-package version >= 4.6.x**

### Content

#### General changes
- *yearly-repeated variables*
  - Added variables see list below
- *trimester-repeated variables*
  - Added age_trimeter at trimester dictionary

#### Additional variables 

*yearly-repeated variables*

**Added variables**

| Variable        | Type        | Description                       |
| ----------------| ----------- | --------------------------------- |
|age_years        | integer     | Age of child in years             |
|c_cotinine_lod_  | decimal     | limit of detection of child urine Cotinine levels within # year of age (child was aged between # and <#+1 year)  |
|c_cotinine_raw_  | decimal     | child urine Cotinine levels within # year of age (child was aged between # and <#+1 year)  |
|c_creatinine_lod_| decimal     | limit of detection of child urine Creatinine levels within # year of age (child was aged between # and <#+1 year)  |
|c_creatinine_raw_| decimal     | child urine Creatinine levels within # year of age (child was aged between # and <#+1 year)  |
|c_mg_lod_        | decimal     | limit of detection of child Mg levels within # year of age (child was aged between # and <#+1 year) |
|c_mg_raw_        | decimal     | child Mg levels within # year of age (child was aged between # and <#+1 year)   |
|c_na_lod_        | decimal     | limit of detection of child Na levels within # year of age (child was aged between # and <#+1 year)  |
|c_na_raw_        | decimal     | child Na levels within # year of age (child was aged between # and <#+1 year)  |
|c_as_lod_        | decimal     | limit of detection of child As levels within # year of age (child was aged between # and <#+1 year) |
|c_as_raw_        | decimal     | child As levels within # year of age (child was aged between # and <#+1 year)   |
|c_co_lod_        | decimal     | limit of detection of child Co levels within # year of age (child was aged between # and <#+1 year)  |
|c_co_raw_        | decimal     | child Co levels within # year of age (child was aged between # and <#+1 year) |
|c_hg_lod_        | decimal     | limit of detection of child Hg levels within # year of age (child was aged between # and <#+1 year)  |
|c_hg_raw_        | decimal     | child Hg levels within # year of age (child was aged between # and <#+1 year) |
|c_mn_lod_        | decimal     | limit of detection of child Mn levels within # year of age (child was aged between # and <#+1 year) |
|c_mn_raw_        | decimal     | child Mn levels within # year of age (child was aged between # and <#+1 year)  |
|c_mo_lod_        | decimal     | limit of detection of child Mo levels within # year of age (child was aged between # and <#+1 year)  |
|c_mo_raw_        | decimal     | child Mo levels within # year of age (child was aged between # and <#+1 year) |
|c_pb_lod_        | decimal     | limit of detection of child Pb levels within # year of age (child was aged between # and <#+1 year)  |
|c_pb_raw_        | decimal     | child Pb levels within # year of age (child was aged between # and <#+1 year)  |
|c_dde_lod_       | decimal     | limit of detection of child DDE levels within # year of age (child was aged between # and <#+1 year) |
|c_dde_raw_       | decimal     | child DDE levels within # year of age (child was aged between # and <#+1 year)   |
|c_pcb118_lod_    | decimal     | limit of detection of child PCB-118 levels within # year of age (child was aged between # and <#+1 year)  |
|c_pcb118_raw_    | decimal     | child PCB-118 levels within # year of age (child was aged between # and <#+1 year)  |
|c_pcb153_lod_    | decimal     | limit of detection of child PCB-153 levels within # year of age (child was aged between # and <#+1 year)  |
|c_pcb153_raw_    | decimal     | child PCB-153 levels within # year of age (child was aged between # and <#+1 year) |
|c_pcb180_lod_    | decimal     | limit of detection of child PCB-180 levels within # year of age (child was aged between # and <#+1 year) |
|c_pcb180_raw_    | decimal     | child PCB-180 levels within # year of age (child was aged between # and <#+1 year) |
|c_pbde153_lod_   | decimal     | limit of detection of child PBDE-153 levels within # year of age (child was aged between # and <#+1 year) |
|c_pbde153_raw_   | decimal     | child PBDE-153 levels within # year of age (child was aged between # and <#+1 year)  |
|c_dmp_lod_       | decimal     | limit of detection of child urine DMP levels within # year of age (child was aged between # and <#+1 year)  |
|c_dmp_raw_       | decimal     | child urine DMP levels within # year of age (child was aged between # and <#+1 year)  |
|c_dmdtp_lod_     | decimal     | limit of detection of child urine DMDTP levels within # year of age (child was aged between # and <#+1 year)  |
|c_dmdtp_raw_     | decimal     | child urine DMDTP levels within # year of age (child was aged between # and <#+1 year)  |
|c_detp_lod_      | decimal     | limit of detection of child urine DETP levels within # year of age (child was aged between # and <#+1 year)  |
|c_detp_raw_      | decimal     | child urine DETP levels within # year of age (child was aged between # and <#+1 year) |
|c_pfna_lod_      | decimal     | limit of detection of child PFNA levels within # year of age (child was aged between # and <#+1 year)  |
|c_pfna_raw_      | decimal     | child PFDA levels within # year of age (child was aged between # and <#+1 year) |
|c_pfunda_lod_    | decimal     | limit of detection of child PFUnDA levels within # year of age (child was aged between # and <#+1 year)  |
|c_pfunda_raw_    | decimal     | child PFUnDA levels within # year of age (child was aged between # and <#+1 year)  |
|c_pfhxs_lod_     | decimal     | limit of detection of child PFHxS levels within # year of age (child was aged between # and <#+1 year) |
|c_pfhxs_raw_     | decimal     | child PFHpS levels within # year of age (child was aged between # and <#+1 year)  |
|c_pfos_lod_      | decimal     | limit of detection of child PFOS levels within # year of age (child was aged between # and <#+1 year) |
|c_pfos_raw_      | decimal     | child PFOS levels within # year of age (child was aged between # and <#+1 year) |
|c_mepa_lod_      | decimal     | limit of detection of child urine ETPA levels within # year of age (child was aged between # and <#+1 year) |
|c_mepa_raw_      | decimal     | child urine ETPA levels within # year of age (child was aged between # and <#+1 year) |
|c_prpa_lod_      | decimal     | limit of detection of child urine PRPA levels within # year of age (child was aged between # and <#+1 year)  |
|c_prpa_raw_      | decimal     | child urine PRPA levels within # year of age (child was aged between # and <#+1 year) |
|c_bpa_lod_       | decimal     | limit of detection of child urine BPA levels within # year of age (child was aged between # and <#+1 year) |
|c_bpa_raw_       | decimal     | child urine BPA levels within # year of age (child was aged between # and <#+1 year) |
|c_bupa_lod_      | decimal     | limit of detection of child urine BUPA levels within # year of age (child was aged between # and <#+1 year)  |
|c_bupa_raw_      | decimal     | child urine BUPA levels within # year of age (child was aged between # and <#+1 year) |
|c_oxbe_lod_      | decimal     | limit of detection of child urine OXBE levels within # year of age (child was aged between # and <#+1 year) |
|c_oxbe_raw_      | decimal     | child urine OXBE levels within # year of age (child was aged between # and <#+1 year)  |
|c_mep_lod_       | decimal     | limit of detection of child urine MEP levels within # year of age (child was aged between # and <#+1 year) |
|c_mep_raw_       | decimal     | child urine MEP levels within # year of age (child was aged between # and <#+1 year)  |
|c_mnbp_lod_      | decimal     | limit of detection of child urine MnBP levels within # year of age (child was aged between # and <#+1 year) |
|c_mnbp_raw_      | decimal     | child urine MnBP levels within # year of age (child was aged between # and <#+1 year) |
|c_mehp_lod_      | decimal     | limit of detection of child urine MEHP levels within # year of age (child was aged between # and <#+1 year) |
|c_mehp_raw_      | decimal     | child urine MEHP levels within # year of age (child was aged between # and <#+1 year) |
|c_meohp_lod_     | decimal     | limit of detection of child urine MEOHP levels within # year of age (child was aged between # and <#+1 year)  |
|c_meohp_raw_     | decimal     | child urine MEOHP levels within # year of age (child was aged between # and <#+1 year) |
|c_oxominp_lod_   | decimal     | limit of detection of child urine oxo-MiNP levels within # year of age (child was aged between # and <#+1 year) |
|c_oxominp_raw_   | decimal     | child urine oxo-MiNP levels within # year of age (child was aged between # and <#+1 year) |

*trimester-repeated variables*

**Added variables**

| Variable | Type    | Description                        |
| ---------| ------- | ---------------------------------- |
|age_trimester | integer | Age of child in trimester             |

### Tables
- 1_1_nonrep
- 1_1_trimester_rep
- 1_1_yearly_rep

## 1.0
**dsUpload R-package version ? Not know if works with these data

### Content
1.0 Chemicals in Athlete from Helix Project
Chemicals for mother and child

#### General changes

#### Additional variables 

*non-repeated variables*

*trimester-repeated variables*

*yearly-repeated variables*

### Tables
- 1_0_nonrep
- 1_0_trimester_rep
- 1_0_yearly_rep
