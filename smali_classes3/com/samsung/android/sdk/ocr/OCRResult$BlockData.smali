.class public Lcom/samsung/android/sdk/ocr/OCRResult$BlockData;
.super Lcom/samsung/android/sdk/ocr/OCRResult$AbsData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/ocr/OCRResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BlockData"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/sdk/ocr/OCRResult$BlockData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mLineDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/ocr/OCRResult$LineData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/ocr/OCRResult$BlockData$1;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ocr/OCRResult$BlockData$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/ocr/OCRResult$BlockData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/ocr/OCRResult$AbsData;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/ocr/OCRResult$BlockData;->mLineDataList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/ocr/OCRResult$BlockData;->mLineDataList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/ocr/OCRResult$AbsData;-><init>(Landroid/os/Parcel;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/ocr/OCRResult$BlockData;->mLineDataList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/ocr/OCRResult$BlockData;->mLineDataList:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/sdk/ocr/OCRResult$LineData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    return-void
.end method


# virtual methods
.method public add(Lcom/samsung/android/sdk/ocr/OCRResult$LineData;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ocr/OCRResult$BlockData;->mLineDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ocr/OCRResult$BlockData;->mLineDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic getAngle()F
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/sdk/ocr/OCRResult$AbsData;->getAngle()F

    move-result v0

    return v0
.end method

.method public bridge synthetic getCenter()Landroid/graphics/PointF;
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/sdk/ocr/OCRResult$AbsData;->getCenter()Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method public getLineDataList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/ocr/OCRResult$LineData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/ocr/OCRResult$BlockData;->mLineDataList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public bridge synthetic getRect()[Landroid/graphics/Point;
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/sdk/ocr/OCRResult$AbsData;->getRect()[Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/sdk/ocr/OCRResult$BlockData;->mLineDataList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/ocr/OCRResult$LineData;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ocr/OCRResult$LineData;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

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
    .locals 3

    invoke-static {}, Lcom/samsung/android/sdk/ocr/OCRResultUtils;->createInitialRect()[Landroid/graphics/Point;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/ocr/OCRResult$BlockData;->mLineDataList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/ocr/OCRResult$LineData;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ocr/OCRResult$LineData;->getRect()[Landroid/graphics/Point;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/ocr/OCRResultUtils;->intersectRect([Landroid/graphics/Point;[Landroid/graphics/Point;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public logInfo()Z
    .locals 9

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ocr/OCRResult$BlockData;->getTextRect()[Landroid/graphics/Point;

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

    iget-object v0, p0, Lcom/samsung/android/sdk/ocr/OCRResult$BlockData;->mLineDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v4, 0x8

    aput-object v0, v2, v4

    const-string v0, "OCRResult::TextBlock [LT(%d, %d), RT(%d, %d), RB(%d, %d), LB(%d, %d)] in %d lines"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "OCRResult::BlockData Text:"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/ocr/OCRResult$BlockData;->mLineDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/ocr/OCRResult$LineData;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/ocr/OCRResult$LineData;->logInfo()Z

    move-result v1

    if-nez v1, :cond_0

    return v3

    :cond_1
    return v5
.end method

.method public offset(II)Z
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/samsung/android/sdk/ocr/OCRResult$AbsData;->offset(II)Z

    iget-object v0, p0, Lcom/samsung/android/sdk/ocr/OCRResult$BlockData;->mLineDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/ocr/OCRResult$LineData;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/sdk/ocr/OCRResult$LineData;->offset(II)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic rotate(FLandroid/graphics/PointF;)Z
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/sdk/ocr/OCRResult$AbsData;->rotate(FLandroid/graphics/PointF;)Z

    move-result p1

    return p1
.end method

.method public scale(F)Z
    .locals 2

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/ocr/OCRResult$AbsData;->scale(F)Z

    iget-object v0, p0, Lcom/samsung/android/sdk/ocr/OCRResult$BlockData;->mLineDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/ocr/OCRResult$LineData;

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/ocr/OCRResult$LineData;->scale(F)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic setAngle(F)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/ocr/OCRResult$AbsData;->setAngle(F)V

    return-void
.end method

.method public setLineDataList(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/ocr/OCRResult$LineData;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/ocr/OCRResult$BlockData;->mLineDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public bridge synthetic setRect([Landroid/graphics/Point;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/ocr/OCRResult$AbsData;->setRect([Landroid/graphics/Point;)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string v0, "OCRResult"

    const-string/jumbo v1, "writeToParcel: BlockData"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2}, Lcom/samsung/android/sdk/ocr/OCRResult$AbsData;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object p2, p0, Lcom/samsung/android/sdk/ocr/OCRResult$BlockData;->mLineDataList:Ljava/util/ArrayList;

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    :cond_0
    return-void
.end method
