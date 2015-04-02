#
# Copyright 2014 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

LOCAL_PATH := $(call my-dir)

ifneq ($(filter g3 d850 d851 d852 d855 ls990 vs985 f400, $(TARGET_DEVICE)),)

include $(call all-makefiles-under,$(LOCAL_PATH))

include $(CLEAR_VARS)

define vfatfilename
$(foreach f,$(1),$(shell echo $(f) | \
    awk 'BEGIN { FS="."; } { printf("%s.%s", substr($$1,1,8), $$2); }'))
endef

ADSP_IMAGES := \
    adsp.b00 adsp.b01 adsp.b02 adsp.b03 adsp.b04 adsp.b05 \
    adsp.b06 adsp.b07 adsp.b08 adsp.b09 adsp.b10 adsp.b11 \
    adsp.b12 adsp.mdt

ADSP_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(ADSP_IMAGES))
$(ADSP_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "ADSP firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(call vfatfilename,$(notdir $@)) $@

ALL_DEFAULT_INSTALLED_MODULES += $(ADSP_SYMLINKS)

CMNLIB_IMAGES := \
    cmnlib.b00 cmnlib.b01 cmnlib.b02 cmnlib.b03 cmnlib.mdt

CMNLIB_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(CMNLIB_IMAGES))
$(CMNLIB_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "CMNLIB firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(call vfatfilename,$(notdir $@)) $@

ALL_DEFAULT_INSTALLED_MODULES += $(CMNLIB_SYMLINKS)

DXHDCP2_IMAGES := \
    dxhdcp2.b00 dxhdcp2.b01 dxhdcp2.b02 dxhdcp2.b03 dxhdcp2.mdt

DXHDCP2_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(DXHDCP2_IMAGES))
$(DXHDCP2_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "dxhdcp2 firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(call vfatfilename,$(notdir $@)) $@

ALL_DEFAULT_INSTALLED_MODULES += $(DXHDCP2_SYMLINKS)

ISDBTMM_IMAGES := \
    isdbtmm.b00 isdbtmm.b01 isdbtmm.b02 isdbtmm.b03 isdbtmm.mdt

ISDBTMM_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(ISDBTMM_IMAGES))
$(ISDBTMM_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "isdbtmn firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(call vfatfilename,$(notdir $@)) $@

ALL_DEFAULT_INSTALLED_MODULES += $(ISDBTMM_SYMLINKS)

KEYMASTER_IMAGES := \
    keymaster.b00 keymaster.b01 keymaster.b02 keymaster.b03 keymaster.mdt

KEYMASTER_SYMLINKS :=$(addprefix $(TARGET_OUT_ETC)/firmware/,$(KEYMASTER_IMAGES))
$(KEYMASTER_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "keymaster firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(call vfatfilename,$(notdir $@)) $@

ALL_DEFAULT_INSTALLED_MODULES += $(KEYMASTER_SYMLINKS)

MBA_IMAGES := \
    mba.b00 mba.mdt

MBA_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(MBA_IMAGES))
$(MBA_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "mba firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(call vfatfilename,$(notdir $@)) $@

ALL_DEFAULT_INSTALLED_MODULES += $(MBA_SYMLINKS)

MC_V2_IMAGES := \
    mc_v2.b00 mc_v2.b02 mc_v2.b02 mc_v2.b03 mc_v2.mdt

MC_V2_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(MC_V2_IMAGES))
$(MC_V2_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "mc_v2 firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(call vfatfilename,$(notdir $@)) $@

ALL_DEFAULT_INSTALLED_MODULES += $(MC_V2_SYMLINKS)

MODEM_IMAGES := \
    modem.b00 modem.b01 modem.b02 modem.b03 modem.b04 modem.b05 \
    modem.b08 modem.b10 modem.b11 modem.b13 modem.b14 modem.b15 \
    modem.b16 modem.b17 modem.b18 modem.b19 modem.b20 modem.b21 \
    modem.b22 modem.b25 modem.b26 modem.b27 modem.mdt

MODEM_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(MODEM_IMAGES))
$(MODEM_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Modem firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(call vfatfilename,$(notdir $@)) $@

ALL_DEFAULT_INSTALLED_MODULES += $(MODEM_SYMLINKS)

PLAYREAD_IMAGES := \
    playread.b00 playread.b01 playread.b02 playread.b03 playread.mdt

PLAYREAD_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(PLAYREAD_IMAGES))
$(PLAYREAD_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "playread firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(call vfatfilename,$(notdir $@)) $@

ALL_DEFAULT_INSTALLED_MODULES += $(PLAYREAD_SYMLINKS)

SECUREMM_IMAGES := \
    securemm.b00 securemm.b01 securemm.b02 securemm.b03 securemm.mdt

SECUREMM_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(SECUREMM_IMAGES))
$(SECUREMM_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "securemm firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(call vfatfilename,$(notdir $@)) $@

ALL_DEFAULT_INSTALLED_MODULES += $(SECUREMM_SYMLINKS)

WCNSS_IMAGES := \
    wcnss.b00 wcnss.b01 wcnss.b02 wcnss.b04 wcnss.b06 wcnss.b07 \
    wcnss.b08 wcnss.b09 wcnss.mdt

WCNSS_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(WCNSS_IMAGES))
$(WCNSS_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "WCNSS firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(call vfatfilename,$(notdir $@)) $@

ALL_DEFAULT_INSTALLED_MODULES += $(WCNSS_SYMLINKS)

WIDEVINE_IMAGES := \
    widevine.b00 widevine.b01 widevine.b02 widevine.b03 widevine.mdt

WIDEVINE_SYMLINKS := $(addprefix $(TARGET_OUT_VENDOR)/firmware/,$(WIDEVINE_IMAGES))
$(WIDEVINE_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "widevine firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(call vfatfilename,$(notdir $@)) $@

ALL_DEFAULT_INSTALLED_MODULES += $(WIDEVINE_SYMLINKS)

WCD9320_IMAGES := \
    wcd9320_anc.bin wcd9320_mad_audio.bin wcd9320_mbhc.bin

WCD9320_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/wcd9320/,$(WCD9320_IMAGES))
$(WCD9320_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "wcd9320 firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	tf=$(notdir $@); if [ "$$tf" = "wcd9320_mbhc.bin" ]; then tf="mbhc.bin"; fi; ln -sf /data/misc/audio/$$tf $@

ALL_DEFAULT_INSTALLED_MODULES += $(WCD9320_SYMLINKS)

endif
