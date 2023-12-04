# Versions of data dictionaries (urban_ath data)

We define here in what versions of the data dictionaries contains which tables

## 1.3

**dsUpload R-package version >= 4.7.x**

### Content

#### General changes

- 2023 dic 4th. all food environment variables added (these variables were not included in the older versions).

- yearly_rep: categories options added and updated for ath_blueyn300_* and ath_greenyn300_*, integer values 0 (no) and 1 (yes). 
- yearly_rep: in addition, type of these ath_blueyn300_* and ath_greenyn300_* changed from boolean to integer.
- non_rep: Added categories for urb_deg_birth at category tab.

#### Additional variables

No additional variables added.

### Tables

- 1_3_non_rep
- 1_3_trimester_rep
- 1_3_yearly_rep

## 1.2

**dsUpload R-package version >= 4.7.x**

### Content

#### General changes

Categories options added and updated for ath_blueyn300_* and ath_greenyn300_*, integer values 0 (no) and 1 (yes).

*non-repeating variables*

**Changed variables**

| Variable        | Type        | Description                                      |
| ----------------| ----------- | --------------------------------------------- |
| ath_blueyn300_preg | integer | is there a blue space  > 5,000 m2 in a distance of 300 m? at pregnancy |
| ath_greenyn300_preg | integer | is there a green space  > 5,000 m2 in a distance of 300 m? at pregnancy |
| ath_blueyn300_0 | integer | is there a blue space  > 5,000 m2 in a distance of 300 m? at birth |
| ath_greenyn300_0 | integer | is there a green space  > 5,000 m2 in a distance of 300 m? at birth |

*trimester-repeated variables*

**Changed variables**

| Variable        | Type        | Description                                      |
| ----------------| ----------- | --------------------------------------------- |
| ath_blueyn300_t | integer | is there a blue space  > 5,000 m2 in a distance of 300 m? at trimester |
| ath_greenyn300_t | integer | is there a green space  > 5,000 m2 in a distance of 300 m? at trimester |

*yearly-repeated variables*

**Changed variables**

| Variable        | Type        | Description                                      |
| ----------------| ----------- | --------------------------------------------- |
| ath_blueyn300_ | integer | is there a blue space  > 5,000 m2 in a distance of 300 m? at # year |
| ath_greenyn300_ | integer | is there a green space  > 5,000 m2 in a distance of 300 m? at # year |

#### Additional variables

No additional variables added.

### Tables

- 1_2_non_rep
- 1_2_trimester_rep
- 1_2_yearly_rep

## 1.1

**dsUpload R-package version >= 4.7.2**

### Content

#### General changes

*non-repeating variables*

**Changed variables**

| Variable        | Type        | Description                                      |
| ----------------| ----------- | --------------------------------------------- |
| ath_blueyn300_preg | boolean | is there a blue space  > 5,000 m2 in a distance of 300 m? at pregnancy |
| ath_greenyn300_preg | boolean | is there a green space  > 5,000 m2 in a distance of 300 m? at pregnancy |
| ath_blueyn300_0 | boolean | is there a blue space  > 5,000 m2 in a distance of 300 m? at birth |
| ath_greenyn300_0 | boolean | is there a green space  > 5,000 m2 in a distance of 300 m? at birth |

*trimester-repeated variables*

**Changed variables**

| Variable        | Type        | Description                                      |
| ----------------| ----------- | --------------------------------------------- |
| ath_blueyn300_t | boolean | is there a blue space  > 5,000 m2 in a distance of 300 m? at trimester |
| ath_greenyn300_t | boolean | is there a green space  > 5,000 m2 in a distance of 300 m? at trimester |

*yearly-repeated variables*

**Changed variables**

| Variable        | Type        | Description                                      |
| ----------------| ----------- | --------------------------------------------- |
| cohort_id | integer | Unique identifier for the cohort |
| ath_blueyn300_ | boolean | is there a blue space  > 5,000 m2 in a distance of 300 m? at # year |
| ath_greenyn300_ | boolean | is there a green space  > 5,000 m2 in a distance of 300 m? at # year |

#### Additional variables

- see lists below

*non-repeated variables*

**Added variables**

| Variable        | Type        | Description                                      |
| ----------------| ----------- | --------------------------------------------- |
| ath_lan_preg | decimal | nighttime light at pregnancy |
| ath_lan_0 | decimal | nighttime light at birth |


*trimester-repeated variables*

**Added variables**

| Variable                      | Type    | Description                                                                                                                         |
| ------------------------------| ------- | ----------------------------------------------------------------------------------------------------------------------------------- 
| cohort_id | integer | Unique identifier for the cohort |
| ath_lan_t | decimal | nighttime light at trimester |

*yearly-repeated variables*

**Added variables**

| Variable        | Type        | Description                                      |
| ----------------| ----------- | --------------------------------------------- |
| ath_lan_ | decimal | nighttime light at # year (># year and <=# year) |


### Tables

- 1_1_non_rep
- 1_1_trimester_rep
- 1_1_yearly_rep

## 1.0

**dsUpload R-package version >= 4.7.x**

### Content

#### General changes

- *non-repeated variables*
  - Added variables see list below
- *trimester-repeated variables*
  - Added variables see list below
- *yearly-repeated variables*
  - Added variables see list below

#### Additional variables

- see lists below

*non-repeated variables*

**Added variables**

