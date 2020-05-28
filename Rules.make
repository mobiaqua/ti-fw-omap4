BIOSTOOLSROOT=$(shell pwd)/sources
ARMTOOLCHAINPATH=$(BIOSTOOLSROOT)/armt
CODECS_INSTALL_DIR=$(BIOSTOOLSROOT)/codecs
BIOS_INSTALL_DIR=$(BIOSTOOLSROOT)/bios
XDC_INSTALL_DIR=$(BIOSTOOLSROOT)/xdc
IPC_INSTALL_DIR=$(BIOSTOOLSROOT)/ipc
FC_INSTALL_DIR=$(BIOSTOOLSROOT)/fc
XDAIS_INSTALL_DIR=$(BIOSTOOLSROOT)/xdais
CE_INSTALL_DIR=$(BIOSTOOLSROOT)/ce
OSAL_INSTALL_DIR=$(BIOSTOOLSROOT)/osal
IPUMM_INSTALL_DIR=$(BIOSTOOLSROOT)/ipumm
XDCTOOLS_JAVA_HOME=$(BIOSTOOLSROOT)/xdc/jre

TARGET ?= ti.targets.arm.elf.M3

IPUMM_CONF = \
	$(TARGET)=${ARMTOOLCHAINPATH} \
	ARMTOOLCHAINPATH=${ARMTOOLCHAINPATH} \
	BIOSTOOLSROOT=$(BIOSTOOLSROOT) \
	XDCTOOLS_JAVA_HOME=$(XDCTOOLS_JAVA_HOME) \
	BIOSVERSION=bios \
	CEVERSION=ce \
	XDAISVERSION=xdais \
	FCVERSION=fc \
	IPCVERSION=ipc \
	XDCVERSION=xdc \
	IPCSRC=${IPC_INSTALL_DIR} \
	CODECSPATH=$(CODECS_INSTALL_DIR) \
	TRACELEVEL=0

IPC_CONF = \
	$(TARGET)=${ARMTOOLCHAINPATH} \
	BIOS_INSTALL_DIR=$(BIOS_INSTALL_DIR) \
	XDC_INSTALL_DIR=$(XDC_INSTALL_DIR) \
	XDCTOOLS_JAVA_HOME=$(XDCTOOLS_JAVA_HOME)

FC_CONF = \
	$(TARGET)=${ARMTOOLCHAINPATH} \
	BIOS_INSTALL_DIR=$(BIOS_INSTALL_DIR) \
	XDAIS_INSTALL_DIR=$(XDAIS_INSTALL_DIR) \
	XDC_INSTALL_DIR=$(XDC_INSTALL_DIR) \
	XDCTOOLS_JAVA_HOME=$(XDCTOOLS_JAVA_HOME)

XDAIS_CONF = \
	$(TARGET)=${ARMTOOLCHAINPATH} \
	BIOS_INSTALL_DIR=$(BIOS_INSTALL_DIR) \
	XDC_INSTALL_DIR=$(XDC_INSTALL_DIR) \
	XDCTOOLS_JAVA_HOME=$(XDCTOOLS_JAVA_HOME)

OSAL_CONF = \
	$(TARGET)=${ARMTOOLCHAINPATH} \
	BIOS_INSTALL_DIR=$(BIOS_INSTALL_DIR) \
	XDC_INSTALL_DIR=$(XDC_INSTALL_DIR) \
	XDCTOOLS_JAVA_HOME=$(XDCTOOLS_JAVA_HOME)

CE_CONF = \
	$(TARGET)=${ARMTOOLCHAINPATH} \
	BIOS_INSTALL_DIR=$(BIOS_INSTALL_DIR) \
	XDAIS_INSTALL_DIR=$(XDAIS_INSTALL_DIR) \
	IPC_INSTALL_DIR=$(IPC_INSTALL_DIR) \
	FC_INSTALL_DIR=$(FC_INSTALL_DIR) \
	CE_INSTALL_DIR=$(CE_INSTALL_DIR) \
	OSAL_INSTALL_DIR=$(OSAL_INSTALL_DIR) \
	XDC_INSTALL_DIR=$(XDC_INSTALL_DIR) \
	XDCTOOLS_JAVA_HOME=$(XDCTOOLS_JAVA_HOME)

BIOS_CONF = \
	$(TARGET)=${ARMTOOLCHAINPATH} \
	XDC_INSTALL_DIR=$(XDC_INSTALL_DIR) \
	XDCTOOLS_JAVA_HOME=$(XDCTOOLS_JAVA_HOME)
