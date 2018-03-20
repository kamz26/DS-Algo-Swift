//: Playground - noun: a place where people can play

import UIKit
import Foundation


var arr = [1, 3, 5, 8, 9, 2, 6, 7, 6, 8, 9]
minreach(arr)
//static int minJumps(int arr[])
//{
//    if (arr.length <= 1)
//    return 0;
//
//    // Return -1 if not possible to jump
//    if (arr[0] == 0)
//    return -1;
//
//    // initialization
//    int maxReach = arr[0];
//    int step = arr[0];
//    int jump = 1;
//
//
//    // Start traversing array
//    for (int i = 1; i < arr.length; i++)
//    {
//        // Check if we have reached the end of the array
//        if (i == arr.length - 1)
//        return jump;
//
//        // updating maxReach
//        maxReach = Math.max(maxReach, i+arr[i]);
//
//        // we use a step to get to the current index
//        step--;
//
//        // If no further steps left
//        if (step == 0)
//        {
//            //  we must have used a jump
//            jump++;
//
//            //Check if the current index/position  or lesser index
//            // is the maximum reach point from the previous indexes
//            if(i>=maxReach)
//            return -1;
//
//            // re-initialize the steps to the amount
//            // of steps to reach maxReach from position i.
//            step = maxReach - i;
//        }
//    }
//
//    return -1;
//}

func max(_ first:Int,_ second:Int) -> Int{
    if first > second{
        return first
    }
    return second
}





func minreach(_ arr:[Int]) -> Int{
    
    if arr.count <= 1{
    return 0
    }
        
    if arr[0] <= 0{
        return -1
    }
    
    
    var maxReach = arr[0]
    var step = arr[0]
    var jump = 1
    
    
    
    for i in 1..<arr.count{
     
        if i == arr.count - 1{
            return jump
        }
        
        maxReach = max(maxReach, i+arr[i])
        
        step = step - 1
        
        if step == 0{
            jump = jump + 1
            step = maxReach - 1
            
        }
        
    }
    
    
    
    return -1
}






























