ifeq ($(TARGET_QCOM_DISPLAY_VARIANT),legacy)
display-hals := libgralloc libgenlock libcopybit
display-hals += libhwcomposer liboverlay libqdutils
display-hals += libmemtrack

ifeq ($(TARGET_QCOM_DISPLAY_VARIANT),caf)

display-hals := libgralloc libgenlock libcopybit libvirtual
display-hals += libhwcomposer liboverlay libqdutils libexternal libqservice
display-hals += libmemtrack

ifneq ($(TARGET_PROVIDES_LIBLIGHT),true)
display-hals += liblight
endif

include $(call all-named-subdir-makefiles,$(display-hals))

endif
