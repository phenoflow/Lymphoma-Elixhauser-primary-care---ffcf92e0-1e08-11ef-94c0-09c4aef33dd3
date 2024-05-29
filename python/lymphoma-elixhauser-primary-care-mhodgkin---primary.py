# David Metcalfe, James Masters, Antonella Delmestri, Andrew Judge, Daniel Perry, Cheryl Zogg, Belinda Gabbe, Matthew Costa, 2024.

import sys, csv, re

codes = [{"code":"B614z00","system":"readv2"},{"code":"BBj..00","system":"readv2"},{"code":"B61zz00","system":"readv2"},{"code":"BBg2.11","system":"readv2"},{"code":"B61z.11","system":"readv2"},{"code":"B614.00","system":"readv2"},{"code":"B61z.00","system":"readv2"},{"code":"B614100","system":"readv2"},{"code":"BBj6.00","system":"readv2"},{"code":"BBj0.00","system":"readv2"},{"code":"BBjz.00","system":"readv2"},{"code":"B61..11","system":"readv2"},{"code":"ZV10711","system":"readv2"},{"code":"B61..00","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('lymphoma-elixhauser-primary-care-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["lymphoma-elixhauser-primary-care-mhodgkin---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["lymphoma-elixhauser-primary-care-mhodgkin---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["lymphoma-elixhauser-primary-care-mhodgkin---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
