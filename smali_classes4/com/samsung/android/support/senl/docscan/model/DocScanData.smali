.class public Lcom/samsung/android/support/senl/docscan/model/DocScanData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/docscan/model/DocScanData$Vertex;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/support/senl/docscan/model/DocScanData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mEditingPath:Ljava/lang/String;

.field private mNumOfAngle:I

.field private mPathToSave:Ljava/lang/String;

.field private mScanBitmap:Landroid/graphics/Bitmap;

.field private mThumbnailPath:Ljava/lang/String;

.field private mVertexList:[Lcom/samsung/android/support/senl/docscan/model/DocScanData$Vertex;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/docscan/model/DocScanData$1;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/docscan/model/DocScanData$1;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/docscan/model/DocScanData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/docscan/model/DocScanData;->mNumOfAngle:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/docscan/model/DocScanData;->mPathToSave:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/docscan/model/DocScanData;->mEditingPath:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/docscan/model/DocScanData;->mThumbnailPath:Ljava/lang/String;

    sget-object v0, Lcom/samsung/android/support/senl/docscan/model/DocScanData$Vertex;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/samsung/android/support/senl/docscan/model/DocScanData$Vertex;

    iput-object p1, p0, Lcom/samsung/android/support/senl/docscan/model/DocScanData;->mVertexList:[Lcom/samsung/android/support/senl/docscan/model/DocScanData$Vertex;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Landroid/graphics/PointF;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/docscan/model/DocScanData;->mPathToSave:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/support/senl/docscan/model/DocScanData;->mEditingPath:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/support/senl/docscan/model/DocScanData;->mThumbnailPath:Ljava/lang/String;

    invoke-virtual {p0, p4}, Lcom/samsung/android/support/senl/docscan/model/DocScanData;->setVertexList([Landroid/graphics/PointF;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getEditingPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/model/DocScanData;->mEditingPath:Ljava/lang/String;

    return-object v0
.end method

.method public getNumOfAngle()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/docscan/model/DocScanData;->mNumOfAngle:I

    return v0
.end method

.method public getPathToSave()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/model/DocScanData;->mPathToSave:Ljava/lang/String;

    return-object v0
.end method

.method public getScanBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/model/DocScanData;->mScanBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getThumbnailPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/model/DocScanData;->mThumbnailPath:Ljava/lang/String;

    return-object v0
.end method

.method public getVertex(I)Landroid/graphics/PointF;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/model/DocScanData;->mVertexList:[Lcom/samsung/android/support/senl/docscan/model/DocScanData$Vertex;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/support/senl/docscan/model/DocScanData;->mNumOfAngle:I

    new-array v0, v0, [Lcom/samsung/android/support/senl/docscan/model/DocScanData$Vertex;

    iput-object v0, p0, Lcom/samsung/android/support/senl/docscan/model/DocScanData;->mVertexList:[Lcom/samsung/android/support/senl/docscan/model/DocScanData$Vertex;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/model/DocScanData;->mVertexList:[Lcom/samsung/android/support/senl/docscan/model/DocScanData$Vertex;

    aget-object v1, v0, p1

    if-nez v1, :cond_1

    new-instance v1, Lcom/samsung/android/support/senl/docscan/model/DocScanData$Vertex;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/docscan/model/DocScanData$Vertex;-><init>()V

    aput-object v1, v0, p1

    :cond_1
    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/model/DocScanData;->mVertexList:[Lcom/samsung/android/support/senl/docscan/model/DocScanData$Vertex;

    aget-object v2, v1, p1

    iget v2, v2, Lcom/samsung/android/support/senl/docscan/model/DocScanData$Vertex;->x:F

    aget-object p1, v1, p1

    iget p1, p1, Lcom/samsung/android/support/senl/docscan/model/DocScanData$Vertex;->y:F

    invoke-direct {v0, v2, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public getVertexList()[Landroid/graphics/PointF;
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/docscan/model/DocScanData;->sortVertexList()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/model/DocScanData;->mVertexList:[Lcom/samsung/android/support/senl/docscan/model/DocScanData$Vertex;

    array-length v0, v0

    new-array v0, v0, [Landroid/graphics/PointF;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/support/senl/docscan/model/DocScanData;->mVertexList:[Lcom/samsung/android/support/senl/docscan/model/DocScanData$Vertex;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    new-instance v2, Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/samsung/android/support/senl/docscan/model/DocScanData;->mVertexList:[Lcom/samsung/android/support/senl/docscan/model/DocScanData$Vertex;

    aget-object v4, v3, v1

    iget v4, v4, Lcom/samsung/android/support/senl/docscan/model/DocScanData$Vertex;->x:F

    aget-object v3, v3, v1

    iget v3, v3, Lcom/samsung/android/support/senl/docscan/model/DocScanData$Vertex;->y:F

    invoke-direct {v2, v4, v3}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public setNumOfAngle(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/docscan/model/DocScanData;->mNumOfAngle:I

    return-void
.end method

.method public setScanBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/docscan/model/DocScanData;->mScanBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setVertex(ILandroid/graphics/PointF;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/model/DocScanData;->mVertexList:[Lcom/samsung/android/support/senl/docscan/model/DocScanData$Vertex;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/support/senl/docscan/model/DocScanData;->mNumOfAngle:I

    new-array v0, v0, [Lcom/samsung/android/support/senl/docscan/model/DocScanData$Vertex;

    iput-object v0, p0, Lcom/samsung/android/support/senl/docscan/model/DocScanData;->mVertexList:[Lcom/samsung/android/support/senl/docscan/model/DocScanData$Vertex;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/model/DocScanData;->mVertexList:[Lcom/samsung/android/support/senl/docscan/model/DocScanData$Vertex;

    aget-object v1, v0, p1

    if-nez v1, :cond_1

    new-instance v1, Lcom/samsung/android/support/senl/docscan/model/DocScanData$Vertex;

    invoke-direct {v1, p2}, Lcom/samsung/android/support/senl/docscan/model/DocScanData$Vertex;-><init>(Landroid/graphics/PointF;)V

    aput-object v1, v0, p1

    goto :goto_0

    :cond_1
    aget-object p1, v0, p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/docscan/model/DocScanData$Vertex;->set(Landroid/graphics/PointF;)V

    :goto_0
    return-void
.end method

.method public setVertexList([Landroid/graphics/PointF;)V
    .locals 4

    array-length v0, p1

    new-array v0, v0, [Lcom/samsung/android/support/senl/docscan/model/DocScanData$Vertex;

    iput-object v0, p0, Lcom/samsung/android/support/senl/docscan/model/DocScanData;->mVertexList:[Lcom/samsung/android/support/senl/docscan/model/DocScanData$Vertex;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/model/DocScanData;->mVertexList:[Lcom/samsung/android/support/senl/docscan/model/DocScanData$Vertex;

    new-instance v2, Lcom/samsung/android/support/senl/docscan/model/DocScanData$Vertex;

    aget-object v3, p1, v0

    invoke-direct {v2, v3}, Lcom/samsung/android/support/senl/docscan/model/DocScanData$Vertex;-><init>(Landroid/graphics/PointF;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public sortVertexList()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/model/DocScanData;->mVertexList:[Lcom/samsung/android/support/senl/docscan/model/DocScanData$Vertex;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/support/senl/docscan/model/DocScanData;->mNumOfAngle:I

    new-array v0, v0, [Lcom/samsung/android/support/senl/docscan/model/DocScanData$Vertex;

    iput-object v0, p0, Lcom/samsung/android/support/senl/docscan/model/DocScanData;->mVertexList:[Lcom/samsung/android/support/senl/docscan/model/DocScanData$Vertex;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/model/DocScanData;->mVertexList:[Lcom/samsung/android/support/senl/docscan/model/DocScanData$Vertex;

    invoke-static {v0}, Lcom/samsung/android/support/senl/docscan/common/util/DocScanUtils;->sortVertexList([Lcom/samsung/android/support/senl/docscan/model/DocScanData$Vertex;)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/docscan/model/DocScanData;->mNumOfAngle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/model/DocScanData;->mPathToSave:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/model/DocScanData;->mEditingPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/model/DocScanData;->mThumbnailPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/model/DocScanData;->mVertexList:[Lcom/samsung/android/support/senl/docscan/model/DocScanData$Vertex;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return-void
.end method
