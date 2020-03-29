# Copyright (c) Microsoft Corporation.
# SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
&"${env:Build_ArtifactStagingDirectory}/tools/parallelize/parallelize.exe" ` "clang-format.exe -style=file -i" `
stl/inc `
stl/inc/cvt `
stl/inc/experimental `
stl/src `
tools/inc `
tools/jobify/jobify.cpp `
tools/parallelize/parallelize.cpp `
tools/validate/validate.cpp
write-host "If your build fails here, you need to format the following files with:"
clang-format.exe --version
git status --porcelain stl tools
write-host "clang-format will produce the following diff:"
git diff stl tools
