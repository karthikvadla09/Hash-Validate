# Hash Validation Script

This Bash script allows you to validate the integrity of a file by comparing its hash against a provided hash input. You can choose from various hash algorithms such as MD5, SHA-1, SHA-256, and SHA-3. The script helps you determine whether the file's integrity is intact or compromised.

## Usage

1. Clone the repository:
   ```bash
   https://github.com/karthikvadla09/Hash-Validate.git
   cd Hash-Validate.git
   ```
2. Make the script executable:
   ```bash
   chmod +x hash_validate.sh
   ```
3. Run the script:
   ```bash
   ./hash_validate.sh file-to-check.txt
   ```
4. Provide the hash input to check.
5. Choose a hash algorithm: md5, sha1 or sha256.
6. The script calculates the hash of the file and compares it with the provided hash input. It will display whether the file's integrity is valid or compromised.

## Supported Hash Algorithms

* MD5
* SHA-1
* SHA-256

## Requirements

* Bash
* Appropriate hash algorithm utilities installed (e.g., md5sum, sha1sum, sha256sum, openssl)

## License

This project is licensed under the MIT License.
