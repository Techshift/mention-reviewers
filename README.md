# Mention Reviewers

This action creates a string that mentions all the reviewers for a pull request.

## Inputs

### `event`

**Required** The github Event.

## Outputs

### `mentions`

A string that mentions all the reviewers.

## Example usage

```
name: Get mentioned reviewers 
uses: Techshift/mention-reviewers@0.1.0
with:
  github-event: ${{ github.event }}
```
