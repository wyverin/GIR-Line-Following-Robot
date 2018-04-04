#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/LAB09.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/LAB09.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../main.c ../interrupts.c ../sumovore.c ../motor_control.c ../../Common/osc.c ../../Common/Delay_functions.c ../../Common/configureUSART.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1472/main.p1 ${OBJECTDIR}/_ext/1472/interrupts.p1 ${OBJECTDIR}/_ext/1472/sumovore.p1 ${OBJECTDIR}/_ext/1472/motor_control.p1 ${OBJECTDIR}/_ext/2049610667/osc.p1 ${OBJECTDIR}/_ext/2049610667/Delay_functions.p1 ${OBJECTDIR}/_ext/2049610667/configureUSART.p1
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1472/main.p1.d ${OBJECTDIR}/_ext/1472/interrupts.p1.d ${OBJECTDIR}/_ext/1472/sumovore.p1.d ${OBJECTDIR}/_ext/1472/motor_control.p1.d ${OBJECTDIR}/_ext/2049610667/osc.p1.d ${OBJECTDIR}/_ext/2049610667/Delay_functions.p1.d ${OBJECTDIR}/_ext/2049610667/configureUSART.p1.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1472/main.p1 ${OBJECTDIR}/_ext/1472/interrupts.p1 ${OBJECTDIR}/_ext/1472/sumovore.p1 ${OBJECTDIR}/_ext/1472/motor_control.p1 ${OBJECTDIR}/_ext/2049610667/osc.p1 ${OBJECTDIR}/_ext/2049610667/Delay_functions.p1 ${OBJECTDIR}/_ext/2049610667/configureUSART.p1

