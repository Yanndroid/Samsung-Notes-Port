.class Lcom/samsung/android/sdk/ocr/OCRResult$AbsData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/ocr/OCRResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AbsData"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/sdk/ocr/OCRResult$AbsData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mAngle:F

.field public mRect:[Landroid/graphics/Point;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/ocr/OCRResult$AbsData$1;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ocr/OCRResult$AbsData$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/ocr/OCRResult$AbsData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/Point;

    iput-object v0, p0, Lcom/samsung/android/sdk/ocr/OCRResult$AbsData;->mRect:[Landroid/graphics/Point;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/ocr/OCRResult$AbsData;->mAngle:F

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [Landroid/graphics/Point;

    iput-object v1, p0, Lcom/samsung/android/sdk/ocr/OCRResult$AbsData;->mRect:[Landroid/graphics/Point;

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/sdk/ocr/OCRResult$AbsData;->mAngle:F

    const/16 v1, 0x8

    new-array v1, v1, [I

    const-string v2, "OCRResult"

    const-string v3, "readIntArray"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readIntArray([I)V

    iget-object v2, p0, Lcom/samsung/android/sdk/ocr/OCRResult$AbsData;->mRect:[Landroid/graphics/Point;

    new-instance v3, Landroid/graphics/Point;

    const/4 v4, 0x0

    aget v5, v1, v4

    const/4 v6, 0x1

    aget v7, v1, v6

    invoke-direct {v3, v5, v7}, Landroid/graphics/Point;-><init>(II)V

    aput-object v3, v2, v4

    iget-object v2, p0, Lcom/samsung/android/sdk/ocr/OCRResult$AbsData;->mRect:[Landroid/graphics/Point;

    new-instance v3, Landroid/graphics/Point;

    const/4 v4, 0x2

    aget v5, v1, v4

    const/4 v7, 0x3

    aget v8, v1, v7

    invoke-direct {v3, v5, v8}, Landroid/graphics/Point;-><init>(II)V

    aput-object v3, v2, v6

    iget-object v2, p0, Lcom/samsung/android/sdk/ocr/OCRResult$AbsData;->mRect:[Landroid/graphics/Point;

    new-instance v3, Landroid/graphics/Point;

    aget v0, v1, v0

    const/4 v5, 0x5

    aget v5, v1, v5

    invoke-direct {v3, v0, v5}, Landroid/graphics/Point;-><init>(II)V

    aput-object v3, v2, v4

    iget-object v0, p0, Lcom/samsung/android/sdk/ocr/OCRResult$AbsData;->mRect:[Landroid/graphics/Point;

    new-instance v2, Landroid/graphics/Point;

    const/4 v3, 0x6

    aget v3, v1, v3

    const/4 v4, 0x7

    aget v1, v1, v4

    invoke-direct {v2, v3, v1}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v7

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/samsung/android/sdk/ocr/OCRResult$AbsData;->mAngle:F

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAngle()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ocr/OCRResult$AbsData;->mAngle:F

    return v0
.end method

.method public getCenter()Landroid/graphics/PointF;
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/sdk/ocr/OCRResult$AbsData;->mRect:[Landroid/graphics/Point;

    array-length v1, v0

    if-lez v1, :cond_1

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v6, v0, v3

    iget v7, v6, Landroid/graphics/Point;->x:I

    add-int/2addr v4, v7

    iget v6, v6, Landroid/graphics/Point;->y:I

    add-int/2addr v5, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/PointF;

    int-to-float v2, v4

    int-to-float v1, v1

    div-float/2addr v2, v1

    int-to-float v3, v5

    div-float/2addr v3, v1

    invoke-direct {v0, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "mRect should not be defined to calculate center"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getLines()[F
    .locals 8

    const/16 v0, 0x10

    new-array v0, v0, [F

    iget-object v1, p0, Lcom/samsung/android/sdk/ocr/OCRResult$AbsData;->mRect:[Landroid/graphics/Point;

    const/4 v2, 0x0

    aget-object v3, v1, v2

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    aput v3, v0, v2

    aget-object v3, v1, v2

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    const/4 v4, 0x1

    aput v3, v0, v4

    aget-object v3, v1, v4

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    const/4 v5, 0x2

    aput v3, v0, v5

    aget-object v3, v1, v4

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    const/4 v6, 0x3

    aput v3, v0, v6

    aget-object v3, v1, v4

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    const/4 v7, 0x4

    aput v3, v0, v7

    aget-object v3, v1, v4

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    const/4 v4, 0x5

    aput v3, v0, v4

    aget-object v3, v1, v5

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    const/4 v4, 0x6

    aput v3, v0, v4

    aget-object v3, v1, v5

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    const/4 v4, 0x7

    aput v3, v0, v4

    aget-object v3, v1, v5

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    const/16 v4, 0x8

    aput v3, v0, v4

    aget-object v3, v1, v5

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    const/16 v4, 0x9

    aput v3, v0, v4

    aget-object v3, v1, v6

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    const/16 v4, 0xa

    aput v3, v0, v4

    aget-object v3, v1, v6

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    const/16 v4, 0xb

    aput v3, v0, v4

    aget-object v3, v1, v6

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    const/16 v4, 0xc

    aput v3, v0, v4

    aget-object v3, v1, v6

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    const/16 v4, 0xd

    aput v3, v0, v4

    aget-object v3, v1, v2

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    const/16 v4, 0xe

    aput v3, v0, v4

    aget-object v1, v1, v2

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    const/16 v2, 0xf

    aput v1, v0, v2

    return-object v0
.end method

.method public getRect()[Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ocr/OCRResult$AbsData;->mRect:[Landroid/graphics/Point;

    return-object v0
.end method

.method public offset(II)Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/ocr/OCRResult$AbsData;->mRect:[Landroid/graphics/Point;

    array-length v1, v0

    const/4 v2, 0x0

    if-gtz v1, :cond_0

    return v2

    :cond_0
    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3, p1, p2}, Landroid/graphics/Point;->offset(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public rotate(FLandroid/graphics/PointF;)Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ocr/OCRResult$AbsData;->mAngle:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/sdk/ocr/OCRResult$AbsData;->mAngle:F

    iget-object v0, p0, Lcom/samsung/android/sdk/ocr/OCRResult$AbsData;->mRect:[Landroid/graphics/Point;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/sdk/ocr/OCRResult;->getRotatedCorner([Landroid/graphics/Point;FLandroid/graphics/PointF;)[Landroid/graphics/Point;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/ocr/OCRResult$AbsData;->mRect:[Landroid/graphics/Point;

    const/4 p1, 0x1

    return p1
.end method

.method public scale(F)Z
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/sdk/ocr/OCRResult$AbsData;->mRect:[Landroid/graphics/Point;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    iget v4, v3, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    mul-float/2addr v4, p1

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Point;->x:I

    iget v4, v3, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    mul-float/2addr v4, p1

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Point;->y:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public setAngle(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/ocr/OCRResult$AbsData;->mAngle:F

    return-void
.end method

.method public setRect([Landroid/graphics/Point;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ocr/OCRResult$AbsData;->mRect:[Landroid/graphics/Point;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    const-string p2, "OCRResult"

    const-string/jumbo v0, "writeIntArray"

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p2, 0x8

    new-array p2, p2, [I

    iget-object v0, p0, Lcom/samsung/android/sdk/ocr/OCRResult$AbsData;->mRect:[Landroid/graphics/Point;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    iget v2, v2, Landroid/graphics/Point;->x:I

    aput v2, p2, v1

    aget-object v1, v0, v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    const/4 v2, 0x1

    aput v1, p2, v2

    aget-object v1, v0, v2

    iget v1, v1, Landroid/graphics/Point;->x:I

    const/4 v3, 0x2

    aput v1, p2, v3

    aget-object v1, v0, v2

    iget v1, v1, Landroid/graphics/Point;->y:I

    const/4 v2, 0x3

    aput v1, p2, v2

    aget-object v1, v0, v3

    iget v1, v1, Landroid/graphics/Point;->x:I

    const/4 v4, 0x4

    aput v1, p2, v4

    aget-object v1, v0, v3

    iget v1, v1, Landroid/graphics/Point;->y:I

    const/4 v3, 0x5

    aput v1, p2, v3

    aget-object v1, v0, v2

    iget v1, v1, Landroid/graphics/Point;->x:I

    const/4 v3, 0x6

    aput v1, p2, v3

    aget-object v0, v0, v2

    iget v0, v0, Landroid/graphics/Point;->y:I

    const/4 v1, 0x7

    aput v0, p2, v1

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    iget p2, p0, Lcom/samsung/android/sdk/ocr/OCRResult$AbsData;->mAngle:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
