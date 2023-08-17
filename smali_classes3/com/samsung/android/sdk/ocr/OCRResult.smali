.class public Lcom/samsung/android/sdk/ocr/OCRResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/ocr/OCRResult$BlockData;,
        Lcom/samsung/android/sdk/ocr/OCRResult$LineData;,
        Lcom/samsung/android/sdk/ocr/OCRResult$WordData;,
        Lcom/samsung/android/sdk/ocr/OCRResult$CharData;,
        Lcom/samsung/android/sdk/ocr/OCRResult$AbsData;,
        Lcom/samsung/android/sdk/ocr/OCRResult$ProcessInfo;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/sdk/ocr/OCRResult;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "OCRResult"


# instance fields
.field private mBlockDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/ocr/OCRResult$BlockData;",
            ">;"
        }
    .end annotation
.end field

.field private mProcessInfo:Lcom/samsung/android/sdk/ocr/OCRResult$ProcessInfo;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/ocr/OCRResult$1;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ocr/OCRResult$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/ocr/OCRResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/ocr/OCRResult;->mBlockDataList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/samsung/android/sdk/ocr/OCRResult;->mProcessInfo:Lcom/samsung/android/sdk/ocr/OCRResult$ProcessInfo;

    invoke-direct {p0}, Lcom/samsung/android/sdk/ocr/OCRResult;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/ocr/OCRResult;->mBlockDataList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/samsung/android/sdk/ocr/OCRResult;->mProcessInfo:Lcom/samsung/android/sdk/ocr/OCRResult$ProcessInfo;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/ocr/OCRResult;->mBlockDataList:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/sdk/ocr/OCRResult$BlockData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    new-instance v0, Lcom/samsung/android/sdk/ocr/OCRResult$ProcessInfo;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ocr/OCRResult$ProcessInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/ocr/OCRResult;->mProcessInfo:Lcom/samsung/android/sdk/ocr/OCRResult$ProcessInfo;

    sget-object v0, Lcom/samsung/android/sdk/ocr/OCRResult$ProcessInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/ocr/OCRResult$ProcessInfo;

    iput-object p1, p0, Lcom/samsung/android/sdk/ocr/OCRResult;->mProcessInfo:Lcom/samsung/android/sdk/ocr/OCRResult$ProcessInfo;

    return-void
.end method

