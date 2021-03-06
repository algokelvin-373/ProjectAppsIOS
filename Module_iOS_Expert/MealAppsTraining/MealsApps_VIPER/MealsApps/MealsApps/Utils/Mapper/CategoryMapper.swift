//
//  CategoryMapper.swift
//  MealsApps
//
//  Created by Kelvin HT on 12/4/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import Foundation

final class CategoryMapper {
    static func mapCategoryResponsesToDomains(input categoryResponses: [CategoryResponse]) -> [CategoryModel] {
        return categoryResponses.map { result in
            return CategoryModel(
                id: result.idMeal ?? "",
                title: result.titleMeal ?? "Unknow",
                image: result.imageMeal ?? "Unknow",
                description: result.descriptionMeal ?? "Unknow"
            )
        }
    }
}
