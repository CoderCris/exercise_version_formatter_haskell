# Version Formatter

This Haskell module formats a tuple `(key, value)` into a structured string based on the versioning rules:

- If the version is `"*"`, it returns only the key.
- If the version starts with `^`, `<`, or `<=`, it transforms them into `^>=`, `<`, or `<=` respectively, ensuring proper spacing.
- For other cases, the version is appended as-is.

