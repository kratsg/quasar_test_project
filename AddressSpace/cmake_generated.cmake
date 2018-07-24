

	add_custom_command(OUTPUT ${PROJECT_BINARY_DIR}/AddressSpace/include/ASGFEXBoard.h ${PROJECT_BINARY_DIR}/AddressSpace/src/ASGFEXBoard.cpp 
	WORKING_DIRECTORY ${PROJECT_SOURCE_DIR}
	COMMAND python quasar.py generate asclass GFEXBoard --project_binary_dir  ${PROJECT_BINARY_DIR}
	DEPENDS ${DESIGN_FILE} ${PROJECT_SOURCE_DIR}/AddressSpace/designToClassHeader.xslt ${PROJECT_SOURCE_DIR}/AddressSpace/designToClassBody.xslt Configuration.hxx_GENERATED validateDesign
	)	
	
	

	add_custom_command(OUTPUT ${PROJECT_BINARY_DIR}/AddressSpace/include/ASFunctionality.h ${PROJECT_BINARY_DIR}/AddressSpace/src/ASFunctionality.cpp 
	WORKING_DIRECTORY ${PROJECT_SOURCE_DIR}
	COMMAND python quasar.py generate asclass Functionality --project_binary_dir  ${PROJECT_BINARY_DIR}
	DEPENDS ${DESIGN_FILE} ${PROJECT_SOURCE_DIR}/AddressSpace/designToClassHeader.xslt ${PROJECT_SOURCE_DIR}/AddressSpace/designToClassBody.xslt Configuration.hxx_GENERATED validateDesign
	)	
	
	

	add_custom_command(OUTPUT ${PROJECT_BINARY_DIR}/AddressSpace/include/ASPowerManagementChip.h ${PROJECT_BINARY_DIR}/AddressSpace/src/ASPowerManagementChip.cpp 
	WORKING_DIRECTORY ${PROJECT_SOURCE_DIR}
	COMMAND python quasar.py generate asclass PowerManagementChip --project_binary_dir  ${PROJECT_BINARY_DIR}
	DEPENDS ${DESIGN_FILE} ${PROJECT_SOURCE_DIR}/AddressSpace/designToClassHeader.xslt ${PROJECT_SOURCE_DIR}/AddressSpace/designToClassBody.xslt Configuration.hxx_GENERATED validateDesign
	)	
	
	

	add_custom_command(OUTPUT ${PROJECT_BINARY_DIR}/AddressSpace/include/ASBoardTemperatureSensors.h ${PROJECT_BINARY_DIR}/AddressSpace/src/ASBoardTemperatureSensors.cpp 
	WORKING_DIRECTORY ${PROJECT_SOURCE_DIR}
	COMMAND python quasar.py generate asclass BoardTemperatureSensors --project_binary_dir  ${PROJECT_BINARY_DIR}
	DEPENDS ${DESIGN_FILE} ${PROJECT_SOURCE_DIR}/AddressSpace/designToClassHeader.xslt ${PROJECT_SOURCE_DIR}/AddressSpace/designToClassBody.xslt Configuration.hxx_GENERATED validateDesign
	)	
	
	

	add_custom_command(OUTPUT ${PROJECT_BINARY_DIR}/AddressSpace/include/ASDcDcConverter.h ${PROJECT_BINARY_DIR}/AddressSpace/src/ASDcDcConverter.cpp 
	WORKING_DIRECTORY ${PROJECT_SOURCE_DIR}
	COMMAND python quasar.py generate asclass DcDcConverter --project_binary_dir  ${PROJECT_BINARY_DIR}
	DEPENDS ${DESIGN_FILE} ${PROJECT_SOURCE_DIR}/AddressSpace/designToClassHeader.xslt ${PROJECT_SOURCE_DIR}/AddressSpace/designToClassBody.xslt Configuration.hxx_GENERATED validateDesign
	)	
	
	

	add_custom_command(OUTPUT ${PROJECT_BINARY_DIR}/AddressSpace/include/ASBoardHealthFlags.h ${PROJECT_BINARY_DIR}/AddressSpace/src/ASBoardHealthFlags.cpp 
	WORKING_DIRECTORY ${PROJECT_SOURCE_DIR}
	COMMAND python quasar.py generate asclass BoardHealthFlags --project_binary_dir  ${PROJECT_BINARY_DIR}
	DEPENDS ${DESIGN_FILE} ${PROJECT_SOURCE_DIR}/AddressSpace/designToClassHeader.xslt ${PROJECT_SOURCE_DIR}/AddressSpace/designToClassBody.xslt Configuration.hxx_GENERATED validateDesign
	)	
	
	

	add_custom_command(OUTPUT ${PROJECT_BINARY_DIR}/AddressSpace/include/ASMiniPODs.h ${PROJECT_BINARY_DIR}/AddressSpace/src/ASMiniPODs.cpp 
	WORKING_DIRECTORY ${PROJECT_SOURCE_DIR}
	COMMAND python quasar.py generate asclass MiniPODs --project_binary_dir  ${PROJECT_BINARY_DIR}
	DEPENDS ${DESIGN_FILE} ${PROJECT_SOURCE_DIR}/AddressSpace/designToClassHeader.xslt ${PROJECT_SOURCE_DIR}/AddressSpace/designToClassBody.xslt Configuration.hxx_GENERATED validateDesign
	)	
	
	

	add_custom_command(OUTPUT ${PROJECT_BINARY_DIR}/AddressSpace/include/ASPowerModule.h ${PROJECT_BINARY_DIR}/AddressSpace/src/ASPowerModule.cpp 
	WORKING_DIRECTORY ${PROJECT_SOURCE_DIR}
	COMMAND python quasar.py generate asclass PowerModule --project_binary_dir  ${PROJECT_BINARY_DIR}
	DEPENDS ${DESIGN_FILE} ${PROJECT_SOURCE_DIR}/AddressSpace/designToClassHeader.xslt ${PROJECT_SOURCE_DIR}/AddressSpace/designToClassBody.xslt Configuration.hxx_GENERATED validateDesign
	)	
	
	
	
	set(ADDRESSSPACE_CLASSES 
	
	${PROJECT_BINARY_DIR}/AddressSpace/src/ASGFEXBoard.cpp
	
	${PROJECT_BINARY_DIR}/AddressSpace/src/ASFunctionality.cpp
	
	${PROJECT_BINARY_DIR}/AddressSpace/src/ASPowerManagementChip.cpp
	
	${PROJECT_BINARY_DIR}/AddressSpace/src/ASBoardTemperatureSensors.cpp
	
	${PROJECT_BINARY_DIR}/AddressSpace/src/ASDcDcConverter.cpp
	
	${PROJECT_BINARY_DIR}/AddressSpace/src/ASBoardHealthFlags.cpp
	
	${PROJECT_BINARY_DIR}/AddressSpace/src/ASMiniPODs.cpp
	
	${PROJECT_BINARY_DIR}/AddressSpace/src/ASPowerModule.cpp
	
	)
	
	set(ADDRESSSPACE_HEADERS
	
	${PROJECT_BINARY_DIR}/AddressSpace/include/ASGFEXBoard.h
	
	${PROJECT_BINARY_DIR}/AddressSpace/include/ASFunctionality.h
	
	${PROJECT_BINARY_DIR}/AddressSpace/include/ASPowerManagementChip.h
	
	${PROJECT_BINARY_DIR}/AddressSpace/include/ASBoardTemperatureSensors.h
	
	${PROJECT_BINARY_DIR}/AddressSpace/include/ASDcDcConverter.h
	
	${PROJECT_BINARY_DIR}/AddressSpace/include/ASBoardHealthFlags.h
	
	${PROJECT_BINARY_DIR}/AddressSpace/include/ASMiniPODs.h
	
	${PROJECT_BINARY_DIR}/AddressSpace/include/ASPowerModule.h
	
	)
	

	
	