import UIKit

struct Movie {
    var title: String
    var genre: String
    var rating: Double
}

class MovieRecommendations {
    var movies: [Movie] = []
    
    func getRecommendations(forUser user: String) -> [Movie] {
        // Implement your recommendation algorithm here
        // Example: Return a list of top-rated movies
        return movies.filter { $0.rating >= 8.0 }
    }
}

let movieRec = MovieRecommendations()
movieRec.movies = [
    Movie(title: "Inception", genre: "Sci-Fi", rating: 8.8),
    Movie(title: "The Shawshank Redemption", genre: "Drama", rating: 9.3),
    Movie(title: "The Dark Knight", genre: "Action", rating: 9.0),
    Movie(title: "Pulp Fiction", genre: "Crime", rating: 8.9),
    // Add more movies to the list
]

let user = "John"
let recommendations = movieRec.getRecommendations(forUser: user)
print("Movie Recommendations for \(user):")
for movie in recommendations {
    print("\(movie.title) (\(movie.genre)) - Rating: \(movie.rating)")
}
