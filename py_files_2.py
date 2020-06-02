"""training labels"""

import numpy as np
from sklearn.preprocessing import LabelEncoder 

WAREHOUSES = {'CEM-A': 'Cestas 33610 France',
              'CEM-B': 'Cestas 33610 France',
              'CEM-C': 'Cestas 33610 France',
              'CEM-D': 'Cestas 33610 France',
              'CEM-E': 'Cestas 33610 France',
              'CEM-Q': 'Blanquefort 33290 France',
              'CEM-I': 'Saran 45770 France',
              'CEM-V': 'Blanquefort 33290 France',
              'E01-I': 'Saran 45770 France',
              'E01-B': 'Saran 45770 France',
              'E01-G': 'Saran 45770 France',
              'E01-O': 'Saran 45770 France',
              'E01-Q': 'Saran 45770 France',
              'E01-A': 'Saran 45770 France',
              'E02-A': 'Reau 77550 France',
              'E02-B': 'Reau 77550 France',
              'E02-C': 'Reau 77550 France',
              'E02-D': 'Reau 77550 France',
              'E03-A': 'Moissy-Cramayel 77550 France',
              'E03-B': 'Moissy-Cramayel 77550 France',
              'E03-Q': 'Moissy-Cramayel 77550 France',
              'E03-C': 'Moissy-Cramayel 77550 France',
              'E03-E': 'Moissy-Cramayel 77550 France',
              'E03-O': 'Moissy-Cramayel 77550 France',
              'E03-D': 'Moissy-Cramayel 77550 France',
              'E03-V': 'Moissy-Cramayel 77550 France',
              'E04-Q': 'Blanquefort 33290 France',
              'E04-V': 'Blanquefort 33290 France'}

WEATHER_MIM_MAX = {
    '10m_u_component_of_wind': (-21.361783981323242, 25.66591453552246),
    '10m_v_component_of_wind': (-22.655832290649414, 22.487411499023438),
    '2m_temperature': (239.21551513671875, 317.3818359375),
    'soil_temperature_level_1': (257.07391357421875, 323.749755859375),
    'total_precipitation': (-3.725290298461914e-09, 0.024958396330475807),
    'wind_speed': (0.0003210445824909592, 27.686908172306023)}

COUNTY_CODES = [int(i) for i in range(1, 96)]


WAREHOUSE_IDS = list(WAREHOUSES.keys())
WAREHOUSE_LOCATION = list(set(WAREHOUSES.values()))

warehouse_id_encoder = LabelEncoder().fit(WAREHOUSE_IDS)
warehouse_location_encoder = LabelEncoder().fit(WAREHOUSE_LOCATION)
county_code_encoder = LabelEncoder().fit(COUNTY_CODES)
day_of_week_encoder = LabelEncoder().fit(np.arange(7))