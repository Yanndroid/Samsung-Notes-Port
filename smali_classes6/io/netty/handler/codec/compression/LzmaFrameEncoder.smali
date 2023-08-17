.class public Lio/netty/handler/codec/compression/LzmaFrameEncoder;
.super Lio/netty/handler/codec/MessageToByteEncoder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/handler/codec/MessageToByteEncoder<",
        "Lio/netty/buffer/ByteBuf;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_LC:I = 0x3

.field private static final DEFAULT_LP:I = 0x0

.field private static final DEFAULT_MATCH_FINDER:I = 0x1

.field private static final DEFAULT_PB:I = 0x2

.field private static final MAX_FAST_BYTES:I = 0x111

.field private static final MEDIUM_DICTIONARY_SIZE:I = 0x10000

.field private static final MEDIUM_FAST_BYTES:I = 0x20

.field private static final MIN_FAST_BYTES:I = 0x5

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;

.field private static warningLogged:Z


# instance fields
.field private final encoder:Llzma/sdk/lzma/Encoder;

.field private final littleEndianDictionarySize:I

.field private final properties:B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/netty/handler/codec/compression/LzmaFrameEncoder;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/compression/LzmaFrameEncoder;->logger:Lio/netty/util/internal/logging/InternalLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/high16 v0, 0x10000

    invoke-direct {p0, v0}, Lio/netty/handler/codec/compression/LzmaFrameEncoder;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2, p1}, Lio/netty/handler/codec/compression/LzmaFrameEncoder;-><init>(IIII)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    const/high16 v0, 0x10000

    invoke-direct {p0, p1, p2, p3, v0}, Lio/netty/handler/codec/compression/LzmaFrameEncoder;-><init>(IIII)V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 7

    const/4 v5, 0x0

    const/16 v6, 0x20

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lio/netty/handler/codec/compression/LzmaFrameEncoder;-><init>(IIIIZI)V

    return-void
.end method

.method public constructor <init>(IIIIZI)V
    .locals 3

    invoke-direct {p0}, Lio/netty/handler/codec/MessageToByteEncoder;-><init>()V

    if-ltz p1, :cond_5

    const/16 v0, 0x8

    if-gt p1, v0, :cond_5

    const-string v0, " (expected: 0-4)"

    if-ltz p2, :cond_4

    const/4 v1, 0x4

    if-gt p2, v1, :cond_4

    if-ltz p3, :cond_3

    if-gt p3, v1, :cond_3

    add-int v0, p1, p2

    const/4 v2, 0x1

    if-le v0, v1, :cond_0

    sget-boolean v0, Lio/netty/handler/codec/compression/LzmaFrameEncoder;->warningLogged:Z

    if-nez v0, :cond_0

    sget-object v0, Lio/netty/handler/codec/compression/LzmaFrameEncoder;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v1, "The latest versions of LZMA libraries (for example, XZ Utils) has an additional requirement: lc + lp <= 4. Data which don\'t follow this requirement cannot be decompressed with this libraries."

    invoke-interface {v0, v1}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;)V

    sput-boolean v2, Lio/netty/handler/codec/compression/LzmaFrameEncoder;->warningLogged:Z

    :cond_0
    if-ltz p4, :cond_2

    const/16 v0, 0x111

    const/4 v1, 0x5

    if-lt p6, v1, :cond_1

    if-gt p6, v0, :cond_1

    new-instance v0, Llzma/sdk/lzma/Encoder;

    invoke-direct {v0}, Llzma/sdk/lzma/Encoder;-><init>()V

    iput-object v0, p0, Lio/netty/handler/codec/compression/LzmaFrameEncoder;->encoder:Llzma/sdk/lzma/Encoder;

    invoke-virtual {v0, p4}, Llzma/sdk/lzma/Encoder;->setDictionarySize(I)Z

    invoke-virtual {v0, p5}, Llzma/sdk/lzma/Encoder;->setEndMarkerMode(Z)V

    invoke-virtual {v0, v2}, Llzma/sdk/lzma/Encoder;->setMatchFinder(I)Z

    invoke-virtual {v0, p6}, Llzma/sdk/lzma/Encoder;->setNumFastBytes(I)Z

    invoke-virtual {v0, p1, p2, p3}, Llzma/sdk/lzma/Encoder;->setLcLpPb(III)Z

    mul-int/2addr p3, v1

    add-int/2addr p3, p2

    mul-int/lit8 p3, p3, 0x9

    add-int/2addr p3, p1

    int-to-byte p1, p3

    iput-byte p1, p0, Lio/netty/handler/codec/compression/LzmaFrameEncoder;->properties:B

    invoke-static {p4}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p1

    iput p1, p0, Lio/netty/handler/codec/compression/LzmaFrameEncoder;->littleEndianDictionarySize:I

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p2, p3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v2

    const/4 p3, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p2, p3

    const-string p3, "numFastBytes: %d (expected: %d-%d)"

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "dictionarySize: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " (expected: 0+)"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "pb: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "lp: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "lc: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " (expected: 0-8)"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private static maxOutputBufferLength(I)I
    .locals 4

    const/16 v0, 0xc8

    if-ge p0, v0, :cond_0

    const-wide/high16 v0, 0x3ff8000000000000L    # 1.5

    goto :goto_0

    :cond_0
    const/16 v0, 0x1f4

    if-ge p0, v0, :cond_1

    const-wide v0, 0x3ff3333333333333L    # 1.2

    goto :goto_0

    :cond_1
    const/16 v0, 0x3e8

    if-ge p0, v0, :cond_2

    const-wide v0, 0x3ff199999999999aL    # 1.1

    goto :goto_0

    :cond_2
    const/16 v0, 0x2710

    if-ge p0, v0, :cond_3

    const-wide v0, 0x3ff0cccccccccccdL    # 1.05

    goto :goto_0

    :cond_3
    const-wide v0, 0x3ff051eb851eb852L    # 1.02

    :goto_0
    int-to-double v2, p0

    mul-double/2addr v2, v0

    double-to-int p0, v2

    add-int/lit8 p0, p0, 0xd

    return p0
