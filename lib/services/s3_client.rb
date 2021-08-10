require 'aws-sdk-s3'

class S3Client
    # Methods for client

    def save_file
        
    end

    private
    
    def client
        @_client ||= Aws::S3::Client.new(
            region: ENV['AWS_REGION'],
            credentials: Aws::Credentials(ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY'])
        )
    end
end