set(FISHPACK_TESTS
# tblktri.f
# tcblktri.f
tcmgnbn.f
# tgenbun.f
thstcrt.f
# thstcsp.f
thstcyl.f
thstplr.f
# thstssp.f
thw3crt.f
thwscrt.f
thwscsp.f
thwscyl.f
thwsplr.f
thwsssp.f
tpois3d.f
# tpoistg.f
tsepeli.f
# tsepx4.f
)

foreach(TEST_FILE ${FISHPACK_TESTS})
    set(TEST_NAME)
    get_filename_component(TEST_NAME ${TEST_FILE} NAME)
    set(TEST_EXECUTABLE)
    get_filename_component(TEST_EXECUTABLE ${TEST_FILE} NAME)
    
    add_executable(${TEST_EXECUTABLE} ${TEST_FILE})
    target_include_directories(${TEST_EXECUTABLE} PUBLIC ${CMAKE_SOURCE_DIR}/src)
    target_link_libraries(${TEST_EXECUTABLE} PUBLIC fishpack90)
    target_compile_options(${TEST_EXECUTABLE} BEFORE PRIVATE "-w" "-fallow-argument-mismatch" "-fdefault-real-8")

    add_test(NAME ${TEST_NAME} COMMAND ${TEST_EXECUTABLE})
endforeach()