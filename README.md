# ibrikin/homebrew-tap

Personal Homebrew tap for distributing `pngpaste`.

## How to use
- Add the tap: `brew tap ibrikin/tap`
- Install: `brew install ibrikin/tap/pngpaste`
- Upgrade: `brew upgrade pngpaste`

## How to publish the tap repo
The `homebrew-tap` directory is ready to be its own Git repo:
1. `cd homebrew-tap`
2. `git init && git add . && git commit -m "Add pngpaste formula"`
3. `git remote add origin git@github.com:ibrikin/homebrew-tap.git`
4. `git push -u origin main`

## Releasing a new version of pngpaste
1. Tag and push the new pngpaste release (for example `v1.0.1`).
2. Create the matching source archive and checksum from the pngpaste repo root:
   - `git archive --format=tar.gz --prefix=pngpaste-<version>/ -o /tmp/pngpaste-<version>.tar.gz v<version>`
   - `shasum -a 256 /tmp/pngpaste-<version>.tar.gz`
3. Update `homebrew-tap/Formula/pngpaste.rb` with the new `url`, `sha256`, and (if needed) `head` branch.
4. From `homebrew-tap`, commit and push the formula update to `main`.

## Testing the formula locally
- From the main project root: `brew install --build-from-source ./homebrew-tap/Formula/pngpaste.rb`
- After pushing the tap: `brew reinstall ibrikin/tap/pngpaste`