.end method


# virtual methods
.method public allocateBuffer(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Z)Lio/netty/buffer/ByteBuf;
    .locals 0

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result p2

    invoke-static {p2}, Lio/netty/handler/codec/compression/LzmaFrameEncoder;->maxOutputBufferLength(I)I

    move-result p2

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object p1

    invoke-interface {p1, p2}, Lio/netty/buffer/ByteBufAllocator;->ioBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic allocateBuffer(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Z)Lio/netty/buffer/ByteBuf;
    .locals 0

    check-cast p2, Lio/netty/buffer/ByteBuf;

    invoke-virtual {p0, p1, p2, p3}, Lio/netty/handler/codec/compression/LzmaFrameEncoder;->allocateBuffer(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Z)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)V
    .locals 10

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result p1

    const/4 v0, 0x0

    :try_start_0
    new-instance v9, Lio/netty/buffer/ByteBufInputStream;

    invoke-direct {v9, p2}, Lio/netty/buffer/ByteBufInputStream;-><init>(Lio/netty/buffer/ByteBuf;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance p2, Lio/netty/buffer/ByteBufOutputStream;

    invoke-direct {p2, p3}, Lio/netty/buffer/ByteBufOutputStream;-><init>(Lio/netty/buffer/ByteBuf;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-byte p3, p0, Lio/netty/handler/codec/compression/LzmaFrameEncoder;->properties:B

    invoke-virtual {p2, p3}, Lio/netty/buffer/ByteBufOutputStream;->writeByte(I)V

    iget p3, p0, Lio/netty/handler/codec/compression/LzmaFrameEncoder;->littleEndianDictionarySize:I

    invoke-virtual {p2, p3}, Lio/netty/buffer/ByteBufOutputStream;->writeInt(I)V

    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lio/netty/buffer/ByteBufOutputStream;->writeLong(J)V

    iget-object v1, p0, Lio/netty/handler/codec/compression/LzmaFrameEncoder;->encoder:Llzma/sdk/lzma/Encoder;

    const-wide/16 v4, -0x1

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    move-object v2, v9

    move-object v3, p2

    invoke-virtual/range {v1 .. v8}, Llzma/sdk/lzma/Encoder;->code(Ljava/io/InputStream;Ljava/io/OutputStream;JJLlzma/sdk/ICodeProgress;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    invoke-virtual {p2}, Lio/netty/buffer/ByteBufOutputStream;->close()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object p2, v0

    :goto_0
    move-object v0, v9

    goto :goto_1

    :catchall_2
    move-exception p1

    move-object p2, v0

    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lio/netty/buffer/ByteBufOutputStream;->close()V

    :cond_1
    throw p1
.end method

.method public bridge synthetic encode(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/buffer/ByteBuf;)V
    .locals 0

    check-cast p2, Lio/netty/buffer/ByteBuf;

    invoke-virtual {p0, p1, p2, p3}, Lio/netty/handler/codec/compression/LzmaFrameEncoder;->encode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)V

    return-void
.end method
