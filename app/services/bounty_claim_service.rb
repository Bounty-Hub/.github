class BountyClaimService
  def self.process_claim(github_issue, github_pr)
    # ... existing code ...

    # Check if the PR author has a BountyHub account
    bountyhub_user = User.find_by(github_username: github_pr.user.login)

    if bountyhub_user.present?
      # ... existing code ...

      # Create a new claim if it doesn't exist
      claim = BountyClaim.find_or_create_by(
        bounty: bounty,
        user: bountyhub_user,
        github_pr: github_pr
      )

      # ... existing code ...
    end
  end
end