.class public Lorg/xiph/speex/Bits;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_BUFFER_SIZE:I = 0x400


# instance fields
.field private bitPtr:I

.field private bytePtr:I

.field private bytes:[B

.field public origLen:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public advance(I)V
    .locals 3

    iget v0, p0, Lorg/xiph/speex/Bits;->bytePtr:I

    shr-int/lit8 v1, p1, 0x3

    add-int/2addr v0, v1

    iput v0, p0, Lorg/xiph/speex/Bits;->bytePtr:I

    iget v1, p0, Lorg/xiph/speex/Bits;->bitPtr:I

    const/4 v2, 0x7

    and-int/2addr p1, v2

    add-int/2addr v1, p1

    iput v1, p0, Lorg/xiph/speex/Bits;->bitPtr:I

    if-le v1, v2, :cond_0

    add-int/lit8 v1, v1, -0x8

    iput v1, p0, Lorg/xiph/speex/Bits;->bitPtr:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/xiph/speex/Bits;->bytePtr:I

    :cond_0
    return-void
.end method

.method public getBuffer()[B
    .locals 1

    iget-object v0, p0, Lorg/xiph/speex/Bits;->bytes:[B

    return-object v0
.end method

.method public getBufferSize()I
    .locals 2

    iget v0, p0, Lorg/xiph/speex/Bits;->bytePtr:I

    iget v1, p0, Lorg/xiph/speex/Bits;->bitPtr:I

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public init()V
    .locals 1

    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/xiph/speex/Bits;->bytes:[B

    const/4 v0, 0x0

    iput v0, p0, Lorg/xiph/speex/Bits;->bytePtr:I

    iput v0, p0, Lorg/xiph/speex/Bits;->bitPtr:I

    iput v0, p0, Lorg/xiph/speex/Bits;->origLen:I

    return-void
.end method

.method public pack(II)V
    .locals 7

    :goto_0
    iget v0, p0, Lorg/xiph/speex/Bits;->bytePtr:I

    iget v1, p0, Lorg/xiph/speex/Bits;->bitPtr:I

    add-int/2addr v1, p2

    shr-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/xiph/speex/Bits;->bytes:[B

    array-length v2, v1

    const/4 v3, 0x0

    if-lt v0, v2, :cond_0

    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    array-length v2, v1

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lorg/xiph/speex/Bits;->bytes:[B

    goto :goto_0

    :cond_0
    :goto_1
    if-lez p2, :cond_2

    add-int/lit8 v0, p2, -0x1

    shr-int v0, p1, v0

    and-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/xiph/speex/Bits;->bytes:[B

    iget v2, p0, Lorg/xiph/speex/Bits;->bytePtr:I

    aget-byte v4, v1, v2

    iget v5, p0, Lorg/xiph/speex/Bits;->bitPtr:I

    rsub-int/lit8 v6, v5, 0x7

    shl-int/2addr v0, v6

    or-int/2addr v0, v4

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/xiph/speex/Bits;->bitPtr:I

    const/16 v0, 0x8

    if-ne v5, v0, :cond_1

    iput v3, p0, Lorg/xiph/speex/Bits;->bitPtr:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/xiph/speex/Bits;->bytePtr:I

    :cond_1
    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public peek()I
    .locals 2

    iget-object v0, p0, Lorg/xiph/speex/Bits;->bytes:[B

    iget v1, p0, Lorg/xiph/speex/Bits;->bytePtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iget v1, p0, Lorg/xiph/speex/Bits;->bitPtr:I

    rsub-int/lit8 v1, v1, 0x7

    shr-int/2addr v0, v1

    and-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public read_from([BII)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p3, :cond_0

    iget-object v2, p0, Lorg/xiph/speex/Bits;->bytes:[B

    add-int v3, p2, v1

    aget-byte v3, p1, v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput p3, p0, Lorg/xiph/speex/Bits;->origLen:I

    iput v0, p0, Lorg/xiph/speex/Bits;->bytePtr:I

    iput v0, p0, Lorg/xiph/speex/Bits;->bitPtr:I

    return-void
.end method

.method public remaining()I
    .locals 2

    iget v0, p0, Lorg/xiph/speex/Bits;->origLen:I

    invoke-virtual {p0}, Lorg/xiph/speex/Bits;->getBufferSize()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public setBuffer([B)V
    .locals 0

    iput-object p1, p0, Lorg/xiph/speex/Bits;->bytes:[B

    return-void
.end method

.method public unpack(I)I
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-eqz p1, :cond_1

    shl-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lorg/xiph/speex/Bits;->bytes:[B

    iget v3, p0, Lorg/xiph/speex/Bits;->bytePtr:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    iget v4, p0, Lorg/xiph/speex/Bits;->bitPtr:I

    rsub-int/lit8 v5, v4, 0x7

    shr-int/2addr v2, v5

    and-int/lit8 v2, v2, 0x1

    or-int/2addr v1, v2

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/xiph/speex/Bits;->bitPtr:I

    const/16 v2, 0x8

    if-ne v4, v2, :cond_0

    iput v0, p0, Lorg/xiph/speex/Bits;->bitPtr:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/xiph/speex/Bits;->bytePtr:I

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    return v1
.end method
