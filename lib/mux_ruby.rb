=begin
#Mux API

#Mux is how developers build online video. This API encompasses both Mux Video and Mux Data functionality to help you build your video-related projects better and faster than ever before.

The version of the OpenAPI document: v1
Contact: devex@mux.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.1

=end

# Common files
require 'mux_ruby/api_client'
require 'mux_ruby/api_error'
require 'mux_ruby/version'
require 'mux_ruby/configuration'

# Models
require 'mux_ruby/models/abridged_video_view'
require 'mux_ruby/models/asset'
require 'mux_ruby/models/asset_errors'
require 'mux_ruby/models/asset_generated_subtitle_settings'
require 'mux_ruby/models/asset_master'
require 'mux_ruby/models/asset_non_standard_input_reasons'
require 'mux_ruby/models/asset_recording_times'
require 'mux_ruby/models/asset_response'
require 'mux_ruby/models/asset_static_renditions'
require 'mux_ruby/models/asset_static_renditions_files'
require 'mux_ruby/models/breakdown_value'
require 'mux_ruby/models/broadcast'
require 'mux_ruby/models/broadcast_layout'
require 'mux_ruby/models/broadcast_resolution'
require 'mux_ruby/models/broadcast_response'
require 'mux_ruby/models/broadcast_status'
require 'mux_ruby/models/create_asset_request'
require 'mux_ruby/models/create_broadcast_request'
require 'mux_ruby/models/create_live_stream_request'
require 'mux_ruby/models/create_playback_id_request'
require 'mux_ruby/models/create_playback_id_response'
require 'mux_ruby/models/create_playback_restriction_request'
require 'mux_ruby/models/create_simulcast_target_request'
require 'mux_ruby/models/create_space_request'
require 'mux_ruby/models/create_track_request'
require 'mux_ruby/models/create_track_response'
require 'mux_ruby/models/create_transcription_vocabulary_request'
require 'mux_ruby/models/create_upload_request'
require 'mux_ruby/models/delivery_report'
require 'mux_ruby/models/delivery_report_delivered_seconds_by_resolution'
require 'mux_ruby/models/dimension_value'
require 'mux_ruby/models/disable_live_stream_response'
require 'mux_ruby/models/enable_live_stream_response'
require 'mux_ruby/models/error'
require 'mux_ruby/models/export_date'
require 'mux_ruby/models/export_file'
require 'mux_ruby/models/filter_value'
require 'mux_ruby/models/get_asset_input_info_response'
require 'mux_ruby/models/get_asset_or_live_stream_id_response'
require 'mux_ruby/models/get_asset_or_live_stream_id_response_data'
require 'mux_ruby/models/get_asset_or_live_stream_id_response_data_object'
require 'mux_ruby/models/get_asset_playback_id_response'
require 'mux_ruby/models/get_live_stream_playback_id_response'
require 'mux_ruby/models/get_metric_timeseries_data_response'
require 'mux_ruby/models/get_monitoring_breakdown_response'
require 'mux_ruby/models/get_monitoring_breakdown_timeseries_response'
require 'mux_ruby/models/get_monitoring_histogram_timeseries_response'
require 'mux_ruby/models/get_monitoring_histogram_timeseries_response_meta'
require 'mux_ruby/models/get_monitoring_timeseries_response'
require 'mux_ruby/models/get_overall_values_response'
require 'mux_ruby/models/get_real_time_breakdown_response'
require 'mux_ruby/models/get_real_time_histogram_timeseries_response'
require 'mux_ruby/models/get_real_time_histogram_timeseries_response_meta'
require 'mux_ruby/models/get_real_time_timeseries_response'
require 'mux_ruby/models/incident'
require 'mux_ruby/models/incident_breakdown'
require 'mux_ruby/models/incident_notification'
require 'mux_ruby/models/incident_notification_rule'
require 'mux_ruby/models/incident_response'
require 'mux_ruby/models/input_file'
require 'mux_ruby/models/input_info'
require 'mux_ruby/models/input_settings'
require 'mux_ruby/models/input_settings_overlay_settings'
require 'mux_ruby/models/input_track'
require 'mux_ruby/models/insight'
require 'mux_ruby/models/list_all_metric_values_response'
require 'mux_ruby/models/list_assets_response'
require 'mux_ruby/models/list_breakdown_values_response'
require 'mux_ruby/models/list_delivery_usage_response'
require 'mux_ruby/models/list_dimension_values_response'
require 'mux_ruby/models/list_dimensions_response'
require 'mux_ruby/models/list_errors_response'
require 'mux_ruby/models/list_exports_response'
require 'mux_ruby/models/list_filter_values_response'
require 'mux_ruby/models/list_filters_response'
require 'mux_ruby/models/list_filters_response_data'
require 'mux_ruby/models/list_incidents_response'
require 'mux_ruby/models/list_insights_response'
require 'mux_ruby/models/list_live_streams_response'
require 'mux_ruby/models/list_monitoring_dimensions_response'
require 'mux_ruby/models/list_monitoring_dimensions_response_data'
require 'mux_ruby/models/list_monitoring_metrics_response'
require 'mux_ruby/models/list_playback_restrictions_response'
require 'mux_ruby/models/list_real_time_dimensions_response'
require 'mux_ruby/models/list_real_time_metrics_response'
require 'mux_ruby/models/list_related_incidents_response'
require 'mux_ruby/models/list_signing_keys_response'
require 'mux_ruby/models/list_spaces_response'
require 'mux_ruby/models/list_transcription_vocabularies_response'
require 'mux_ruby/models/list_uploads_response'
require 'mux_ruby/models/list_video_view_exports_response'
require 'mux_ruby/models/list_video_views_response'
require 'mux_ruby/models/live_stream'
require 'mux_ruby/models/live_stream_embedded_subtitle_settings'
require 'mux_ruby/models/live_stream_generated_subtitle_settings'
require 'mux_ruby/models/live_stream_response'
require 'mux_ruby/models/live_stream_status'
require 'mux_ruby/models/metric'
require 'mux_ruby/models/monitoring_breakdown_timeseries_datapoint'
require 'mux_ruby/models/monitoring_breakdown_timeseries_values'
require 'mux_ruby/models/monitoring_breakdown_value'
require 'mux_ruby/models/monitoring_histogram_timeseries_bucket'
require 'mux_ruby/models/monitoring_histogram_timeseries_bucket_values'
require 'mux_ruby/models/monitoring_histogram_timeseries_datapoint'
require 'mux_ruby/models/monitoring_timeseries_datapoint'
require 'mux_ruby/models/notification_rule'
require 'mux_ruby/models/overall_values'
require 'mux_ruby/models/playback_id'
require 'mux_ruby/models/playback_policy'
require 'mux_ruby/models/playback_restriction'
require 'mux_ruby/models/playback_restriction_response'
require 'mux_ruby/models/real_time_breakdown_value'
require 'mux_ruby/models/real_time_histogram_timeseries_bucket'
require 'mux_ruby/models/real_time_histogram_timeseries_bucket_values'
require 'mux_ruby/models/real_time_histogram_timeseries_datapoint'
require 'mux_ruby/models/real_time_timeseries_datapoint'
require 'mux_ruby/models/referrer_domain_restriction'
require 'mux_ruby/models/score'
require 'mux_ruby/models/signal_live_stream_complete_response'
require 'mux_ruby/models/signing_key'
require 'mux_ruby/models/signing_key_response'
require 'mux_ruby/models/simulcast_target'
require 'mux_ruby/models/simulcast_target_response'
require 'mux_ruby/models/space'
require 'mux_ruby/models/space_response'
require 'mux_ruby/models/space_status'
require 'mux_ruby/models/space_type'
require 'mux_ruby/models/start_space_broadcast_response'
require 'mux_ruby/models/stop_space_broadcast_response'
require 'mux_ruby/models/track'
require 'mux_ruby/models/transcription_vocabulary'
require 'mux_ruby/models/transcription_vocabulary_response'
require 'mux_ruby/models/update_asset_mp4_support_request'
require 'mux_ruby/models/update_asset_master_access_request'
require 'mux_ruby/models/update_asset_request'
require 'mux_ruby/models/update_live_stream_embedded_subtitles_request'
require 'mux_ruby/models/update_live_stream_generated_subtitles_request'
require 'mux_ruby/models/update_live_stream_request'
require 'mux_ruby/models/update_referrer_domain_restriction_request'
require 'mux_ruby/models/update_transcription_vocabulary_request'
require 'mux_ruby/models/upload'
require 'mux_ruby/models/upload_error'
require 'mux_ruby/models/upload_response'
require 'mux_ruby/models/video_view'
require 'mux_ruby/models/video_view_event'
require 'mux_ruby/models/video_view_response'

# APIs
require 'mux_ruby/api/assets_api'
require 'mux_ruby/api/delivery_usage_api'
require 'mux_ruby/api/dimensions_api'
require 'mux_ruby/api/direct_uploads_api'
require 'mux_ruby/api/errors_api'
require 'mux_ruby/api/exports_api'
require 'mux_ruby/api/filters_api'
require 'mux_ruby/api/incidents_api'
require 'mux_ruby/api/live_streams_api'
require 'mux_ruby/api/metrics_api'
require 'mux_ruby/api/monitoring_api'
require 'mux_ruby/api/playback_id_api'
require 'mux_ruby/api/playback_restrictions_api'
require 'mux_ruby/api/real_time_api'
require 'mux_ruby/api/signing_keys_api'
require 'mux_ruby/api/spaces_api'
require 'mux_ruby/api/transcription_vocabularies_api'
require 'mux_ruby/api/url_signing_keys_api'
require 'mux_ruby/api/video_views_api'

module MuxRuby
  class << self
    # Customize default settings for the SDK using block.
    #   MuxRuby.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
