//
//  MedusaConstants.h
//  Madusa
//
//  Created by Wess Cope on 3/27/14.
//  Copyright (c) 2014 Wess Cope. All rights reserved.
//

#ifndef Madusa_MedusaConstants_h
#define Madusa_MedusaConstants_h

#ifndef madusa_weakify
#define madusa_weakify(context) try {} @finally {} \
__weak typeof(context) nf_weak_ ## context = context
#endif

#ifndef madusa_strongify
#define madusa_strongify(o) try {} @finally {} \
_Pragma("clang diagnostic push") \
_Pragma("clang diagnostic ignored \"-Wshadow\"") \
typeof(nf_weak_ ## o) o = nf_weak_ ## o \
_Pragma("clang diagnostic pop")
#endif

#endif
