@[Link("objectbox")]
lib ObjectBox
  fun obx_version(major : LibC::Int*, minor : LibC::Int*, patch : LibC::Int*)
  fun obx_version_is_at_least(major : LibC::Int, minor : LibC::Int, patch : LibC::Int) : Bool
  fun obx_version_string : LibC::Char*
  fun obx_version_core_string : LibC::Char*
  fun obx_last_error_code : ObxErr
  fun obx_last_error_message : LibC::Char*
  fun obx_last_error_secondary : ObxErr
  fun obx_last_error_clear
  fun obx_model_create : ObxModel
  fun obx_model_free(model : ObxModel) : ObxErr
  fun obx_model_entity(model : ObxModel, name : LibC::Char*, entity_id : ObxSchemaId, entity_uid : ObxUid) : ObxErr
  fun obx_model_property(model : ObxModel, name : LibC::Char*, type : ObPropertyType, property_id : ObxSchemaId, property_uid : ObxUid) : ObxErr
  fun obx_model_property_flags(model : ObxModel, flags : ObPropertyFlags) : ObxErr
  fun obx_model_property_relation(model : ObxModel, target_entity : LibC::Char*, index_id : ObxSchemaId, index_uid : ObxUid) : ObxErr
  fun obx_model_property_index_id(model : ObxModel, index_id : ObxSchemaId, index_uid : ObxUid) : ObxErr
  fun obx_model_last_entity_id(x0 : ObxModel, entity_id : ObxSchemaId, entity_uid : ObxUid)
  fun obx_model_last_index_id(model : ObxModel, index_id : ObxSchemaId, index_uid : ObxUid)
  fun obx_model_last_relation_id(model : ObxModel, relation_id : ObxSchemaId, relation_uid : ObxUid)
  fun obx_model_entity_last_property_id(model : ObxModel, property_id : ObxSchemaId, property_uid : ObxUid) : ObxErr
  fun obx_store_open_bytes(model_bytes : Void*, model_size : LibC::SizeT, options : ObxStoreOptions*) : ObxStore

  fun obx_store_open(model : ObxModel, options : ObxStoreOptions*) : ObxStore
  fun obx_store_entity_id(store : ObxStore, entity_name : LibC::Char*) : ObxSchemaId
  fun obx_store_entity_property_id(store : ObxStore, entity_id : ObxSchemaId, property_name : LibC::Char*) : ObxSchemaId
  fun obx_store_await_async_completion(store : ObxStore) : ObxErr
  fun obx_store_debug_flags(store : ObxStore, flags : ObDebugFlags) : ObxErr
  fun obx_store_close(store : ObxStore) : ObxErr
  fun obx_txn_begin(store : ObxStore) : ObxTxn
  fun obx_txn_begin_read(store : ObxStore) : ObxTxn
  fun obx_txn_close(txn : ObxTxn) : ObxErr
  fun obx_txn_abort(txn : ObxTxn) : ObxErr
  fun obx_txn_commit(txn : ObxTxn) : ObxErr
  fun obx_cursor_create(txn : ObxTxn, entity_id : ObxSchemaId) : ObxCursor

  fun obx_cursor_create2(txn : ObxTxn, entity_name : LibC::Char*) : ObxCursor
  fun obx_cursor_close(cursor : ObxCursor) : ObxErr
  fun obx_cursor_id_for_put(cursor : ObxCursor, id_or_zero : ObxId) : ObxId
  fun obx_cursor_put(cursor : ObxCursor, id : ObxId, data : Void*, size : LibC::SizeT, check_for_previous_value_flag : Bool) : ObxErr
  fun obx_cursor_get(cursor : ObxCursor, id : ObxId, data : Void**, size : LibC::SizeT*) : ObxErr
  fun obx_cursor_get_all(cursor : ObxCursor) : ObxBytesArray*

  fun obx_cursor_first(cursor : ObxCursor, data : Void**, size : LibC::SizeT*) : ObxErr
  fun obx_cursor_next(cursor : ObxCursor, data : Void**, size : LibC::SizeT*) : ObxErr
  fun obx_cursor_remove(cursor : ObxCursor, id : ObxId) : ObxErr
  fun obx_cursor_remove_all(cursor : ObxCursor) : ObxErr
  fun obx_cursor_count(cursor : ObxCursor, count : LibC::Int*) : ObxErr
  fun obx_cursor_count_max(cursor : ObxCursor, max_count : LibC::Int, out_count : LibC::Int*) : ObxErr
  fun obx_cursor_is_empty(cursor : ObxCursor, out_is_empty : Bool*) : ObxErr
  fun obx_cursor_backlink_bytes(cursor : ObxCursor, entity_id : ObxSchemaId, property_id : ObxSchemaId, id : ObxId) : ObxBytesArray*
  fun obx_cursor_backlink_ids(cursor : ObxCursor, entity_id : ObxSchemaId, property_id : ObxSchemaId, id : ObxId) : ObxIdArray*

  fun obx_box_create(store : ObxStore, entity_id : ObxSchemaId) : ObxBox

  fun obx_box_close(box : ObxBox) : ObxErr
  fun obx_box_id_for_put(box : ObxBox, id_or_zero : ObxId) : ObxId
  fun obx_box_put_async(box : ObxBox, id : ObxId, data : Void*, size : LibC::SizeT, check_for_previous_value_flag : Bool) : ObxErr
  fun obx_qb_create(store : ObxStore, entity_id : ObxSchemaId) : ObxQueryBuilder

  fun obx_qb_close(builder : ObxQueryBuilder) : ObxErr
  fun obx_qb_error_code(builder : ObxQueryBuilder) : ObxErr
  fun obx_qb_error_message(builder : ObxQueryBuilder) : LibC::Char*
  fun obx_qb_null(builder : ObxQueryBuilder, property_id : ObxSchemaId) : ObxQbCond

  fun obx_qb_not_null(builder : ObxQueryBuilder, property_id : ObxSchemaId) : ObxQbCond
  fun obx_qb_string_equal(builder : ObxQueryBuilder, property_id : ObxSchemaId, value : LibC::Char*, case_sensitive : Bool) : ObxQbCond
  fun obx_qb_string_not_equal(builder : ObxQueryBuilder, property_id : ObxSchemaId, value : LibC::Char*, case_sensitive : Bool) : ObxQbCond
  fun obx_qb_string_contains(builder : ObxQueryBuilder, property_id : ObxSchemaId, value : LibC::Char*, case_sensitive : Bool) : ObxQbCond
  fun obx_qb_string_starts_with(builder : ObxQueryBuilder, property_id : ObxSchemaId, value : LibC::Char*, case_sensitive : Bool) : ObxQbCond
  fun obx_qb_string_ends_with(builder : ObxQueryBuilder, property_id : ObxSchemaId, value : LibC::Char*, case_sensitive : Bool) : ObxQbCond
  fun obx_qb_string_greater(builder : ObxQueryBuilder, property_id : ObxSchemaId, value : LibC::Char*, case_sensitive : Bool, with_equal : Bool) : ObxQbCond
  fun obx_qb_string_less(builder : ObxQueryBuilder, property_id : ObxSchemaId, value : LibC::Char*, case_sensitive : Bool, with_equal : Bool) : ObxQbCond
  fun obx_qb_string_in(builder : ObxQueryBuilder, property_id : ObxSchemaId, values : LibC::Char**, count : LibC::Int, case_sensitive : Bool) : ObxQbCond
  fun obx_qb_int_equal(builder : ObxQueryBuilder, property_id : ObxSchemaId, value : Int64T) : ObxQbCond

  fun obx_qb_int_not_equal(builder : ObxQueryBuilder, property_id : ObxSchemaId, value : Int64T) : ObxQbCond
  fun obx_qb_int_greater(builder : ObxQueryBuilder, property_id : ObxSchemaId, value : Int64T) : ObxQbCond
  fun obx_qb_int_less(builder : ObxQueryBuilder, property_id : ObxSchemaId, value : Int64T) : ObxQbCond
  fun obx_qb_int_between(builder : ObxQueryBuilder, property_id : ObxSchemaId, value_a : Int64T, value_b : Int64T) : ObxQbCond
  fun obx_qb_int64_in(builder : ObxQueryBuilder, property_id : ObxSchemaId, values : Int64T*, count : LibC::Int) : ObxQbCond
  fun obx_qb_int64_not_in(builder : ObxQueryBuilder, property_id : ObxSchemaId, values : Int64T*, count : LibC::Int) : ObxQbCond
  fun obx_qb_int32_in(builder : ObxQueryBuilder, property_id : ObxSchemaId, values : Int32T*, count : LibC::Int) : ObxQbCond

  fun obx_qb_int32_not_in(builder : ObxQueryBuilder, property_id : ObxSchemaId, values : Int32T*, count : LibC::Int) : ObxQbCond
  fun obx_qb_double_greater(builder : ObxQueryBuilder, property_id : ObxSchemaId, value : LibC::Double) : ObxQbCond
  fun obx_qb_double_less(builder : ObxQueryBuilder, property_id : ObxSchemaId, value : LibC::Double) : ObxQbCond
  fun obx_qb_double_between(builder : ObxQueryBuilder, property_id : ObxSchemaId, value_a : LibC::Double, value_b : LibC::Double) : ObxQbCond
  fun obx_qb_bytes_equal(builder : ObxQueryBuilder, property_id : ObxSchemaId, value : Void*, size : LibC::SizeT) : ObxQbCond
  fun obx_qb_bytes_greater(builder : ObxQueryBuilder, property_id : ObxSchemaId, value : Void*, size : LibC::SizeT, with_equal : Bool) : ObxQbCond
  fun obx_qb_bytes_less(builder : ObxQueryBuilder, property_id : ObxSchemaId, value : Void*, size : LibC::SizeT, with_equal : Bool) : ObxQbCond
  fun obx_qb_all(builder : ObxQueryBuilder, conditions : ObxQbCond*, count : LibC::Int) : ObxQbCond
  fun obx_qb_any(builder : ObxQueryBuilder, conditions : ObxQbCond*, count : LibC::Int) : ObxQbCond
  fun obx_qb_parameter_alias(builder : ObxQueryBuilder, alias : LibC::Char*) : ObxErr
  fun obx_query_create(builder : ObxQueryBuilder) : ObxQuery

  fun obx_query_close(query : ObxQuery) : ObxErr
  fun obx_query_find(query : ObxQuery, cursor : ObxCursor) : ObxBytesArray*
  fun obx_query_find_ids(query : ObxQuery, cursor : ObxCursor) : ObxIdArray*
  fun obx_query_count(query : ObxQuery, cursor : ObxCursor, count : LibC::Int*) : ObxErr
  fun obx_query_remove(query : ObxQuery, cursor : ObxCursor, count : LibC::Int*) : ObxErr
  fun obx_query_string_param(query : ObxQuery, property_id : ObxSchemaId, value : LibC::Char*) : ObxErr
  fun obx_query_string_params_in(query : ObxQuery, property_id : ObxSchemaId, values : LibC::Char**, count : LibC::Int) : ObxErr
  fun obx_query_int_param(query : ObxQuery, property_id : ObxSchemaId, value : Int64T) : ObxErr
  fun obx_query_int_params(query : ObxQuery, property_id : ObxSchemaId, value_a : Int64T, value_b : Int64T) : ObxErr
  fun obx_query_int64_params_in(query : ObxQuery, property_id : ObxSchemaId, values : Int64T*, count : LibC::Int) : ObxErr
  fun obx_query_int32_params_in(query : ObxQuery, property_id : ObxSchemaId, values : Int32T*, count : LibC::Int) : ObxErr
  fun obx_query_double_param(query : ObxQuery, property_id : ObxSchemaId, value : LibC::Double) : ObxErr
  fun obx_query_double_params(query : ObxQuery, property_id : ObxSchemaId, value_a : LibC::Double, value_b : LibC::Double) : ObxErr
  fun obx_query_bytes_param(query : ObxQuery, property_id : ObxSchemaId, value : Void*, size : LibC::SizeT) : ObxErr
  fun obx_query_string_param_alias(query : ObxQuery, alias : LibC::Char*, value : LibC::Char*) : ObxErr
  fun obx_query_string_params_in_alias(query : ObxQuery, alias : LibC::Char*, values : LibC::Char**, count : LibC::Int) : ObxErr
  fun obx_query_int_param_alias(query : ObxQuery, alias : LibC::Char*, value : Int64T) : ObxErr
  fun obx_query_int_params_alias(query : ObxQuery, alias : LibC::Char*, value_a : Int64T, value_b : Int64T) : ObxErr
  fun obx_query_int64_params_in_alias(query : ObxQuery, alias : LibC::Char*, values : Int64T*, count : LibC::Int) : ObxErr
  fun obx_query_int32_params_in_alias(query : ObxQuery, alias : LibC::Char*, values : Int32T*, count : LibC::Int) : ObxErr
  fun obx_query_double_param_alias(query : ObxQuery, alias : LibC::Char*, value : LibC::Double) : ObxErr
  fun obx_query_double_params_alias(query : ObxQuery, alias : LibC::Char*, value_a : LibC::Double, value_b : LibC::Double) : ObxErr
  fun obx_query_bytes_param_alias(query : ObxQuery, alias : LibC::Char*, value : Void*, size : LibC::SizeT) : ObxErr
  fun obx_query_describe_parameters(query : ObxQuery) : LibC::Char*
  fun obx_query_to_string(query : ObxQuery) : LibC::Char*
  fun obx_bytes_free(bytes : ObxBytes*)
  fun obx_bytes_array_free(bytes_array : ObxBytesArray*)
  fun obx_id_array_free(id_array : ObxIdArray*)
end
