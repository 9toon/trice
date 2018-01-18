require 'spec_helper'

describe Trice::CurrentTime do
  describe '.get' do
    subject { Trice::CurrentTime.fetch }

    after { Trice.use_time_with_zone = false }

    context 'Trice.use_time_with_zone is true' do
      before { Trice.use_time_with_zone = true }
      it { is_expected.to be_instance_of(ActiveSupport::TimeWithZone) }
    end

    context 'Trice.use_time_with_zone is false' do
      before { Trice.use_time_with_zone = false }
      it { is_expected.to be_instance_of(Time) }
    end
  end
end
