# Data Dictionary for ibtracs-2010-2015.csv

| Variable | Units | Description |
| --- | --- | --- |
| Serial_Num |  | A storm identifier (serial number) that is unlikely to change as storms are added or observations are changed. Format is `YYYYJJJHTTNNN`. |
| Season | year | The storm season (by year). |
| Num |  | The cardinal number of the system for that season. The count includes all basins, so this will not be continuous for basin files. |
| Basin |  | The basin where the storm began. Definitions of the boundaries can be found [here](https://groups.google.com/forum/#!searchin/ibtracs-qa/basins%7Csort:date/ibtracs-qa/nfOoIc68DrU/skinHQQOBQAJ). |
| Sub_basin |  | Subdivisions of the larger basins to facilitate anolysis. Definitions of the boundaries can be found [here](https://groups.google.com/forum/#!searchin/ibtracs-qa/basins%7Csort:date/ibtracs-qa/nfOoIc68DrU/skinHQQOBQAJ). |
| Name |  | The name given to the storm. |
| ISO_time | UTC | ISO Time provided in Universal Time Coordinates (UTC). Format is `YYYY-MM-DD HH:mm:ss`. |
| Nature |  | Combined storm type. Definitions of the abbreviations can be found [here](ftp://eclipse.ncdc.noaa.gov/pub/ibtracs/documents/Storm_nature_assignment.pdf). |
| Latitude | degrees north | Latitude of the storm. |
| Longitude | degrees east | Longitude of the storm. |
| Wind(WMO) | knots | Maximum sustained wind speed from the WMO agency for the current location. |
| Pres(WMO) | mb | Measured pressure from the WMO agency for the current location. |