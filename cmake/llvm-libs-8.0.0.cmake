#===----------------------------------------------------------------------===#
#                           The MIT License (MIT)
#             Copyright (c) 2020 Douglas Chen <dougpuob@gmail.com>
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to
# deal in the Software without restriction, including without limitation the
# rights to use, copy, modify, merge, publish, distribute, sublicense, and/or
# sell copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
# FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
# IN THE SOFTWARE.
#===----------------------------------------------------------------------===#
#set(CLANG_LIBS "clangBasic;clangLex;clangParse;clangAST;clangDynamicASTMatchers;clangASTMatchers;clangCrossTU;clangSema;clangCodeGen;clangAnalysis;clangEdit;clangRewrite;clangARCMigrate;clangDriver;clangSerialization;clangRewriteFrontend;clangFrontend;clangFrontendTool;clangToolingCore;clangToolingInclusions;clangToolingRefactor;clangToolingASTDiff;clangTooling;clangIndex;clangStaticAnalyzerCore;clangStaticAnalyzerCheckers;clangStaticAnalyzerFrontend;clangFormat")
#set(LLVM_LIBS  "LLVMDemangle;LLVMSupport;LLVMTableGen;LLVMCore;LLVMFuzzMutate;LLVMIRReader;LLVMCodeGen;LLVMSelectionDAG;LLVMAsmPrinter;LLVMMIRParser;LLVMGlobalISel;LLVMBinaryFormat;LLVMBitReader;LLVMBitWriter;LLVMTransformUtils;LLVMInstrumentation;LLVMAggressiveInstCombine;LLVMInstCombine;LLVMScalarOpts;LLVMipo;LLVMVectorize;LLVMObjCARCOpts;LLVMCoroutines;LLVMLinker;LLVMAnalysis;LLVMLTO;LLVMMC;LLVMMCParser;LLVMMCDisassembler;LLVMMCA;LLVMObject;LLVMObjectYAML;LLVMOption;LLVMOptRemarks;LLVMDebugInfoDWARF;LLVMDebugInfoMSF;LLVMDebugInfoCodeView;LLVMDebugInfoPDB;LLVMSymbolize;LLVMExecutionEngine;LLVMInterpreter;LLVMMCJIT;LLVMOrcJIT;LLVMRuntimeDyld;LLVMTarget;LLVMAArch64CodeGen;LLVMAArch64AsmParser;LLVMAArch64Disassembler;LLVMAArch64AsmPrinter;LLVMAArch64Desc;LLVMAArch64Info;LLVMAArch64Utils;LLVMAMDGPUCodeGen;LLVMAMDGPUAsmParser;LLVMAMDGPUDisassembler;LLVMAMDGPUAsmPrinter;LLVMAMDGPUDesc;LLVMAMDGPUInfo;LLVMAMDGPUUtils;LLVMARMCodeGen;LLVMARMAsmParser;LLVMARMDisassembler;LLVMARMAsmPrinter;LLVMARMDesc;LLVMARMInfo;LLVMARMUtils;LLVMBPFCodeGen;LLVMBPFAsmParser;LLVMBPFDisassembler;LLVMBPFAsmPrinter;LLVMBPFDesc;LLVMBPFInfo;LLVMHexagonCodeGen;LLVMHexagonAsmParser;LLVMHexagonDisassembler;LLVMHexagonDesc;LLVMHexagonInfo;LLVMLanaiCodeGen;LLVMLanaiAsmParser;LLVMLanaiDisassembler;LLVMLanaiAsmPrinter;LLVMLanaiDesc;LLVMLanaiInfo;LLVMMipsCodeGen;LLVMMipsAsmParser;LLVMMipsDisassembler;LLVMMipsAsmPrinter;LLVMMipsDesc;LLVMMipsInfo;LLVMMSP430CodeGen;LLVMMSP430AsmPrinter;LLVMMSP430Desc;LLVMMSP430Info;LLVMMSP430AsmParser;LLVMMSP430Disassembler;LLVMNVPTXCodeGen;LLVMNVPTXAsmPrinter;LLVMNVPTXDesc;LLVMNVPTXInfo;LLVMPowerPCCodeGen;LLVMPowerPCAsmParser;LLVMPowerPCDisassembler;LLVMPowerPCAsmPrinter;LLVMPowerPCDesc;LLVMPowerPCInfo;LLVMSparcCodeGen;LLVMSparcAsmParser;LLVMSparcDisassembler;LLVMSparcAsmPrinter;LLVMSparcDesc;LLVMSparcInfo;LLVMSystemZCodeGen;LLVMSystemZAsmParser;LLVMSystemZDisassembler;LLVMSystemZAsmPrinter;LLVMSystemZDesc;LLVMSystemZInfo;LLVMWebAssemblyCodeGen;LLVMWebAssemblyAsmParser;LLVMWebAssemblyDisassembler;LLVMWebAssemblyAsmPrinter;LLVMWebAssemblyDesc;LLVMWebAssemblyInfo;LLVMX86CodeGen;LLVMX86AsmParser;LLVMX86Disassembler;LLVMX86AsmPrinter;LLVMX86Desc;LLVMX86Info;LLVMX86Utils;LLVMXCoreCodeGen;LLVMXCoreDisassembler;LLVMXCoreAsmPrinter;LLVMXCoreDesc;LLVMXCoreInfo;LLVMAsmParser;LLVMLineEditor;LLVMProfileData;LLVMCoverage;LLVMPasses;LLVMTextAPI;LLVMDlltoolDriver;LLVMLibDriver;LLVMXRay;LLVMWindowsManifest;LTO")

