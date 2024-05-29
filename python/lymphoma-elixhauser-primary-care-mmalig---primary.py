# David Metcalfe, James Masters, Antonella Delmestri, Andrew Judge, Daniel Perry, Cheryl Zogg, Belinda Gabbe, Matthew Costa, 2024.

import sys, csv, re

codes = [{"code":"BBm1.11","system":"readv2"},{"code":"BBp2.00","system":"readv2"},{"code":"B62z500","system":"readv2"},{"code":"BBk0.00","system":"readv2"},{"code":"BBg1000","system":"readv2"},{"code":"BBgN.00","system":"readv2"},{"code":"B62z600","system":"readv2"},{"code":"BBm1.00","system":"readv2"},{"code":"B62z200","system":"readv2"},{"code":"BBg7.00","system":"readv2"},{"code":"B62z800","system":"readv2"},{"code":"B62z000","system":"readv2"},{"code":"BBgQ.00","system":"readv2"},{"code":"B62z300","system":"readv2"},{"code":"BBg1.00","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('lymphoma-elixhauser-primary-care-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["lymphoma-elixhauser-primary-care-mmalig---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["lymphoma-elixhauser-primary-care-mmalig---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["lymphoma-elixhauser-primary-care-mmalig---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
