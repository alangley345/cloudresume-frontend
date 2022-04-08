#used to allow github actions access to s3 bucket.
resource "aws_iam_user_policy" "cloudresume_frontend" {
  name        = "CF-Resume-InvalidationAccess"
  user        = aws_iam_user.cloudresume_frontend.name

  depends_on = [
    aws_iam_user.cloudresume_frontend
  ]

  # Terraform's "jsonencode" function converts a
  # Terraform expression result to valid JSON syntax.
  policy = jsonencode({
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "VisualEditor0",
            "Effect": "Allow",
            "Action": [
                "acm:ListCertificates", 
                "cloudfront:GetDistribution",
                "cloudfront:GetStreamingDistribution",
                "cloudfront:GetDistributionConfig",
                "cloudfront:ListDistributions",
                "cloudfront:ListCloudFrontOriginAccessIdentities",
                "cloudfront:CreateInvalidation",
                "cloudfront:GetInvalidation",
                "cloudfront:ListInvalidations",
            ],
            "Resource": "*"
        },
    ]
})
}