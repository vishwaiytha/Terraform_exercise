resource "aws_s3_bucket" "simpleobjectsbucket"{
     bucket = "simpleobjectsbucket"
    
}

resource "aws_s3_object" "object1" {
    bucket = aws_s3_bucket.simpleobjectsbucket.id
    key = "new_object_key3"
    source = "file/index.html"

}
