set(MODULE_NAME DEVICE_EXECUTION)

set(DEVICE_EXECUTION_SOURCES
    device_info.cpp
    device_queue.cpp
    enqueue_block.cpp
    enqueue_flags.cpp
    enqueue_multi_queue.cpp
    enqueue_ndrange.cpp
    enqueue_wg_size.cpp
    execute_block.cpp
    host_multi_queue.cpp
    host_queue_order.cpp
    main.c
    nested_blocks.cpp
    utils.cpp
    ../../test_common/harness/errorHelpers.c
    ../../test_common/harness/testHarness.c
    ../../test_common/harness/mt19937.c
    ../../test_common/harness/kernelHelpers.c
    ../../test_common/harness/msvc9.c
    ../../test_common/harness/parseParameters.cpp
    ../../test_common/harness/crc32.c
)

include(../CMakeCommon.txt)

# end of file #
