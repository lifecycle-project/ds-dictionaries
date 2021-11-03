# Versions of data dictionaries (methylation data)
We define here in what versions of the data dictionaries contains which tables.

## 1.1
**dsUpload R-package version >= 4.1.x** *--> not released yet*

### Content

#### General changes

#### Additional variables 

*non-repeated variables*

*yearly-repeated variables*

### Tables
- 1_1_nonrep
- 1_1_yearly_rep

## 1.0
**dsUpload R-package version >= 4.1.x**

### Content

#### General changes
- *yearly-repeated variables*
  - Added yearly repeated methylation variables based upon the output of `methylclock`
- *non-repeated variables*
  - Added non repeated methylation variables based upon the output of `methylclock`

#### Additional variables 

*non-repeated variables*

**Added methylation variables**

| Variable   | Type    | Description                                         |
| ---------- | ------- | --------------------------------------------------- |
| mdist_preg | decimal | Distance to meteorological station during pregnancy |

*yearly-repeated variables*


### Tables
- 1_0_nonrep
- 1_0_yearly_rep
