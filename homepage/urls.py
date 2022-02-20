from django.urls import path
import homepage.views as views

urlpatterns=[
    path('',views.showLoginPage,name='login'),
    path('logout/',views.doLogout,name='logout'),
    path('home/',views.showAdminHomePage,name='adminHome'),
    path('editTeam/',views.show_teams,name='editTeam'),
    path('editTeam/<int:team_id>/',views.showTeamEdit),
    path('fixture/',views.fixtureview,name='fixture'),
    path('fixture/getFixture/',views.getFixtureView,name='getFixture'),
    path('addFixture/',views.addFixture,name='addFixture'),
    path('addStat/selectFixture/',views.addStatFixtureView,name='statFixtureSelect'),
    path('addStat/<int:match_id>/score/',views.addStatScoreView,name='addStatScore'),
    path('addStat/<int:match_id>/score/saveScore/',views.addStatSaveScoreView,name='addStatSaveScore'),
    path('addStat/<int:match_id>/homePlayers/',views.addStatHomePlayersView,name='addStatHomePlayers'),
    path('addStat/<int:match_id>/homePlayers/save/',views.addStatHomePlayersSaveView,name='addStatHomePlayersSave'),
    path('addStat/<int:match_id>/awayPlayers/',views.addStatAwayPlayersView,name='addStatAwayPlayers'),
    path('addStat/<int:match_id>/awayPlayers/save/',views.addStatAwayPlayersSaveView,name='addStatAwayPlayersSave'),
    path('home/increaseGW/',views.increaseGW,name='increaseGW'),
    path('toggleTeamEdit/',views.toggleEdit,name='toggleTeamEdit'),
]

