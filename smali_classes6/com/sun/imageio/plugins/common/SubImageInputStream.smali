.class public final Lcom/sun/imageio/plugins/common/SubImageInputStream;
.super Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;
.source "SourceFile"


# instance fields
.field public length:I

.field public startingLength:I

.field public startingPos:J

.field public stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;


# direct methods
.method public constructor <init>(Lorg/apache/poi/javax/imageio/stream/ImageInputStream;I)V
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;-><init>()V

    iput-object p1, p0, Lcom/sun/imageio/plugins/common/SubImageInputStream;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {p1}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->getStreamPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sun/imageio/plugins/common/SubImageInputStream;->startingPos:J

    iput p2, p0, Lcom/sun/imageio/plugins/common/SubImageInputStream;->length:I

    iput p2, p0, Lcom/sun/imageio/plugins/common/SubImageInputStream;->startingLength:I

    return-void
.end method


# virtual methods
.method public finalize()V
    .locals 0

    return-void
.end method

.method public length()J
    .locals 2

    iget v0, p0, Lcom/sun/imageio/plugins/common/SubImageInputStream;->startingLength:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public read()I
    .locals 1

    iget v0, p0, Lcom/sun/imageio/plugins/common/SubImageInputStream;->length:I

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sun/imageio/plugins/common/SubImageInputStream;->length:I

    iget-object v0, p0, Lcom/sun/imageio/plugins/common/SubImageInputStream;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 1

    iget v0, p0, Lcom/sun/imageio/plugins/common/SubImageInputStream;->length:I

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget-object v0, p0, Lcom/sun/imageio/plugins/common/SubImageInputStream;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->read([BII)I

    move-result p1

    iget p2, p0, Lcom/sun/imageio/plugins/common/SubImageInputStream;->length:I

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/sun/imageio/plugins/common/SubImageInputStream;->length:I

    return p1
.end method

.method public seek(J)V
    .locals 3

    iget-object v0, p0, Lcom/sun/imageio/plugins/common/SubImageInputStream;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    iget-wide v1, p0, Lcom/sun/imageio/plugins/common/SubImageInputStream;->startingPos:J

    sub-long v1, p1, v1

    invoke-interface {v0, v1, v2}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->seek(J)V

    iput-wide p1, p0, Lorg/apache/poi/javax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    return-void
.end method