.method public static getRotatedCorner([Landroid/graphics/Point;FLandroid/graphics/PointF;)[Landroid/graphics/Point;
    .locals 6

    array-length v0, p0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const-string p0, "OCRResult"

    const-string p1, "The number of corner points is not 4."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-array v0, v1, [Landroid/graphics/Point;

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, p0, v2

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v4}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    aput-object v5, v0, v3

    aget-object v4, v0, v3

    invoke-static {v4, p1, p2}, Lcom/samsung/android/sdk/ocr/OCRResult;->rotate(Landroid/graphics/Point;FLandroid/graphics/PointF;)V

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private init()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/ocr/OCRResult;->mBlockDataList:Ljava/util/ArrayList;

    new-instance v0, Lcom/samsung/android/sdk/ocr/OCRResult$ProcessInfo;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ocr/OCRResult$ProcessInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/ocr/OCRResult;->mProcessInfo:Lcom/samsung/android/sdk/ocr/OCRResult$ProcessInfo;

    return-void
.end method

.method public static rotate(Landroid/graphics/Point;FLandroid/graphics/PointF;)V
    .locals 11

    float-to-double v0, p1

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    iget p1, p0, Landroid/graphics/Point;->x:I

    int-to-float p1, p1

    iget v2, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr p1, v2

    float-to-double v3, p1

    iget p1, p0, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    iget v5, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, v5

    float-to-double v5, p1

    float-to-double v7, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    mul-double/2addr v9, v3

    add-double/2addr v7, v9

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double/2addr v9, v5

    add-double/2addr v7, v9

    double-to-int p1, v7

    iput p1, p0, Landroid/graphics/Point;->x:I

    iget p1, p2, Landroid/graphics/PointF;->y:F

    float-to-double p1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    mul-double/2addr v3, v7

    sub-double/2addr p1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr v5, v0

    add-double/2addr p1, v5

    double-to-int p1, p1

    iput p1, p0, Landroid/graphics/Point;->y:I

    return-void
.end method


# virtual methods
.method public add(Lcom/samsung/android/sdk/ocr/OCRResult$BlockData;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ocr/OCRResult;->mBlockDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clear()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/ocr/OCRResult;->init()V

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBlockDataList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/ocr/OCRResult$BlockData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/ocr/OCRResult;->mBlockDataList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getProcessInfo()Lcom/samsung/android/sdk/ocr/OCRResult$ProcessInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ocr/OCRResult;->mProcessInfo:Lcom/samsung/android/sdk/ocr/OCRResult$ProcessInfo;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/sdk/ocr/OCRResult;->mBlockDataList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/ocr/OCRResult$BlockData;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ocr/OCRResult$BlockData;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextRect()[Landroid/graphics/Point;
    .locals 10

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/Point;

    new-instance v1, Landroid/graphics/Point;

    const v2, 0x7fffffff

    invoke-direct {v1, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    const/4 v3, 0x0

    aput-object v1, v0, v3

    new-instance v1, Landroid/graphics/Point;

    const/high16 v4, -0x80000000

    invoke-direct {v1, v4, v2}, Landroid/graphics/Point;-><init>(II)V

    const/4 v5, 0x1

    aput-object v1, v0, v5

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v4, v4}, Landroid/graphics/Point;-><init>(II)V

    const/4 v6, 0x2

    aput-object v1, v0, v6

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v2, v4}, Landroid/graphics/Point;-><init>(II)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/sdk/ocr/OCRResult;->mBlockDataList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sdk/ocr/OCRResult$BlockData;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/ocr/OCRResult$BlockData;->getTextRect()[Landroid/graphics/Point;

    move-result-object v4

    aget-object v7, v0, v3

    aget-object v8, v0, v3

    iget v8, v8, Landroid/graphics/Point;->x:I

    aget-object v9, v4, v3

    iget v9, v9, Landroid/graphics/Point;->x:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, v7, Landroid/graphics/Point;->x:I

    aget-object v7, v0, v3

    aget-object v8, v0, v3

    iget v8, v8, Landroid/graphics/Point;->y:I

    aget-object v9, v4, v3

    iget v9, v9, Landroid/graphics/Point;->y:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, v7, Landroid/graphics/Point;->y:I

    aget-object v7, v0, v5

    aget-object v8, v0, v5

    iget v8, v8, Landroid/graphics/Point;->x:I

    aget-object v9, v4, v5

    iget v9, v9, Landroid/graphics/Point;->x:I

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, v7, Landroid/graphics/Point;->x:I

    aget-object v7, v0, v5

    aget-object v8, v0, v5

    iget v8, v8, Landroid/graphics/Point;->y:I

    aget-object v9, v4, v5

    iget v9, v9, Landroid/graphics/Point;->y:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, v7, Landroid/graphics/Point;->y:I

    aget-object v7, v0, v6

    aget-object v8, v0, v6

    iget v8, v8, Landroid/graphics/Point;->x:I

    aget-object v9, v4, v6

    iget v9, v9, Landroid/graphics/Point;->x:I

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, v7, Landroid/graphics/Point;->x:I

    aget-object v7, v0, v6

    aget-object v8, v0, v6

    iget v8, v8, Landroid/graphics/Point;->y:I

    aget-object v9, v4, v6

    iget v9, v9, Landroid/graphics/Point;->y:I

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, v7, Landroid/graphics/Point;->y:I

    aget-object v7, v0, v2

    aget-object v8, v0, v2

    iget v8, v8, Landroid/graphics/Point;->x:I

    aget-object v9, v4, v2

    iget v9, v9, Landroid/graphics/Point;->x:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, v7, Landroid/graphics/Point;->x:I

    aget-object v7, v0, v2

    aget-object v8, v0, v2

    iget v8, v8, Landroid/graphics/Point;->y:I

    aget-object v4, v4, v2

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v7, Landroid/graphics/Point;->y:I

    goto/16 :goto_0

    :cond_0
    return-object v0
.end method

.method public logInfo()Z
    .locals 9

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ocr/OCRResult;->getTextRect()[Landroid/graphics/Point;

    move-result-object v0

    const-string v1, "OCRResult"

    const-string v2, "====================================================================="

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v4, v0, v3

    iget v4, v4, Landroid/graphics/Point;->x:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    aget-object v4, v0, v3

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v2, v5

    aget-object v4, v0, v5

    iget v4, v4, Landroid/graphics/Point;->x:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x2

    aput-object v4, v2, v6

    aget-object v4, v0, v5

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v7, 0x3

    aput-object v4, v2, v7

    aget-object v4, v0, v6

    iget v4, v4, Landroid/graphics/Point;->x:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v8, 0x4

    aput-object v4, v2, v8

    aget-object v4, v0, v6

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x5

    aput-object v4, v2, v6

    aget-object v4, v0, v7

    iget v4, v4, Landroid/graphics/Point;->x:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x6

    aput-object v4, v2, v6

    aget-object v0, v0, v7

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v4, 0x7

    aput-object v0, v2, v4

    iget-object v0, p0, Lcom/samsung/android/sdk/ocr/OCRResult;->mBlockDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v4, 0x8

    aput-object v0, v2, v4

    const-string v0, "OCRResult::Page [LT(%d, %d), RT(%d, %d), RB(%d, %d), LB(%d, %d)] has %d blocks"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "OCRResult::Page Text:"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/ocr/OCRResult;->mBlockDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/ocr/OCRResult$BlockData;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/ocr/OCRResult$BlockData;->logInfo()Z

    move-result v1

    if-nez v1, :cond_0

    return v3

    :cond_1
    return v5
.end method

.method public offset(II)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/ocr/OCRResult;->mBlockDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/ocr/OCRResult$BlockData;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/sdk/ocr/OCRResult$BlockData;->offset(II)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public scale(F)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/ocr/OCRResult;->mBlockDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/ocr/OCRResult$BlockData;

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/ocr/OCRResult$BlockData;->scale(F)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public setBlockDataList(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/ocr/OCRResult$BlockData;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/ocr/OCRResult;->mBlockDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ocr/OCRResult;->mBlockDataList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/ocr/OCRResult;->mProcessInfo:Lcom/samsung/android/sdk/ocr/OCRResult$ProcessInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    return-void
.end method
