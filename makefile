BOARD = ESP32_GENERIC_S3   # 目标板子
USER_C_MODULES = $(BUILD_DIR)/micropython-numpy/micropython.cmake   # 目标模块的cmake文件路径

include Makefile
