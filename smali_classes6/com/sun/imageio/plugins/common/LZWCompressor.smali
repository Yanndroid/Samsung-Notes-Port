.class public Lcom/sun/imageio/plugins/common/LZWCompressor;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public bf:Lcom/sun/imageio/plugins/common/BitFile;

.field public clearCode:I

.field public codeSize:I

.field public endOfInfo:I

.field public limit:I

.field public lzss:Lcom/sun/imageio/plugins/common/LZWStringTable;

.field public numBits:I

.field public prefix:S

.field public tiffFudge:Z


# direct methods
.method public constructor <init>(Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;IZ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sun/imageio/plugins/common/BitFile;

    xor-int/lit8 v1, p3, 0x1

    invoke-direct {v0, p1, v1}, Lcom/sun/imageio/plugins/common/BitFile;-><init>(Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;Z)V

    iput-object v0, p0, Lcom/sun/imageio/plugins/common/LZWCompressor;->bf:Lcom/sun/imageio/plugins/common/BitFile;

    iput p2, p0, Lcom/sun/imageio/plugins/common/LZWCompressor;->codeSize:I

    iput-boolean p3, p0, Lcom/sun/imageio/plugins/common/LZWCompressor;->tiffFudge:Z

    const/4 p1, 0x1

    shl-int v0, p1, p2

    iput v0, p0, Lcom/sun/imageio/plugins/common/LZWCompressor;->clearCode:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/sun/imageio/plugins/common/LZWCompressor;->endOfInfo:I

    add-int/lit8 v0, p2, 0x1

    iput v0, p0, Lcom/sun/imageio/plugins/common/LZWCompressor;->numBits:I

    shl-int v0, p1, v0

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/sun/imageio/plugins/common/LZWCompressor;->limit:I

    if-eqz p3, :cond_0

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/sun/imageio/plugins/common/LZWCompressor;->limit:I

    :cond_0
    const/4 p1, -0x1

    iput-short p1, p0, Lcom/sun/imageio/plugins/common/LZWCompressor;->prefix:S

    new-instance p1, Lcom/sun/imageio/plugins/common/LZWStringTable;

    invoke-direct {p1}, Lcom/sun/imageio/plugins/common/LZWStringTable;-><init>()V

    iput-object p1, p0, Lcom/sun/imageio/plugins/common/LZWCompressor;->lzss:Lcom/sun/imageio/plugins/common/LZWStringTable;

    invoke-virtual {p1, p2}, Lcom/sun/imageio/plugins/common/LZWStringTable;->clearTable(I)V

    iget-object p1, p0, Lcom/sun/imageio/plugins/common/LZWCompressor;->bf:Lcom/sun/imageio/plugins/common/BitFile;

    iget p2, p0, Lcom/sun/imageio/plugins/common/LZWCompressor;->clearCode:I

    iget p3, p0, Lcom/sun/imageio/plugins/common/LZWCompressor;->numBits:I

    invoke-virtual {p1, p2, p3}, Lcom/sun/imageio/plugins/common/BitFile;->writeBits(II)V

    return-void
.end method


# virtual methods
.method public compress([BII)V
    .locals 5

    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_3

    aget-byte v0, p1, p2

    iget-object v1, p0, Lcom/sun/imageio/plugins/common/LZWCompressor;->lzss:Lcom/sun/imageio/plugins/common/LZWStringTable;

    iget-short v2, p0, Lcom/sun/imageio/plugins/common/LZWCompressor;->prefix:S

    invoke-virtual {v1, v2, v0}, Lcom/sun/imageio/plugins/common/LZWStringTable;->findCharString(SB)S

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iput-short v1, p0, Lcom/sun/imageio/plugins/common/LZWCompressor;->prefix:S

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lcom/sun/imageio/plugins/common/LZWCompressor;->bf:Lcom/sun/imageio/plugins/common/BitFile;

    iget-short v2, p0, Lcom/sun/imageio/plugins/common/LZWCompressor;->prefix:S

    iget v3, p0, Lcom/sun/imageio/plugins/common/LZWCompressor;->numBits:I

    invoke-virtual {v1, v2, v3}, Lcom/sun/imageio/plugins/common/BitFile;->writeBits(II)V

    iget-object v1, p0, Lcom/sun/imageio/plugins/common/LZWCompressor;->lzss:Lcom/sun/imageio/plugins/common/LZWStringTable;

    iget-short v2, p0, Lcom/sun/imageio/plugins/common/LZWCompressor;->prefix:S

    invoke-virtual {v1, v2, v0}, Lcom/sun/imageio/plugins/common/LZWStringTable;->addCharString(SB)I

    move-result v1

    iget v2, p0, Lcom/sun/imageio/plugins/common/LZWCompressor;->limit:I

    if-le v1, v2, :cond_2

    iget v1, p0, Lcom/sun/imageio/plugins/common/LZWCompressor;->numBits:I

    const/16 v2, 0xc

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    iget-object v2, p0, Lcom/sun/imageio/plugins/common/LZWCompressor;->bf:Lcom/sun/imageio/plugins/common/BitFile;

    iget v4, p0, Lcom/sun/imageio/plugins/common/LZWCompressor;->clearCode:I

    invoke-virtual {v2, v4, v1}, Lcom/sun/imageio/plugins/common/BitFile;->writeBits(II)V

    iget-object v1, p0, Lcom/sun/imageio/plugins/common/LZWCompressor;->lzss:Lcom/sun/imageio/plugins/common/LZWStringTable;

    iget v2, p0, Lcom/sun/imageio/plugins/common/LZWCompressor;->codeSize:I

    invoke-virtual {v1, v2}, Lcom/sun/imageio/plugins/common/LZWStringTable;->clearTable(I)V

    iget v1, p0, Lcom/sun/imageio/plugins/common/LZWCompressor;->codeSize:I

    add-int/2addr v1, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    :goto_1
    iput v1, p0, Lcom/sun/imageio/plugins/common/LZWCompressor;->numBits:I

    iget v1, p0, Lcom/sun/imageio/plugins/common/LZWCompressor;->numBits:I

    shl-int v1, v3, v1

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/sun/imageio/plugins/common/LZWCompressor;->limit:I

    iget-boolean v2, p0, Lcom/sun/imageio/plugins/common/LZWCompressor;->tiffFudge:Z

    if-eqz v2, :cond_2

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sun/imageio/plugins/common/LZWCompressor;->limit:I

    :cond_2
    int-to-short v0, v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    iput-short v0, p0, Lcom/sun/imageio/plugins/common/LZWCompressor;->prefix:S

    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public dump(Ljava/io/PrintStream;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/imageio/plugins/common/LZWCompressor;->lzss:Lcom/sun/imageio/plugins/common/LZWStringTable;

    invoke-virtual {v0, p1}, Lcom/sun/imageio/plugins/common/LZWStringTable;->dump(Ljava/io/PrintStream;)V

    return-void
.end method

.method public flush()V
    .locals 3

    iget-short v0, p0, Lcom/sun/imageio/plugins/common/LZWCompressor;->prefix:S

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/sun/imageio/plugins/common/LZWCompressor;->bf:Lcom/sun/imageio/plugins/common/BitFile;

    iget v2, p0, Lcom/sun/imageio/plugins/common/LZWCompressor;->numBits:I

    invoke-virtual {v1, v0, v2}, Lcom/sun/imageio/plugins/common/BitFile;->writeBits(II)V

    :cond_0
    iget-object v0, p0, Lcom/sun/imageio/plugins/common/LZWCompressor;->bf:Lcom/sun/imageio/plugins/common/BitFile;

    iget v1, p0, Lcom/sun/imageio/plugins/common/LZWCompressor;->endOfInfo:I

    iget v2, p0, Lcom/sun/imageio/plugins/common/LZWCompressor;->numBits:I

    invoke-virtual {v0, v1, v2}, Lcom/sun/imageio/plugins/common/BitFile;->writeBits(II)V

    iget-object v0, p0, Lcom/sun/imageio/plugins/common/LZWCompressor;->bf:Lcom/sun/imageio/plugins/common/BitFile;

    invoke-virtual {v0}, Lcom/sun/imageio/plugins/common/BitFile;->flush()V

    return-void
.end method
