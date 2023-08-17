.class public final Lorg/apache/poi/java/awt/image/DataBufferByte;
.super Lorg/apache/poi/java/awt/image/DataBuffer;
.source "SourceFile"


# instance fields
.field public bankdata:[[B

.field public data:[B


# direct methods
.method public constructor <init>(I)V
    .locals 2

    sget-object v0, Lorg/apache/poi/sun/java2d/StateTrackable$State;->STABLE:Lorg/apache/poi/sun/java2d/StateTrackable$State;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lorg/apache/poi/java/awt/image/DataBuffer;-><init>(Lorg/apache/poi/sun/java2d/StateTrackable$State;II)V

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/apache/poi/java/awt/image/DataBufferByte;->data:[B

    const/4 v0, 0x1

    new-array v0, v0, [[B

    iput-object v0, p0, Lorg/apache/poi/java/awt/image/DataBufferByte;->bankdata:[[B

    aput-object p1, v0, v1

    return-void
.end method

.method public constructor <init>(II)V
    .locals 4

    sget-object v0, Lorg/apache/poi/sun/java2d/StateTrackable$State;->STABLE:Lorg/apache/poi/sun/java2d/StateTrackable$State;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/apache/poi/java/awt/image/DataBuffer;-><init>(Lorg/apache/poi/sun/java2d/StateTrackable$State;III)V

    new-array v0, p2, [[B

    iput-object v0, p0, Lorg/apache/poi/java/awt/image/DataBufferByte;->bankdata:[[B

    move v0, v1

    :goto_0
    if-ge v0, p2, :cond_0

    iget-object v2, p0, Lorg/apache/poi/java/awt/image/DataBufferByte;->bankdata:[[B

    new-array v3, p1, [B

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/apache/poi/java/awt/image/DataBufferByte;->bankdata:[[B

    aget-object p1, p1, v1

    iput-object p1, p0, Lorg/apache/poi/java/awt/image/DataBufferByte;->data:[B

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 2

    sget-object v0, Lorg/apache/poi/sun/java2d/StateTrackable$State;->UNTRACKABLE:Lorg/apache/poi/sun/java2d/StateTrackable$State;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p2}, Lorg/apache/poi/java/awt/image/DataBuffer;-><init>(Lorg/apache/poi/sun/java2d/StateTrackable$State;II)V

    iput-object p1, p0, Lorg/apache/poi/java/awt/image/DataBufferByte;->data:[B

    const/4 p2, 0x1

    new-array p2, p2, [[B

    iput-object p2, p0, Lorg/apache/poi/java/awt/image/DataBufferByte;->bankdata:[[B

    aput-object p1, p2, v1

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 6

    sget-object v1, Lorg/apache/poi/sun/java2d/StateTrackable$State;->UNTRACKABLE:Lorg/apache/poi/sun/java2d/StateTrackable$State;

    const/4 v2, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/java/awt/image/DataBuffer;-><init>(Lorg/apache/poi/sun/java2d/StateTrackable$State;IIII)V

    iput-object p1, p0, Lorg/apache/poi/java/awt/image/DataBufferByte;->data:[B

    const/4 p2, 0x1

    new-array p2, p2, [[B

    iput-object p2, p0, Lorg/apache/poi/java/awt/image/DataBufferByte;->bankdata:[[B

    const/4 p3, 0x0

    aput-object p1, p2, p3

    return-void
.end method

.method public constructor <init>([[BI)V
    .locals 3

    sget-object v0, Lorg/apache/poi/sun/java2d/StateTrackable$State;->UNTRACKABLE:Lorg/apache/poi/sun/java2d/StateTrackable$State;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, p2, v1}, Lorg/apache/poi/java/awt/image/DataBuffer;-><init>(Lorg/apache/poi/sun/java2d/StateTrackable$State;III)V

    invoke-virtual {p1}, [[B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[B

    iput-object p1, p0, Lorg/apache/poi/java/awt/image/DataBufferByte;->bankdata:[[B

    aget-object p1, p1, v2

    iput-object p1, p0, Lorg/apache/poi/java/awt/image/DataBufferByte;->data:[B

    return-void
.end method

.method public constructor <init>([[BI[I)V
    .locals 6

    sget-object v1, Lorg/apache/poi/sun/java2d/StateTrackable$State;->UNTRACKABLE:Lorg/apache/poi/sun/java2d/StateTrackable$State;

    array-length v4, p1

    const/4 v2, 0x0

    move-object v0, p0

    move v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/java/awt/image/DataBuffer;-><init>(Lorg/apache/poi/sun/java2d/StateTrackable$State;III[I)V

    invoke-virtual {p1}, [[B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[B

    iput-object p1, p0, Lorg/apache/poi/java/awt/image/DataBufferByte;->bankdata:[[B

    const/4 p2, 0x0

    aget-object p1, p1, p2

    iput-object p1, p0, Lorg/apache/poi/java/awt/image/DataBufferByte;->data:[B

    return-void
.end method


# virtual methods
.method public getBankData()[[B
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/DataBuffer;->theTrackable:Lorg/apache/poi/sun/java2d/StateTrackableDelegate;

    invoke-virtual {v0}, Lorg/apache/poi/sun/java2d/StateTrackableDelegate;->setUntrackable()V

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/DataBufferByte;->bankdata:[[B

    invoke-virtual {v0}, [[B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    return-object v0
.end method

.method public getData()[B
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/DataBuffer;->theTrackable:Lorg/apache/poi/sun/java2d/StateTrackableDelegate;

    invoke-virtual {v0}, Lorg/apache/poi/sun/java2d/StateTrackableDelegate;->setUntrackable()V

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/DataBufferByte;->data:[B

    return-object v0
.end method

.method public getData(I)[B
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/DataBuffer;->theTrackable:Lorg/apache/poi/sun/java2d/StateTrackableDelegate;

    invoke-virtual {v0}, Lorg/apache/poi/sun/java2d/StateTrackableDelegate;->setUntrackable()V

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/DataBufferByte;->bankdata:[[B

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getElem(I)I
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/DataBufferByte;->data:[B

    iget v1, p0, Lorg/apache/poi/java/awt/image/DataBuffer;->offset:I

    add-int/2addr p1, v1

    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    return p1
.end method

.method public getElem(II)I
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/DataBufferByte;->bankdata:[[B

    aget-object v0, v0, p1

    iget-object v1, p0, Lorg/apache/poi/java/awt/image/DataBuffer;->offsets:[I

    aget p1, v1, p1

    add-int/2addr p2, p1

    aget-byte p1, v0, p2

    and-int/lit16 p1, p1, 0xff

    return p1
.end method

.method public setElem(II)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/DataBufferByte;->data:[B

    iget v1, p0, Lorg/apache/poi/java/awt/image/DataBuffer;->offset:I

    add-int/2addr p1, v1

    int-to-byte p2, p2

    aput-byte p2, v0, p1

    iget-object p1, p0, Lorg/apache/poi/java/awt/image/DataBuffer;->theTrackable:Lorg/apache/poi/sun/java2d/StateTrackableDelegate;

    invoke-virtual {p1}, Lorg/apache/poi/sun/java2d/StateTrackableDelegate;->markDirty()V

    return-void
.end method

.method public setElem(III)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/DataBufferByte;->bankdata:[[B

    aget-object v0, v0, p1

    iget-object v1, p0, Lorg/apache/poi/java/awt/image/DataBuffer;->offsets:[I

    aget p1, v1, p1

    add-int/2addr p2, p1

    int-to-byte p1, p3

    aput-byte p1, v0, p2

    iget-object p1, p0, Lorg/apache/poi/java/awt/image/DataBuffer;->theTrackable:Lorg/apache/poi/sun/java2d/StateTrackableDelegate;

    invoke-virtual {p1}, Lorg/apache/poi/sun/java2d/StateTrackableDelegate;->markDirty()V

    return-void
.end method
