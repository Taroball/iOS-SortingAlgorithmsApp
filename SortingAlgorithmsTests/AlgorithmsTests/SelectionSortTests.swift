//
//  SelectionSortTests.swift
//  SortingAlgorithmsTests
//
//  Created by Victor on 05/04/19.
//  Copyright © 2019 Victor. All rights reserved.
//

import XCTest
@testable import SortingAlgorithms

class SelectionSortTests: XCTestCase {
    
    private let selectionSort = SelectionSort()
 
    func test_SelectionSort_swap_data_source() {
        var dataSource = [1,3,2,5,4]
        
        selectionSort.swapDataSource(datasource: &dataSource, x0: 1, x1: 2)
        
        XCTAssert(dataSource == [1,2,3,5,4])
    }
    
    func test_SelectionSort_non_sorted() {
        let swaps: [(x0: Int, x1: Int)] = selectionSort.generateSwaps(from: [1,3,2,5,4])
        
        XCTAssert(swaps.count == 2)
        XCTAssert((x0: 1, x1: 2) == swaps[0])
        XCTAssert((x0: 3, x1: 4) == swaps[1])
    }
    
    func test_SelectionSort_already_sorted() {
        let swaps: [(x0: Int, x1: Int)] = selectionSort.generateSwaps(from: [1,2,3,4,5])
        
        XCTAssert(swaps.count == 0)
    }
    
    func test_SelectionSort_equal_values() {
        let swaps: [(x0: Int, x1: Int)] = selectionSort.generateSwaps(from: [1,1,1,1,1])
        
        XCTAssert(swaps.count == 0)
    }
    
}

