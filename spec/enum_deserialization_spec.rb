require 'spec_helper'

# Hand-written (not generated). See muxinc/mux-ruby#99.
describe 'Enum attribute deserialization' do
  it 'accepts the "skipped" track status' do
    track = MuxRuby::Track.build_from_hash(type: 'text', text_source: 'generated_vod', status: 'skipped')

    expect(track.status).to eq('skipped')
    expect(track.valid?).to be(true)
  end

  it 'deserializes an asset response containing an unknown enum value' do
    response = MuxRuby::AssetResponse.build_from_hash(
      data: {
        id: 'asset-id',
        tracks: [
          { type: 'video' },
          { type: 'text', text_source: 'generated_vod', status: 'some_future_status' }
        ]
      }
    )

    track = response.data.tracks.last
    expect(track.status).to eq('some_future_status')
    expect(track.valid?).to be(false)
  end
end