| Variable        | Type        | Description                                      |
| ----------------| ----------- | --------------------------------------------- |
| row_id | integer | Unique identifier for the row in Opal |
| child_id | text | Unique identifier for the child |
| cohort_id | integer | Unique identifier for the cohort |
| urb_deg_preg | integer | Urban degree during pregnancy  as classified by GHS-SMOD |
| urb_deg_birth | integer | Urban degree at birth as classified by GHS-SMOD |
| ath_agrgr_preg | decimal | percentage of agrgr (agricultural areas, semi-natural areas and wetlands) land use within a buffer of 300 m at pregnancy |
| ath_airpt_preg | decimal | percentage of airpt (airports) land use within a buffer of 300 m at pregnancy |
| ath_areases_quint_preg | integer | area-level SES indicator (deprivation index in quintiles) at pregnancy |
| ath_areases_tert_preg | integer | area-level SES indicator (deprivation index in tertiles) at pregnancy |
| ath_bdens100_preg | decimal | building density within a buffer of 100 m at pregnancy |
| ath_bdens300_preg | decimal | building density within a buffer of 300 m at pregnancy |
| ath_blue_dist_preg | decimal | straight line distance to nearest blue space > 5,000 m2 at  pregnancy |
| ath_blue_size_preg | decimal | area of closest blue space > 5,000m2 at pregnancy |
| ath_blueyn300_preg | binary | is there a blue space  > 5,000 m2 in a distance of 300 m? at pregnancy |
| ath_connind100_preg | decimal | connectivity density within a buffer of 100 m at pregnancy |
| ath_connind300_preg | decimal | connectivity density within a buffer of 300 m at pregnancy |
| ath_distinvnear1_preg | decimal | inverse distance to nearest road at pregnancy |
| ath_fdensity300_preg | decimal | number of facilities present within a buffer of 300 m at pregnancy |
| ath_foodenvdens300_preg | decimal | number of facilities related to unhealthy food divided by the area of the 300 meters buffer at pregnancy |
| ath_frichness300_preg | decimal | number of different facility types present divided by the maximum potential number of facility types within a buffer of 300 m at pregnancy |
| ath_green_dist_preg | decimal | straight line distance to nearest green space > 5,000 m2 at  pregnancy |
| ath_green_size_preg | decimal | area of closest green space > 5,000m2 at pregnancy |
| ath_greenyn300_preg | binary | is there a green space  > 5,000 m2 in a distance of 300 m? at pregnancy |
| ath_hdres_preg | decimal | percentage of hdres (decimal urban fabric) land use within a buffer of 300 m at pregnancy |
| ath_hmax_preg | decimal | average of maximum relative humidity during pregnancy |
| ath_hmin_preg | decimal | average of minimum relative humidity during pregnancy |
| ath_hu_preg | decimal | average of relative humidity from eobs data during pregnancy |
| ath_hum_preg | decimal | average of mean relative humidity during pregnancy |
| ath_indtr_preg | decimal | percentage of indtr (industrial, commercial, public, military and private units) land use within a buffer of 300 m at pregnancy |
| ath_landuseshan300_preg | decimal | landuse Shannon's Evenness Index within a buffer of 300 m at pregnancy |
| ath_lden_c_preg | integer | categorized day-evening-night level at pregnancy |
| ath_lden_preg | decimal | day-evening-night level at pregnancy |
| ath_ldres_preg | decimal | percentage of ldres (disdecimal dense/medium density/low density urban fabric) land use within a buffer of 300 m at pregnancy |
| ath_lines_100_preg | decimal | length of public transport lines within a buffer of 100 m at pregnancy |
| ath_lines_300_preg | decimal | length of public transport lines within a buffer of 300 m at pregnancy |
| ath_lines_500_preg | decimal | length of public transport lines within a buffer of 500 m at pregnancy |
| ath_ln_c_preg | integer | categorized night level at pregnancy |
| ath_ln_preg | decimal | night level at pregnancy |
| ath_lst_preg | decimal | land surface temperature during pregnancy |
| ath_mdist_preg | decimal | distance to meteorological station during pregnancy |
| ath_natgr_preg | decimal | percentage of natgr (forests) land use within a buffer of 300 m at pregnancy |
| ath_ndvi100_mean_preg | decimal | 5-years moving average (YYYY-4 to YYYY) of NDVI within a 100 meter buffer around geocode using all available images during the greenest period (from May to August) at pregnancy |
| ath_ndvi300_mean_preg | decimal | 5-years moving average (YYYY-4 to YYYY) of NDVI within a 300 meter buffer around geocode using all available images during the greenest period (from May to August) at pregnancy |
| ath_ndvi500_mean_preg | decimal | 5-years moving average (YYYY-4 to YYYY) of NDVI within a 500 meter buffer around geocode using all available images during the greenest period (from May to August) at pregnancy |
| ath_ndvi100_std_preg | decimal | 5-years moving standard deviation (YYYY-4 to YYYY) of NDVI within a 100 meter buffer around geocode using all available images during the greenest period (from May to August) at pregnancy |
| ath_ndvi300_std_preg | decimal | 5-years moving standard deviation (YYYY-4 to YYYY) of NDVI within a 300 meter buffer around geocode using all available images during the greenest period (from May to August) at pregnancy |
| ath_ndvi500_std_preg | decimal | 5-years moving standard deviation (YYYY-4 to YYYY) of NDVI within a 500 meter buffer around geocode using all available images during the greenest period (from May to August) at pregnancy |
| ath_no2_preg | decimal | no2 average value (extrapolated back in time using ratio method) during pregnancy |
| ath_no2elp_preg | decimal | no2 elapse average value (extrapolated back in time using ratio method) during pregnancy |
| ath_noise_dist_preg | decimal | straight distance to the nearest road with noise level at pregnancy |
| ath_nox_preg | decimal | nox average value (extrapolated back in time using ratio method) during pregnancy |
| ath_other_preg | decimal | percentage of other (mineral extraction and dump sites, construction sites, land without current use) land use within a buffer of 300 m at pregnancy |
| ath_pm10_preg | decimal | pm10 average value (extrapolated back in time using ratio method) during pregnancy |
| ath_pm10cu_preg | decimal | pm10cu value at pregnancy |
| ath_pm10fe_preg | decimal | pm10fe value at pregnancy |
| ath_pm10k_preg | decimal | pm10k value at pregnancy |
| ath_pm10ni_preg | decimal | pm10ni value at pregnancy |
| ath_pm10s_preg | decimal | pm10s value at pregnancy |
| ath_pm10si_preg | decimal | pm10si value at pregnancy |
| ath_pm10v_preg | decimal | pm10v value at pregnancy |
| ath_pm10zn_preg | decimal | pm10zn value at pregnancy |
| ath_pm25_preg | decimal | pm25 average value (extrapolated back in time using ratio method) during pregnancy |
| ath_pm25abs_preg | decimal | pm25abs average value (extrapolated back in time using ratio method) during pregnancy |
| ath_pm25cu_preg | decimal | pm25cu value at pregnancy |
| ath_pm25elp_preg | decimal | pm25 elapse average value (extrapolated back in time using ratio method) during pregnancy |
| ath_pm25fe_preg | decimal | pm25fe value at pregnancy |
| ath_pm25k_preg | decimal | pm25k value at pregnancy |
| ath_pm25ni_preg | decimal | pm25ni value at pregnancy |
| ath_pm25s_preg | decimal | pm25s value at pregnancy |
| ath_pm25si_preg | decimal | pm25si value at pregnancy |
| ath_pm25v_preg | decimal | pm25v value at pregnancy |
| ath_pm25zn_preg | decimal | pm25zn value at pregnancy |
| ath_pmcoarse_preg | decimal | pmcoarse average value (extrapolated back in time using ratio method) during pregnancy |
| ath_pntv_preg | decimal | average of percent of nontree vegetation within a buffer of 300 m at pregnancy |
| ath_pnv_preg | decimal | average of percent of non vegetated within a buffer of 300 m at pregnancy |
| ath_popdens_preg | decimal | population density at pregnancy |
| ath_port_preg | decimal | percentage of port (port areas) land use within a buffer of 300 m at pregnancy |
| ath_pp_preg | decimal | average of sea level pressure from eobs data during pregnancy |
| ath_ptc_preg | decimal | average of percent of tree covered within a buffer of 300 m at pregnancy |
| ath_qq_preg | decimal | average of daily mean global radiation from eobs data during pregnancy |
| ath_rr_preg | decimal | average of precipitation sum from eobs data during pregnancy |
| ath_stops_100_preg | decimal | number of public transport stops within a buffer of 100 m at pregnancy |
| ath_stops_300_preg | decimal | number of public transport stops within a buffer of 300 m at pregnancy |
| ath_stops_500_preg | decimal | number of public transport stops within a buffer of 500 m at pregnancy |
| ath_tg_preg | decimal | average of mean temperature from eobs data during pregnancy |
| ath_tm_preg | decimal | average of mean temperature during pregnancy |
| ath_tmax_preg | decimal | average of maximum temperature during pregnancy |
| ath_tmin_preg | decimal | average of minimum temperature during pregnancy |
| ath_tn_preg | decimal | average of minimum temperature from eobs data during pregnancy |
| ath_trafload100_preg | decimal | total traffic load of all roads within a buffer of 100 m at pregnancy |
| ath_trafmajorload100_preg | decimal | total traffic load of major roads within a buffer of 100 m at pregnancy |
| ath_trafnear_preg | decimal | traffic density on nearest road at pregnancy |
| ath_trans_preg | decimal | percentage of trans (road and rail network and associated land, fast transit roads and associated land, other roads and associated land, railways and associated land) land use within a buffer of 300 m at pregnancy |
| ath_tx_preg | decimal | average of maximum temperature from eobs data during pregnancy |
| ath_urbgr_preg | decimal | percentage of urbgr (green urban areas, sports and leisure facilities) land use within a buffer of 300 m at pregnancy |
| ath_uvddc_preg | decimal | average of DNA-damage UV dose during pregnancy |
| ath_uvdec_preg | decimal | average of erythemal UV dose during pregnancy |
| ath_uvdvc_preg | decimal | average of vitamin-d UV dose during pregnancy |
| ath_vldres_preg | decimal | percentage of vldres (disdecimal very low density urban fabric) land use within a buffer of 300 m at pregnancy |
| ath_walkability_mean_preg | decimal | walkability index (as mean of deciles of facility richness index, landuse shannon's Evenness Index, population density, connectivity density) within a buffer of 300 m at pregnancy |
| ath_water_preg | decimal | percentage of water land use within a buffer of 300 m at pregnancy |
| urb_area_id | integer | unique identifier for the urban area |
| ath_agrgr_0 | decimal | percentage of agrgr (agricultural areas, semi-natural areas and wetlands) land use within a buffer of 300 m at birth |
| ath_airpt_0 | decimal | percentage of airpt (airports) land use within a buffer of 300 m at birth |
| ath_areases_quint_0 | integer | area-level SES indicator (deprivation index in quintiles) at birth |
| ath_areases_tert_0 | integer | area-level SES indicator (deprivation index in tertiles) at birth |
| ath_bdens100_0 | decimal | building density within a buffer of 100 m at birth |
| ath_bdens300_0 | decimal | building density within a buffer of 300 m at birth |
| ath_blue_dist_0 | decimal | straight line distance to nearest blue space > 5,000 m2 at  birth |
| ath_blue_size_0 | decimal | area of closest blue space > 5,000m2 at birth |
| ath_blueyn300_0 | binary | is there a blue space  > 5,000 m2 in a distance of 300 m? at birth |
| ath_connind100_0 | decimal | connectivity density within a buffer of 100 m at birth |
| ath_connind300_0 | decimal | connectivity density within a buffer of 300 m at birth |
| ath_distinvnear1_0 | decimal | inverse distance to nearest road at birth |
| ath_fdensity300_0 | decimal | number of facilities present within a buffer of 300 m at birth |
| ath_foodenvdens300_0 | decimal | number of facilities related to unhealthy food divided by the area of the 300 meters buffer at birth |
| ath_frichness300_0 | decimal | number of different facility types present divided by the maximum potential number of facility types within a buffer of 300 m at birth |
| ath_green_dist_0 | decimal | straight line distance to nearest green space > 5,000 m2 at  birth |
| ath_green_size_0 | decimal | area of closest green space > 5,000m2 at birth |
| ath_greenyn300_0 | binary | is there a green space  > 5,000 m2 in a distance of 300 m? at birth |
| ath_hdres_0 | decimal | percentage of hdres (decimal urban fabric) land use within a buffer of 300 m at birth |
| ath_indtr_0 | decimal | percentage of indtr (industrial, commercial, public, military and private units) land use within a buffer of 300 m at birth |
| ath_landuseshan300_0 | decimal | landuse Shannon's Evenness Index within a buffer of 300 m at birth |
| ath_lden_c_0 | integer | categorized day-evening-night level at birth |
| ath_lden_0 | decimal | day-evening-night level at birth |
| ath_ldres_0 | decimal | percentage of ldres (disdecimal dense/medium density/low density urban fabric) land use within a buffer of 300 m at birth |
| ath_lines_100_0 | decimal | length of public transport lines within a buffer of 100 m at birth |
| ath_lines_300_0 | decimal | length of public transport lines within a buffer of 300 m at birth |
| ath_lines_500_0 | decimal | length of public transport lines within a buffer of 500 m at birth |
| ath_ln_c_0 | integer | categorized night level at birth |
| ath_ln_0 | decimal | night level at birth |
| ath_natgr_0 | decimal | percentage of natgr (forests) land use within a buffer of 300 m at birth |
| ath_ndvi100_mean_0 | decimal | 5-years moving average (YYYY-4 to YYYY) of NDVI within a 100 meter buffer around geocode using all available images during the greenest period (from May to August) at birth |
| ath_ndvi300_mean_0 | decimal | 5-years moving average (YYYY-4 to YYYY) of NDVI within a 300 meter buffer around geocode using all available images during the greenest period (from May to August) at birth |
| ath_ndvi500_mean_0 | decimal | 5-years moving average (YYYY-4 to YYYY) of NDVI within a 500 meter buffer around geocode using all available images during the greenest period (from May to August) at birth |
| ath_ndvi100_std_0 | decimal | 5-years moving standard deviation (YYYY-4 to YYYY) of NDVI within a 100 meter buffer around geocode using all available images during the greenest period (from May to August) at birth |
| ath_ndvi300_std_0 | decimal | 5-years moving standard deviation (YYYY-4 to YYYY) of NDVI within a 300 meter buffer around geocode using all available images during the greenest period (from May to August) at birth |
| ath_ndvi500_std_0 | decimal | 5-years moving standard deviation (YYYY-4 to YYYY) of NDVI within a 500 meter buffer around geocode using all available images during the greenest period (from May to August) at birth |
| ath_noise_dist_0 | decimal | straight distance to the nearest road with noise level at birth |
| ath_other_0 | decimal | percentage of other (mineral extraction and dump sites, construction sites, land without current use) land use within a buffer of 300 m at birth |
| ath_pm10cu_0 | decimal | pm10cu value at birth |
| ath_pm10fe_0 | decimal | pm10fe value at birth |
| ath_pm10k_0 | decimal | pm10k value at birth |
| ath_pm10ni_0 | decimal | pm10ni value at birth |
| ath_pm10s_0 | decimal | pm10s value at birth |
| ath_pm10si_0 | decimal | pm10si value at birth |
| ath_pm10v_0 | decimal | pm10v value at birth |
| ath_pm10zn_0 | decimal | pm10zn value at birth |
| ath_pm25cu_0 | decimal | pm25cu value at birth |
| ath_pm25fe_0 | decimal | pm25fe value at birth |
| ath_pm25k_0 | decimal | pm25k value at birth |
| ath_pm25ni_0 | decimal | pm25ni value at birth |
| ath_pm25s_0 | decimal | pm25s value at birth |
| ath_pm25si_0 | decimal | pm25si value at birth |
| ath_pm25v_0 | decimal | pm25v value at birth |
| ath_pm25zn_0 | decimal | pm25zn value at birth |
| ath_pntv_0 | decimal | average of percent of nontree vegetation within a buffer of 300 m at birth |
| ath_pnv_0 | decimal | average of percent of non vegetated within a buffer of 300 m at birth |
| ath_popdens_0 | decimal | population density at birth |
| ath_port_0 | decimal | percentage of port (port areas) land use within a buffer of 300 m at birth |
| ath_ptc_0 | decimal | average of percent of tree covered within a buffer of 300 m at birth |
| ath_stops_100_0 | decimal | number of public transport stops within a buffer of 100 m at birth |
| ath_stops_300_0 | decimal | number of public transport stops within a buffer of 300 m at birth |
| ath_stops_500_0 | decimal | number of public transport stops within a buffer of 500 m at birth |
| ath_trafload100_0 | decimal | total traffic load of all roads within a buffer of 100 m at birth |
| ath_trafmajorload100_0 | decimal | total traffic load of major roads within a buffer of 100 m at birth |
| ath_trafnear_0 | decimal | traffic density on nearest road at birth |
| ath_trans_0 | decimal | percentage of trans (road and rail network and associated land, fast transit roads and associated land, other roads and associated land, railways and associated land) land use within a buffer of 300 m at birth |
| ath_urbgr_0 | decimal | percentage of urbgr (green urban areas, sports and leisure facilities) land use within a buffer of 300 m at birth |
| ath_vldres_0 | decimal | percentage of vldres (disdecimal very low density urban fabric) land use within a buffer of 300 m at birth |
| ath_walkability_mean_0 | decimal | walkability index (as mean of deciles of facility richness index, landuse shannon's Evenness Index, population density, connectivity density) within a buffer of 300 m at birth |
| ath_water_0 | decimal | percentage of water land use within a buffer of 300 m at birth |


*trimester-repeated variables*

**Added variables**

| Variable                      | Type    | Description                                                                                                                         |
| ------------------------------| ------- | ----------------------------------------------------------------------------------------------------------------------------------- 
| row_id | integer | Unique identifier for the row in Opal |
| mother_id | text | Unique identifier number for the mother  |
| child_id | text | Unique identifier number for the index child  |
| age_trimester | integer | Age of the child in trimesters |
| urb_area_id | integer | unique identifier for the urban area |
| ath_no2_t | decimal | no2 average value (extrapolated back in time using ratio method) during trimester |
| ath_no2elp_t | decimal | no2 elapse average value (extrapolated back in time using ratio method) during trimester |
| ath_nox_t | decimal | nox average value (extrapolated back in time using ratio method) during trimester |
| ath_pm10_t | decimal | pm10 average value (extrapolated back in time using ratio method) during trimester |
| ath_pm25_t | decimal | pm25 average value (extrapolated back in time using ratio method) during trimester |
| ath_pm25elp_t | decimal | pm25 elapse average value (extrapolated back in time using ratio method) during trimester |
| ath_pmcoarse_t | decimal | pmcoarse average value (extrapolated back in time using ratio method) during trimester |
| ath_pm25abs_t | decimal | pm25abs average value (extrapolated back in time using ratio method) during trimester |
| ath_pm25cu_t | decimal | pm25cu value at trimester |
| ath_pm25fe_t | decimal | pm25fe value at trimester |
| ath_pm25k_t | decimal | pm25k value at trimester |
| ath_pm25ni_t | decimal | pm25ni value at trimester |
| ath_pm25s_t | decimal | pm25s value at trimester |
| ath_pm25si_t | decimal | pm25si value at trimester |
| ath_pm25v_t | decimal | pm25v value at trimester |
| ath_pm25zn_t | decimal | pm25zn value at trimester |
| ath_pm10cu_t | decimal | pm10cu value at trimester |
| ath_pm10fe_t | decimal | pm10fe value at trimester |
| ath_pm10k_t | decimal | pm10k value at trimester |
| ath_pm10ni_t | decimal | pm10ni value at trimester |
| ath_pm10s_t | decimal | pm10s value at trimester |
| ath_pm10si_t | decimal | pm10si value at trimester |
| ath_pm10v_t | decimal | pm10v value at trimester |
| ath_pm10zn_t | decimal | pm10zn value at trimester |
| ath_blue_dist_t | decimal | straight line distance to nearest blue space > 5,000 m2 at  trimester |
| ath_green_dist_t | decimal | straight line distance to nearest green space > 5,000 m2 at  trimester |
| ath_blue_size_t | decimal | area of closest blue space > 5,000m2 at trimester |
| ath_green_size_t | decimal | area of closest green space > 5,000m2 at trimester |
| ath_blueyn300_t | binary | is there a blue space  > 5,000 m2 in a distance of 300 m? at trimester |
| ath_greenyn300_t | binary | is there a green space  > 5,000 m2 in a distance of 300 m? at trimester |
| ath_ndvi100_mean_t | decimal | 5-years moving average (YYYY-4 to YYYY) of NDVI within a 100 meter buffer around geocode using all available images during the greenest period (from May to August) at trimester |
| ath_ndvi300_mean_t | decimal | 5-years moving average (YYYY-4 to YYYY) of NDVI within a 300 meter buffer around geocode using all available images during the greenest period (from May to August) at trimester |
| ath_ndvi500_mean_t | decimal | 5-years moving average (YYYY-4 to YYYY) of NDVI within a 500 meter buffer around geocode using all available images during the greenest period (from May to August) at trimester |
| ath_ndvi100_std_t | decimal | 5-years moving standard deviation (YYYY-4 to YYYY) of NDVI within a 100 meter buffer around geocode using all available images during the greenest period (from May to August) at trimester |
| ath_ndvi300_std_t | decimal | 5-years moving standard deviation (YYYY-4 to YYYY) of NDVI within a 300 meter buffer around geocode using all available images during the greenest period (from May to August) at trimester |
| ath_ndvi500_std_t | decimal | 5-years moving standard deviation (YYYY-4 to YYYY) of NDVI within a 500 meter buffer around geocode using all available images during the greenest period (from May to August) at trimester |
| ath_pntv_t | decimal | average of percent of nontree vegetation within a buffer of 300 m at trimester |
| ath_pnv_t | decimal | average of percent of non vegetated within a buffer of 300 m at trimester |
| ath_ptc_t | decimal | average of percent of tree covered within a buffer of 300 m at trimester |
| ath_popdens_t | decimal | population density at trimester |
| ath_bdens100_t | decimal | building density within a buffer of 100 m at trimester |
| ath_bdens300_t | decimal | building density within a buffer of 300 m at trimester |
| ath_connind100_t | decimal | connectivity density within a buffer of 100 m at trimester |
| ath_connind300_t | decimal | connectivity density within a buffer of 300 m at trimester |
| ath_lines_100_t | decimal | length of public transport lines within a buffer of 100 m at trimester |
| ath_lines_300_t | decimal | length of public transport lines within a buffer of 300 m at trimester |
| ath_lines_500_t | decimal | length of public transport lines within a buffer of 500 m at trimester |
| ath_stops_100_t | decimal | number of public transport stops within a buffer of 100 m at trimester |
| ath_stops_300_t | decimal | number of public transport stops within a buffer of 300 m at trimester |
| ath_stops_500_t | decimal | number of public transport stops within a buffer of 500 m at trimester |
| ath_fdensity300_t | decimal | number of facilities present within a buffer of 300 m at trimester |
| ath_frichness300_t | decimal | number of different facility types present divided by the maximum potential number of facility types within a buffer of 300 m at trimester |
| ath_landuseshan300_t | decimal | landuse Shannon's Evenness Index within a buffer of 300 m at trimester |
| ath_walkability_mean_t | decimal | walkability index (as mean of deciles of facility richness index, landuse shannon's Evenness Index, population density, connectivity density) within a buffer of 300 m at trimester |
| ath_agrgr_t | decimal | percentage of agrgr (agricultural areas, semi-natural areas and wetlands) land use within a buffer of 300 m at trimester |
| ath_airpt_t | decimal | percentage of airpt (airports) land use within a buffer of 300 m at trimester |
| ath_hdres_t | decimal | percentage of hdres (continuous urban fabric) land use within a buffer of 300 m at trimester |
| ath_indtr_t | decimal | percentage of indtr (industrial, commercial, public, military and private units) land use within a buffer of 300 m at trimester |
| ath_ldres_t | decimal | percentage of ldres (discontinuous dense/medium density/low density urban fabric) land use within a buffer of 300 m at trimester |
| ath_natgr_t | decimal | percentage of natgr (forests) land use within a buffer of 300 m at trimester |
| ath_other_t | decimal | percentage of other (mineral extraction and dump sites, construction sites, land without current use) land use within a buffer of 300 m at trimester |
| ath_port_t | decimal | percentage of port (port areas) land use within a buffer of 300 m at trimester |
| ath_trans_t | decimal | percentage of trans (road and rail network and associated land, fast transit roads and associated land, other roads and associated land, railways and associated land) land use within a buffer of 300 m at trimester |
| ath_urbgr_t | decimal | percentage of urbgr (green urban areas, sports and leisure facilities) land use within a buffer of 300 m at trimester |
| ath_vldres_t | decimal | percentage of vldres (discontinuous very low density urban fabric) land use within a buffer of 300 m at trimester |
| ath_water_t | decimal | percentage of water land use within a buffer of 300 m at trimester |
| ath_areases_tert_t | integer | area-level SES indicator (deprivation index in tertiles) at trimester |
| ath_areases_quint_t | integer | area-level SES indicator (deprivation index in quintiles) at trimester |
| ath_distinvnear1_t | decimal | inverse distance to nearest road at trimester |
| ath_trafload100_t | decimal | total traffic load of all roads within a buffer of 100 m at trimester |
| ath_trafmajorload100_t | decimal | total traffic load of major roads within a buffer of 100 m at trimester |
| ath_trafnear_t | decimal | traffic density on nearest road at trimester |
| ath_lden_t | decimal | day-evening-night level at trimester |
| ath_ln_t | decimal | night level at trimester |
| ath_lden_c_t | integer | categorized day-evening-night level at trimester |
| ath_ln_c_t | integer | categorized night level at trimester |
| ath_noise_dist_t | decimal | straight distance to the nearest road with noise level at trimester |
| ath_foodenvdens300_t | decimal | number of facilities related to unhealthy food divided by the area of the 300 meters buffer at trimester |
| ath_tm_t | decimal | average of mean temperature during trimester |
| ath_tmin_t | decimal | average of minimum temperature during trimester |
| ath_tmax_t | decimal | average of maximum temperature during trimester |
| ath_hum_t | decimal | average of mean relative humidity during trimester |
| ath_hmin_t | decimal | average of minimum relative humidity during trimester |
| ath_hmax_t | decimal | average of maximum relative humidity during trimester |
| ath_tg_t | decimal | average of mean temperature from eobs data during trimester |
| ath_tn_t | decimal | average of minimum temperature from eobs data during trimester |
| ath_tx_t | decimal | average of maximum temperature from eobs data during trimester |
| ath_hu_t | decimal | average of relative humidity from eobs data during trimester |
| ath_rr_t | decimal | average of precipitation sum from eobs data during trimester |
| ath_qq_t | decimal | average of daily mean global radiation from eobs data during trimester |
| ath_pp_t | decimal | average of sea level pressure from eobs data during trimester |
| ath_uvddc_t | decimal | average of DNA-damage UV dose during trimester |
| ath_uvdec_t | decimal | average of erythemal UV dose during trimester |
| ath_uvdvc_t | decimal | average of vitamin-d UV dose during trimester |
| ath_lst_t | decimal | land surface temperature during trimester |
| ath_mdist_t | decimal | distance to meteorological station during trimester |
| ath_lan_t | decimal | nighttime light at trimester |

*yearly-repeated variables*

**Added variables**

| Variable        | Type        | Description                                      |
| ----------------| ----------- | --------------------------------------------- |
| row_id | integer | Unique identifier for the row in Opal |
| child_id | text | Unique identifier for the child |
| age_years | integer | Age of child in years |
| urb_area_id | integer | unique identifier for the urban area |
| urb_deg_ | integer | Urban degree as classified by GHS-SMOD |
| ath_no2_ | decimal | no2 average value (extrapolated back in time using ratio method) during # year (># year and <=#+1 year) |
| ath_no2elp_ | decimal | no2 elapse average value (extrapolated back in time using ratio method) during # year (># year and <=#+1 year) |
| ath_nox_ | decimal | nox average value (extrapolated back in time using ratio method) during # year (># year and <=#+1 year) |
| ath_pm10_ | decimal | pm10 average value (extrapolated back in time using ratio method) during # year (># year and <=#+1 year) |
| ath_pm25_ | decimal | pm25 average value (extrapolated back in time using ratio method) during # year (># year and <=#+1 year) |
| ath_pm25elp_ | decimal | pm25 elapse average value (extrapolated back in time using ratio method) during # year (># year and <=#+1 year) |
| ath_pmcoarse_ | decimal | pmcoarse average value (extrapolated back in time using ratio method) during # year (># year and <=#+1 year) |
| ath_pm25abs_ | decimal | pm25abs average value (extrapolated back in time using ratio method) during # year (># year and <=#+1 year) |
| ath_pm25cu_ | decimal | pm25cu value at # year |
| ath_pm25fe_ | decimal | pm25fe value at # year |
| ath_pm25k_ | decimal | pm25k value at # year |
| ath_pm25ni_ | decimal | pm25ni value at # year |
| ath_pm25s_ | decimal | pm25s value at # year |
| ath_pm25si_ | decimal | pm25si value at # year |
| ath_pm25v_ | decimal | pm25v value at # year |
| ath_pm25zn_ | decimal | pm25zn value at # year |
| ath_pm10cu_ | decimal | pm10cu value at # year |
| ath_pm10fe_ | decimal | pm10fe value at # year |
| ath_pm10k_ | decimal | pm10k value at # year |
| ath_pm10ni_ | decimal | pm10ni value at # year |
| ath_pm10s_ | decimal | pm10s value at # year |
| ath_pm10si_ | decimal | pm10si value at # year |
| ath_pm10v_ | decimal | pm10v value at # year |
| ath_pm10zn_ | decimal | pm10zn value at # year |
| ath_blue_dist_ | decimal | straight line distance to nearest blue space > 5,000 m2 at  # year |
| ath_green_dist_ | decimal | straight line distance to nearest green space > 5,000 m2 at  # year |
| ath_blue_size_ | decimal | area of closest blue space > 5,000m2 at # year |
| ath_green_size_ | decimal | area of closest green space > 5,000m2 at # year |
| ath_blueyn300_ | decimal | is there a blue space  > 5,000 m2 in a distance of 300 m? at # year |
| ath_greenyn300_ | decimal | is there a green space  > 5,000 m2 in a distance of 300 m? at # year |
| ath_ndvi100_mean_ | decimal | 5-years moving average (YYYY-4 to YYYY) of NDVI within a 100 meter buffer around geocode using all available images during the greenest period (from May to August) at # year |
| ath_ndvi300_mean_ | decimal | 5-years moving average (YYYY-4 to YYYY) of NDVI within a 300 meter buffer around geocode using all available images during the greenest period (from May to August) at # year |
| ath_ndvi500_mean_ | decimal | 5-years moving average (YYYY-4 to YYYY) of NDVI within a 500 meter buffer around geocode using all available images during the greenest period (from May to August) at # year |
| ath_ndvi100_std_ | decimal | 5-years moving standard deviation (YYYY-4 to YYYY) of NDVI within a 100 meter buffer around geocode using all available images during the greenest period (from May to August) at # year |
| ath_ndvi300_std_ | decimal | 5-years moving standard deviation (YYYY-4 to YYYY) of NDVI within a 300 meter buffer around geocode using all available images during the greenest period (from May to August) at # year |
| ath_ndvi500_std_ | decimal | 5-years moving standard deviation (YYYY-4 to YYYY) of NDVI within a 500 meter buffer around geocode using all available images during the greenest period (from May to August) at # year |
| ath_pntv_ | decimal | average of percent of nontree vegetation within a buffer of 300 m at # year |
| ath_pnv_ | decimal | average of percent of non vegetated within a buffer of 300 m at # year |
| ath_ptc_ | decimal | average of percent of tree covered within a buffer of 300 m at # year |
| ath_popdens_ | decimal | population density at # year |
| ath_bdens100_ | decimal | building density within a buffer of 100 m at # year |
| ath_bdens300_ | decimal | building density within a buffer of 300 m at # year |
| ath_connind100_ | decimal | connectivity density within a buffer of 100 m at # year |
| ath_connind300_ | decimal | connectivity density within a buffer of 300 m at # year |
| ath_lines_100_ | decimal | length of public transport lines within a buffer of 100 m at # year |
| ath_lines_300_ | decimal | length of public transport lines within a buffer of 300 m at # year |
| ath_lines_500_ | decimal | length of public transport lines within a buffer of 500 m at # year |
| ath_stops_100_ | decimal | number of public transport stops within a buffer of 100 m at # year |
| ath_stops_300_ | decimal | number of public transport stops within a buffer of 300 m at # year |
| ath_stops_500_ | decimal | number of public transport stops within a buffer of 500 m at # year |
| ath_fdensity300_ | decimal | number of facilities present within a buffer of 300 m at # year |
| ath_frichness300_ | decimal | number of different facility types present divided by the maximum potential number of facility types within a buffer of 300 m at # year |
| ath_landuseshan300_ | decimal | landuse Shannon's Evenness Index within a buffer of 300 m at # year |
| ath_walkability_mean_ | decimal | walkability index (as mean of deciles of facility richness index, landuse shannon's Evenness Index, population density, connectivity density) within a buffer of 300 m at # year |
| ath_agrgr_ | decimal | percentage of agrgr (agricultural areas, semi-natural areas and wetlands) land use within a buffer of 300 m at # year |
| ath_airpt_ | decimal | percentage of airpt (airports) land use within a buffer of 300 m at # year |
| ath_hdres_ | decimal | percentage of hdres (continuous urban fabric) land use within a buffer of 300 m at # year |
| ath_indtr_ | decimal | percentage of indtr (industrial, commercial, public, military and private units) land use within a buffer of 300 m at # year |
| ath_ldres_ | decimal | percentage of ldres (discontinuous dense/medium density/low density urban fabric) land use within a buffer of 300 m at # year |
| ath_natgr_ | decimal | percentage of natgr (forests) land use within a buffer of 300 m at # year |
| ath_other_ | decimal | percentage of other (mineral extraction and dump sites, construction sites, land without current use) land use within a buffer of 300 m at # year |
| ath_port_ | decimal | percentage of port (port areas) land use within a buffer of 300 m at # year |
| ath_trans_ | decimal | percentage of trans (road and rail network and associated land, fast transit roads and associated land, other roads and associated land, railways and associated land) land use within a buffer of 300 m at # year |
| ath_urbgr_ | decimal | percentage of urbgr (green urban areas, sports and leisure facilities) land use within a buffer of 300 m at # year |
| ath_vldres_ | decimal | percentage of vldres (discontinuous very low density urban fabric) land use within a buffer of 300 m at # year |
| ath_water_ | decimal | percentage of water land use within a buffer of 300 m at # year |
| ath_areases_tert_ | decimal | area-level SES indicator (deprivation index in tertiles) at # year |
| ath_areases_quint_ | decimal | area-level SES indicator (deprivation index in quintiles) at # year |
| ath_distinvnear1_ | decimal | inverse distance to nearest road at # year |
| ath_trafload100_ | decimal | total traffic load of all roads within a buffer of 100 m at # year |
| ath_trafmajorload100_ | decimal | total traffic load of major roads within a buffer of 100 m at # year |
| ath_trafnear_ | decimal | traffic density on nearest road at # year |
| ath_lden_ | decimal | day-evening-night level at # year |
| ath_ln_ | decimal | night level at # year |
| ath_lden_c_ | decimal | categorized day-evening-night level at # year |
| ath_ln_c_ | decimal | categorized night level at # year |
| ath_noise_dist_ | decimal | straight distance to the nearest road with noise level at # year |
| ath_foodenvdens300_ | decimal | number of facilities related to unhealthy food divided by the area of the 300 meters buffer at # year |
| ath_tm_ | decimal | average of mean temperature during # year (># year and <=#+1 year) |
| ath_tmin_ | decimal | average of minimum temperature during # year (># year and <=#+1 year) |
| ath_tmax_ | decimal | average of maximum temperature during # year (># year and <=#+1 year) |
| ath_hum_ | decimal | average of mean relative humidity during # year (># year and <=#+1 year) |
| ath_hmin_ | decimal | average of minimum relative humidity during # year (># year and <=#+1 year) |
| ath_hmax_ | decimal | average of maximum relative humidity during # year (># year and <=#+1 year) |
| ath_tg_ | decimal | average of mean temperature from eobs data during # year (># year and <=#+1 year) |
| ath_tn_ | decimal | average of minimum temperature from eobs data during # year (># year and <=#+1 year) |
| ath_tx_ | decimal | average of maximum temperature from eobs data during # year (># year and <=#+1 year) |
| ath_hu_ | decimal | average of relative humidity from eobs data during # year (># year and <=#+1 year) |
| ath_rr_ | decimal | average of precipitation sum from eobs data during # year (># year and <=#+1 year) |
| ath_qq_ | decimal | average of daily mean global radiation from eobs data during # year (># year and <=#+1 year) |
| ath_pp_ | decimal | average of sea level pressure from eobs data during # year (># year and <=#+1 year) |
| ath_uvddc_ | decimal | average of DNA-damage UV dose during # year (># year and <=#+1 year) |
| ath_uvdec_ | decimal | average of erythemal UV dose during # year (># year and <=#+1 year) |
| ath_uvdvc_ | decimal | average of vitamin-d UV dose during # year (># year and <=#+1 year) |
| ath_lst_ | decimal | land surface temperature during # year (># year and <=#+1 year) |
| ath_mdist_ | decimal | distance to meteorological station during # year (># year and <=#+1 year) |

### Tables

- 1_0_non_rep
- 1_0_trimester_rep
- 1_0_yearly_rep
