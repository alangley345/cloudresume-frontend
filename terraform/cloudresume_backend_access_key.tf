resource "aws_iam_access_key" "cloudresume_backend" {
  user    = aws_iam_user.cloudresume_backend.name
  pgp_key = data.terraform_remote_state.base_state.outputs.access_token_signing
  
  depends_on = [
    aws_iam_user.cloudresume_backend
  ]

}