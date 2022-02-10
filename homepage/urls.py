from django.urls import path
import homepage.views
import info.views
import userviews.views

urlpatterns=[
    path('',homepage.views.showLoginPage,name='login'),
    path('logout/',homepage.views.doLogout,name='logout'),
    path('home/',homepage.views.showAdminHomePage,name='adminHome'),
    path('editTeam/',homepage.views.show_teams,name='editTeam'),
    path('editTeam/<int:team_id>/',homepage.views.showTeamEdit),
    path('fixture/',homepage.views.fixtureview,name='fixture'),
]
