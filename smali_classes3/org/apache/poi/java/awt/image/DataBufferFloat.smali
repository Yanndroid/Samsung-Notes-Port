.class public final Lorg/apache/poi/java/awt/image/DataBufferFloat;
.super Lorg/apache/poi/java/awt/image/DataBuffer;
.source "SourceFile"


# instance fields
.field public bankdata:[[F

.field public data:[F


# direct methods
.method public constructor <init>(I)V
    .locals 2

    sget-object v0, Lorg/apache/poi/sun/java2d/StateTrackable$State;->STABLE:Lorg/apache/poi/sun/java2d/StateTrackable$State;

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1, p1}, Lorg/apache/poi/java/awt/image/DataBuffer;-><init>(Lorg/apache/poi/sun/java2d/StateTrackable$State;II)V

    new-array p1, p1, [F

    iput-object p1, p0, Lorg/apache/poi/java/awt/image/DataBufferFloat;->data:[F

    const/4 v0, 0x1

    new-array v0, v0, [[F

    iput-object v0, p0, Lorg/apache/poi/java/awt/image/DataBufferFloat;->bankdata:[[F

    const/4 v1, 0x0

    aput-object p1, v0, v1

    return-void
.end method

.method public constructor <init>(II)V
    .locals 4

    sget-object v0, Lorg/apache/poi/sun/java2d/StateTrackable$State;->STABLE:Lorg/apache/poi/sun/java2d/StateTrackable$State;

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/apache/poi/java/awt/image/DataBuffer;-><init>(Lorg/apache/poi/sun/java2d/StateTrackable$State;III)V

    new-array v0, p2, [[F

    iput-object v0, p0, Lorg/apache/poi/java/awt/image/DataBufferFloat;->bankdata:[[F

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_0

    iget-object v2, p0, Lorg/apache/poi/java/awt/image/DataBufferFloat;->bankdata:[[F

    new-array v3, p1, [F

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/apache/poi/java/awt/image/DataBufferFloat;->bankdata:[[F

    aget-object p1, p1, v0

    iput-object p1, p0, Lorg/apache/poi/java/awt/image/DataBufferFloat;->data:[F

    return-void
.end method

.method public constructor <init>([FI)V
    .locals 2

    sget-object v0, Lorg/apache/poi/sun/java2d/StateTrackable$State;->UNTRACKABLE:Lorg/apache/poi/sun/java2d/StateTrackable$State;

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1, p2}, Lorg/apache/poi/java/awt/image/DataBuffer;-><init>(Lorg/apache/poi/sun/java2d/StateTrackable$State;II)V

    iput-object p1, p0, Lorg/apache/poi/java/awt/image/DataBufferFloat;->data:[F

    const/4 p2, 0x1

    new-array p2, p2, [[F

    iput-object p2, p0, Lorg/apache/poi/java/awt/image/DataBufferFloat;->bankdata:[[F

    const/4 v0, 0x0

    aput-object p1, p2, v0

    return-void
.end method

.method public constructor <init>([FII)V
    .locals 6

    sget-object v1, Lorg/apache/poi/sun/java2d/StateTrackable$State;->UNTRACKABLE:Lorg/apache/poi/sun/java2d/StateTrackable$State;

    const/4 v2, 0x4

    const/4 v4, 0x1

    move-object v0, p0

    move v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/java/awt/image/DataBuffer;-><init>(Lorg/apache/poi/sun/java2d/StateTrackable$State;IIII)V

    iput-object p1, p0, Lorg/apache/poi/java/awt/image/DataBufferFloat;->data:[F

    const/4 p2, 0x1

    new-array p2, p2, [[F

    iput-object p2, p0, Lorg/apache/poi/java/awt/image/DataBufferFloat;->bankdata:[[F

    const/4 p3, 0x0

    aput-object p1, p2, p3

    return-void
.end method

.method public constructor <init>([[FI)V
    .locals 3

    sget-object v0, Lorg/apache/poi/sun/java2d/StateTrackable$State;->UNTRACKABLE:Lorg/apache/poi/sun/java2d/StateTrackable$State;

    array-length v1, p1

    const/4 v2, 0x4

    invoke-direct {p0, v0, v2, p2, v1}, Lorg/apache/poi/java/awt/image/DataBuffer;-><init>(Lorg/apache/poi/sun/java2d/StateTrackable$State;III)V

    invoke-virtual {p1}, [[F->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[F

    iput-object p1, p0, Lorg/apache/poi/java/awt/image/DataBufferFloat;->bankdata:[[F

    const/4 p2, 0x0

    aget-object p1, p1, p2

    iput-object p1, p0, Lorg/apache/poi/java/awt/image/DataBufferFloat;->data:[F

    return-void
.end method

.method public constructor <init>([[FI[I)V
    .locals 6

    sget-object v1, Lorg/apache/poi/sun/java2d/StateTrackable$State;->UNTRACKABLE:Lorg/apache/poi/sun/java2d/StateTrackable$State;

    array-length v4, p1

    const/4 v2, 0x4

    move-object v0, p0

    move v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/java/awt/image/DataBuffer;-><init>(Lorg/apache/poi/sun/java2d/StateTrackable$State;III[I)V

    invoke-virtual {p1}, [[F->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[F

    iput-object p1, p0, Lorg/apache/poi/java/awt/image/DataBufferFloat;->bankdata:[[F

    const/4 p2, 0x0

    aget-object p1, p1, p2

    iput-object p1, p0, Lorg/apache/poi/java/awt/image/DataBufferFloat;->data:[F

    return-void
.end method


# virtual methods
.method public getBankData()[[F
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/DataBuffer;->theTrackable:Lorg/apache/poi/sun/java2d/StateTrackableDelegate;

    invoke-virtual {v0}, Lorg/apache/poi/sun/java2d/StateTrackableDelegate;->setUntrackable()V

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/DataBufferFloat;->bankdata:[[F

    invoke-virtual {v0}, [[F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    return-object v0
.end method

.method public getData()[F
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/DataBuffer;->theTrackable:Lorg/apache/poi/sun/java2d/StateTrackableDelegate;

    invoke-virtual {v0}, Lorg/apache/poi/sun/java2d/StateTrackableDelegate;->setUntrackable()V

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/DataBufferFloat;->data:[F

    return-object v0
.end method

.method public getData(I)[F
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/DataBuffer;->theTrackable:Lorg/apache/poi/sun/java2d/StateTrackableDelegate;

    invoke-virtual {v0}, Lorg/apache/poi/sun/java2d/StateTrackableDelegate;->setUntrackable()V

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/DataBufferFloat;->bankdata:[[F

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getElem(I)I
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/DataBufferFloat;->data:[F

    iget v1, p0, Lorg/apache/poi/java/awt/image/DataBuffer;->offset:I

    add-int/2addr p1, v1

    aget p1, v0, p1

    float-to-int p1, p1

    return p1
.end method

.method public getElem(II)I
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/DataBufferFloat;->bankdata:[[F

    aget-object v0, v0, p1

    iget-object v1, p0, Lorg/apache/poi/java/awt/image/DataBuffer;->offsets:[I

    aget p1, v1, p1

    add-int/2addr p2, p1

    aget p1, v0, p2

    float-to-int p1, p1

    return p1
.end method

.method public getElemDouble(I)D
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/DataBufferFloat;->data:[F

    iget v1, p0, Lorg/apache/poi/java/awt/image/DataBuffer;->offset:I

    add-int/2addr p1, v1

    aget p1, v0, p1

    float-to-double v0, p1

    return-wide v0
.end method

.method public getElemDouble(II)D
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/DataBufferFloat;->bankdata:[[F

    aget-object v0, v0, p1

    iget-object v1, p0, Lorg/apache/poi/java/awt/image/DataBuffer;->offsets:[I

    aget p1, v1, p1

    add-int/2addr p2, p1

    aget p1, v0, p2

    float-to-double p1, p1

    return-wide p1
.end method

.method public getElemFloat(I)F
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/DataBufferFloat;->data:[F

    iget v1, p0, Lorg/apache/poi/java/awt/image/DataBuffer;->offset:I

    add-int/2addr p1, v1

    aget p1, v0, p1

    return p1
.end method

.method public getElemFloat(II)F
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/DataBufferFloat;->bankdata:[[F

    aget-object v0, v0, p1

    iget-object v1, p0, Lorg/apache/poi/java/awt/image/DataBuffer;->offsets:[I

    aget p1, v1, p1

    add-int/2addr p2, p1

    aget p1, v0, p2

    return p1
.end method

.method public setElem(II)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/DataBufferFloat;->data:[F

    iget v1, p0, Lorg/apache/poi/java/awt/image/DataBuffer;->offset:I

    add-int/2addr p1, v1

    int-to-float p2, p2

    aput p2, v0, p1

    iget-object p1, p0, Lorg/apache/poi/java/awt/image/DataBuffer;->theTrackable:Lorg/apache/poi/sun/java2d/StateTrackableDelegate;

    invoke-virtual {p1}, Lorg/apache/poi/sun/java2d/StateTrackableDelegate;->markDirty()V

    return-void
.end method

.method public setElem(III)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/DataBufferFloat;->bankdata:[[F

    aget-object v0, v0, p1

    iget-object v1, p0, Lorg/apache/poi/java/awt/image/DataBuffer;->offsets:[I

    aget p1, v1, p1

    add-int/2addr p2, p1

    int-to-float p1, p3

    aput p1, v0, p2

    iget-object p1, p0, Lorg/apache/poi/java/awt/image/DataBuffer;->theTrackable:Lorg/apache/poi/sun/java2d/StateTrackableDelegate;

    invoke-virtual {p1}, Lorg/apache/poi/sun/java2d/StateTrackableDelegate;->markDirty()V

    return-void
.end method

.method public setElemDouble(ID)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/DataBufferFloat;->data:[F

    iget v1, p0, Lorg/apache/poi/java/awt/image/DataBuffer;->offset:I

    add-int/2addr p1, v1

    double-to-float p2, p2

    aput p2, v0, p1

    iget-object p1, p0, Lorg/apache/poi/java/awt/image/DataBuffer;->theTrackable:Lorg/apache/poi/sun/java2d/StateTrackableDelegate;

    invoke-virtual {p1}, Lorg/apache/poi/sun/java2d/StateTrackableDelegate;->markDirty()V

    return-void
.end method

.method public setElemDouble(IID)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/DataBufferFloat;->bankdata:[[F

    aget-object v0, v0, p1

    iget-object v1, p0, Lorg/apache/poi/java/awt/image/DataBuffer;->offsets:[I

    aget p1, v1, p1

    add-int/2addr p2, p1

    double-to-float p1, p3

    aput p1, v0, p2

    iget-object p1, p0, Lorg/apache/poi/java/awt/image/DataBuffer;->theTrackable:Lorg/apache/poi/sun/java2d/StateTrackableDelegate;

    invoke-virtual {p1}, Lorg/apache/poi/sun/java2d/StateTrackableDelegate;->markDirty()V

    return-void
.end method

.method public setElemFloat(IF)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/DataBufferFloat;->data:[F

    iget v1, p0, Lorg/apache/poi/java/awt/image/DataBuffer;->offset:I

    add-int/2addr p1, v1

    aput p2, v0, p1

    iget-object p1, p0, Lorg/apache/poi/java/awt/image/DataBuffer;->theTrackable:Lorg/apache/poi/sun/java2d/StateTrackableDelegate;

    invoke-virtual {p1}, Lorg/apache/poi/sun/java2d/StateTrackableDelegate;->markDirty()V

    return-void
.end method

.method public setElemFloat(IIF)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/DataBufferFloat;->bankdata:[[F

    aget-object v0, v0, p1

    iget-object v1, p0, Lorg/apache/poi/java/awt/image/DataBuffer;->offsets:[I

    aget p1, v1, p1

    add-int/2addr p2, p1

    aput p3, v0, p2

    iget-object p1, p0, Lorg/apache/poi/java/awt/image/DataBuffer;->theTrackable:Lorg/apache/poi/sun/java2d/StateTrackableDelegate;

    invoke-virtual {p1}, Lorg/apache/poi/sun/java2d/StateTrackableDelegate;->markDirty()V

    return-void
.end method
