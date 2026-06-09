class BountyClaimsController < ApplicationController
  def create
    github_issue = GithubIssue.find(params[:github_issue_id])
    github_pr = GithubPr.find(params[:github_pr_id])

    BountyClaimService.process_claim(github_issue, github_pr)

    render json: { message: 'Claim processed successfully' }
  end
end