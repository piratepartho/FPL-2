
from django.urls import path
import info.views

urlpatterns = [
    path('',info.views.show_teams,name='showTeamPage'),
    path('<int:team_id>/',info.views.show_team_info),
]