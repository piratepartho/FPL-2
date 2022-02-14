def makeSearchSQL(teamID,position):
    statement=f'select * from player where '
    if teamID is not "":
        statement+=f'team_id={teamID},'
    if position is not "":
        statement+=f' position=\'{position}\','
    statement=statement[:-1]
    statement=statement.replace(',', ' and ')
    print(statement)
    return statement