set(arDirPath AL/usdmaya)

set(LIBRARY_NAME AL_USDMaya)

list(APPEND AL_maya_headers
        AL/maya/CodeTimings.h
        AL/maya/CommandGuiHelper.h
        AL/maya/Common.h
        AL/maya/DgNodeHelper.h
        AL/maya/FileTranslatorBase.h
        AL/maya/FileTranslatorOptions.h
        AL/maya/MenuBuilder.h
        AL/maya/NodeHelper.h
        AL/maya/SIMD.h
)
list(APPEND AL_maya_source
        AL/maya/CodeTimings.cpp
        AL/maya/CommandGuiHelper.cpp
        AL/maya/DgNodeHelper.cpp
        AL/maya/FileTranslatorOptions.cpp
        AL/maya/MenuBuilder.cpp
        AL/maya/NodeHelper.cpp
)

list(APPEND AL_usdmaya_headers
        AL/usdmaya/AttributeType.h
        AL/usdmaya/Common.h
        AL/usdmaya/DrivenTransformsData.h
        AL/usdmaya/Global.h
        AL/usdmaya/PluginRegister.h
        AL/usdmaya/StageCache.h
        AL/usdmaya/StageData.h
        AL/usdmaya/TransformOperation.h
        AL/usdmaya/TypeIDs.h
        AL/usdmaya/Utils.h
        AL/usdmaya/DebugCodes.h
        AL/usdmaya/Metadata.h
)

list(APPEND AL_usdmaya_source
        AL/usdmaya/AttributeType.cpp
        AL/usdmaya/DrivenTransformsData.cpp
        AL/usdmaya/Global.cpp
        AL/usdmaya/StageCache.cpp
        AL/usdmaya/StageData.cpp
        AL/usdmaya/TransformOperation.cpp
        AL/usdmaya/Utils.cpp
        AL/usdmaya/DebugCodes.cpp
        AL/usdmaya/Metadata.cpp
)

list(APPEND AL_usdmaya_cmds_headers
        AL/usdmaya/cmds/LayerCommands.h
        AL/usdmaya/cmds/ProxyShapeCommands.h
        AL/usdmaya/cmds/ProxyShapePostLoadProcess.h
        AL/usdmaya/cmds/UnloadPrim.h
)
list(APPEND AL_usdmaya_cmds_source
        AL/usdmaya/cmds/LayerCommands.cpp
        AL/usdmaya/cmds/ProxyShapeCommands.cpp
        AL/usdmaya/cmds/ProxyShapePostLoadProcess.cpp
        AL/usdmaya/cmds/UnloadPrim.cpp
)

list(APPEND AL_usdmaya_fileio_headers
        AL/usdmaya/fileio/AnimationTranslator.h
        AL/usdmaya/fileio/Export.h
        AL/usdmaya/fileio/ExportParams.h
        AL/usdmaya/fileio/ExportTranslator.h
        AL/usdmaya/fileio/Import.h
        AL/usdmaya/fileio/ImportParams.h
        AL/usdmaya/fileio/ImportTranslator.h
        AL/usdmaya/fileio/NodeFactory.h
        AL/usdmaya/fileio/SchemaPrims.h
        AL/usdmaya/fileio/TransformIterator.h
)
list(APPEND AL_usdmaya_fileio_source
        AL/usdmaya/fileio/AnimationTranslator.cpp
        AL/usdmaya/fileio/Export.cpp
        AL/usdmaya/fileio/ExportTranslator.cpp
        AL/usdmaya/fileio/Import.cpp
        AL/usdmaya/fileio/ImportTranslator.cpp
        AL/usdmaya/fileio/NodeFactory.cpp
        AL/usdmaya/fileio/SchemaPrims.cpp
        AL/usdmaya/fileio/TransformIterator.cpp
)

list(APPEND AL_usdmaya_fileio_translators_headers
        AL/usdmaya/fileio/translators/CameraTranslator.h
        AL/usdmaya/fileio/translators/DagNodeTranslator.h
        AL/usdmaya/fileio/translators/DgNodeTranslator.h
        AL/usdmaya/fileio/translators/MeshTranslator.h
        AL/usdmaya/fileio/translators/NurbsCurveTranslator.h
        AL/usdmaya/fileio/translators/TransformTranslator.h
        AL/usdmaya/fileio/translators/TranslatorBase.h
        AL/usdmaya/fileio/translators/TranslatorContext.h
        AL/usdmaya/fileio/translators/TranslatorTestPlugin.h
        AL/usdmaya/fileio/translators/TranslatorTestType.h
)

