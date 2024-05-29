# David Metcalfe, James Masters, Antonella Delmestri, Andrew Judge, Daniel Perry, Cheryl Zogg, Belinda Gabbe, Matthew Costa, 2024.

import sys, csv, re

codes = [{"code":"BBg4.00","system":"readv2"},{"code":"BBgV.00","system":"readv2"},{"code":"BBgP.00","system":"readv2"},{"code":"B67y000","system":"readv2"},{"code":"B627500","system":"readv2"},{"code":"BBgM.00","system":"readv2"},{"code":"B62F100","system":"readv2"},{"code":"BBgT.00","system":"readv2"},{"code":"B62A.00","system":"readv2"},{"code":"B62Ew00","system":"readv2"},{"code":"B627A00","system":"readv2"},{"code":"BBgS.00","system":"readv2"},{"code":"BBp1.00","system":"readv2"},{"code":"B627400","system":"readv2"},{"code":"BBg5.00","system":"readv2"},{"code":"BBgR.00","system":"readv2"},{"code":"B62E.00","system":"readv2"},{"code":"B62F000","system":"readv2"},{"code":"B627300","system":"readv2"},{"code":"C37yB00","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('lymphoma-elixhauser-primary-care-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["lymphoma-elixhauser-primary-care-nkcell---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["lymphoma-elixhauser-primary-care-nkcell---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["lymphoma-elixhauser-primary-care-nkcell---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
