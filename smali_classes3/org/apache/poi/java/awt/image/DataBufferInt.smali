.class public final Lorg/apache/poi/java/awt/image/DataBufferInt;
.super Lorg/apache/poi/java/awt/image/DataBuffer;
.source "SourceFile"


# instance fields
.field public bankdata:[[I

.field public data:[I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    sget-object v0, Lorg/apache/poi/sun/java2d/StateTrackable$State;->STABLE:Lorg/apache/poi/sun/java2d/StateTrackable$State;

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1, p1}, Lorg/apache/poi/java/awt/image/DataBuffer;-><init>(Lorg/apache/poi/sun/java2d/StateTrackable$State;II)V

    new-array p1, p1, [I

    iput-object p1, p0, Lorg/apache/poi/java/awt/image/DataBufferInt;->data:[I

    const/4 v0, 0x1

    new-array v0, v0, [[I

    iput-object v0, p0, Lorg/apache/poi/java/awt/image/DataBufferInt;->bankdata:[[I

    const/4 v1, 0x0

    aput-object p1, v0, v1

    return-void
.end method

.method public constructor <init>(II)V
    .locals 4

    sget-object v0, Lorg/apache/poi/sun/java2d/StateTrackable$State;->STABLE:Lorg/apache/poi/sun/java2d/StateTrackable$State;

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/apache/poi/java/awt/image/DataBuffer;-><init>(Lorg/apache/poi/sun/java2d/StateTrackable$State;III)V

    new-array v0, p2, [[I

    iput-object v0, p0, Lorg/apache/poi/java/awt/image/DataBufferInt;->bankdata:[[I

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_0

    iget-object v2, p0, Lorg/apache/poi/java/awt/image/DataBufferInt;->bankdata:[[I

    new-array v3, p1, [I

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/apache/poi/java/awt/image/DataBufferInt;->bankdata:[[I

    aget-object p1, p1, v0

    iput-object p1, p0, Lorg/apache/poi/java/awt/image/DataBufferInt;->data:[I

    return-void
.end method

.method public constructor <init>([II)V
    .locals 2

    sget-object v0, Lorg/apache/poi/sun/java2d/StateTrackable$State;->UNTRACKABLE:Lorg/apache/poi/sun/java2d/StateTrackable$State;

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1, p2}, Lorg/apache/poi/java/awt/image/DataBuffer;-><init>(Lorg/apache/poi/sun/java2d/StateTrackable$State;II)V

    iput-object p1, p0, Lorg/apache/poi/java/awt/image/DataBufferInt;->data:[I

    const/4 p2, 0x1

    new-array p2, p2, [[I

    iput-object p2, p0, Lorg/apache/poi/java/awt/image/DataBufferInt;->bankdata:[[I

    const/4 v0, 0x0

    aput-object p1, p2, v0

    return-void
.end method

.method public constructor <init>([III)V
    .locals 6

    sget-object v1, Lorg/apache/poi/sun/java2d/StateTrackable$State;->UNTRACKABLE:Lorg/apache/poi/sun/java2d/StateTrackable$State;

    const/4 v2, 0x3

    const/4 v4, 0x1

    move-object v0, p0

    move v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/java/awt/image/DataBuffer;-><init>(Lorg/apache/poi/sun/java2d/StateTrackable$State;IIII)V

    iput-object p1, p0, Lorg/apache/poi/java/awt/image/DataBufferInt;->data:[I

    const/4 p2, 0x1

    new-array p2, p2, [[I

    iput-object p2, p0, Lorg/apache/poi/java/awt/image/DataBufferInt;->bankdata:[[I

    const/4 p3, 0x0

    aput-object p1, p2, p3

    return-void
.end method

.method public constructor <init>([[II)V
    .locals 3

    sget-object v0, Lorg/apache/poi/sun/java2d/StateTrackable$State;->UNTRACKABLE:Lorg/apache/poi/sun/java2d/StateTrackable$State;

    array-length v1, p1

    const/4 v2, 0x3

    invoke-direct {p0, v0, v2, p2, v1}, Lorg/apache/poi/java/awt/image/DataBuffer;-><init>(Lorg/apache/poi/sun/java2d/StateTrackable$State;III)V

    invoke-virtual {p1}, [[I->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[I

    iput-object p1, p0, Lorg/apache/poi/java/awt/image/DataBufferInt;->bankdata:[[I

    const/4 p2, 0x0

    aget-object p1, p1, p2

    iput-object p1, p0, Lorg/apache/poi/java/awt/image/DataBufferInt;->data:[I

    return-void
.end method

.method public constructor <init>([[II[I)V
    .locals 6

    sget-object v1, Lorg/apache/poi/sun/java2d/StateTrackable$State;->UNTRACKABLE:Lorg/apache/poi/sun/java2d/StateTrackable$State;

    array-length v4, p1

    const/4 v2, 0x3

    move-object v0, p0

    move v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/java/awt/image/DataBuffer;-><init>(Lorg/apache/poi/sun/java2d/StateTrackable$State;III[I)V

    invoke-virtual {p1}, [[I->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[I

    iput-object p1, p0, Lorg/apache/poi/java/awt/image/DataBufferInt;->bankdata:[[I

    const/4 p2, 0x0

    aget-object p1, p1, p2

    iput-object p1, p0, Lorg/apache/poi/java/awt/image/DataBufferInt;->data:[I

    return-void
.end method


# virtual methods
.method public getBankData()[[I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/DataBuffer;->theTrackable:Lorg/apache/poi/sun/java2d/StateTrackableDelegate;

    invoke-virtual {v0}, Lorg/apache/poi/sun/java2d/StateTrackableDelegate;->setUntrackable()V

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/DataBufferInt;->bankdata:[[I

    invoke-virtual {v0}, [[I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    return-object v0
.end method

.method public getData()[I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/DataBuffer;->theTrackable:Lorg/apache/poi/sun/java2d/StateTrackableDelegate;

    invoke-virtual {v0}, Lorg/apache/poi/sun/java2d/StateTrackableDelegate;->setUntrackable()V

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/DataBufferInt;->data:[I

    return-object v0
.end method

.method public getData(I)[I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/DataBuffer;->theTrackable:Lorg/apache/poi/sun/java2d/StateTrackableDelegate;

    invoke-virtual {v0}, Lorg/apache/poi/sun/java2d/StateTrackableDelegate;->setUntrackable()V

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/DataBufferInt;->bankdata:[[I

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getElem(I)I
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/DataBufferInt;->data:[I

    iget v1, p0, Lorg/apache/poi/java/awt/image/DataBuffer;->offset:I

    add-int/2addr p1, v1

    aget p1, v0, p1

    return p1
.end method

.method public getElem(II)I
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/DataBufferInt;->bankdata:[[I

    aget-object v0, v0, p1

    iget-object v1, p0, Lorg/apache/poi/java/awt/image/DataBuffer;->offsets:[I

    aget p1, v1, p1

    add-int/2addr p2, p1

    aget p1, v0, p2

    return p1
.end method

.method public setElem(II)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/DataBufferInt;->data:[I

    iget v1, p0, Lorg/apache/poi/java/awt/image/DataBuffer;->offset:I

    add-int/2addr p1, v1

    aput p2, v0, p1

    iget-object p1, p0, Lorg/apache/poi/java/awt/image/DataBuffer;->theTrackable:Lorg/apache/poi/sun/java2d/StateTrackableDelegate;

    invoke-virtual {p1}, Lorg/apache/poi/sun/java2d/StateTrackableDelegate;->markDirty()V

    return-void
.end method

.method public setElem(III)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/DataBufferInt;->bankdata:[[I

    aget-object v0, v0, p1

    iget-object v1, p0, Lorg/apache/poi/java/awt/image/DataBuffer;->offsets:[I

    aget p1, v1, p1

    add-int/2addr p2, p1

    aput p3, v0, p2

    iget-object p1, p0, Lorg/apache/poi/java/awt/image/DataBuffer;->theTrackable:Lorg/apache/poi/sun/java2d/StateTrackableDelegate;

    invoke-virtual {p1}, Lorg/apache/poi/sun/java2d/StateTrackableDelegate;->markDirty()V

    return-void
.end method
