.class final Lio/netty/handler/codec/http2/HpackDecoder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/http2/HpackDecoder$Http2HeadersSink;,
        Lio/netty/handler/codec/http2/HpackDecoder$Sink;,
        Lio/netty/handler/codec/http2/HpackDecoder$HeaderType;
    }
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z = false

.field private static final DECODE_ILLEGAL_INDEX_VALUE:Lio/netty/handler/codec/http2/Http2Exception;

.field private static final DECODE_ULE_128_DECOMPRESSION_EXCEPTION:Lio/netty/handler/codec/http2/Http2Exception;

.field private static final DECODE_ULE_128_TO_INT_DECOMPRESSION_EXCEPTION:Lio/netty/handler/codec/http2/Http2Exception;

.field private static final DECODE_ULE_128_TO_LONG_DECOMPRESSION_EXCEPTION:Lio/netty/handler/codec/http2/Http2Exception;

.field private static final INDEX_HEADER_ILLEGAL_INDEX_VALUE:Lio/netty/handler/codec/http2/Http2Exception;

.field private static final INVALID_MAX_DYNAMIC_TABLE_SIZE:Lio/netty/handler/codec/http2/Http2Exception;

.field private static final MAX_DYNAMIC_TABLE_SIZE_CHANGE_REQUIRED:Lio/netty/handler/codec/http2/Http2Exception;

.field private static final READ_HEADER_REPRESENTATION:B = 0x0t

.field private static final READ_INDEXED_HEADER:B = 0x2t

.field private static final READ_INDEXED_HEADER_NAME:B = 0x3t

.field private static final READ_LITERAL_HEADER_NAME:B = 0x6t

.field private static final READ_LITERAL_HEADER_NAME_LENGTH:B = 0x5t

.field private static final READ_LITERAL_HEADER_NAME_LENGTH_PREFIX:B = 0x4t

.field private static final READ_LITERAL_HEADER_VALUE:B = 0x9t

.field private static final READ_LITERAL_HEADER_VALUE_LENGTH:B = 0x8t

.field private static final READ_LITERAL_HEADER_VALUE_LENGTH_PREFIX:B = 0x7t

.field private static final READ_MAX_DYNAMIC_TABLE_SIZE:B = 0x1t

.field private static final READ_NAME_ILLEGAL_INDEX_VALUE:Lio/netty/handler/codec/http2/Http2Exception;


# instance fields
.field private encoderMaxDynamicTableSize:J

.field private final hpackDynamicTable:Lio/netty/handler/codec/http2/HpackDynamicTable;

.field private final huffmanDecoder:Lio/netty/handler/codec/http2/HpackHuffmanDecoder;

.field private maxDynamicTableSize:J

.field private maxDynamicTableSizeChangeRequired:Z

