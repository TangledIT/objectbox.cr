lib ObjectBox
  enum ObDebugFlags
    DebugFlagsLogTransactionsRead = 1
    DebugFlagsLogTransactionsWrite = 2
    DebugFlagsLogQueries = 4
    DebugFlagsLogQueryParameters = 8
    DebugFlagsLogAsyncQueue = 16
  end

  enum ObPropertyFlags
    PropertyFlagsId = 1
    PropertyFlagsNonPrimitiveType = 2
    PropertyFlagsNotNull = 4
    PropertyFlagsIndexed = 8
    PropertyFlagsReserved = 16
    PropertyFlagsUnique = 32
    PropertyFlagsIdMonotonicSequence = 64
    PropertyFlagsIdSelfAssignable = 128
    PropertyFlagsIndexPartialSkipNull = 256
    PropertyFlagsIndexPartialSkipZero = 512
    PropertyFlagsVirtual = 1024
    PropertyFlagsIndexHash = 2048
    PropertyFlagsIndexHash64 = 4096
  end

  enum ObPropertyType
    PropertyTypeBool = 1
    PropertyTypeByte = 2
    PropertyTypeShort = 3
    PropertyTypeChar = 4
    PropertyTypeInt = 5
    PropertyTypeLong = 6
    PropertyTypeFloat = 7
    PropertyTypeDouble = 8
    PropertyTypeString = 9
    PropertyTypeDate = 10
    PropertyTypeRelation = 11
    PropertyTypeByteVector = 23
  end
end
