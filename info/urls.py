
from django.urls import path
import info.views

urlpatterns = [
    path('show/',info.views.show_teams,name='showTeamPage'),
    path('<int:team_id>/',info.views.show_team_info),
    path('player/<int:p_id>/',info.views.showPlayer,name='playerInfo'),
]