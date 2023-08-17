.class public Lorg/apache/poi/javax/imageio/stream/IIOByteBuffer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private data:[B

.field private length:I

.field private offset:I


# direct methods
.method public constructor <init>([BII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/javax/imageio/stream/IIOByteBuffer;->data:[B

    iput p2, p0, Lorg/apache/poi/javax/imageio/stream/IIOByteBuffer;->offset:I

    iput p3, p0, Lorg/apache/poi/javax/imageio/stream/IIOByteBuffer;->length:I

    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/stream/IIOByteBuffer;->data:[B

    return-object v0
.end method

.method public getLength()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/javax/imageio/stream/IIOByteBuffer;->length:I

    return v0
.end method

.method public getOffset()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/javax/imageio/stream/IIOByteBuffer;->offset:I

    return v0
.end method

.method public setData([B)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/javax/imageio/stream/IIOByteBuffer;->data:[B

    return-void
.end method

.method public setLength(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/javax/imageio/stream/IIOByteBuffer;->length:I

    return-void
.end method

.method public setOffset(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/javax/imageio/stream/IIOByteBuffer;->offset:I

    return-void
.end method