# Source Files
SOURCEFILES=../main.c ../interrupts.c ../sumovore.c ../motor_control.c ../../Common/osc.c ../../Common/Delay_functions.c ../../Common/configureUSART.c


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/LAB09.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=18F4525
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1472/main.p1: ../main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/main.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1472/main.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit2  --double=32 --float=32 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../" -I"../../Common" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1472/main.p1  ../main.c 
	@-${MV} ${OBJECTDIR}/_ext/1472/main.d ${OBJECTDIR}/_ext/1472/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1472/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1472/interrupts.p1: ../interrupts.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/interrupts.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1472/interrupts.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit2  --double=32 --float=32 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../" -I"../../Common" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1472/interrupts.p1  ../interrupts.c 
	@-${MV} ${OBJECTDIR}/_ext/1472/interrupts.d ${OBJECTDIR}/_ext/1472/interrupts.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1472/interrupts.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1472/sumovore.p1: ../sumovore.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/sumovore.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1472/sumovore.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit2  --double=32 --float=32 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../" -I"../../Common" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1472/sumovore.p1  ../sumovore.c 
	@-${MV} ${OBJECTDIR}/_ext/1472/sumovore.d ${OBJECTDIR}/_ext/1472/sumovore.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1472/sumovore.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1472/motor_control.p1: ../motor_control.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/motor_control.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1472/motor_control.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit2  --double=32 --float=32 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../" -I"../../Common" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1472/motor_control.p1  ../motor_control.c 
	@-${MV} ${OBJECTDIR}/_ext/1472/motor_control.d ${OBJECTDIR}/_ext/1472/motor_control.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1472/motor_control.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2049610667/osc.p1: ../../Common/osc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2049610667" 
	@${RM} ${OBJECTDIR}/_ext/2049610667/osc.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2049610667/osc.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit2  --double=32 --float=32 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../" -I"../../Common" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/2049610667/osc.p1  ../../Common/osc.c 
	@-${MV} ${OBJECTDIR}/_ext/2049610667/osc.d ${OBJECTDIR}/_ext/2049610667/osc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2049610667/osc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2049610667/Delay_functions.p1: ../../Common/Delay_functions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2049610667" 
	@${RM} ${OBJECTDIR}/_ext/2049610667/Delay_functions.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2049610667/Delay_functions.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit2  --double=32 --float=32 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../" -I"../../Common" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/2049610667/Delay_functions.p1  ../../Common/Delay_functions.c 
	@-${MV} ${OBJECTDIR}/_ext/2049610667/Delay_functions.d ${OBJECTDIR}/_ext/2049610667/Delay_functions.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2049610667/Delay_functions.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2049610667/configureUSART.p1: ../../Common/configureUSART.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2049610667" 
	@${RM} ${OBJECTDIR}/_ext/2049610667/configureUSART.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2049610667/configureUSART.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit2  --double=32 --float=32 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../" -I"../../Common" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/2049610667/configureUSART.p1  ../../Common/configureUSART.c 
	@-${MV} ${OBJECTDIR}/_ext/2049610667/configureUSART.d ${OBJECTDIR}/_ext/2049610667/configureUSART.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2049610667/configureUSART.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/_ext/1472/main.p1: ../main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/main.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1472/main.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=32 --float=32 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../" -I"../../Common" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1472/main.p1  ../main.c 
	@-${MV} ${OBJECTDIR}/_ext/1472/main.d ${OBJECTDIR}/_ext/1472/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1472/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1472/interrupts.p1: ../interrupts.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/interrupts.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1472/interrupts.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=32 --float=32 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../" -I"../../Common" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1472/interrupts.p1  ../interrupts.c 
	@-${MV} ${OBJECTDIR}/_ext/1472/interrupts.d ${OBJECTDIR}/_ext/1472/interrupts.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1472/interrupts.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1472/sumovore.p1: ../sumovore.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/sumovore.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1472/sumovore.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=32 --float=32 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../" -I"../../Common" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1472/sumovore.p1  ../sumovore.c 
	@-${MV} ${OBJECTDIR}/_ext/1472/sumovore.d ${OBJECTDIR}/_ext/1472/sumovore.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1472/sumovore.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1472/motor_control.p1: ../motor_control.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/motor_control.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1472/motor_control.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=32 --float=32 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../" -I"../../Common" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1472/motor_control.p1  ../motor_control.c 
	@-${MV} ${OBJECTDIR}/_ext/1472/motor_control.d ${OBJECTDIR}/_ext/1472/motor_control.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1472/motor_control.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2049610667/osc.p1: ../../Common/osc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2049610667" 
	@${RM} ${OBJECTDIR}/_ext/2049610667/osc.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2049610667/osc.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=32 --float=32 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../" -I"../../Common" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/2049610667/osc.p1  ../../Common/osc.c 
	@-${MV} ${OBJECTDIR}/_ext/2049610667/osc.d ${OBJECTDIR}/_ext/2049610667/osc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2049610667/osc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2049610667/Delay_functions.p1: ../../Common/Delay_functions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2049610667" 
	@${RM} ${OBJECTDIR}/_ext/2049610667/Delay_functions.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2049610667/Delay_functions.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=32 --float=32 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../" -I"../../Common" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/2049610667/Delay_functions.p1  ../../Common/Delay_functions.c 
	@-${MV} ${OBJECTDIR}/_ext/2049610667/Delay_functions.d ${OBJECTDIR}/_ext/2049610667/Delay_functions.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2049610667/Delay_functions.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2049610667/configureUSART.p1: ../../Common/configureUSART.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2049610667" 
	@${RM} ${OBJECTDIR}/_ext/2049610667/configureUSART.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2049610667/configureUSART.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=32 --float=32 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../" -I"../../Common" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/2049610667/configureUSART.p1  ../../Common/configureUSART.c 
	@-${MV} ${OBJECTDIR}/_ext/2049610667/configureUSART.d ${OBJECTDIR}/_ext/2049610667/configureUSART.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2049610667/configureUSART.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/LAB09.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) --chip=$(MP_PROCESSOR_OPTION) -G -mdist/${CND_CONF}/${IMAGE_TYPE}/LAB09.X.${IMAGE_TYPE}.map  -D__DEBUG=1 --debugger=pickit2  --double=32 --float=32 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../" -I"../../Common" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     --rom=default,-bdc0-bfff --ram=default,-ef4-eff,-fdb-fdf,-fe3-fe7,-feb-fef,-fd4-fd4,-ffd-fff  $(COMPARISON_BUILD)  -odist/${CND_CONF}/${IMAGE_TYPE}/LAB09.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	@${RM} dist/${CND_CONF}/${IMAGE_TYPE}/LAB09.X.${IMAGE_TYPE}.hex 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/LAB09.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) --chip=$(MP_PROCESSOR_OPTION) -G -mdist/${CND_CONF}/${IMAGE_TYPE}/LAB09.X.${IMAGE_TYPE}.map  --double=32 --float=32 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../" -I"../../Common" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     $(COMPARISON_BUILD)  -odist/${CND_CONF}/${IMAGE_TYPE}/LAB09.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell "${PATH_TO_IDE_BIN}"mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
