def checkSpecies(df):
    ser = df['Species'].isin(['setosa', 'versicolor', 'virginica'])
    error = len(df) - ser.sum()
    return 'Rule1', error

def checkPositive(df):
    error = 0
    error += (df['Petal.Length'] < 0).sum()
    error += (df['Petal.Width'] < 0).sum()
    error += (df['Sepal.Length'] < 0).sum()
    error += (df['Sepal.Width'] < 0).sum()
    return 'Rule2', error

def checkPetalLength(df):
    ser = df['Petal.Length'] < (2 * df['Petal.Width'])
    error = ser.sum()
    return 'Rule3', error

def checkSepalLength(df):
    error = (df['Sepal.Length'] > 30).sum()
    return 'Rule4', error

def checkSepalPetal(df):
    error = (df['Sepal.Length'] < df['Petal.Length']).sum()
    error += (df['Sepal.Width'] < df['Petal.Width']).sum()
    return 'Rule5', error
