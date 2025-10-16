![InternetSpeedTest.net](https://internetspeedtest.net/logo.png)

# InternetSpeedTest CLI - Lightning Fast Speed Testing ⚡

**The fastest, most accurate, and privacy-focused internet speed test tool for your terminal!**

[![GitHub release](https://img.shields.io/github/release/internetspeedtest-net/internetspeedtest-cli.svg)](https://github.com/internetspeedtest-net/internetspeedtest-cli/releases)
[![License](https://img.shields.io/badge/license-LGPL--3.0-blue.svg)](LICENSE)
[![Go Report Card](https://goreportcard.com/badge/github.com/internetspeedtest-net/internetspeedtest-cli)](https://goreportcard.com/report/github.com/internetspeedtest-net/internetspeedtest-cli)
[![Platform Support](https://img.shields.io/badge/platform-Windows%20%7C%20macOS%20%7C%20Linux-lightgrey.svg)](https://github.com/internetspeedtest-net/internetspeedtest-cli/releases)

---

## 🌟 Why Choose InternetSpeedTest CLI?

**[InternetSpeedTest.net](https://internetspeedtest.net)** brings you the ultimate speed testing experience directly to your command line! Unlike other speed test tools, we prioritize:

### 🚀 **Blazing Fast Performance**
- **Lightning speed results** in seconds, not minutes
- **Optimized protocols** for maximum accuracy
- **Multiple concurrent connections** for real-world testing

### 🔒 **Privacy First**
- **Zero tracking** - Your data stays private
- **No ads or bloatware** - Pure speed testing
- **Open source transparency** - You can verify everything

### 🌍 **Global Network**
- **Worldwide server coverage** for accurate local testing
- **Smart server selection** based on lowest latency
- **Multiple backend protocols** (PHP, Go, Node.js)

### 🎯 **Developer Friendly**
- **JSON/CSV output** for automation and scripting
- **Comprehensive API** for integration
- **Cross-platform binaries** for all major systems

---

## 🎬 See It In Action

[![asciicast](https://asciinema.org/a/J17bUAilWI3qR12JyhfGvPwu2.svg)](https://asciinema.org/a/J17bUAilWI3qR12JyhfGvPwu2)

---

## ✨ Features That Matter

🏓 **Comprehensive Testing**
- Ping & Jitter measurements
- Download speed testing  
- Upload speed testing
- IP address & ISP detection

📊 **Multiple Output Formats**
- Human-readable terminal output
- JSON for APIs and automation
- CSV for data analysis
- Simple mode for scripts

🔧 **Advanced Configuration**
- Custom server selection
- Configurable test duration
- Network interface binding
- Proxy and certificate support

🛡️ **Enterprise Ready**
- Result sharing & telemetry
- Custom backend servers
- Network binding options
- SSL/TLS configuration

---

## 🚀 Quick Start

### 💾 Download Pre-built Binaries

**The fastest way to get started!** Download the latest release for your platform:

**[📥 Download Latest Release](https://github.com/internetspeedtest-net/internetspeedtest-cli/releases)**

| Platform | Architecture | Download |
|----------|-------------|----------|
| 🖥️ Windows | x64 | `internetspeedtest-windows-amd64.exe` |
| 🖥️ Windows | x86 | `internetspeedtest-windows-386.exe` |
| 🍎 macOS | Intel | `internetspeedtest-darwin-amd64` |
| 🍎 macOS | Apple Silicon | `internetspeedtest-darwin-arm64` |
| 🐧 Linux | x64 | `internetspeedtest-linux-amd64` |
| 🐧 Linux | ARM64 | `internetspeedtest-linux-arm64` |

### 🏃‍♂️ Quick Test

```bash
# Download and run immediately
./internetspeedtest

# Quick test with specific server
./internetspeedtest --server 31

# Simple output for automation
./internetspeedtest --simple

# JSON output for APIs
./internetspeedtest --json
```

---

## 📦 Installation Methods

### 🪟 Windows

**Chocolatey:**
```powershell
choco install internetspeedtest
```

**Scoop:**
```powershell
scoop install internetspeedtest
```

**Manual Download:**
1. Download `internetspeedtest-windows-amd64.exe` from [releases](https://github.com/internetspeedtest-net/internetspeedtest-cli/releases)
2. Rename to `internetspeedtest.exe`
3. Add to your PATH or run directly

### 🍎 macOS

**Homebrew:**
```bash
brew install internetspeedtest-net/tap/internetspeedtest
```

**Manual Download:**
```bash
# Download and install
curl -L -o internetspeedtest https://github.com/internetspeedtest-net/internetspeedtest-cli/releases/latest/download/internetspeedtest-darwin-amd64
chmod +x internetspeedtest
sudo mv internetspeedtest /usr/local/bin/
```

### 🐧 Linux

**Arch Linux (AUR):**
```bash
yay -S internetspeedtest-bin
```

**Ubuntu/Debian:**
```bash
# Download .deb package from releases
wget https://github.com/internetspeedtest-net/internetspeedtest-cli/releases/latest/download/internetspeedtest_linux_amd64.deb
sudo dpkg -i internetspeedtest_linux_amd64.deb
```

**Manual Install:**
```bash
# Download and install
curl -L -o internetspeedtest https://github.com/internetspeedtest-net/internetspeedtest-cli/releases/latest/download/internetspeedtest-linux-amd64
chmod +x internetspeedtest
sudo mv internetspeedtest /usr/local/bin/
```

### 🐳 Docker

```bash
# Run directly
docker run --rm internetspeedtest/cli

# With custom options
docker run --rm internetspeedtest/cli --simple --server 31

# Build yourself
docker build -t internetspeedtest:latest .
docker run --rm internetspeedtest:latest
```

---

## 🛠️ Building from Source

### Prerequisites
- **Go 1.18+** ([Download](https://golang.org/dl/))
- Git

### Build Steps

```bash
# Clone the repository
git clone https://github.com/internetspeedtest-net/internetspeedtest-cli.git
cd internetspeedtest-cli

# Build for your platform
go build -o internetspeedtest .

# Or use the build script for optimized binary
./build.sh

# Cross-compile for other platforms
GOOS=windows GOARCH=amd64 ./build.sh  # Windows 64-bit
GOOS=darwin GOARCH=amd64 ./build.sh   # macOS Intel
GOOS=linux GOARCH=arm64 ./build.sh    # Linux ARM64
```

**Built binaries will be in the `out/` directory.**

---

## 📖 Usage Examples

### 🎯 Basic Speed Test
```bash
# Quick speed test with auto server selection
internetspeedtest

# Test with a specific server (see --list for IDs)
internetspeedtest --server 31

# Test without upload (download only)
internetspeedtest --no-upload

# Test without download (upload only)  
internetspeedtest --no-download
```

### 📊 Output Formats
```bash
# Simple output (perfect for scripts)
internetspeedtest --simple
# Output: Ping: 25.43 ms  Download: 95.23 Mbps  Upload: 48.56 Mbps

# JSON output (perfect for APIs)
internetspeedtest --json
# Output: {"server":{"name":"..."},"ping":25.43,"download":95230000,"upload":48560000}

# CSV output (perfect for data analysis)
internetspeedtest --csv --csv-header
# Output: Server,Ping (ms),Download (bps),Upload (bps)
#         "Example Server",25.43,95230000,48560000
```

### 🔧 Advanced Configuration
```bash
# Test for 30 seconds with 5 concurrent connections
internetspeedtest --duration 30 --concurrent 5

# Use specific network interface
internetspeedtest --interface eth0

# Bind to specific source IP
internetspeedtest --source 192.168.1.100

# Use HTTPS for secure connections
internetspeedtest --secure

# Disable ICMP ping (use HTTP only)
internetspeedtest --no-icmp

# Show results in bytes instead of bits
internetspeedtest --bytes
```

### 🌐 Server Management
```bash
# List all available servers
internetspeedtest --list

# Test against multiple servers
internetspeedtest --server 31 --server 34 --server 40

# Exclude specific servers from auto-selection
internetspeedtest --exclude 12 --exclude 15

# Use custom server list
internetspeedtest --server-json https://example.com/servers.json

# Use local server configuration
internetspeedtest --local-json ./my-servers.json
```

### 📈 Telemetry & Sharing
```bash
# Enable result sharing
internetspeedtest --share

# Set telemetry level
internetspeedtest --telemetry-level full --share

# Send custom message with results
internetspeedtest --telemetry-extra "Office WiFi Test" --share

# Use custom telemetry server
internetspeedtest --telemetry-server https://myserver.com --share
```

---

## 🔧 Command Line Options

### Core Test Options
```bash
internetspeedtest [OPTIONS]
```

| Option | Description | Example |
|--------|-------------|---------|
| `--server ID` | Use specific server ID | `--server 31` |
| `--list` | List all available servers | `--list` |
| `--exclude ID` | Exclude server from selection | `--exclude 12` |
| `--no-upload` | Skip upload test | `--no-upload` |
| `--no-download` | Skip download test | `--no-download` |
| `--duration N` | Test duration in seconds (default: 15) | `--duration 30` |
| `--concurrent N` | Number of concurrent connections | `--concurrent 8` |

### Output Format Options
| Option | Description | Output Format |
|--------|-------------|---------------|
| `--simple` | Simple one-line output | `Ping: 25ms Download: 95Mbps Upload: 48Mbps` |
| `--json` | JSON formatted output | `{"ping":25,"download":95000000,...}` |
| `--csv` | CSV formatted output | `"Server",25.43,95000000,48000000` |
| `--csv-header` | Include CSV headers | Adds column headers to CSV output |
| `--bytes` | Show results in bytes/s instead of bits/s | Changes Mbps to MB/s |

### Network Configuration
| Option | Description | Example |
|--------|-------------|---------|
| `--interface NAME` | Bind to specific network interface | `--interface eth0` |
| `--source IP` | Bind to specific source IP address | `--source 192.168.1.100` |
| `--secure` | Use HTTPS instead of HTTP | `--secure` |
| `--no-icmp` | Disable ICMP ping, use HTTP only | `--no-icmp` |

### Server Configuration
| Option | Description | Example |
|--------|-------------|---------|
| `--server-json URL` | Use custom server list | `--server-json https://example.com/servers.json` |
| `--local-json FILE` | Use local server list file | `--local-json ./servers.json` |

### Telemetry & Sharing
| Option | Description | Values |
|--------|-------------|--------|
| `--share` | Enable result sharing/telemetry | Enable sharing |
| `--telemetry-level LEVEL` | Set telemetry detail level | `disabled`, `basic`, `full` |
| `--telemetry-server URL` | Custom telemetry endpoint | `--telemetry-server https://api.example.com` |
| `--telemetry-extra TEXT` | Add custom message to results | `--telemetry-extra "Office WiFi"` |

### Utility Options
| Option | Description | 
|--------|-------------|
| `--help, -h` | Show help message |
| `--version` | Show version information |
| `--verbose` | Enable verbose output |
| `--quiet` | Minimal output mode |

---

## 📱 Integration Examples

### Shell Scripting
```bash
#!/bin/bash
# Simple speed monitoring script

SPEED=$(internetspeedtest --simple | grep -o '[0-9.]*' | tail -n1)
if (( $(echo "$SPEED < 50" | bc -l) )); then
    echo "WARNING: Upload speed is only ${SPEED} Mbps"
    # Send notification or restart router
fi
```

### Python Integration
```python
import subprocess
import json

# Get speed test results as JSON
result = subprocess.run(['internetspeedtest', '--json'], 
                       capture_output=True, text=True)
data = json.loads(result.stdout)

print(f"Speed Test Results:")
print(f"  Server: {data['server']['name']}")
print(f"  Ping: {data['ping']:.1f} ms")  
print(f"  Download: {data['download']/1000000:.1f} Mbps")
print(f"  Upload: {data['upload']/1000000:.1f} Mbps")
```

### Monitoring & Automation
```bash
# Cron job for hourly speed tests (add to crontab)
0 * * * * /usr/local/bin/internetspeedtest --csv >> ~/speed_log.csv

# Docker monitoring
docker run --rm internetspeedtest/cli --json | jq '.download/1000000'

# Network interface testing
internetspeedtest --interface wlan0 --simple
internetspeedtest --interface eth0 --simple
```

---

## 🤝 Contributing

We welcome contributions from the community! Whether you're fixing bugs, adding features, or improving documentation, your help makes this project better.

### 🐛 Bug Reports
- Check [existing issues](https://github.com/internetspeedtest-net/internetspeedtest-cli/issues) first
- Provide detailed reproduction steps
- Include system information (OS, Go version, network setup)
- Attach relevant logs with `--verbose` flag

### ✨ Feature Requests  
- Describe the use case and benefit
- Provide examples of how it would work
- Consider backward compatibility

### 🔧 Development Setup
```bash
# Fork and clone your repository
git clone https://github.com/YOUR_USERNAME/internetspeedtest-cli.git
cd internetspeedtest-cli

# Install dependencies
go mod download

# Make your changes
# ... edit code ...

# Test your changes
go test ./...
./build.sh

# Create a pull request
```

### 📝 Code Guidelines
- Follow standard Go formatting (`go fmt`)
- Add tests for new functionality
- Update documentation as needed
- Maintain backward compatibility when possible

---

## 📄 License & Attribution

This project is released under the **MIT License**. See [LICENSE](LICENSE) for details.

### 🙏 Acknowledgments

This CLI tool is built upon the excellent work of the **LibreSpeed** project:
- **Original LibreSpeed Project**: [https://github.com/librespeed/speedtest](https://github.com/librespeed/speedtest)
- **LibreSpeed CLI**: [https://github.com/librespeed/speedtest-cli](https://github.com/librespeed/speedtest-cli)

We extend our gratitude to the LibreSpeed community and contributors who created the foundation for this tool.

### 🌟 Special Thanks
- **Federico Dossena** and the LibreSpeed team for the original speedtest implementation
- **InternetSpeedTest.net** for hosting and maintaining the global server network
- All contributors who have helped improve this CLI tool

---

## 🌐 Related Projects

- **🌐 Web Interface**: [InternetSpeedTest.net](https://internetspeedtest.net) - Fast, privacy-focused web speed test
- **🐍 Python Package**: [internetspeedtest](https://pypi.org/project/internetspeedtest/) - Python library and CLI
- **📊 API Documentation**: [API Reference](https://internetspeedtest.net/api) - Integrate speed tests into your applications
- **🔗 LibreSpeed**: [Original Project](https://github.com/librespeed/speedtest) - Self-hosted speed test solution

---

<div align="center">

**⚡ Fast • 🔒 Private • 🌍 Global • 💻 Developer-Friendly**

Made with ❤️ by the InternetSpeedTest.net team

[Website](https://internetspeedtest.net) • [API](https://internetspeedtest.net/api) • [Support](https://github.com/internetspeedtest-net/internetspeedtest-cli/issues) • [Donate](https://internetspeedtest.net/donate)

**Powered by [InternetSpeedTest.net](https://internetspeedtest.net)**

</div>
