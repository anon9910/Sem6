def ageCheck(df):
    error = 0
    ser = df['age'] < 0
    error += ser.sum()
    ser = df['age'] > 150
    error += ser.sum()
    return 'Rule1', error

def ageMarriageCheck(df):
    ser = df['age'] < df['yearsmarried']
    error = ser.sum()
    return 'Rule2', error

def statusCheck(df):
    ser = df['status'].isin(['single', 'married', 'widowed'])
    error = df['status'].size - ser.sum()
    return 'Rule3', error

def findAgeGroup(agegroup):
    if agegroup < 18:
        return 'child'
    elif agegroup < 66:
        return 'adult'
    else:
        return 'elderly'

def agegroupCheck(df):
    foundAgeGroups = df['age'].map(findAgeGroup)
    ser = foundAgeGroups != df['agegroup']
    error = ser.sum()
    return 'Rule4', error