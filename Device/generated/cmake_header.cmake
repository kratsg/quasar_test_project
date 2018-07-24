
	
	add_custom_command(OUTPUT ${PROJECT_BINARY_DIR}/Device/generated/Base_DGFEXBoard.h ${PROJECT_BINARY_DIR}/Device/generated/Base_DGFEXBoard.cpp 
	WORKING_DIRECTORY ${PROJECT_SOURCE_DIR}
	COMMAND python quasar.py generate base GFEXBoard --project_binary_dir ${PROJECT_BINARY_DIR}
	DEPENDS ${DESIGN_FILE} ${PROJECT_SOURCE_DIR}/quasar.py ${PROJECT_SOURCE_DIR}/Device/designToDeviceBaseHeader.xslt Configuration.hxx_GENERATED validateDesign ${PROJECT_SOURCE_DIR}/Device/designToDeviceBaseBody.xslt
	)	
	
	
	
	
	add_custom_command(OUTPUT ${PROJECT_BINARY_DIR}/Device/generated/Base_DFunctionality.h ${PROJECT_BINARY_DIR}/Device/generated/Base_DFunctionality.cpp 
	WORKING_DIRECTORY ${PROJECT_SOURCE_DIR}
	COMMAND python quasar.py generate base Functionality --project_binary_dir ${PROJECT_BINARY_DIR}
	DEPENDS ${DESIGN_FILE} ${PROJECT_SOURCE_DIR}/quasar.py ${PROJECT_SOURCE_DIR}/Device/designToDeviceBaseHeader.xslt Configuration.hxx_GENERATED validateDesign ${PROJECT_SOURCE_DIR}/Device/designToDeviceBaseBody.xslt
	)	
	
	
	
	
	add_custom_command(OUTPUT ${PROJECT_BINARY_DIR}/Device/generated/Base_DPowerManagementChip.h ${PROJECT_BINARY_DIR}/Device/generated/Base_DPowerManagementChip.cpp 
	WORKING_DIRECTORY ${PROJECT_SOURCE_DIR}
	COMMAND python quasar.py generate base PowerManagementChip --project_binary_dir ${PROJECT_BINARY_DIR}
	DEPENDS ${DESIGN_FILE} ${PROJECT_SOURCE_DIR}/quasar.py ${PROJECT_SOURCE_DIR}/Device/designToDeviceBaseHeader.xslt Configuration.hxx_GENERATED validateDesign ${PROJECT_SOURCE_DIR}/Device/designToDeviceBaseBody.xslt
	)	
	
	
	
	
	add_custom_command(OUTPUT ${PROJECT_BINARY_DIR}/Device/generated/Base_DBoardTemperatureSensors.h ${PROJECT_BINARY_DIR}/Device/generated/Base_DBoardTemperatureSensors.cpp 
	WORKING_DIRECTORY ${PROJECT_SOURCE_DIR}
	COMMAND python quasar.py generate base BoardTemperatureSensors --project_binary_dir ${PROJECT_BINARY_DIR}
	DEPENDS ${DESIGN_FILE} ${PROJECT_SOURCE_DIR}/quasar.py ${PROJECT_SOURCE_DIR}/Device/designToDeviceBaseHeader.xslt Configuration.hxx_GENERATED validateDesign ${PROJECT_SOURCE_DIR}/Device/designToDeviceBaseBody.xslt
	)	
	
	
	
	
	add_custom_command(OUTPUT ${PROJECT_BINARY_DIR}/Device/generated/Base_DDcDcConverter.h ${PROJECT_BINARY_DIR}/Device/generated/Base_DDcDcConverter.cpp 
	WORKING_DIRECTORY ${PROJECT_SOURCE_DIR}
	COMMAND python quasar.py generate base DcDcConverter --project_binary_dir ${PROJECT_BINARY_DIR}
	DEPENDS ${DESIGN_FILE} ${PROJECT_SOURCE_DIR}/quasar.py ${PROJECT_SOURCE_DIR}/Device/designToDeviceBaseHeader.xslt Configuration.hxx_GENERATED validateDesign ${PROJECT_SOURCE_DIR}/Device/designToDeviceBaseBody.xslt
	)	
	
	
	
	
	add_custom_command(OUTPUT ${PROJECT_BINARY_DIR}/Device/generated/Base_DBoardHealthFlags.h ${PROJECT_BINARY_DIR}/Device/generated/Base_DBoardHealthFlags.cpp 
	WORKING_DIRECTORY ${PROJECT_SOURCE_DIR}
	COMMAND python quasar.py generate base BoardHealthFlags --project_binary_dir ${PROJECT_BINARY_DIR}
	DEPENDS ${DESIGN_FILE} ${PROJECT_SOURCE_DIR}/quasar.py ${PROJECT_SOURCE_DIR}/Device/designToDeviceBaseHeader.xslt Configuration.hxx_GENERATED validateDesign ${PROJECT_SOURCE_DIR}/Device/designToDeviceBaseBody.xslt
	)	
	
	
	
	
	add_custom_command(OUTPUT ${PROJECT_BINARY_DIR}/Device/generated/Base_DMiniPODs.h ${PROJECT_BINARY_DIR}/Device/generated/Base_DMiniPODs.cpp 
	WORKING_DIRECTORY ${PROJECT_SOURCE_DIR}
	COMMAND python quasar.py generate base MiniPODs --project_binary_dir ${PROJECT_BINARY_DIR}
	DEPENDS ${DESIGN_FILE} ${PROJECT_SOURCE_DIR}/quasar.py ${PROJECT_SOURCE_DIR}/Device/designToDeviceBaseHeader.xslt Configuration.hxx_GENERATED validateDesign ${PROJECT_SOURCE_DIR}/Device/designToDeviceBaseBody.xslt
	)	
	
	
	
	
	add_custom_command(OUTPUT ${PROJECT_BINARY_DIR}/Device/generated/Base_DPowerModule.h ${PROJECT_BINARY_DIR}/Device/generated/Base_DPowerModule.cpp 
	WORKING_DIRECTORY ${PROJECT_SOURCE_DIR}
	COMMAND python quasar.py generate base PowerModule --project_binary_dir ${PROJECT_BINARY_DIR}
	DEPENDS ${DESIGN_FILE} ${PROJECT_SOURCE_DIR}/quasar.py ${PROJECT_SOURCE_DIR}/Device/designToDeviceBaseHeader.xslt Configuration.hxx_GENERATED validateDesign ${PROJECT_SOURCE_DIR}/Device/designToDeviceBaseBody.xslt
	)	
	
	
	
	
	set(DEVICEBASE_GENERATED_FILES
        include/DRoot.h
        src/DRoot.cpp
	
	generated/Base_DGFEXBoard.h
	generated/Base_DGFEXBoard.cpp
	
	generated/Base_DBoardTemperatureSensors.h
	generated/Base_DBoardTemperatureSensors.cpp
	
	)
	
	set(DEVICE_CLASSES
	
	src/DGFEXBoard.cpp
	
	src/DBoardTemperatureSensors.cpp
	
	)

	add_custom_target(DeviceBase DEPENDS ${DEVICEBASE_GENERATED_FILES} )
	
	add_custom_target(DeviceGeneratedHeaders DEPENDS include/DRoot.h ${DEVICEBASE_GENERATED_FILES})
	
	