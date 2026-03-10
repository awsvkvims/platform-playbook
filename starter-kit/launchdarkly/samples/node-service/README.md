# Node Service Sample

## Purpose

This sample will demonstrate a simple service that uses LaunchDarkly feature flags.

## Planned example capabilities

- Initialize the server-side SDK
- Evaluate a release flag
- Evaluate an operational kill switch
- Provide safe fallback behavior
- Support local testing with environment variables

## Notes

Do not store real SDK keys in source control.
Use environment variables for local development and CI.