# Mention Reviewers

This action creates a string that mentions all the reviewers for a pull request.

See and example of this action here: `.github/workflows/review-requested.yml`

## Outputs

### `mentions`

A string that mentions all the reviewers.

## Example usage

```
name: Get mentioned reviewers 
uses: Techshift/mention-reviewers@0.2.0
id: mention-reviewers
```
