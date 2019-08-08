require 'test_helper'
require "minitest/reporters"
Minitest::Reporters.use! [Minitest::Reporters::DefaultReporter.new(:color => true)]

class SubmissionTest < ActiveSupport::TestCase
  test "should not save submission without title" do
    submission = Submission.new

    assert_not submission.save, "Submission saved without title"
  end
end
