# Mention Reviewers

This action creates a string that mentions all the reviewers for a pull request.

## Inputs

### `github-event`

**Required** The github Event.

## Outputs

### `mentions`

A string that mentions all the reviewers.

## Example usage

name: Get mentioned reviewers 
uses: ./.github/actions/mention-reviewers
id: mentioned-reviewers
  with:
    github-event: ${{ github.event }}