set(CLANG_LIBS "")
set(LLVM_LIBS 
    LLVMBinaryFormat
    LLVMBitReader
    LLVMCore
    LLVMDemangle
    LLVMMC
    LLVMProfileData
    LLVMOption
    LLVMMCParser
    LLVMSupport
    LLVMCore
    clangTooling
    clangAnalysis
    clangSerialization
    clangParse
    clangDriver
    clangSema
    clangEdit
    clangFrontend
    clangAST
    clangLex
    clangBasic
    #------------------------#
    # Build for Linux        #
    #------------------------#
    clangAnalysis
    clangARCMigrate
    clangAST
    clangASTMatchers
    clangBasic
    clangCodeGen
    clangCrossTU
    clangDriver
    clangDynamicASTMatchers
    clangEdit
    clangFormat
    clangFrontend
    clangFrontendTool
    clangHandleCXX
    clangHandleLLVM
    clangIndex
    clangLex
    clangParse
    clangRewrite
    clangRewriteFrontend
    clangSema
    clangSerialization
    clangStaticAnalyzerCheckers
    clangStaticAnalyzerCore
    clangStaticAnalyzerFrontend
    clangTooling
    clangToolingASTDiff
    clangToolingCore
    clangToolingInclusions
    clangToolingRefactor
    #libclang
    LLVMAArch64AsmParser
    LLVMAArch64AsmPrinter
    LLVMAArch64CodeGen
    LLVMAArch64Desc
    LLVMAArch64Disassembler
    LLVMAArch64Info
    LLVMAArch64Utils
    LLVMAggressiveInstCombine
    LLVMAMDGPUAsmParser
    LLVMAMDGPUAsmPrinter
    LLVMAMDGPUCodeGen
    LLVMAMDGPUDesc
    LLVMAMDGPUDisassembler
    LLVMAMDGPUInfo
    LLVMAMDGPUUtils
    LLVMAnalysis
    LLVMARMAsmParser
    LLVMARMAsmPrinter
    LLVMARMCodeGen
    LLVMARMDesc
    LLVMARMDisassembler
    LLVMARMInfo
    LLVMARMUtils
    LLVMAsmParser
    LLVMAsmPrinter
    LLVMBinaryFormat
    LLVMBitReader
    LLVMBitWriter
    LLVMBPFAsmParser
    LLVMBPFAsmPrinter
    LLVMBPFCodeGen
    LLVMBPFDesc
    LLVMBPFDisassembler
    LLVMBPFInfo
    LLVMCodeGen
    LLVMCore
    LLVMCoroutines
    LLVMCoverage
    LLVMDebugInfoCodeView
    LLVMDebugInfoDWARF
    LLVMDebugInfoMSF
    LLVMDebugInfoPDB
    LLVMDemangle
    LLVMDlltoolDriver
    LLVMExecutionEngine
    LLVMFuzzMutate
    LLVMGlobalISel
    LLVMHexagonAsmParser
    LLVMHexagonCodeGen
    LLVMHexagonDesc
    LLVMHexagonDisassembler
    LLVMHexagonInfo
    LLVMInstCombine
    LLVMInstrumentation
    LLVMInterpreter
    LLVMipo
    LLVMIRReader
    LLVMLanaiAsmParser
    LLVMLanaiAsmPrinter
    LLVMLanaiCodeGen
    LLVMLanaiDesc
    LLVMLanaiDisassembler
    LLVMLanaiInfo
    LLVMLibDriver
    LLVMLineEditor
    LLVMLinker
    LLVMLTO
    LLVMMC
    LLVMMCDisassembler
    LLVMMCJIT
    LLVMMCParser
    LLVMMipsAsmParser
    LLVMMipsAsmPrinter
    LLVMMipsCodeGen
    LLVMMipsDesc
    LLVMMipsDisassembler
    LLVMMipsInfo
    LLVMMIRParser
    LLVMMSP430AsmPrinter
    LLVMMSP430CodeGen
    LLVMMSP430Desc
    LLVMMSP430Info
    LLVMNVPTXAsmPrinter
    LLVMNVPTXCodeGen
    LLVMNVPTXDesc
    LLVMNVPTXInfo
    LLVMObjCARCOpts
    LLVMObject
    LLVMObjectYAML
    LLVMOption
    LLVMOrcJIT
    LLVMPasses
    LLVMPowerPCAsmParser
    LLVMPowerPCAsmPrinter
    LLVMPowerPCCodeGen
    LLVMPowerPCDesc
    LLVMPowerPCDisassembler
    LLVMPowerPCInfo
    LLVMProfileData
    LLVMRuntimeDyld
    LLVMScalarOpts
    LLVMSelectionDAG
    LLVMSparcAsmParser
    LLVMSparcAsmPrinter
    LLVMSparcCodeGen
    LLVMSparcDesc
    LLVMSparcDisassembler
    LLVMSparcInfo
    LLVMSupport
    LLVMSymbolize
    LLVMSystemZAsmParser
    LLVMSystemZAsmPrinter
    LLVMSystemZCodeGen
    LLVMSystemZDesc
    LLVMSystemZDisassembler
    LLVMSystemZInfo
    LLVMTableGen
    LLVMTarget
    LLVMTestingSupport
    LLVMTransformUtils
    LLVMVectorize
    LLVMWindowsManifest
    LLVMX86AsmParser
    LLVMX86AsmPrinter
    LLVMX86CodeGen
    LLVMX86Desc
    LLVMX86Disassembler
    LLVMX86Info
    LLVMX86Utils
    LLVMXCoreAsmPrinter
    LLVMXCoreCodeGen
    LLVMXCoreDesc
    LLVMXCoreDisassembler
    LLVMXCoreInfo
    LLVMXRay
    LTO
    clangParse
    clangSerialization
    clangDriver
    clangIndex
    clangSema
    clangAnalysis
    clangAST
    clangFrontend
    clangEdit
    clangLex
    clangBasic
    LLVMSupport
    LLVMCore
    LLVMMC)
