# Project *Flixster*

By: **Mohamed Abdilahi**

**Flixster** allows users to discover new movies, read general movie description, and see how popular it is among other users with popularity trackers and other metadata. In hopes to emulate some of Flixster's functionality I first used hardcoded Movie data models to display mocked data using this [JSON](https://api.themoviedb.org/3/movie/now_playing?api_key=a07e22bc18f5cb106bfe4cc1f83ad8ed) to get movie informations. After learning how to use Postman, a popular network debugging tool, I then added the ability to fetch real data from a third party server! Using URLSession, I fetched movie data from TMDB using an API key. I also added from earlier rendition of this project a different view for just the posters that when pressed will again give more info about the movie.

## Features

The following **required** functionality is completed:

- [X] Users are able to see a customized app icon and launch screen
- [X] Your app should work for any screen size and orientation using AutoLayout constraints
  - [X] Different Phone Size
- [X] Displays at least 5 different movies in a table view
- [X] Can tap into detail view of movie with a full description, backdrop image, and title