list(APPEND AL_usdmaya_fileio_translators_source
        AL/usdmaya/fileio/translators/CameraTranslator.cpp
        AL/usdmaya/fileio/translators/DagNodeTranslator.cpp
        AL/usdmaya/fileio/translators/DgNodeTranslator.cpp
        AL/usdmaya/fileio/translators/MeshTranslator.cpp
        AL/usdmaya/fileio/translators/NurbsCurveTranslator.cpp
        AL/usdmaya/fileio/translators/TransformTranslator.cpp
        AL/usdmaya/fileio/translators/TranslatorBase.cpp
        AL/usdmaya/fileio/translators/TranslatorContext.cpp
        AL/usdmaya/fileio/translators/TranslatorTestPlugin.cpp
        AL/usdmaya/fileio/translators/TranslatorTestType.cpp
)

list(APPEND AL_usdmaya_nodes_headers
        AL/usdmaya/nodes/HostDrivenTransforms.h
        AL/usdmaya/nodes/Layer.h
        AL/usdmaya/nodes/LayerVisitor.h
        AL/usdmaya/nodes/ProxyDrawOverride.h
        AL/usdmaya/nodes/ProxyShape.h
        AL/usdmaya/nodes/ProxyShapeUI.h
        AL/usdmaya/nodes/Transform.h
        AL/usdmaya/nodes/TransformationMatrix.h
        AL/usdmaya/nodes/USDToMayaMappingDB.h
)
list(APPEND AL_usdmaya_nodes_source
        AL/usdmaya/nodes/HostDrivenTransforms.cpp
        AL/usdmaya/nodes/Layer.cpp
        AL/usdmaya/nodes/LayerVisitor.cpp
        AL/usdmaya/nodes/ProxyDrawOverride.cpp
        AL/usdmaya/nodes/ProxyShape.cpp
        AL/usdmaya/nodes/ProxyShapeSelection.cpp
        AL/usdmaya/nodes/ProxyShapeUI.cpp
        AL/usdmaya/nodes/Transform.cpp
        AL/usdmaya/nodes/TransformationMatrix.cpp
        AL/usdmaya/nodes/USDToMayaMappingDB.cpp
)

list(APPEND AL_usdmaya_public_headers
        ${AL_maya_headers}
        ${AL_usdmaya_headers}
        ${AL_usdmaya_cmds_headers}
        ${AL_usdmaya_fileio_headers}
        ${AL_usdmaya_nodes_headers}
        ${AL_usdmaya_fileio_translators_headers}
)

add_library(${LIBRARY_NAME}
    SHARED
        ${AL_usdmaya_public_headers}
        ${AL_maya_source}
        ${AL_usdmaya_source}
        ${AL_usdmaya_cmds_source}
        ${AL_usdmaya_fileio_source}
        ${AL_usdmaya_fileio_translators_source}
        ${AL_usdmaya_nodes_source}
)
set_target_properties(${LIBRARY_NAME}
    PROPERTIES COMPILE_DEFINITIONS 
        "MFB_PACKAGE_NAME=${LIBRARY_NAME};MFB_ALT_PACKAGE_NAME=${LIBRARY_NAME};MFB_PACKAGE_MODULE=usdmaya"
)

# AL_USDMayaGL
target_include_directories(
    ${LIBRARY_NAME}
    PUBLIC
    ${PXR_INCLUDE_DIRS}
)

set(MAYA_QT_LIBRARIES ${Qt_LIBRARIES})

target_link_libraries(${LIBRARY_NAME}
    ar 
    gf 
    kind
    plug 
    sdf 
    tf
    usd
    usdGeom
    usdUtils
    usdImaging
    usdImagingGL
    vt
    rt
    ${PYTHON_LIBRARIES}
    ${Boost_PYTHON_LIBRARY}
    ${MAYA_Foundation_LIBRARY}
    ${MAYA_OpenMayaAnim_LIBRARY}
    ${MAYA_OpenMayaFX_LIBRARY}
    ${MAYA_OpenMayaUI_LIBRARY}
    ${MAYA_OpenMaya_LIBRARY}
    ${MAYA_OpenMayaRender_LIBRARY}
    ${MAYA_QT_LIBRARIES}
    Qt5::Gui
)
install(TARGETS ${LIBRARY_NAME}
    LIBRARY
    DESTINATION ${CMAKE_INSTALL_PREFIX}/lib
)

