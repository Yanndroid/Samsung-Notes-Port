.class public Lcom/samsung/android/sdk/pen/ocr/SpenOcrBlockData;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenOcrBlockData"


# instance fields
.field private mLineDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/ocr/SpenOcrLineData;",
            ">;"
        }
    .end annotation
.end field

.field private mRect:[Landroid/graphics/Point;

.field private mUID:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrBlockData;->mLineDataList:Ljava/util/ArrayList;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrBlockData;->mUID:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrBlockData;->mLineDataList:Ljava/util/ArrayList;

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/Point;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrBlockData;->mRect:[Landroid/graphics/Point;

    return-void
.end method


# virtual methods
.method public add(Lcom/samsung/android/sdk/pen/ocr/SpenOcrLineData;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrBlockData;->mLineDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrBlockData;->mLineDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public getLineDataList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/ocr/SpenOcrLineData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrBlockData;->mLineDataList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getRect()[Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrBlockData;->mRect:[Landroid/graphics/Point;

    return-object v0
.end method

.method public getRectInfo()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrBlockData;->mRect:[Landroid/graphics/Point;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    if-eqz v4, :cond_0

    const-string v5, "("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v4, Landroid/graphics/Point;->x:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrBlockData;->mLineDataList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/pen/ocr/SpenOcrLineData;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrLineData;->getText()Ljava/lang/String;

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

.method public final getUID()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrBlockData;->mUID:J

    return-wide v0
.end method

.method public scale(F)Z
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrBlockData;->mRect:[Landroid/graphics/Point;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    iget v5, v4, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    mul-float/2addr v5, p1

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Point;->x:I

    iget v5, v4, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    mul-float/2addr v5, p1

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Point;->y:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrBlockData;->mLineDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/ocr/SpenOcrLineData;

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrLineData;->scale(F)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public setLineDataList(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/ocr/SpenOcrLineData;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrBlockData;->mLineDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public setRect([II)V
    .locals 12

    const/16 v0, 0x8

    const-string v1, "SpenOcrBlockData"

    const/4 v2, 0x0

    if-ge p2, v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SpenOcrTextBlock::setRect rect(int array)\'s length is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SpenOcrTextBlock::setRect len : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", length : "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p2, p1

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x4

    new-array v3, p2, [Landroid/graphics/Point;

    new-instance v4, Landroid/graphics/Point;

    aget v5, p1, v2

    const/4 v6, 0x1

    aget v7, p1, v6

    invoke-direct {v4, v5, v7}, Landroid/graphics/Point;-><init>(II)V

    aput-object v4, v3, v2

    new-instance v4, Landroid/graphics/Point;

    const/4 v5, 0x2

    aget v7, p1, v5

    const/4 v8, 0x3

    aget v9, p1, v8

    invoke-direct {v4, v7, v9}, Landroid/graphics/Point;-><init>(II)V

    aput-object v4, v3, v6

    new-instance v4, Landroid/graphics/Point;

    aget v7, p1, p2

    const/4 v9, 0x5

    aget v10, p1, v9

    invoke-direct {v4, v7, v10}, Landroid/graphics/Point;-><init>(II)V

    aput-object v4, v3, v5

    new-instance v4, Landroid/graphics/Point;

    const/4 v7, 0x6

    aget v10, p1, v7

    const/4 v11, 0x7

    aget p1, p1, v11

    invoke-direct {v4, v10, p1}, Landroid/graphics/Point;-><init>(II)V

    aput-object v4, v3, v8

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrBlockData;->mRect:[Landroid/graphics/Point;

    new-array p1, v0, [Ljava/lang/Object;

    aget-object v0, v3, v2

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrBlockData;->mRect:[Landroid/graphics/Point;

    aget-object v0, v0, v2

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v6

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrBlockData;->mRect:[Landroid/graphics/Point;

    aget-object v0, v0, v6

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v5

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrBlockData;->mRect:[Landroid/graphics/Point;

    aget-object v0, v0, v6

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v8

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrBlockData;->mRect:[Landroid/graphics/Point;

    aget-object v0, v0, v5

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, p2

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrBlockData;->mRect:[Landroid/graphics/Point;

    aget-object p2, p2, v5

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v9

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrBlockData;->mRect:[Landroid/graphics/Point;

    aget-object p2, p2, v8

    iget p2, p2, Landroid/graphics/Point;->x:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v7

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrBlockData;->mRect:[Landroid/graphics/Point;

    aget-object p2, p2, v8

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v11

    const-string p2, "SpenOcrTextBlock::setRect [LT(%d, %d), RT(%d, %d), RB(%d, %d), LB(%d, %d)]"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setRect([Landroid/graphics/Point;)V
    .locals 4

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrBlockData;->mRect:[Landroid/graphics/Point;

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    iget p1, p1, Landroid/graphics/Point;->x:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrBlockData;->mRect:[Landroid/graphics/Point;

    aget-object p1, p1, v1

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrBlockData;->mRect:[Landroid/graphics/Point;

    aget-object p1, p1, v1

    iget p1, p1, Landroid/graphics/Point;->x:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x2

    aput-object p1, v0, v2

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrBlockData;->mRect:[Landroid/graphics/Point;

    aget-object p1, p1, v1

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x3

    aput-object p1, v0, v1

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrBlockData;->mRect:[Landroid/graphics/Point;

    aget-object p1, p1, v2

    iget p1, p1, Landroid/graphics/Point;->x:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x4

    aput-object p1, v0, v3

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrBlockData;->mRect:[Landroid/graphics/Point;

    aget-object p1, p1, v2

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x5

    aput-object p1, v0, v2

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrBlockData;->mRect:[Landroid/graphics/Point;

    aget-object p1, p1, v1

    iget p1, p1, Landroid/graphics/Point;->x:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x6

    aput-object p1, v0, v2

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrBlockData;->mRect:[Landroid/graphics/Point;

    aget-object p1, p1, v1

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x7

    aput-object p1, v0, v1

    const-string p1, "SpenOcrTextBlock::setRect [LT(%d, %d), RT(%d, %d), RB(%d, %d), LB(%d, %d)]: %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "SpenOcrBlockData"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setUID(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrBlockData;->mUID:J

    return-void
.end method
