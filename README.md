# Github Activity Summaries Bot

[![Actions Status](https://github.com/swicg/activity-summary-bot/workflows/Activity%20Summary/badge.svg)](https://github.com/swicg/activity-summary-bot/actions)

This repo e-mails weekly summaries of GitHub repository activity to SWICG W3C mailing list. The weekly summary contains activity on all of the repositories within the SWICG GitHub organisation, as well as activity on the `w3c/activitypub` and `w3c/activitystreams` repositories.

Activity summaries will be e-mailed weekly.

> [!IMPORTANT]
> The server that runs this repository is sponsored by by [Superior-Networks](https://superior-networks.com/) who kindly provide the VPS.

## Requesting inclusion of a repository

Send a pull request editing [repositories.json](https://github.com/swicg/activity-summary-bot/blob/main/repositories.json) to add your repository. The format is `user/repository`.

## Excluding issues & PRs from the digests

To exclude Issues & PRS from the digest emails, label them with the label `skip-digest` and we'll ignore them. Previously this was the `editorial` label.
