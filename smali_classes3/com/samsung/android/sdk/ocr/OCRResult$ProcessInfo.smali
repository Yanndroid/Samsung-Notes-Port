.class public Lcom/samsung/android/sdk/ocr/OCRResult$ProcessInfo;
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
    name = "ProcessInfo"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/sdk/ocr/OCRResult$ProcessInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mHasText:Z

.field private mIsHandwrittenResult:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/ocr/OCRResult$ProcessInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ocr/OCRResult$ProcessInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/ocr/OCRResult$ProcessInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/ocr/OCRResult$ProcessInfo;->mIsHandwrittenResult:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/ocr/OCRResult$ProcessInfo;->mHasText:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/ocr/OCRResult$ProcessInfo;->mIsHandwrittenResult:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/ocr/OCRResult$ProcessInfo;->mHasText:Z

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/ocr/OCRResult$ProcessInfo;->mHasText:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/sdk/ocr/OCRResult$ProcessInfo;->mIsHandwrittenResult:Z

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/sdk/ocr/OCRResult$ProcessInfo;->mHasText:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-ne p1, v2, :cond_2

    move v0, v2

    :cond_2
    iput-boolean v0, p0, Lcom/samsung/android/sdk/ocr/OCRResult$ProcessInfo;->mIsHandwrittenResult:Z

    :goto_1
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasText()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/ocr/OCRResult$ProcessInfo;->mHasText:Z

    return v0
.end method

.method public isHandwrittenResult()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/ocr/OCRResult$ProcessInfo;->mIsHandwrittenResult:Z

    return v0
.end method

.method public setHandwrittenResult(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/ocr/OCRResult$ProcessInfo;->mIsHandwrittenResult:Z

    return-void
.end method

.method public setHasText(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/ocr/OCRResult$ProcessInfo;->mHasText:Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-lt p2, v0, :cond_0

    iget-boolean p2, p0, Lcom/samsung/android/sdk/ocr/OCRResult$ProcessInfo;->mHasText:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean p2, p0, Lcom/samsung/android/sdk/ocr/OCRResult$ProcessInfo;->mIsHandwrittenResult:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    :cond_0
    iget-boolean p2, p0, Lcom/samsung/android/sdk/ocr/OCRResult$ProcessInfo;->mHasText:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/samsung/android/sdk/ocr/OCRResult$ProcessInfo;->mIsHandwrittenResult:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return-void
.end method
