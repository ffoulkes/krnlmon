// Copyright 2022 Intel Corporation
// SPDX-License-Identifier: Apache-2.0

// changed but no formatting errors

#ifndef _SWITCHLINK_MAIN_H_
#define _SWITCHLINK_MAIN_H_

#ifdef __cplusplus
extern "C" {
#endif

int switchlink_main(void);
int switchlink_stop(void);

void* switchlink_start(void* arg);

#ifdef __cplusplus
}
#endif

#endif /* _SWITCHLINK_MAIN_H_ */
