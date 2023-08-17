.class final Lio/netty/handler/codec/http2/HpackEncoder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;
    }
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z = false

.field public static final HUFF_CODE_THRESHOLD:I = 0x200

.field public static final NOT_FOUND:I = -0x1


# instance fields
.field private final hashMask:B

.field private final head:Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;

.field private final headerFields:[Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;

.field private final hpackHuffmanEncoder:Lio/netty/handler/codec/http2/HpackHuffmanEncoder;

.field private final huffCodeThreshold:I

.field private final ignoreMaxHeaderListSize:Z

.field private maxHeaderListSize:J

.field private maxHeaderTableSize:J

.field private size:J


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/netty/handler/codec/http2/HpackEncoder;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    const/16 v0, 0x10

    const/16 v1, 0x200

    invoke-direct {p0, p1, v0, v1}, Lio/netty/handler/codec/http2/HpackEncoder;-><init>(ZII)V

    return-void
.end method

.method public constructor <init>(ZII)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v6, Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;

    sget-object v3, Lio/netty/util/AsciiString;->EMPTY_STRING:Lio/netty/util/AsciiString;

    const/4 v1, -0x1

    const v4, 0x7fffffff

    const/4 v5, 0x0

    move-object v0, v6

    move-object v2, v3

    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;ILio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;)V

    iput-object v6, p0, Lio/netty/handler/codec/http2/HpackEncoder;->head:Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;

    new-instance v0, Lio/netty/handler/codec/http2/HpackHuffmanEncoder;

    invoke-direct {v0}, Lio/netty/handler/codec/http2/HpackHuffmanEncoder;-><init>()V

    iput-object v0, p0, Lio/netty/handler/codec/http2/HpackEncoder;->hpackHuffmanEncoder:Lio/netty/handler/codec/http2/HpackHuffmanEncoder;

    iput-boolean p1, p0, Lio/netty/handler/codec/http2/HpackEncoder;->ignoreMaxHeaderListSize:Z

    const-wide/16 v0, 0x1000

    iput-wide v0, p0, Lio/netty/handler/codec/http2/HpackEncoder;->maxHeaderTableSize:J

    const-wide v0, 0xffffffffL

    iput-wide v0, p0, Lio/netty/handler/codec/http2/HpackEncoder;->maxHeaderListSize:J

    const/16 p1, 0x80

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 p2, 0x2

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1}, Lio/netty/util/internal/MathUtil;->findNextPositivePowerOfTwo(I)I

    move-result p1

    new-array p1, p1, [Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;

    iput-object p1, p0, Lio/netty/handler/codec/http2/HpackEncoder;->headerFields:[Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    int-to-byte p1, p1

    iput-byte p1, p0, Lio/netty/handler/codec/http2/HpackEncoder;->hashMask:B

    iput-object v6, v6, Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;->after:Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;

    iput-object v6, v6, Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;->before:Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;

    iput p3, p0, Lio/netty/handler/codec/http2/HpackEncoder;->huffCodeThreshold:I

    return-void
.end method

.method private add(Ljava/lang/CharSequence;Ljava/lang/CharSequence;J)V
    .locals 8

    iget-wide v0, p0, Lio/netty/handler/codec/http2/HpackEncoder;->maxHeaderTableSize:J

    cmp-long v0, p3, v0

    if-lez v0, :cond_0

    invoke-direct {p0}, Lio/netty/handler/codec/http2/HpackEncoder;->clear()V

    return-void

    :cond_0
    :goto_0
    iget-wide v0, p0, Lio/netty/handler/codec/http2/HpackEncoder;->maxHeaderTableSize:J

    iget-wide v2, p0, Lio/netty/handler/codec/http2/HpackEncoder;->size:J

    sub-long/2addr v0, v2

    cmp-long v0, v0, p3

    if-gez v0, :cond_1

    invoke-direct {p0}, Lio/netty/handler/codec/http2/HpackEncoder;->remove()Lio/netty/handler/codec/http2/HpackHeaderField;

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lio/netty/util/AsciiString;->hashCode(Ljava/lang/CharSequence;)I

    move-result v2

    invoke-direct {p0, v2}, Lio/netty/handler/codec/http2/HpackEncoder;->index(I)I

    move-result v0

    iget-object v1, p0, Lio/netty/handler/codec/http2/HpackEncoder;->headerFields:[Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;

    aget-object v6, v1, v0

    new-instance v7, Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;

    iget-object v1, p0, Lio/netty/handler/codec/http2/HpackEncoder;->head:Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;

    iget-object v1, v1, Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;->before:Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;

    iget v1, v1, Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;->index:I

    add-int/lit8 v5, v1, -0x1

    move-object v1, v7

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;ILio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;)V

    iget-object p1, p0, Lio/netty/handler/codec/http2/HpackEncoder;->headerFields:[Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;

    aput-object v7, p1, v0

    iget-object p1, p0, Lio/netty/handler/codec/http2/HpackEncoder;->head:Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;

    invoke-static {v7, p1}, Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;->access$000(Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;)V

    iget-wide p1, p0, Lio/netty/handler/codec/http2/HpackEncoder;->size:J

    add-long/2addr p1, p3

    iput-wide p1, p0, Lio/netty/handler/codec/http2/HpackEncoder;->size:J

    return-void
.end method

.method private clear()V
    .locals 2

    iget-object v0, p0, Lio/netty/handler/codec/http2/HpackEncoder;->headerFields:[Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lio/netty/handler/codec/http2/HpackEncoder;->head:Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;

    iput-object v0, v0, Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;->after:Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;

    iput-object v0, v0, Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;->before:Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lio/netty/handler/codec/http2/HpackEncoder;->size:J

    return-void
.end method

.method private encodeHeader(Lio/netty/buffer/ByteBuf;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZJ)V
    .locals 12

    move-object v6, p0

    move-object v1, p1

    move-object v7, p2

    move-object v8, p3

    move-wide/from16 v9, p5

    if-eqz p4, :cond_0

    invoke-direct {p0, p2}, Lio/netty/handler/codec/http2/HpackEncoder;->getNameIndex(Ljava/lang/CharSequence;)I

    move-result v5

    sget-object v4, Lio/netty/handler/codec/http2/HpackUtil$IndexType;->NEVER:Lio/netty/handler/codec/http2/HpackUtil$IndexType;

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/http2/HpackEncoder;->encodeLiteral(Lio/netty/buffer/ByteBuf;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lio/netty/handler/codec/http2/HpackUtil$IndexType;I)V

    return-void

    :cond_0
    iget-wide v2, v6, Lio/netty/handler/codec/http2/HpackEncoder;->maxHeaderTableSize:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    const/4 v4, -0x1

    const/4 v5, 0x7

    const/16 v11, 0x80

    if-nez v0, :cond_2

    invoke-static {p2, p3}, Lio/netty/handler/codec/http2/HpackStaticTable;->getIndexInsensitive(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    if-ne v0, v4, :cond_1

    invoke-static {p2}, Lio/netty/handler/codec/http2/HpackStaticTable;->getIndex(Ljava/lang/CharSequence;)I

    move-result v5

    sget-object v4, Lio/netty/handler/codec/http2/HpackUtil$IndexType;->NONE:Lio/netty/handler/codec/http2/HpackUtil$IndexType;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/http2/HpackEncoder;->encodeLiteral(Lio/netty/buffer/ByteBuf;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lio/netty/handler/codec/http2/HpackUtil$IndexType;I)V

    goto :goto_1

    :cond_1
    invoke-static {p1, v11, v5, v0}, Lio/netty/handler/codec/http2/HpackEncoder;->encodeInteger(Lio/netty/buffer/ByteBuf;III)V

    :goto_1
    return-void

    :cond_2
    cmp-long v0, v9, v2

    if-lez v0, :cond_3

    invoke-direct {p0, p2}, Lio/netty/handler/codec/http2/HpackEncoder;->getNameIndex(Ljava/lang/CharSequence;)I

    move-result v5

    sget-object v4, Lio/netty/handler/codec/http2/HpackUtil$IndexType;->NONE:Lio/netty/handler/codec/http2/HpackUtil$IndexType;

    goto :goto_0

    :cond_3
    invoke-direct {p0, p2, p3}, Lio/netty/handler/codec/http2/HpackEncoder;->getEntryInsensitive(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;

    move-result-object v0

    if-eqz v0, :cond_4

    iget v0, v0, Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;->index:I

    invoke-direct {p0, v0}, Lio/netty/handler/codec/http2/HpackEncoder;->getIndex(I)I

    move-result v0

    sget v2, Lio/netty/handler/codec/http2/HpackStaticTable;->length:I

    add-int/2addr v0, v2

    :goto_2
    invoke-static {p1, v11, v5, v0}, Lio/netty/handler/codec/http2/HpackEncoder;->encodeInteger(Lio/netty/buffer/ByteBuf;III)V

    goto :goto_3

    :cond_4
    invoke-static {p2, p3}, Lio/netty/handler/codec/http2/HpackStaticTable;->getIndexInsensitive(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    if-eq v0, v4, :cond_5

    goto :goto_2

    :cond_5
    invoke-direct {p0, v9, v10}, Lio/netty/handler/codec/http2/HpackEncoder;->ensureCapacity(J)V

    sget-object v4, Lio/netty/handler/codec/http2/HpackUtil$IndexType;->INCREMENTAL:Lio/netty/handler/codec/http2/HpackUtil$IndexType;

    invoke-direct {p0, p2}, Lio/netty/handler/codec/http2/HpackEncoder;->getNameIndex(Ljava/lang/CharSequence;)I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/http2/HpackEncoder;->encodeLiteral(Lio/netty/buffer/ByteBuf;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lio/netty/handler/codec/http2/HpackUtil$IndexType;I)V

    invoke-direct {p0, p2, p3, v9, v10}, Lio/netty/handler/codec/http2/HpackEncoder;->add(Ljava/lang/CharSequence;Ljava/lang/CharSequence;J)V

    :goto_3
    return-void
.end method

.method private encodeHeadersEnforceMaxHeaderListSize(ILio/netty/buffer/ByteBuf;Lio/netty/handler/codec/http2/Http2Headers;Lio/netty/handler/codec/http2/Http2HeadersEncoder$SensitivityDetector;)V
    .locals 6

    invoke-interface {p3}, Lio/netty/handler/codec/http2/Http2Headers;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v4, v3}, Lio/netty/handler/codec/http2/HpackHeaderField;->sizeOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)J

    move-result-wide v3

    add-long/2addr v1, v3

    iget-wide v3, p0, Lio/netty/handler/codec/http2/HpackEncoder;->maxHeaderListSize:J

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    const/4 v5, 0x0

    invoke-static {p1, v3, v4, v5}, Lio/netty/handler/codec/http2/Http2CodecUtil;->headerListSizeExceeded(IJZ)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p2, p3, p4}, Lio/netty/handler/codec/http2/HpackEncoder;->encodeHeadersIgnoreMaxHeaderListSize(Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/http2/Http2Headers;Lio/netty/handler/codec/http2/Http2HeadersEncoder$SensitivityDetector;)V

    return-void
.end method

.method private encodeHeadersIgnoreMaxHeaderListSize(Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/http2/Http2Headers;Lio/netty/handler/codec/http2/Http2HeadersEncoder$SensitivityDetector;)V
    .locals 9

    invoke-interface {p2}, Lio/netty/handler/codec/http2/Http2Headers;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/CharSequence;

    invoke-interface {p3, v4, v5}, Lio/netty/handler/codec/http2/Http2HeadersEncoder$SensitivityDetector;->isSensitive(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    invoke-static {v4, v5}, Lio/netty/handler/codec/http2/HpackHeaderField;->sizeOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)J

    move-result-wide v7

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v8}, Lio/netty/handler/codec/http2/HpackEncoder;->encodeHeader(Lio/netty/buffer/ByteBuf;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZJ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static encodeInteger(Lio/netty/buffer/ByteBuf;III)V
    .locals 2

    int-to-long v0, p3

    invoke-static {p0, p1, p2, v0, v1}, Lio/netty/handler/codec/http2/HpackEncoder;->encodeInteger(Lio/netty/buffer/ByteBuf;IIJ)V

    return-void
.end method

.method private static encodeInteger(Lio/netty/buffer/ByteBuf;IIJ)V
    .locals 3

    const/16 v0, 0xff

    rsub-int/lit8 p2, p2, 0x8

    ushr-int p2, v0, p2

    int-to-long v0, p2

    cmp-long v2, p3, v0

    if-gez v2, :cond_0

    int-to-long p1, p1

    or-long/2addr p1, p3

    long-to-int p1, p1

    :goto_0
    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    goto :goto_2

    :cond_0
    or-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    sub-long/2addr p3, v0

    :goto_1
    const-wide/16 p1, -0x80

    and-long/2addr p1, p3

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_1

    const-wide/16 p1, 0x7f

    and-long/2addr p1, p3

    const-wide/16 v0, 0x80

    or-long/2addr p1, v0

    long-to-int p1, p1

    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    const/4 p1, 0x7

    ushr-long/2addr p3, p1

    goto :goto_1

    :cond_1
    long-to-int p1, p3

    goto :goto_0

    :goto_2
    return-void
.end method

.method private encodeLiteral(Lio/netty/buffer/ByteBuf;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lio/netty/handler/codec/http2/HpackUtil$IndexType;I)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq p5, v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    sget-object v3, Lio/netty/handler/codec/http2/HpackEncoder$1;->$SwitchMap$io$netty$handler$codec$http2$HpackUtil$IndexType:[I

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    aget p4, v3, p4

    if-eq p4, v0, :cond_5

    const/4 v0, 0x2

    const/4 v3, 0x4

    if-eq p4, v0, :cond_3

    const/4 v0, 0x3

    if-ne p4, v0, :cond_2

    const/16 p4, 0x10

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move p5, v1

    :goto_1
    invoke-static {p1, p4, v3, p5}, Lio/netty/handler/codec/http2/HpackEncoder;->encodeInteger(Lio/netty/buffer/ByteBuf;III)V

    goto :goto_4

    :cond_2
    new-instance p1, Ljava/lang/Error;

    const-string p2, "should not reach here"

    invoke-direct {p1, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    move p5, v1

    :goto_2
    invoke-static {p1, v1, v3, p5}, Lio/netty/handler/codec/http2/HpackEncoder;->encodeInteger(Lio/netty/buffer/ByteBuf;III)V

    goto :goto_4

    :cond_5
    const/16 p4, 0x40

    const/4 v0, 0x6

    if-eqz v2, :cond_6

    goto :goto_3

    :cond_6
    move p5, v1

    :goto_3
    invoke-static {p1, p4, v0, p5}, Lio/netty/handler/codec/http2/HpackEncoder;->encodeInteger(Lio/netty/buffer/ByteBuf;III)V

    :goto_4
    if-nez v2, :cond_7

    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/http2/HpackEncoder;->encodeStringLiteral(Lio/netty/buffer/ByteBuf;Ljava/lang/CharSequence;)V

    :cond_7
    invoke-direct {p0, p1, p3}, Lio/netty/handler/codec/http2/HpackEncoder;->encodeStringLiteral(Lio/netty/buffer/ByteBuf;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private encodeStringLiteral(Lio/netty/buffer/ByteBuf;Ljava/lang/CharSequence;)V
    .locals 3

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget v1, p0, Lio/netty/handler/codec/http2/HpackEncoder;->huffCodeThreshold:I

    const/4 v2, 0x7

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lio/netty/handler/codec/http2/HpackEncoder;->hpackHuffmanEncoder:Lio/netty/handler/codec/http2/HpackHuffmanEncoder;

    invoke-virtual {v0, p2}, Lio/netty/handler/codec/http2/HpackHuffmanEncoder;->getEncodedLength(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/16 v1, 0x80

    invoke-static {p1, v1, v2, v0}, Lio/netty/handler/codec/http2/HpackEncoder;->encodeInteger(Lio/netty/buffer/ByteBuf;III)V

    iget-object v0, p0, Lio/netty/handler/codec/http2/HpackEncoder;->hpackHuffmanEncoder:Lio/netty/handler/codec/http2/HpackHuffmanEncoder;

    invoke-virtual {v0, p1, p2}, Lio/netty/handler/codec/http2/HpackHuffmanEncoder;->encode(Lio/netty/buffer/ByteBuf;Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {p1, v0, v2, v1}, Lio/netty/handler/codec/http2/HpackEncoder;->encodeInteger(Lio/netty/buffer/ByteBuf;III)V

    instance-of v0, p2, Lio/netty/util/AsciiString;

    if-eqz v0, :cond_1

    check-cast p2, Lio/netty/util/AsciiString;

    invoke-virtual {p2}, Lio/netty/util/AsciiString;->array()[B

    move-result-object v0

    invoke-virtual {p2}, Lio/netty/util/AsciiString;->arrayOffset()I

    move-result v1

    invoke-virtual {p2}, Lio/netty/util/AsciiString;->length()I

    move-result p2

    invoke-virtual {p1, v0, v1, p2}, Lio/netty/buffer/ByteBuf;->writeBytes([BII)Lio/netty/buffer/ByteBuf;

    goto :goto_0

    :cond_1
    sget-object v0, Lio/netty/util/CharsetUtil;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2, v0}, Lio/netty/buffer/ByteBuf;->writeCharSequence(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)I

    :goto_0
    return-void
.end method

.method private ensureCapacity(J)V
    .locals 4

    :goto_0
    iget-wide v0, p0, Lio/netty/handler/codec/http2/HpackEncoder;->maxHeaderTableSize:J

    iget-wide v2, p0, Lio/netty/handler/codec/http2/HpackEncoder;->size:J

    sub-long/2addr v0, v2

    cmp-long v0, v0, p1

    if-gez v0, :cond_1

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/HpackEncoder;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lio/netty/handler/codec/http2/HpackEncoder;->remove()Lio/netty/handler/codec/http2/HpackHeaderField;

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private getEntryInsensitive(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;
    .locals 4

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/HpackEncoder;->length()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1}, Lio/netty/util/AsciiString;->hashCode(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-direct {p0, v0}, Lio/netty/handler/codec/http2/HpackEncoder;->index(I)I

    move-result v2

    iget-object v3, p0, Lio/netty/handler/codec/http2/HpackEncoder;->headerFields:[Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;

    aget-object v2, v3, v2

    :goto_0
    if-eqz v2, :cond_2

    iget v3, v2, Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;->hash:I

    if-ne v3, v0, :cond_1

    iget-object v3, v2, Lio/netty/handler/codec/http2/HpackHeaderField;->value:Ljava/lang/CharSequence;

    invoke-static {p2, v3}, Lio/netty/handler/codec/http2/HpackUtil;->equalsVariableTime(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v2, Lio/netty/handler/codec/http2/HpackHeaderField;->name:Ljava/lang/CharSequence;

    invoke-static {p1, v3}, Lio/netty/handler/codec/http2/HpackUtil;->equalsVariableTime(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    iget-object v2, v2, Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;->next:Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;

    goto :goto_0

    :cond_2
    :goto_1
    return-object v1
.end method

.method private getIndex(I)I
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/http2/HpackEncoder;->head:Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;

    iget-object v0, v0, Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;->before:Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;

    iget v0, v0, Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;->index:I

    sub-int/2addr p1, v0

    add-int/lit8 v0, p1, 0x1

    :goto_0
    return v0
.end method

.method private getIndex(Ljava/lang/CharSequence;)I
    .locals 4

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/HpackEncoder;->length()I

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1}, Lio/netty/util/AsciiString;->hashCode(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-direct {p0, v0}, Lio/netty/handler/codec/http2/HpackEncoder;->index(I)I

    move-result v2

    iget-object v3, p0, Lio/netty/handler/codec/http2/HpackEncoder;->headerFields:[Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;

    aget-object v2, v3, v2

    :goto_0
    if-eqz v2, :cond_2

    iget v3, v2, Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;->hash:I

    if-ne v3, v0, :cond_1

    iget-object v3, v2, Lio/netty/handler/codec/http2/HpackHeaderField;->name:Ljava/lang/CharSequence;

    invoke-static {p1, v3}, Lio/netty/handler/codec/http2/HpackUtil;->equalsConstantTime(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v3

    if-eqz v3, :cond_1

    iget p1, v2, Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;->index:I

    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/HpackEncoder;->getIndex(I)I

    move-result p1

    return p1

    :cond_1
    iget-object v2, v2, Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;->next:Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method private getNameIndex(Ljava/lang/CharSequence;)I
    .locals 2

    invoke-static {p1}, Lio/netty/handler/codec/http2/HpackStaticTable;->getIndex(Ljava/lang/CharSequence;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/HpackEncoder;->getIndex(Ljava/lang/CharSequence;)I

    move-result v0

    if-ltz v0, :cond_0

    sget p1, Lio/netty/handler/codec/http2/HpackStaticTable;->length:I

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method private index(I)I
    .locals 1

    iget-byte v0, p0, Lio/netty/handler/codec/http2/HpackEncoder;->hashMask:B

    and-int/2addr p1, v0

    return p1
.end method

.method private remove()Lio/netty/handler/codec/http2/HpackHeaderField;
    .locals 6

    iget-wide v0, p0, Lio/netty/handler/codec/http2/HpackEncoder;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/http2/HpackEncoder;->head:Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;

    iget-object v0, v0, Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;->after:Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;

    iget v2, v0, Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;->hash:I

    invoke-direct {p0, v2}, Lio/netty/handler/codec/http2/HpackEncoder;->index(I)I

    move-result v2

    iget-object v3, p0, Lio/netty/handler/codec/http2/HpackEncoder;->headerFields:[Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;

    aget-object v3, v3, v2

    move-object v4, v3

    :goto_0
    if-eqz v3, :cond_3

    iget-object v5, v3, Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;->next:Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;

    if-ne v3, v0, :cond_2

    if-ne v4, v0, :cond_1

    iget-object v1, p0, Lio/netty/handler/codec/http2/HpackEncoder;->headerFields:[Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;

    aput-object v5, v1, v2

    goto :goto_1

    :cond_1
    iput-object v5, v4, Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;->next:Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;

    :goto_1
    invoke-static {v0}, Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;->access$100(Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;)V

    iget-wide v1, p0, Lio/netty/handler/codec/http2/HpackEncoder;->size:J

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/HpackHeaderField;->size()I

    move-result v3

    int-to-long v3, v3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lio/netty/handler/codec/http2/HpackEncoder;->size:J

    return-object v0

    :cond_2
    move-object v4, v3

    move-object v3, v5

    goto :goto_0

    :cond_3
    return-object v1
.end method


# virtual methods
.method public encodeHeaders(ILio/netty/buffer/ByteBuf;Lio/netty/handler/codec/http2/Http2Headers;Lio/netty/handler/codec/http2/Http2HeadersEncoder$SensitivityDetector;)V
    .locals 1

    iget-boolean v0, p0, Lio/netty/handler/codec/http2/HpackEncoder;->ignoreMaxHeaderListSize:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p2, p3, p4}, Lio/netty/handler/codec/http2/HpackEncoder;->encodeHeadersIgnoreMaxHeaderListSize(Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/http2/Http2Headers;Lio/netty/handler/codec/http2/Http2HeadersEncoder$SensitivityDetector;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lio/netty/handler/codec/http2/HpackEncoder;->encodeHeadersEnforceMaxHeaderListSize(ILio/netty/buffer/ByteBuf;Lio/netty/handler/codec/http2/Http2Headers;Lio/netty/handler/codec/http2/Http2HeadersEncoder$SensitivityDetector;)V

    :goto_0
    return-void
.end method

.method public getHeaderField(I)Lio/netty/handler/codec/http2/HpackHeaderField;
    .locals 2

    iget-object v0, p0, Lio/netty/handler/codec/http2/HpackEncoder;->head:Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;

    :goto_0
    add-int/lit8 v1, p1, -0x1

    if-ltz p1, :cond_0

    iget-object v0, v0, Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;->before:Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;

    move p1, v1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getMaxHeaderListSize()J
    .locals 2

    iget-wide v0, p0, Lio/netty/handler/codec/http2/HpackEncoder;->maxHeaderListSize:J

    return-wide v0
.end method

.method public getMaxHeaderTableSize()J
    .locals 2

    iget-wide v0, p0, Lio/netty/handler/codec/http2/HpackEncoder;->maxHeaderTableSize:J

    return-wide v0
.end method

.method public length()I
    .locals 4

    iget-wide v0, p0, Lio/netty/handler/codec/http2/HpackEncoder;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/http2/HpackEncoder;->head:Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;

    iget-object v1, v0, Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;->after:Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;

    iget v1, v1, Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;->index:I

    iget-object v0, v0, Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;->before:Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;

    iget v0, v0, Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;->index:I

    sub-int/2addr v1, v0

    add-int/lit8 v0, v1, 0x1

    :goto_0
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

    iput-wide p1, p0, Lio/netty/handler/codec/http2/HpackEncoder;->maxHeaderListSize:J

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

.method public setMaxHeaderTableSize(Lio/netty/buffer/ByteBuf;J)V
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    const-wide v3, 0xffffffffL

    if-ltz v2, :cond_1

    cmp-long v2, p2, v3

    if-gtz v2, :cond_1

    iget-wide v2, p0, Lio/netty/handler/codec/http2/HpackEncoder;->maxHeaderTableSize:J

    cmp-long v2, v2, p2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iput-wide p2, p0, Lio/netty/handler/codec/http2/HpackEncoder;->maxHeaderTableSize:J

    invoke-direct {p0, v0, v1}, Lio/netty/handler/codec/http2/HpackEncoder;->ensureCapacity(J)V

    const/16 v0, 0x20

    const/4 v1, 0x5

    invoke-static {p1, v0, v1, p2, p3}, Lio/netty/handler/codec/http2/HpackEncoder;->encodeInteger(Lio/netty/buffer/ByteBuf;IIJ)V

    return-void

    :cond_1
    sget-object p1, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v5

    const/4 v0, 0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v2, v0

    const-string p2, "Header Table Size must be >= %d and <= %d but was %d"

    invoke-static {p1, p2, v2}, Lio/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object p1

    throw p1
.end method

.method public size()J
    .locals 2

    iget-wide v0, p0, Lio/netty/handler/codec/http2/HpackEncoder;->size:J

    return-wide v0
.end method
