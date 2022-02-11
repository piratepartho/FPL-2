from django.urls import path
import homepage.views as views
import info.views
import userviews.views

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
]

