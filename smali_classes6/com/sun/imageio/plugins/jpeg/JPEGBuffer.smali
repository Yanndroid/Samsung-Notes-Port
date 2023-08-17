.class Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final BUFFER_SIZE:I

.field public buf:[B

.field public bufAvail:I

.field public bufPtr:I

.field private debug:Z

.field public iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;


# direct methods
.method public constructor <init>(Lorg/apache/poi/javax/imageio/stream/ImageInputStream;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->debug:Z

    const/16 v1, 0x1000

    iput v1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->BUFFER_SIZE:I

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->buf:[B

    iput v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufAvail:I

    iput v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufPtr:I

    iput-object p1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    return-void
.end method


# virtual methods
.method public getStreamPosition()J
    .locals 4

    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->getStreamPosition()J

    move-result-wide v0

    iget v2, p0, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufAvail:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public loadBuf(I)V
    .locals 6

    iget-boolean v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->debug:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "loadbuf called with "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bufAvail "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufAvail:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    const/16 v0, 0x1000

    iget v1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufAvail:I

    if-eqz p1, :cond_1

    if-lt v1, p1, :cond_2

    return-void

    :cond_1
    if-ne v1, v0, :cond_2

    return-void

    :cond_2
    iget v1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufAvail:I

    const/4 v2, 0x0

    if-lez v1, :cond_3

    if-ge v1, v0, :cond_3

    iget-object v3, p0, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->buf:[B

    iget v4, p0, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufPtr:I

    invoke-static {v3, v4, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    iget-object v1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    iget-object v3, p0, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->buf:[B

    iget v4, p0, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufAvail:I

    array-length v5, v3

    sub-int/2addr v5, v4

    invoke-interface {v1, v3, v4, v5}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->read([BII)I

    move-result v1

    iget-boolean v3, p0, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->debug:Z

    if-eqz v3, :cond_4

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "iis.read returned "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_4
    const/4 v3, -0x1

    if-eq v1, v3, :cond_5

    iget v3, p0, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufAvail:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufAvail:I

    :cond_5
    iput v2, p0, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufPtr:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufAvail:I

    if-lt v0, p1, :cond_6

    return-void

    :cond_6
    new-instance p1, Lorg/apache/poi/javax/imageio/IIOException;

    const-string v0, "Image Format Error"

    invoke-direct {p1, v0}, Lorg/apache/poi/javax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public print(I)V
    .locals 5

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "buffer has "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget v1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufAvail:I

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(I)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, " bytes available"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufAvail:I

    if-ge v0, p1, :cond_0

    move p1, v0

    :cond_0
    iget v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufPtr:I

    :goto_0
    if-lez p1, :cond_1

    iget-object v1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->buf:[B

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 p1, p1, -0x1

    move v0, v2

    goto :goto_0

    :cond_1
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/PrintStream;->println()V

    return-void
.end method

.method public pushBack()V
    .locals 5

    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->getStreamPosition()J

    move-result-wide v1

    iget v3, p0, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufAvail:I

    int-to-long v3, v3

    sub-long/2addr v1, v3

    invoke-interface {v0, v1, v2}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->seek(J)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufAvail:I

    iput v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufPtr:I

    return-void
.end method

.method public readData([B)V
    .locals 5

    array-length v0, p1

    iget v1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufAvail:I

    const/4 v2, 0x0

    if-lt v1, v0, :cond_0

    iget-object v1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->buf:[B

    iget v3, p0, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufPtr:I

    invoke-static {v1, v3, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufAvail:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufAvail:I

    iget p1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufPtr:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufPtr:I

    return-void

    :cond_0
    if-lez v1, :cond_1

    iget-object v3, p0, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->buf:[B

    iget v4, p0, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufPtr:I

    invoke-static {v3, v4, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufAvail:I

    sub-int/2addr v0, v1

    iput v2, p0, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufAvail:I

    iput v2, p0, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufPtr:I

    move v2, v1

    :cond_1
    iget-object v1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v1, p1, v2, v0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->read([BII)I

    move-result p1

    if-ne p1, v0, :cond_2

    return-void

    :cond_2
    new-instance p1, Lorg/apache/poi/javax/imageio/IIOException;

    const-string v0, "Image format Error"

    invoke-direct {p1, v0}, Lorg/apache/poi/javax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public scanForFF(Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;)Z
    .locals 8

    const/4 p1, 0x0

    const/4 v0, 0x1

    move v1, p1

    :goto_0
    move v2, v1

    :cond_0
    if-nez v1, :cond_4

    :cond_1
    iget v3, p0, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufAvail:I

    const/16 v4, 0xff

    if-lez v3, :cond_2

    iget-object v5, p0, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->buf:[B

    iget v6, p0, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufPtr:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufPtr:I

    aget-byte v5, v5, v6

    and-int/2addr v5, v4

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufAvail:I

    if-ne v5, v4, :cond_1

    move v1, v0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->loadBuf(I)V

    if-ne v1, v0, :cond_3

    :goto_1
    iget v3, p0, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufAvail:I

    if-lez v3, :cond_3

    iget-object v5, p0, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->buf:[B

    iget v6, p0, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufPtr:I

    aget-byte v5, v5, v6

    and-int/2addr v5, v4

    if-ne v5, v4, :cond_3

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufPtr:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufAvail:I

    goto :goto_1

    :cond_3
    iget v3, p0, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufAvail:I

    if-nez v3, :cond_0

    iget-object v1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->buf:[B

    const/16 v2, -0x27

    aput-byte v2, v1, p1

    iput v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufAvail:I

    iput p1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufPtr:I

    move v1, v0

    goto :goto_0

    :cond_4
    return v2
.end method

.method public skipData(I)V
    .locals 1

    iget v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufAvail:I

    if-lt v0, p1, :cond_0

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufAvail:I

    iget v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufPtr:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufPtr:I

    return-void

    :cond_0
    if-lez v0, :cond_1

    sub-int/2addr p1, v0

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufAvail:I

    iput v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufPtr:I

    :cond_1
    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v0, p1}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->skipBytes(I)I

    move-result v0

    if-ne v0, p1, :cond_2

    return-void

    :cond_2
    new-instance p1, Lorg/apache/poi/javax/imageio/IIOException;

    const-string v0, "Image format Error"

    invoke-direct {p1, v0}, Lorg/apache/poi/javax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
