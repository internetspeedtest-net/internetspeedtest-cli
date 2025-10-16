# Script to create release archives for manual GitHub release
$VERSION = "1.0.0"
$DIST_DIR = "dist"
$RELEASE_DIR = "release-v$VERSION"

# Create release directory
if (Test-Path $RELEASE_DIR) {
    Remove-Item -Recurse -Force $RELEASE_DIR
}
New-Item -ItemType Directory -Path $RELEASE_DIR

Write-Host "Creating release archives for version $VERSION..."

# Function to create archives
function Create-Archive {
    param([string]$SourceDir, [string]$ArchiveName)
    
    $BinaryPath = Join-Path $DIST_DIR $SourceDir
    if (Test-Path $BinaryPath) {
        $OutputPath = Join-Path $RELEASE_DIR "$ArchiveName.zip"
        Compress-Archive -Path "$BinaryPath\*" -DestinationPath $OutputPath -Force
        Write-Host "Created: $ArchiveName.zip"
        return $true
    }
    return $false
}

# Create archives for main platforms
$created = 0

# Windows
if (Create-Archive "internetspeedtest_windows_amd64_v1" "internetspeedtest-$VERSION-windows-amd64") { $created++ }
if (Create-Archive "internetspeedtest_windows_386_sse2" "internetspeedtest-$VERSION-windows-386") { $created++ }

# macOS
if (Create-Archive "internetspeedtest_darwin_amd64_v1" "internetspeedtest-$VERSION-darwin-amd64") { $created++ }
if (Create-Archive "internetspeedtest_darwin_arm64_v8.0" "internetspeedtest-$VERSION-darwin-arm64") { $created++ }

# Linux
if (Create-Archive "internetspeedtest_linux_amd64_v1" "internetspeedtest-$VERSION-linux-amd64") { $created++ }
if (Create-Archive "internetspeedtest_linux_386_sse2" "internetspeedtest-$VERSION-linux-386") { $created++ }
if (Create-Archive "internetspeedtest_linux_arm64_v8.0" "internetspeedtest-$VERSION-linux-arm64") { $created++ }
if (Create-Archive "internetspeedtest_linux_arm_7" "internetspeedtest-$VERSION-linux-armv7") { $created++ }
if (Create-Archive "internetspeedtest_linux_arm_6" "internetspeedtest-$VERSION-linux-armv6") { $created++ }
if (Create-Archive "internetspeedtest_linux_arm_5" "internetspeedtest-$VERSION-linux-armv5") { $created++ }

# FreeBSD
if (Create-Archive "internetspeedtest_freebsd_amd64_v1" "internetspeedtest-$VERSION-freebsd-amd64") { $created++ }
if (Create-Archive "internetspeedtest_freebsd_386_sse2" "internetspeedtest-$VERSION-freebsd-386") { $created++ }

# Additional architectures
if (Create-Archive "internetspeedtest_linux_mips64_hardfloat" "internetspeedtest-$VERSION-linux-mips64") { $created++ }
if (Create-Archive "internetspeedtest_linux_mips64le_hardfloat" "internetspeedtest-$VERSION-linux-mips64le") { $created++ }
if (Create-Archive "internetspeedtest_linux_riscv64_rva20u64" "internetspeedtest-$VERSION-linux-riscv64") { $created++ }

Write-Host ""
Write-Host "Summary: Created $created archive files"
Write-Host "Location: $RELEASE_DIR"
Write-Host ""
Write-Host "Next Steps:"
Write-Host "1. Go to: https://github.com/internetspeedtest-net/internetspeedtest-cli/releases"
Write-Host "2. Click 'Create a new release'"
Write-Host "3. Choose tag 'v$VERSION'"
Write-Host "4. Upload all files from '$RELEASE_DIR' folder"
Write-Host "5. Add release notes and publish!"
Write-Host ""
Write-Host "Ready for manual release!"