lib ObjectBox
  alias Int32T = LibC::Int
  alias Int64T = LibC::LongLong

  alias ObxSchemaId = LibC::Int
  alias ObxUid = LibC::Int
  alias ObxErr = LibC::Int
  alias ObxId = LibC::Int
  alias ObxQbCond = LibC::Int

  type ObxModel = Void*
  type ObxStore = Void*
  type ObxTxn = Void*
  type ObxCursor = Void*
  type ObxQuery = Void*
  type ObxBox = Void*
  type ObxQueryBuilder = Void*

  struct ObxStoreOptions
    directory : LibC::Char*
    max_db_size_in_k_byte : LibC::Int
    file_mode : LibC::UInt
    max_readers : LibC::UInt
  end

  struct ObxBytesArray
    bytes : ObxBytes*
    count : LibC::SizeT
  end

  struct ObxBytes
    data : Void*
    size : LibC::SizeT
  end

  struct ObxIdArray
    ids : ObxId*
    count : LibC::SizeT
  end
end