.field private maxHeaderListSize:J


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const-class v0, Lio/netty/handler/codec/http2/HpackDecoder;

    sget-object v1, Lio/netty/handler/codec/http2/Http2Error;->COMPRESSION_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    sget-object v2, Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;->HARD_SHUTDOWN:Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;

    const-string v3, "HPACK - decompression failure"

    const-string v4, "decodeULE128(..)"

    invoke-static {v1, v3, v2, v0, v4}, Lio/netty/handler/codec/http2/Http2Exception;->newStatic(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;Ljava/lang/Class;Ljava/lang/String;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v3

    sput-object v3, Lio/netty/handler/codec/http2/HpackDecoder;->DECODE_ULE_128_DECOMPRESSION_EXCEPTION:Lio/netty/handler/codec/http2/Http2Exception;

    const-string v3, "HPACK - long overflow"

    invoke-static {v1, v3, v2, v0, v4}, Lio/netty/handler/codec/http2/Http2Exception;->newStatic(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;Ljava/lang/Class;Ljava/lang/String;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v3

    sput-object v3, Lio/netty/handler/codec/http2/HpackDecoder;->DECODE_ULE_128_TO_LONG_DECOMPRESSION_EXCEPTION:Lio/netty/handler/codec/http2/Http2Exception;

    const-string v3, "HPACK - int overflow"

    const-string v4, "decodeULE128ToInt(..)"

    invoke-static {v1, v3, v2, v0, v4}, Lio/netty/handler/codec/http2/Http2Exception;->newStatic(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;Ljava/lang/Class;Ljava/lang/String;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v3

    sput-object v3, Lio/netty/handler/codec/http2/HpackDecoder;->DECODE_ULE_128_TO_INT_DECOMPRESSION_EXCEPTION:Lio/netty/handler/codec/http2/Http2Exception;

    const-string v3, "HPACK - illegal index value"

    const-string v4, "decode(..)"

    invoke-static {v1, v3, v2, v0, v4}, Lio/netty/handler/codec/http2/Http2Exception;->newStatic(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;Ljava/lang/Class;Ljava/lang/String;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v5

    sput-object v5, Lio/netty/handler/codec/http2/HpackDecoder;->DECODE_ILLEGAL_INDEX_VALUE:Lio/netty/handler/codec/http2/Http2Exception;

    const-string v5, "indexHeader(..)"

    invoke-static {v1, v3, v2, v0, v5}, Lio/netty/handler/codec/http2/Http2Exception;->newStatic(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;Ljava/lang/Class;Ljava/lang/String;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v5

    sput-object v5, Lio/netty/handler/codec/http2/HpackDecoder;->INDEX_HEADER_ILLEGAL_INDEX_VALUE:Lio/netty/handler/codec/http2/Http2Exception;

    const-string v5, "readName(..)"

    invoke-static {v1, v3, v2, v0, v5}, Lio/netty/handler/codec/http2/Http2Exception;->newStatic(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;Ljava/lang/Class;Ljava/lang/String;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v3

    sput-object v3, Lio/netty/handler/codec/http2/HpackDecoder;->READ_NAME_ILLEGAL_INDEX_VALUE:Lio/netty/handler/codec/http2/Http2Exception;

    const-string v3, "HPACK - invalid max dynamic table size"

    const-string v5, "setDynamicTableSize(..)"

    invoke-static {v1, v3, v2, v0, v5}, Lio/netty/handler/codec/http2/Http2Exception;->newStatic(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;Ljava/lang/Class;Ljava/lang/String;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v3

    sput-object v3, Lio/netty/handler/codec/http2/HpackDecoder;->INVALID_MAX_DYNAMIC_TABLE_SIZE:Lio/netty/handler/codec/http2/Http2Exception;

    const-string v3, "HPACK - max dynamic table size change required"

    invoke-static {v1, v3, v2, v0, v4}, Lio/netty/handler/codec/http2/Http2Exception;->newStatic(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;Ljava/lang/Class;Ljava/lang/String;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http2/HpackDecoder;->MAX_DYNAMIC_TABLE_SIZE_CHANGE_REQUIRED:Lio/netty/handler/codec/http2/Http2Exception;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    const/16 v0, 0x1000

    invoke-direct {p0, p1, p2, v0}, Lio/netty/handler/codec/http2/HpackDecoder;-><init>(JI)V

    return-void
.end method

.method public constructor <init>(JI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/netty/handler/codec/http2/HpackHuffmanDecoder;

    invoke-direct {v0}, Lio/netty/handler/codec/http2/HpackHuffmanDecoder;-><init>()V

    iput-object v0, p0, Lio/netty/handler/codec/http2/HpackDecoder;->huffmanDecoder:Lio/netty/handler/codec/http2/HpackHuffmanDecoder;

    const-string v0, "maxHeaderListSize"

    invoke-static {p1, p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositive(JLjava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lio/netty/handler/codec/http2/HpackDecoder;->maxHeaderListSize:J

    int-to-long p1, p3

    iput-wide p1, p0, Lio/netty/handler/codec/http2/HpackDecoder;->encoderMaxDynamicTableSize:J

    iput-wide p1, p0, Lio/netty/handler/codec/http2/HpackDecoder;->maxDynamicTableSize:J

    const/4 p3, 0x0

    iput-boolean p3, p0, Lio/netty/handler/codec/http2/HpackDecoder;->maxDynamicTableSizeChangeRequired:Z

    new-instance p3, Lio/netty/handler/codec/http2/HpackDynamicTable;

    invoke-direct {p3, p1, p2}, Lio/netty/handler/codec/http2/HpackDynamicTable;-><init>(J)V

    iput-object p3, p0, Lio/netty/handler/codec/http2/HpackDecoder;->hpackDynamicTable:Lio/netty/handler/codec/http2/HpackDynamicTable;

    return-void
.end method

.method public static synthetic access$000(ILjava/lang/CharSequence;Lio/netty/handler/codec/http2/HpackDecoder$HeaderType;Lio/netty/handler/codec/http2/Http2Headers;)Lio/netty/handler/codec/http2/HpackDecoder$HeaderType;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lio/netty/handler/codec/http2/HpackDecoder;->validate(ILjava/lang/CharSequence;Lio/netty/handler/codec/http2/HpackDecoder$HeaderType;Lio/netty/handler/codec/http2/Http2Headers;)Lio/netty/handler/codec/http2/HpackDecoder$HeaderType;

    move-result-object p0

    return-object p0
.end method

.method private static contains(Lio/netty/handler/codec/http2/Http2Headers;Ljava/lang/CharSequence;)Z
    .locals 3

    sget-object v0, Lio/netty/handler/codec/http2/EmptyHttp2Headers;->INSTANCE:Lio/netty/handler/codec/http2/EmptyHttp2Headers;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    return v1

    :cond_0
    instance-of v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Headers;

    if-nez v0, :cond_b

    instance-of v0, p0, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->METHOD:Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->value()Lio/netty/util/AsciiString;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/netty/util/AsciiString;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    invoke-interface {p0}, Lio/netty/handler/codec/http2/Http2Headers;->method()Ljava/lang/CharSequence;

    move-result-object p0

    if-eqz p0, :cond_2

    move v1, v2

    :cond_2
    return v1

    :cond_3
    sget-object v0, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->SCHEME:Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->value()Lio/netty/util/AsciiString;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/netty/util/AsciiString;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Lio/netty/handler/codec/http2/Http2Headers;->scheme()Ljava/lang/CharSequence;

    move-result-object p0

    if-eqz p0, :cond_4

    move v1, v2

    :cond_4
    return v1

    :cond_5
    sget-object v0, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->AUTHORITY:Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->value()Lio/netty/util/AsciiString;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/netty/util/AsciiString;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p0}, Lio/netty/handler/codec/http2/Http2Headers;->authority()Ljava/lang/CharSequence;

    move-result-object p0

    if-eqz p0, :cond_6

    move v1, v2

    :cond_6
    return v1

    :cond_7
    sget-object v0, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->PATH:Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->value()Lio/netty/util/AsciiString;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/netty/util/AsciiString;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p0}, Lio/netty/handler/codec/http2/Http2Headers;->path()Ljava/lang/CharSequence;

    move-result-object p0

    if-eqz p0, :cond_8

    move v1, v2

    :cond_8
    return v1

    :cond_9
    sget-object v0, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->STATUS:Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->value()Lio/netty/util/AsciiString;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/netty/util/AsciiString;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-interface {p0}, Lio/netty/handler/codec/http2/Http2Headers;->status()Ljava/lang/CharSequence;

    move-result-object p0

    if-eqz p0, :cond_a

    move v1, v2

    :cond_a
    return v1

    :cond_b
    :goto_0
    invoke-interface {p0, p1}, Lio/netty/handler/codec/Headers;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private decode(Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/http2/HpackDecoder$Sink;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    sget-object v3, Lio/netty/handler/codec/http2/HpackUtil$IndexType;->NONE:Lio/netty/handler/codec/http2/HpackUtil$IndexType;

    const/4 v8, 0x1

    const/4 v9, 0x7

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v4, v10

    move v12, v4

    move v13, v12

    move v14, v13

    move v15, v14

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v16

    if-eqz v16, :cond_12

    const/16 v5, 0x80

    const/16 v6, 0x7f

    packed-switch v12, :pswitch_data_0

    new-instance v1, Ljava/lang/Error;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "should not reach here state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v5

    if-lt v5, v15, :cond_0

    invoke-direct {v0, v1, v15, v4}, Lio/netty/handler/codec/http2/HpackDecoder;->readStringLiteral(Lio/netty/buffer/ByteBuf;IZ)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-direct {v0, v2, v11, v5, v3}, Lio/netty/handler/codec/http2/HpackDecoder;->insertHeader(Lio/netty/handler/codec/http2/HpackDecoder$Sink;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lio/netty/handler/codec/http2/HpackUtil$IndexType;)V

    goto/16 :goto_9

    :cond_0
    invoke-static/range {p1 .. p1}, Lio/netty/handler/codec/http2/HpackDecoder;->notEnoughDataException(Lio/netty/buffer/ByteBuf;)Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1

    :pswitch_1
    invoke-static {v1, v13}, Lio/netty/handler/codec/http2/HpackDecoder;->decodeULE128(Lio/netty/buffer/ByteBuf;I)I

    move-result v15

    :goto_1
    const/16 v12, 0x9

    goto :goto_0

    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Lio/netty/buffer/ByteBuf;->readByte()B

    move-result v4

    and-int/lit16 v12, v4, 0x80

    if-ne v12, v5, :cond_1

    move v5, v8

    goto :goto_2

    :cond_1
    move v5, v10

    :goto_2
    and-int/lit8 v13, v4, 0x7f

    if-eqz v13, :cond_3

    if-eq v13, v6, :cond_2

    move v4, v5

    move v15, v13

    goto :goto_1

    :cond_2
    const/16 v12, 0x8

    goto :goto_5

    :cond_3
    sget-object v4, Lio/netty/util/AsciiString;->EMPTY_STRING:Lio/netty/util/AsciiString;

    invoke-direct {v0, v2, v11, v4, v3}, Lio/netty/handler/codec/http2/HpackDecoder;->insertHeader(Lio/netty/handler/codec/http2/HpackDecoder$Sink;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lio/netty/handler/codec/http2/HpackUtil$IndexType;)V

    move v4, v5

    goto :goto_9

    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v5

    if-lt v5, v14, :cond_4

    invoke-direct {v0, v1, v14, v4}, Lio/netty/handler/codec/http2/HpackDecoder;->readStringLiteral(Lio/netty/buffer/ByteBuf;IZ)Ljava/lang/CharSequence;

    move-result-object v11

    goto :goto_7

    :cond_4
    invoke-static/range {p1 .. p1}, Lio/netty/handler/codec/http2/HpackDecoder;->notEnoughDataException(Lio/netty/buffer/ByteBuf;)Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1

    :pswitch_4
    invoke-static {v1, v13}, Lio/netty/handler/codec/http2/HpackDecoder;->decodeULE128(Lio/netty/buffer/ByteBuf;I)I

    move-result v14

    :goto_3
    const/4 v12, 0x6

    goto :goto_0

    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Lio/netty/buffer/ByteBuf;->readByte()B

    move-result v4

    and-int/lit16 v12, v4, 0x80

    if-ne v12, v5, :cond_5

    move v5, v8

    goto :goto_4

    :cond_5
    move v5, v10

    :goto_4
    and-int/lit8 v13, v4, 0x7f

    if-ne v13, v6, :cond_6

    const/4 v12, 0x5

    :goto_5
    move v4, v5

    goto/16 :goto_0

    :cond_6
    move v4, v5

    move v14, v13

    goto :goto_3

    :pswitch_6
    invoke-static {v1, v13}, Lio/netty/handler/codec/http2/HpackDecoder;->decodeULE128(Lio/netty/buffer/ByteBuf;I)I

    move-result v5

    invoke-direct {v0, v5}, Lio/netty/handler/codec/http2/HpackDecoder;->readName(I)Ljava/lang/CharSequence;

    move-result-object v11

    :goto_6
    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v14

    :goto_7
    move v12, v9

    goto/16 :goto_0

    :pswitch_7
    invoke-static {v1, v13}, Lio/netty/handler/codec/http2/HpackDecoder;->decodeULE128(Lio/netty/buffer/ByteBuf;I)I

    move-result v5

    invoke-direct {v0, v5}, Lio/netty/handler/codec/http2/HpackDecoder;->getIndexedHeader(I)Lio/netty/handler/codec/http2/HpackHeaderField;

    move-result-object v5

    iget-object v6, v5, Lio/netty/handler/codec/http2/HpackHeaderField;->name:Ljava/lang/CharSequence;

    iget-object v5, v5, Lio/netty/handler/codec/http2/HpackHeaderField;->value:Ljava/lang/CharSequence;

    invoke-interface {v2, v6, v5}, Lio/netty/handler/codec/http2/HpackDecoder$Sink;->appendToHeaderList(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_9

    :pswitch_8
    int-to-long v5, v13

    invoke-static {v1, v5, v6}, Lio/netty/handler/codec/http2/HpackDecoder;->decodeULE128(Lio/netty/buffer/ByteBuf;J)J

    move-result-wide v5

    :goto_8
    invoke-direct {v0, v5, v6}, Lio/netty/handler/codec/http2/HpackDecoder;->setDynamicTableSize(J)V

    :goto_9
    move v12, v10

    goto/16 :goto_0

    :pswitch_9
    invoke-virtual/range {p1 .. p1}, Lio/netty/buffer/ByteBuf;->readByte()B

    move-result v5

    iget-boolean v13, v0, Lio/netty/handler/codec/http2/HpackDecoder;->maxDynamicTableSizeChangeRequired:Z

    const/16 v7, 0x20

    if-eqz v13, :cond_8

    and-int/lit16 v13, v5, 0xe0

    if-ne v13, v7, :cond_7

    goto :goto_a

    :cond_7
    sget-object v1, Lio/netty/handler/codec/http2/HpackDecoder;->MAX_DYNAMIC_TABLE_SIZE_CHANGE_REQUIRED:Lio/netty/handler/codec/http2/Http2Exception;

    throw v1

    :cond_8
    :goto_a
    if-gez v5, :cond_b

    and-int/lit8 v13, v5, 0x7f

    if-eqz v13, :cond_a

    if-eq v13, v6, :cond_9

    invoke-direct {v0, v13}, Lio/netty/handler/codec/http2/HpackDecoder;->getIndexedHeader(I)Lio/netty/handler/codec/http2/HpackHeaderField;

    move-result-object v5

    iget-object v6, v5, Lio/netty/handler/codec/http2/HpackHeaderField;->name:Ljava/lang/CharSequence;

    iget-object v5, v5, Lio/netty/handler/codec/http2/HpackHeaderField;->value:Ljava/lang/CharSequence;

    invoke-interface {v2, v6, v5}, Lio/netty/handler/codec/http2/HpackDecoder$Sink;->appendToHeaderList(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_9
    const/4 v12, 0x2

    goto/16 :goto_0

    :cond_a
    sget-object v1, Lio/netty/handler/codec/http2/HpackDecoder;->DECODE_ILLEGAL_INDEX_VALUE:Lio/netty/handler/codec/http2/Http2Exception;

    throw v1

    :cond_b
    and-int/lit8 v6, v5, 0x40

    const/16 v12, 0x40

    if-ne v6, v12, :cond_e

    sget-object v3, Lio/netty/handler/codec/http2/HpackUtil$IndexType;->INCREMENTAL:Lio/netty/handler/codec/http2/HpackUtil$IndexType;

    and-int/lit8 v13, v5, 0x3f

    if-eqz v13, :cond_d

    const/16 v5, 0x3f

    if-eq v13, v5, :cond_c

    :goto_b
    invoke-direct {v0, v13}, Lio/netty/handler/codec/http2/HpackDecoder;->readName(I)Ljava/lang/CharSequence;

    move-result-object v11

    goto :goto_6

    :cond_c
    const/4 v12, 0x3

    goto/16 :goto_0

    :cond_d
    const/4 v12, 0x4

    goto/16 :goto_0

    :cond_e
    and-int/lit8 v6, v5, 0x20

    if-ne v6, v7, :cond_10

    and-int/lit8 v13, v5, 0x1f

    const/16 v5, 0x1f

    if-ne v13, v5, :cond_f

    move v12, v8

    goto/16 :goto_0

    :cond_f
    int-to-long v5, v13

    goto :goto_8

    :cond_10
    and-int/lit8 v3, v5, 0x10

    const/16 v6, 0x10

    if-ne v3, v6, :cond_11

    sget-object v3, Lio/netty/handler/codec/http2/HpackUtil$IndexType;->NEVER:Lio/netty/handler/codec/http2/HpackUtil$IndexType;

    goto :goto_c

    :cond_11
    sget-object v3, Lio/netty/handler/codec/http2/HpackUtil$IndexType;->NONE:Lio/netty/handler/codec/http2/HpackUtil$IndexType;

    :goto_c
    and-int/lit8 v13, v5, 0xf

    if-eqz v13, :cond_d

    const/16 v5, 0xf

    if-eq v13, v5, :cond_c

    goto :goto_b

    :cond_12
    if-nez v12, :cond_13

    return-void

    :cond_13
    sget-object v1, Lio/netty/handler/codec/http2/Http2Error;->COMPRESSION_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    new-array v2, v10, [Ljava/lang/Object;

    const-string v3, "Incomplete header block fragment."

    invoke-static {v1, v3, v2}, Lio/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v1

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static decodeULE128(Lio/netty/buffer/ByteBuf;I)I
    .locals 5

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    int-to-long v1, p1

    invoke-static {p0, v1, v2}, Lio/netty/handler/codec/http2/HpackDecoder;->decodeULE128(Lio/netty/buffer/ByteBuf;J)J

    move-result-wide v1

    const-wide/32 v3, 0x7fffffff

    cmp-long p1, v1, v3

    if-gtz p1, :cond_0

    long-to-int p0, v1

    return p0

    :cond_0
    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    sget-object p0, Lio/netty/handler/codec/http2/HpackDecoder;->DECODE_ULE_128_TO_INT_DECOMPRESSION_EXCEPTION:Lio/netty/handler/codec/http2/Http2Exception;

    throw p0
.end method

.method public static decodeULE128(Lio/netty/buffer/ByteBuf;J)J
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v3

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v4

    :goto_1
    if-ge v4, v3, :cond_4

    invoke-virtual {p0, v4}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v5

    const/16 v6, 0x38

    if-ne v1, v6, :cond_2

    and-int/lit16 v6, v5, 0x80

    if-nez v6, :cond_1

    const/16 v6, 0x7f

    if-ne v5, v6, :cond_2

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    sget-object p0, Lio/netty/handler/codec/http2/HpackDecoder;->DECODE_ULE_128_TO_LONG_DECOMPRESSION_EXCEPTION:Lio/netty/handler/codec/http2/Http2Exception;

    throw p0

    :cond_2
    :goto_2
    and-int/lit16 v6, v5, 0x80

    const-wide/16 v7, 0x7f

    if-nez v6, :cond_3

    add-int/2addr v4, v2

    invoke-virtual {p0, v4}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    int-to-long v2, v5

    and-long/2addr v2, v7

    shl-long v0, v2, v1

    add-long/2addr p1, v0

    return-wide p1

    :cond_3
    int-to-long v5, v5

    and-long/2addr v5, v7

    shl-long/2addr v5, v1

    add-long/2addr p1, v5

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v1, v1, 0x7

    goto :goto_1

    :cond_4
    sget-object p0, Lio/netty/handler/codec/http2/HpackDecoder;->DECODE_ULE_128_DECOMPRESSION_EXCEPTION:Lio/netty/handler/codec/http2/Http2Exception;

    throw p0
.end method

.method private getIndexedHeader(I)Lio/netty/handler/codec/http2/HpackHeaderField;
    .locals 3

    sget v0, Lio/netty/handler/codec/http2/HpackStaticTable;->length:I

    if-gt p1, v0, :cond_0

    invoke-static {p1}, Lio/netty/handler/codec/http2/HpackStaticTable;->getEntry(I)Lio/netty/handler/codec/http2/HpackHeaderField;

    move-result-object p1

    return-object p1

    :cond_0
    sub-int v1, p1, v0

    iget-object v2, p0, Lio/netty/handler/codec/http2/HpackDecoder;->hpackDynamicTable:Lio/netty/handler/codec/http2/HpackDynamicTable;

    invoke-virtual {v2}, Lio/netty/handler/codec/http2/HpackDynamicTable;->length()I

    move-result v2

    if-gt v1, v2, :cond_1

    iget-object v1, p0, Lio/netty/handler/codec/http2/HpackDecoder;->hpackDynamicTable:Lio/netty/handler/codec/http2/HpackDynamicTable;

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, Lio/netty/handler/codec/http2/HpackDynamicTable;->getEntry(I)Lio/netty/handler/codec/http2/HpackHeaderField;

    move-result-object p1

    return-object p1

    :cond_1
    sget-object p1, Lio/netty/handler/codec/http2/HpackDecoder;->INDEX_HEADER_ILLEGAL_INDEX_VALUE:Lio/netty/handler/codec/http2/Http2Exception;

    throw p1
.end method

.method private insertHeader(Lio/netty/handler/codec/http2/HpackDecoder$Sink;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lio/netty/handler/codec/http2/HpackUtil$IndexType;)V
    .locals 0

    invoke-interface {p1, p2, p3}, Lio/netty/handler/codec/http2/HpackDecoder$Sink;->appendToHeaderList(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    sget-object p1, Lio/netty/handler/codec/http2/HpackDecoder$1;->$SwitchMap$io$netty$handler$codec$http2$HpackUtil$IndexType:[I

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    aget p1, p1, p4

    const/4 p4, 0x1

    if-eq p1, p4, :cond_1

    const/4 p4, 0x2

    if-eq p1, p4, :cond_1

    const/4 p4, 0x3

    if-ne p1, p4, :cond_0

    iget-object p1, p0, Lio/netty/handler/codec/http2/HpackDecoder;->hpackDynamicTable:Lio/netty/handler/codec/http2/HpackDynamicTable;

    new-instance p4, Lio/netty/handler/codec/http2/HpackHeaderField;

    invoke-direct {p4, p2, p3}, Lio/netty/handler/codec/http2/HpackHeaderField;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    invoke-virtual {p1, p4}, Lio/netty/handler/codec/http2/HpackDynamicTable;->add(Lio/netty/handler/codec/http2/HpackHeaderField;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/Error;

    const-string p2, "should not reach here"

    invoke-direct {p1, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method private static notEnoughDataException(Lio/netty/buffer/ByteBuf;)Ljava/lang/IllegalArgumentException;
    .locals 3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "decode only works with an entire header block! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private readName(I)Ljava/lang/CharSequence;
    .locals 3

    sget v0, Lio/netty/handler/codec/http2/HpackStaticTable;->length:I

    if-gt p1, v0, :cond_0

    invoke-static {p1}, Lio/netty/handler/codec/http2/HpackStaticTable;->getEntry(I)Lio/netty/handler/codec/http2/HpackHeaderField;

    move-result-object p1

    :goto_0
    iget-object p1, p1, Lio/netty/handler/codec/http2/HpackHeaderField;->name:Ljava/lang/CharSequence;

    return-object p1

    :cond_0
    sub-int v1, p1, v0

    iget-object v2, p0, Lio/netty/handler/codec/http2/HpackDecoder;->hpackDynamicTable:Lio/netty/handler/codec/http2/HpackDynamicTable;

    invoke-virtual {v2}, Lio/netty/handler/codec/http2/HpackDynamicTable;->length()I

    move-result v2

    if-gt v1, v2, :cond_1

    iget-object v1, p0, Lio/netty/handler/codec/http2/HpackDecoder;->hpackDynamicTable:Lio/netty/handler/codec/http2/HpackDynamicTable;

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, Lio/netty/handler/codec/http2/HpackDynamicTable;->getEntry(I)Lio/netty/handler/codec/http2/HpackHeaderField;

    move-result-object p1

    goto :goto_0

    :cond_1
    sget-object p1, Lio/netty/handler/codec/http2/HpackDecoder;->READ_NAME_ILLEGAL_INDEX_VALUE:Lio/netty/handler/codec/http2/Http2Exception;

    throw p1
.end method

.method private readStringLiteral(Lio/netty/buffer/ByteBuf;IZ)Ljava/lang/CharSequence;
    .locals 0

    if-eqz p3, :cond_0

    iget-object p3, p0, Lio/netty/handler/codec/http2/HpackDecoder;->huffmanDecoder:Lio/netty/handler/codec/http2/HpackHuffmanDecoder;

    invoke-virtual {p3, p1, p2}, Lio/netty/handler/codec/http2/HpackHuffmanDecoder;->decode(Lio/netty/buffer/ByteBuf;I)Lio/netty/util/AsciiString;

    move-result-object p1

    return-object p1

    :cond_0
    new-array p2, p2, [B

    invoke-virtual {p1, p2}, Lio/netty/buffer/ByteBuf;->readBytes([B)Lio/netty/buffer/ByteBuf;

    new-instance p1, Lio/netty/util/AsciiString;

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Lio/netty/util/AsciiString;-><init>([BZ)V

    return-object p1
.end method

.method private setDynamicTableSize(J)V
    .locals 2

    iget-wide v0, p0, Lio/netty/handler/codec/http2/HpackDecoder;->maxDynamicTableSize:J

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    iput-wide p1, p0, Lio/netty/handler/codec/http2/HpackDecoder;->encoderMaxDynamicTableSize:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/netty/handler/codec/http2/HpackDecoder;->maxDynamicTableSizeChangeRequired:Z

    iget-object v0, p0, Lio/netty/handler/codec/http2/HpackDecoder;->hpackDynamicTable:Lio/netty/handler/codec/http2/HpackDynamicTable;

    invoke-virtual {v0, p1, p2}, Lio/netty/handler/codec/http2/HpackDynamicTable;->setCapacity(J)V

    return-void

    :cond_0
    sget-object p1, Lio/netty/handler/codec/http2/HpackDecoder;->INVALID_MAX_DYNAMIC_TABLE_SIZE:Lio/netty/handler/codec/http2/Http2Exception;

    throw p1
.end method

.method private static validate(ILjava/lang/CharSequence;Lio/netty/handler/codec/http2/HpackDecoder$HeaderType;Lio/netty/handler/codec/http2/Http2Headers;)Lio/netty/handler/codec/http2/HpackDecoder$HeaderType;
    .locals 3

    invoke-static {p1}, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->hasPseudoHeaderFormat(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lio/netty/handler/codec/http2/HpackDecoder$HeaderType;->REGULAR_HEADER:Lio/netty/handler/codec/http2/HpackDecoder$HeaderType;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p2, v0, :cond_5

    invoke-static {p1}, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->getPseudoHeader(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->isRequestOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lio/netty/handler/codec/http2/HpackDecoder$HeaderType;->REQUEST_PSEUDO_HEADER:Lio/netty/handler/codec/http2/HpackDecoder$HeaderType;

    goto :goto_0

    :cond_0
    sget-object v0, Lio/netty/handler/codec/http2/HpackDecoder$HeaderType;->RESPONSE_PSEUDO_HEADER:Lio/netty/handler/codec/http2/HpackDecoder$HeaderType;

    :goto_0
    if-eqz p2, :cond_2

    if-ne v0, p2, :cond_1

    goto :goto_1

    :cond_1
    sget-object p1, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    new-array p2, v2, [Ljava/lang/Object;

    const-string p3, "Mix of request and response pseudo-headers."

    invoke-static {p0, p1, p3, p2}, Lio/netty/handler/codec/http2/Http2Exception;->streamError(ILio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object p0

    throw p0

    :cond_2
    :goto_1
    invoke-static {p3, p1}, Lio/netty/handler/codec/http2/HpackDecoder;->contains(Lio/netty/handler/codec/http2/Http2Headers;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    return-object v0

    :cond_3
    sget-object p2, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    new-array p3, v1, [Ljava/lang/Object;

    aput-object p1, p3, v2

    const-string p1, "Duplicate HTTP/2 pseudo-header \'%s\' encountered."

    invoke-static {p0, p2, p1, p3}, Lio/netty/handler/codec/http2/Http2Exception;->streamError(ILio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object p0

    throw p0

    :cond_4
    sget-object p2, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    new-array p3, v1, [Ljava/lang/Object;

    aput-object p1, p3, v2

    const-string p1, "Invalid HTTP/2 pseudo-header \'%s\' encountered."

    invoke-static {p0, p2, p1, p3}, Lio/netty/handler/codec/http2/Http2Exception;->streamError(ILio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object p0

    throw p0

    :cond_5
    sget-object p2, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    new-array p3, v1, [Ljava/lang/Object;

    aput-object p1, p3, v2

    const-string p1, "Pseudo-header field \'%s\' found after regular header."

    invoke-static {p0, p2, p1, p3}, Lio/netty/handler/codec/http2/Http2Exception;->streamError(ILio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object p0

    throw p0

    :cond_6
    sget-object p0, Lio/netty/handler/codec/http2/HpackDecoder$HeaderType;->REGULAR_HEADER:Lio/netty/handler/codec/http2/HpackDecoder$HeaderType;

    return-object p0
.end method


# virtual methods
.method public decode(ILio/netty/buffer/ByteBuf;Lio/netty/handler/codec/http2/Http2Headers;Z)V
    .locals 7

    new-instance v6, Lio/netty/handler/codec/http2/HpackDecoder$Http2HeadersSink;

    iget-wide v3, p0, Lio/netty/handler/codec/http2/HpackDecoder;->maxHeaderListSize:J

    move-object v0, v6

    move v1, p1

    move-object v2, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/http2/HpackDecoder$Http2HeadersSink;-><init>(ILio/netty/handler/codec/http2/Http2Headers;JZ)V

    invoke-direct {p0, p2, v6}, Lio/netty/handler/codec/http2/HpackDecoder;->decode(Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/http2/HpackDecoder$Sink;)V

    invoke-virtual {v6}, Lio/netty/handler/codec/http2/HpackDecoder$Http2HeadersSink;->finish()V

    return-void
.end method

.method public getHeaderField(I)Lio/netty/handler/codec/http2/HpackHeaderField;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http2/HpackDecoder;->hpackDynamicTable:Lio/netty/handler/codec/http2/HpackDynamicTable;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lio/netty/handler/codec/http2/HpackDynamicTable;->getEntry(I)Lio/netty/handler/codec/http2/HpackHeaderField;

    move-result-object p1

    return-object p1
.end method

.method public getMaxHeaderListSize()J
    .locals 2

    iget-wide v0, p0, Lio/netty/handler/codec/http2/HpackDecoder;->maxHeaderListSize:J

    return-wide v0
.end method

.method public getMaxHeaderTableSize()J
    .locals 2

    iget-object v0, p0, Lio/netty/handler/codec/http2/HpackDecoder;->hpackDynamicTable:Lio/netty/handler/codec/http2/HpackDynamicTable;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/HpackDynamicTable;->capacity()J

    move-result-wide v0

    return-wide v0
.end method

.method public length()I
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http2/HpackDecoder;->hpackDynamicTable:Lio/netty/handler/codec/http2/HpackDynamicTable;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/HpackDynamicTable;->length()I

    move-result v0

    return v0
.end method

.method public setMaxHeaderListSize(J)V
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    const-wide v3, 0xffffffffL

    if-ltz v2, :cond_0

    cmp-long v2, p1, v3

    if-gtz v2, :cond_0

    iput-wide p1, p0, Lio/netty/handler/codec/http2/HpackDecoder;->maxHeaderListSize:J

    return-void

    :cond_0
    sget-object v2, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v5, v0

    const-string p1, "Header List Size must be >= %d and <= %d but was %d"

    invoke-static {v2, p1, v5}, Lio/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object p1

    throw p1
.end method

.method public setMaxHeaderListSize(JJ)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http2/HpackDecoder;->setMaxHeaderListSize(J)V

    return-void
.end method

.method public setMaxHeaderTableSize(J)V
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    const-wide v3, 0xffffffffL

    const/4 v5, 0x1

    if-ltz v2, :cond_1

    cmp-long v2, p1, v3

    if-gtz v2, :cond_1

    iput-wide p1, p0, Lio/netty/handler/codec/http2/HpackDecoder;->maxDynamicTableSize:J

    iget-wide v0, p0, Lio/netty/handler/codec/http2/HpackDecoder;->encoderMaxDynamicTableSize:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    iput-boolean v5, p0, Lio/netty/handler/codec/http2/HpackDecoder;->maxDynamicTableSizeChangeRequired:Z

    iget-object v0, p0, Lio/netty/handler/codec/http2/HpackDecoder;->hpackDynamicTable:Lio/netty/handler/codec/http2/HpackDynamicTable;

    invoke-virtual {v0, p1, p2}, Lio/netty/handler/codec/http2/HpackDynamicTable;->setCapacity(J)V

    :cond_0
    return-void

    :cond_1
    sget-object v2, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, v7

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, v5

    const/4 v0, 0x2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v6, v0

    const-string p1, "Header Table Size must be >= %d and <= %d but was %d"

    invoke-static {v2, p1, v6}, Lio/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object p1

    throw p1
.end method

.method public size()J
    .locals 2

    iget-object v0, p0, Lio/netty/handler/codec/http2/HpackDecoder;->hpackDynamicTable:Lio/netty/handler/codec/http2/HpackDynamicTable;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/HpackDynamicTable;->size()J

    move-result-wide v0

    return-wide v0
.end method
