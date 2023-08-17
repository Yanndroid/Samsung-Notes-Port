.class final Lio/netty/handler/codec/http2/HpackHuffmanEncoder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/http2/HpackHuffmanEncoder$EncodedLengthProcessor;,
        Lio/netty/handler/codec/http2/HpackHuffmanEncoder$EncodeProcessor;
    }
.end annotation


# instance fields
.field private final codes:[I

.field private final encodeProcessor:Lio/netty/handler/codec/http2/HpackHuffmanEncoder$EncodeProcessor;

.field private final encodedLengthProcessor:Lio/netty/handler/codec/http2/HpackHuffmanEncoder$EncodedLengthProcessor;

.field private final lengths:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    sget-object v0, Lio/netty/handler/codec/http2/HpackUtil;->HUFFMAN_CODES:[I

    sget-object v1, Lio/netty/handler/codec/http2/HpackUtil;->HUFFMAN_CODE_LENGTHS:[B

    invoke-direct {p0, v0, v1}, Lio/netty/handler/codec/http2/HpackHuffmanEncoder;-><init>([I[B)V

    return-void
.end method

.method private constructor <init>([I[B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/netty/handler/codec/http2/HpackHuffmanEncoder$EncodedLengthProcessor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/netty/handler/codec/http2/HpackHuffmanEncoder$EncodedLengthProcessor;-><init>(Lio/netty/handler/codec/http2/HpackHuffmanEncoder;Lio/netty/handler/codec/http2/HpackHuffmanEncoder$1;)V

    iput-object v0, p0, Lio/netty/handler/codec/http2/HpackHuffmanEncoder;->encodedLengthProcessor:Lio/netty/handler/codec/http2/HpackHuffmanEncoder$EncodedLengthProcessor;

    new-instance v0, Lio/netty/handler/codec/http2/HpackHuffmanEncoder$EncodeProcessor;

    invoke-direct {v0, p0, v1}, Lio/netty/handler/codec/http2/HpackHuffmanEncoder$EncodeProcessor;-><init>(Lio/netty/handler/codec/http2/HpackHuffmanEncoder;Lio/netty/handler/codec/http2/HpackHuffmanEncoder$1;)V

    iput-object v0, p0, Lio/netty/handler/codec/http2/HpackHuffmanEncoder;->encodeProcessor:Lio/netty/handler/codec/http2/HpackHuffmanEncoder$EncodeProcessor;

    iput-object p1, p0, Lio/netty/handler/codec/http2/HpackHuffmanEncoder;->codes:[I

    iput-object p2, p0, Lio/netty/handler/codec/http2/HpackHuffmanEncoder;->lengths:[B

    return-void
.end method

.method public static synthetic access$200(Lio/netty/handler/codec/http2/HpackHuffmanEncoder;)[B
    .locals 0

    iget-object p0, p0, Lio/netty/handler/codec/http2/HpackHuffmanEncoder;->lengths:[B

    return-object p0
.end method

.method public static synthetic access$300(Lio/netty/handler/codec/http2/HpackHuffmanEncoder;)[I
    .locals 0

    iget-object p0, p0, Lio/netty/handler/codec/http2/HpackHuffmanEncoder;->codes:[I

    return-object p0
.end method

.method private encodeSlowPath(Lio/netty/buffer/ByteBuf;Ljava/lang/CharSequence;)V
    .locals 7

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    move-wide v2, v1

    move v1, v0

    :goto_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/16 v5, 0xff

    if-ge v0, v4, :cond_1

    invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    and-int/2addr v4, v5

    iget-object v5, p0, Lio/netty/handler/codec/http2/HpackHuffmanEncoder;->codes:[I

    aget v5, v5, v4

    iget-object v6, p0, Lio/netty/handler/codec/http2/HpackHuffmanEncoder;->lengths:[B

    aget-byte v4, v6, v4

    shl-long/2addr v2, v4

    int-to-long v5, v5

    or-long/2addr v2, v5

    add-int/2addr v1, v4

    :goto_1
    const/16 v4, 0x8

    if-lt v1, v4, :cond_0

    add-int/lit8 v1, v1, -0x8

    shr-long v4, v2, v1

    long-to-int v4, v4

    invoke-virtual {p1, v4}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-lez v1, :cond_2

    rsub-int/lit8 p2, v1, 0x8

    shl-long/2addr v2, p2

    ushr-int p2, v5, v1

    int-to-long v0, p2

    or-long/2addr v0, v2

    long-to-int p2, v0

    invoke-virtual {p1, p2}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    :cond_2
    return-void
.end method

.method private getEncodedLengthSlowPath(Ljava/lang/CharSequence;)I
    .locals 5

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lio/netty/handler/codec/http2/HpackHuffmanEncoder;->lengths:[B

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    and-int/lit16 v4, v4, 0xff

    aget-byte v3, v3, v4

    int-to-long v3, v3

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x7

    add-long/2addr v0, v2

    const/4 p1, 0x3

    shr-long/2addr v0, p1

    long-to-int p1, v0

    return p1
.end method


# virtual methods
.method public encode(Lio/netty/buffer/ByteBuf;Ljava/lang/CharSequence;)V
    .locals 1

    const-string v0, "out"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    instance-of v0, p2, Lio/netty/util/AsciiString;

    if-eqz v0, :cond_0

    check-cast p2, Lio/netty/util/AsciiString;

    :try_start_0
    iget-object v0, p0, Lio/netty/handler/codec/http2/HpackHuffmanEncoder;->encodeProcessor:Lio/netty/handler/codec/http2/HpackHuffmanEncoder$EncodeProcessor;

    iput-object p1, v0, Lio/netty/handler/codec/http2/HpackHuffmanEncoder$EncodeProcessor;->out:Lio/netty/buffer/ByteBuf;

    invoke-virtual {p2, v0}, Lio/netty/util/AsciiString;->forEachByte(Lio/netty/util/ByteProcessor;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lio/netty/util/internal/PlatformDependent;->throwException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iget-object p1, p0, Lio/netty/handler/codec/http2/HpackHuffmanEncoder;->encodeProcessor:Lio/netty/handler/codec/http2/HpackHuffmanEncoder$EncodeProcessor;

    invoke-virtual {p1}, Lio/netty/handler/codec/http2/HpackHuffmanEncoder$EncodeProcessor;->end()V

    goto :goto_2

    :goto_1
    iget-object p2, p0, Lio/netty/handler/codec/http2/HpackHuffmanEncoder;->encodeProcessor:Lio/netty/handler/codec/http2/HpackHuffmanEncoder$EncodeProcessor;

    invoke-virtual {p2}, Lio/netty/handler/codec/http2/HpackHuffmanEncoder$EncodeProcessor;->end()V

    throw p1

    :cond_0
    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/http2/HpackHuffmanEncoder;->encodeSlowPath(Lio/netty/buffer/ByteBuf;Ljava/lang/CharSequence;)V

    :goto_2
    return-void
.end method

.method public getEncodedLength(Ljava/lang/CharSequence;)I
    .locals 1

    instance-of v0, p1, Lio/netty/util/AsciiString;

    if-eqz v0, :cond_0

    check-cast p1, Lio/netty/util/AsciiString;

    :try_start_0
    iget-object v0, p0, Lio/netty/handler/codec/http2/HpackHuffmanEncoder;->encodedLengthProcessor:Lio/netty/handler/codec/http2/HpackHuffmanEncoder$EncodedLengthProcessor;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/HpackHuffmanEncoder$EncodedLengthProcessor;->reset()V

    iget-object v0, p0, Lio/netty/handler/codec/http2/HpackHuffmanEncoder;->encodedLengthProcessor:Lio/netty/handler/codec/http2/HpackHuffmanEncoder$EncodedLengthProcessor;

    invoke-virtual {p1, v0}, Lio/netty/util/AsciiString;->forEachByte(Lio/netty/util/ByteProcessor;)I

    iget-object p1, p0, Lio/netty/handler/codec/http2/HpackHuffmanEncoder;->encodedLengthProcessor:Lio/netty/handler/codec/http2/HpackHuffmanEncoder$EncodedLengthProcessor;

    invoke-virtual {p1}, Lio/netty/handler/codec/http2/HpackHuffmanEncoder$EncodedLengthProcessor;->length()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-static {p1}, Lio/netty/util/internal/PlatformDependent;->throwException(Ljava/lang/Throwable;)V

    const/4 p1, -0x1

    return p1

    :cond_0
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/HpackHuffmanEncoder;->getEncodedLengthSlowPath(Ljava/lang/CharSequence;)I

    move-result p1

    return p1
.end method
