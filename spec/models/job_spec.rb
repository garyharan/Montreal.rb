require "rails_helper"

RSpec.describe Job, type: :model do
  describe "attribute validations" do
    it "does not validate when 'author' is not defined" do
      job = Job.new(author: nil)
      expect(job).to be_invalid
      expect(job.errors.messages.keys).to include :author
    end
  end

  context "when a job is authored" do
    it "knows about its author" do
      author = create(:user)
      job = create(:job, author: author)
      expect(job.author).to eq author
    end
  end
end
