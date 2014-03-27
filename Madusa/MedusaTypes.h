//
//  MedusaTypes.h
//  Madusa
//
//  Created by Wess Cope on 3/27/14.
//  Copyright (c) 2014 Wess Cope. All rights reserved.
//

#ifndef Madusa_MedusaTypes_h
#define Madusa_MedusaTypes_h

typedef id(^MadusaBlock)(id obj);
typedef BOOL(^MadusaBoolBlock)(id obj);
typedef id(^MadusaReduceBlock)(id result, id obj);
typedef id(^MadusaArrayBlock)(MadusaBlock);
typedef id(^MadusaFilterBlock)(MadusaBoolBlock);
typedef id(^MadusaArrayReduceBlock)(id initial, MadusaReduceBlock block);

#endif
