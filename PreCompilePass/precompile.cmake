message("======running cmake start=======")

set(PRECOMPILE_PARSER "${CMAKE_CURRENT_SOURCE_DIR}/PreCompilePass/precompile.exe")
set(PRECOMPILE_TARGET "tinyPreCompile")

ADD_CUSTOM_TARGET(
        ${PRECOMPILE_TARGET} ALL
        COMMAND
        ${CMAKE_COMMAND} -E echo "************************************************************* "
        COMMAND
        ${CMAKE_COMMAND} -E echo "+++ Precompile Started +++"
        COMMAND
        ${PRECOMPILE_PARSER} 0
        COMMAND
        ${CMAKE_COMMAND} -E echo "+++ Precompile finished +++"
        COMMAND
        ${CMAKE_COMMAND} -E echo "************************************************************* "
)

message("======running cmake end=======")