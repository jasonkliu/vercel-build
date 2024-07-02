# vercel-build

https://vercel.com/guides/how-do-i-use-the-ignored-build-step-field-on-vercel

- If a change is made only to backend/, do not build.
- Otherwise, build (including src/ and root directory)
- `git diff` doesn't return correct error codes, so need to be creative
