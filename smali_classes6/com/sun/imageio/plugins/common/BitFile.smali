.class public Lcom/sun/imageio/plugins/common/BitFile;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public bitsLeft:I

.field public blocks:Z

.field public buffer:[B

.field public index:I

.field public output:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;


# direct methods
.method public constructor <init>(Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sun/imageio/plugins/common/BitFile;->output:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    iput-boolean p2, p0, Lcom/sun/imageio/plugins/common/BitFile;->blocks:Z

    const/16 p1, 0x100

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/sun/imageio/plugins/common/BitFile;->buffer:[B

    const/4 p1, 0x0

    iput p1, p0, Lcom/sun/imageio/plugins/common/BitFile;->index:I

    const/16 p1, 0x8

    iput p1, p0, Lcom/sun/imageio/plugins/common/BitFile;->bitsLeft:I

    return-void
.end method


# virtual methods
.method public flush()V
    .locals 5

    iget v0, p0, Lcom/sun/imageio/plugins/common/BitFile;->index:I

    iget v1, p0, Lcom/sun/imageio/plugins/common/BitFile;->bitsLeft:I

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    add-int/2addr v0, v1

    if-lez v0, :cond_2

    iget-boolean v1, p0, Lcom/sun/imageio/plugins/common/BitFile;->blocks:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sun/imageio/plugins/common/BitFile;->output:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-interface {v1, v0}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->write(I)V

    :cond_1
    iget-object v1, p0, Lcom/sun/imageio/plugins/common/BitFile;->output:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    iget-object v4, p0, Lcom/sun/imageio/plugins/common/BitFile;->buffer:[B

    invoke-interface {v1, v4, v3, v0}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->write([BII)V

    iget-object v0, p0, Lcom/sun/imageio/plugins/common/BitFile;->buffer:[B

    aput-byte v3, v0, v3

    iput v3, p0, Lcom/sun/imageio/plugins/common/BitFile;->index:I

    iput v2, p0, Lcom/sun/imageio/plugins/common/BitFile;->bitsLeft:I

    :cond_2
    return-void
.end method

.method public writeBits(II)V
    .locals 9

    :cond_0
    iget v0, p0, Lcom/sun/imageio/plugins/common/BitFile;->index:I

    const/16 v1, 0xfe

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    iget v4, p0, Lcom/sun/imageio/plugins/common/BitFile;->bitsLeft:I

    if-eqz v4, :cond_2

    :cond_1
    if-le v0, v1, :cond_4

    :cond_2
    iget-boolean v0, p0, Lcom/sun/imageio/plugins/common/BitFile;->blocks:Z

    const/16 v1, 0xff

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sun/imageio/plugins/common/BitFile;->output:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-interface {v0, v1}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->write(I)V

    :cond_3
    iget-object v0, p0, Lcom/sun/imageio/plugins/common/BitFile;->output:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    iget-object v4, p0, Lcom/sun/imageio/plugins/common/BitFile;->buffer:[B

    invoke-interface {v0, v4, v3, v1}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->write([BII)V

    iget-object v0, p0, Lcom/sun/imageio/plugins/common/BitFile;->buffer:[B

    aput-byte v3, v0, v3

    iput v3, p0, Lcom/sun/imageio/plugins/common/BitFile;->index:I

    iput v2, p0, Lcom/sun/imageio/plugins/common/BitFile;->bitsLeft:I

    :cond_4
    iget v0, p0, Lcom/sun/imageio/plugins/common/BitFile;->bitsLeft:I

    const/4 v1, 0x1

    if-gt p2, v0, :cond_6

    iget-boolean v2, p0, Lcom/sun/imageio/plugins/common/BitFile;->blocks:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sun/imageio/plugins/common/BitFile;->buffer:[B

    iget v4, p0, Lcom/sun/imageio/plugins/common/BitFile;->index:I

    aget-byte v5, v2, v4

    shl-int v6, v1, p2

    sub-int/2addr v6, v1

    and-int v1, p1, v6

    rsub-int/lit8 v6, v0, 0x8

    shl-int/2addr v1, v6

    or-int/2addr v1, v5

    int-to-byte v1, v1

    aput-byte v1, v2, v4

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/sun/imageio/plugins/common/BitFile;->buffer:[B

    iget v4, p0, Lcom/sun/imageio/plugins/common/BitFile;->index:I

    aget-byte v5, v2, v4

    shl-int v6, v1, p2

    sub-int/2addr v6, v1

    and-int v1, p1, v6

    sub-int v6, v0, p2

    shl-int/2addr v1, v6

    or-int/2addr v1, v5

    int-to-byte v1, v1

    aput-byte v1, v2, v4

    :goto_0
    sub-int/2addr v0, p2

    iput v0, p0, Lcom/sun/imageio/plugins/common/BitFile;->bitsLeft:I

    move p2, v3

    goto :goto_2

    :cond_6
    iget-boolean v4, p0, Lcom/sun/imageio/plugins/common/BitFile;->blocks:Z

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/sun/imageio/plugins/common/BitFile;->buffer:[B

    iget v5, p0, Lcom/sun/imageio/plugins/common/BitFile;->index:I

    aget-byte v6, v4, v5

    shl-int v7, v1, v0

    sub-int/2addr v7, v1

    and-int/2addr v7, p1

    rsub-int/lit8 v8, v0, 0x8

    shl-int/2addr v7, v8

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    shr-int/2addr p1, v0

    sub-int/2addr p2, v0

    add-int/2addr v5, v1

    iput v5, p0, Lcom/sun/imageio/plugins/common/BitFile;->index:I

    aput-byte v3, v4, v5

    goto :goto_1

    :cond_7
    sub-int v4, p2, v0

    ushr-int v4, p1, v4

    shl-int v5, v1, v0

    sub-int/2addr v5, v1

    and-int/2addr v4, v5

    iget-object v5, p0, Lcom/sun/imageio/plugins/common/BitFile;->buffer:[B

    iget v6, p0, Lcom/sun/imageio/plugins/common/BitFile;->index:I

    aget-byte v7, v5, v6

    or-int/2addr v4, v7

    int-to-byte v4, v4

    aput-byte v4, v5, v6

    sub-int/2addr p2, v0

    add-int/2addr v6, v1

    iput v6, p0, Lcom/sun/imageio/plugins/common/BitFile;->index:I

    aput-byte v3, v5, v6

    :goto_1
    iput v2, p0, Lcom/sun/imageio/plugins/common/BitFile;->bitsLeft:I

    :goto_2
    if-nez p2, :cond_0

    return-void
.end method
