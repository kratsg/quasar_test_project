
	
	set(DEVICEBASE_GENERATED_FILES
        include/DRoot.h
        src/DRoot.cpp
	
	)
	
	set(DEVICE_CLASSES
	
	)

	add_custom_target(DeviceBase DEPENDS ${DEVICEBASE_GENERATED_FILES} )
	
	add_custom_target(DeviceGeneratedHeaders DEPENDS include/DRoot.h ${DEVICEBASE_GENERATED_FILES})
	
	