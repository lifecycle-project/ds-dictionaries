# Versions of data dictionaries (methylation data)
We define here in what versions of the data dictionaries contains which tables.
## 1.2
**dsUploadMethyl R-package version >= 1.x.x**
**dsUpload R-package version >= 4.6.x**

### Content

#### General changes

#### Additional variables 

*smoking variables*

**Added maternal smoking scores**

| Variable                  | Type    | Description                                                   |
| ------------------------- | ------- | ------------------------------------------------------------- |
| matsmo_score_             | integer | Calculated smoking score using DNAsmokeR                      |
| matsmo_array_             | integer | Type of DNA methylation array used to create smoking score    |
| matsmo_age_at_dna_methyl_ | integer | Age of child when DNA sample was collected in years           |
| matsmo_tissue_            | integer | Tissue source of DNA methylation sample                       |
| matsmo_format_            | integer | Is data raw or normalised (specify normalisation method used) |

### Tables
- 1_2_corblood
- 1_2_peripheral_blood
- 1_2_placenta
- 1_2_smoking
## 1.1
**dsUploadMethyl R-package version >= 1.x.x**

### Content

#### General changes

#### Additional variables 

*cordblood variables*

*peripheral blood variables*

*placenta variables*

### Tables
- 1_1_corblood
- 1_1_peripheral_blood
- 1_1_placenta
## 1.0
**dsUploadMethyl R-package version >= 1.x.x**

### Content

#### General changes
- *cordblood variables*
  - Added cordblood methylation variables based upon the output of `methylclock`
- *peripheral blood variables*
  - Added peripheral blood methylation variables based upon the output of `methylclock`
- *placenta variables*
  - Added placenta methylation variables based upon the output of `methylclock`

#### Additional variables 

*cordblood*

**Added methylation variables**

| Variable   | Type    | Description                                         |
| ---------- | ------- | --------------------------------------------------- |
| mdist_preg | decimal | Distance to meteorological station during pregnancy |

*peripheral blood variables*

### Tables
- 1_0_corblood
- 1_0_peripheral_blood
- 1_0_placenta
