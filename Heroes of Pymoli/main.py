with open(csvpath1, 'rb') as csvfile:
    csvreader = csv.reader(csvfile, delimiter=",")
    print(csvreader)
    row_index = 0
    for row in csvreader:
        if row_index>0:
            whole_name = row[1]
            whole_name_list = whole_name.split(' ')
            print(whole_name_list)
            first_name =whole_name_list[0]
            last_name  =whole_name_list[1]
            print(row)
            print(whole_name)
            print(whole_name_list)
            print(first_name)
            print(last_name)
            old_DOB =row[2]
            print(old_DOB)
            new_DOB =datetime.strptime(old_DOB, '%Y-%m-%d')
            print(new_DOB)
            format_DOB=new_DOB.strftime('%d/%m/%Y')
            print(format_DOB)
            old_SSN=row[3]
            new_SSN='***-**-' + old_SSN[7:]
            print(new_SSN)
            old_State=row[4]