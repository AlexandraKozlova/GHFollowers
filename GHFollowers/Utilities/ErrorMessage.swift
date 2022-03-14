//
//  ErrorMessage.swift
//  GHFollowers
//
//  Created by Aleksandra on 09.02.2022.
//

import Foundation

enum GFError: String, Error {
    case invalidUsername = "This username created an invalid request. Please try again."
    case unableToComplite = "Unable to complited your request. Please check your internet connection."
    case invalidResponse = "Ivalid response from server. Please, try again."
    case invalidData = "The data received from server was invalid. Please try again."
    case unableToFavorite = "There was an error favoriting user. Please try again."
    case alreadyInFavorites = "This user already in your favorites list."
}
