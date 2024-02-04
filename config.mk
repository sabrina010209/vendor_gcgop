# Copyright (C) 2022 Beru "Stella" Hinode
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

ifeq ($(TARGET_SUPPORTS_64_BIT_APPS), true)
    PRODUCT_SOONG_NAMESPACES += $(GCGOP_VENDOR_DIR)

    PRODUCT_PACKAGES += KasumiGCGOP

    PRODUCT_COPY_FILES += $(GCGOP_VENDOR_DIR)/lily_experience.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/lily_experience.xml
else
    $(warning Device is 32-bit but you have chosen to ship GCGOP, which is 64-bit.)
    $(warning Not shipping Kasumi GCGOP.)
endif
