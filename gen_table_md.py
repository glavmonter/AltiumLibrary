import csv
import sys
from typing import List
import glob


def get_footprints(row) -> List[str]:
    index = 1
    out_list = []
    while True:
        try:
            footprint = row[f'FOOTPRINT{index}']
            if len(footprint) > 0:
                out_list.append(footprint)
            index += 1
        except KeyError:
            break
    return out_list



in_files = glob.glob(sys.argv[1])

for f in in_files:
    out_file = open(f + '.md', 'wb')
    with open(f) as csvfile:
        reader = csv.DictReader(csvfile)
        index = 1
        for row in reader:
            libref = row['LIBRARYREFERENCE']
            manufacturer = row['MANUFACTURER']
            manufacturer_pn = row['MANUFACTURER PART NUMBER']            
            footprints = ', '.join(get_footprints(row))
            description = ' '.join(row['DESCRIPTION'].split())[:164]
            out_string = f'| {index} | {libref} | {manufacturer_pn} | {manufacturer} | {footprints} | {description} |'
            print(out_string)            
            out_file.write(out_string.encode(encoding='UTF-8') + b'\n')
            index += 1
    out_file.close()
