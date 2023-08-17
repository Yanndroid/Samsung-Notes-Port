.class public Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentAdjustData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentAdjustData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mColorSet:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mDefaultBackgroundColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private final mDefaultPageHeight:I

.field private final mDefaultPageWidth:I

.field private final mPageDefaultNumber:I

.field private final mPageIndex:I

.field private final mPenColorType:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentAdjustData$1;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentAdjustData$1;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentAdjustData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIIIILjava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIII",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentAdjustData;->mColorSet:Ljava/util/Map;

    iput p1, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentAdjustData;->mDefaultPageWidth:I

    iput p2, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentAdjustData;->mDefaultPageHeight:I

    iput p3, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentAdjustData;->mDefaultBackgroundColor:I

    iput p4, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentAdjustData;->mPageIndex:I

    iput p5, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentAdjustData;->mPageDefaultNumber:I

    iput p6, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentAdjustData;->mPenColorType:I

    invoke-interface {v0, p7}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentAdjustData;->mColorSet:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentAdjustData;->mDefaultPageWidth:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentAdjustData;->mDefaultPageHeight:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentAdjustData;->mDefaultBackgroundColor:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentAdjustData;->mPageIndex:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentAdjustData;->mPageDefaultNumber:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentAdjustData;->mPenColorType:I

    const-class v1, Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/support/senl/nt/model/documents/data/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentAdjustData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getColorSet()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentAdjustData;->mColorSet:Ljava/util/Map;

    return-object v0
.end method

.method public getDefaultBackgroundColor()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentAdjustData;->mDefaultBackgroundColor:I

    return v0
.end method

.method public getDefaultPageHeight()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentAdjustData;->mDefaultPageHeight:I

    return v0
.end method

.method public getDefaultPageWidth()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentAdjustData;->mDefaultPageWidth:I

    return v0
.end method

.method public getPageDefaultNumber()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentAdjustData;->mPageDefaultNumber:I

    return v0
.end method

.method public getPageIndex()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentAdjustData;->mPageIndex:I

    return v0
.end method

.method public getPenColorType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentAdjustData;->mPenColorType:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DocumentAdjustData{mDefaultPageWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentAdjustData;->mDefaultPageWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDefaultPageHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentAdjustData;->mDefaultPageHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDefaultBackgroundColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentAdjustData;->mDefaultBackgroundColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPageIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentAdjustData;->mPageIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPageDefaultNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentAdjustData;->mPageDefaultNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPenColorType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentAdjustData;->mPenColorType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mColorSet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentAdjustData;->mColorSet:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentAdjustData;->mDefaultPageWidth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentAdjustData;->mDefaultPageHeight:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentAdjustData;->mDefaultBackgroundColor:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentAdjustData;->mPageIndex:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentAdjustData;->mPageDefaultNumber:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentAdjustData;->mPenColorType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentAdjustData;->mColorSet:Ljava/util/Map;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    return-void
.end method
