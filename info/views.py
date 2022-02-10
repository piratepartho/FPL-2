from django.shortcuts import render
from django.db import connection

# Create your views here.
def show_teams(request):
    cursor=connection.cursor()
    sql='select * from team'
    cursor.execute(sql)
    result=cursor.fetchall()
    cursor.close()
    
    dict=[]
    
    for a in result:
        team_id=a[0]
        team_abbvr=a[2]
        team_name=a[1]
        dict.append({'id':team_id,'abbvr':team_abbvr,'name':team_name})
    
    return render(request,'show_teams.html',{'all_teams':dict})


def show_team_info(request,team_id):
    cursor=connection.cursor()
    sql='select * from PLAYER where TEAM_ID= '+str(team_id)
    cursor.execute(sql)
    players=cursor.fetchall()
    cursor.close()
    
    dict=[]
    for p in players:
        dict.append({
            'player_id':p[0],'first_name':p[1],'second_name':p[2],'position':p[3],'value':p[6]/10,'points':p[5]
            })
    
    
    return render(request,'team_info.html',{'all_players':dict})