set_property(GLOBAL PROPERTY GLOBAL_LIBRARY_LOCATION ${CMAKE_INSTALL_PREFIX}/lib/${CMAKE_SHARED_LIBRARY_PREFIX}${LIBRARY_NAME}${CMAKE_SHARED_LIBRARY_SUFFIX})

set(PYTHON_LIBRARY_NAME _${LIBRARY_NAME})
# python bindings
add_library(${PYTHON_LIBRARY_NAME}
    SHARED
    AL/usdmaya/module.cpp
    AL/usdmaya/wrapStageCache.cpp
)

set_target_properties(${PYTHON_LIBRARY_NAME}
    PROPERTIES COMPILE_DEFINITIONS 
        "MFB_PACKAGE_NAME=${LIBRARY_NAME};MFB_ALT_PACKAGE_NAME=${LIBRARY_NAME};MFB_PACKAGE_MODULE=usdmaya"
)
set_target_properties(${PYTHON_LIBRARY_NAME} 
    PROPERTIES 
        PREFIX ""
)
target_link_libraries(${PYTHON_LIBRARY_NAME}
    ${LIBRARY_NAME}
)

# bake plugInfo.json using pxr macro
_plugInfo_subst(${LIBRARY_NAME} plugInfo.json)

install(TARGETS ${PYTHON_LIBRARY_NAME}
    LIBRARY
    DESTINATION ${CMAKE_INSTALL_PREFIX}/lib/python/${arDirPath}
)
set_target_properties(${PYTHON_LIBRARY_LOCATION}
    PROPERTIES LOCATION
    ${CMAKE_INSTALL_PREFIX}/lib/python/${arDirPath}/${PYTHON_LIBRARY_NAME}${CMAKE_SHARED_LIBRARY_SUFFIX}
)
set_property(GLOBAL PROPERTY GLOBAL_PYTHON_LIBRARY_LOCATION ${CMAKE_INSTALL_PREFIX}/lib/python/${arDirPath}/${PYTHON_LIBRARY_NAME}${CMAKE_SHARED_LIBRARY_SUFFIX})

install(FILES __init__.py
    DESTINATION ${CMAKE_INSTALL_PREFIX}/lib/python/${arDirPath}
)
install(CODE
    "file(WRITE \"${CMAKE_INSTALL_PREFIX}/lib/python/AL/__init__.py\"
    \"try:\n\t__import__('pkg_resources').declare_namespace(__name__)\nexcept:\n\tfrom pkgutil import extend_path\n\t__path__ = extend_path(__path__, __name__)\")"
)

install(FILES ${CMAKE_CURRENT_BINARY_DIR}/plugInfo.json
    DESTINATION ${CMAKE_INSTALL_PREFIX}/share/usd/plugins/${LIBRARY_NAME}/resources
)
install(CODE
    "file(WRITE \"${CMAKE_INSTALL_PREFIX}/share/usd/plugins/plugInfo.json\" \"{\n    \\\"Includes\\\": [ \\\"*/resources/\\\" ]\n}\")"
)

# install public headers
install( FILES ${AL_maya_headers}
        DESTINATION ${CMAKE_INSTALL_PREFIX}/include/AL/maya
)
install( FILES
            ${AL_usdmaya_headers}
        DESTINATION ${CMAKE_INSTALL_PREFIX}/include/AL/usdmaya
)
install( FILES
            ${AL_usdmaya_cmds_headers}
        DESTINATION ${CMAKE_INSTALL_PREFIX}/include/AL/usdmaya/cmds
)
install( FILES
            ${AL_usdmaya_fileio_headers}
        DESTINATION ${CMAKE_INSTALL_PREFIX}/include/AL/usdmaya/fileio
)
install( FILES
            ${AL_usdmaya_nodes_headers}
        DESTINATION ${CMAKE_INSTALL_PREFIX}/include/AL/usdmaya/nodes
)
install( FILES
            ${AL_usdmaya_tests_headers}
        DESTINATION ${CMAKE_INSTALL_PREFIX}/include/AL/usdmaya/tests
)
install( FILES
            ${AL_usdmaya_fileio_translators_headers}
        DESTINATION ${CMAKE_INSTALL_PREFIX}/include/AL/usdmaya/fileio/translators
)
