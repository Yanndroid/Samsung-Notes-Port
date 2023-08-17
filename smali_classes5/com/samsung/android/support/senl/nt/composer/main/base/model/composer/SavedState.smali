.class public Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/SavedState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/SavedState;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY:Ljava/lang/String; = "SavedState"


# instance fields
.field private mCursorEnd:I

.field private mCursorStart:I

.field private mLastSelectedObjectIndexArray:[I

.field private mLastSelectedPageIdArray:[Ljava/lang/String;

.field private mPrevNightMode:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/SavedState$1;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/SavedState$1;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/SavedState;->mLastSelectedObjectIndexArray:[I

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/SavedState;->mLastSelectedPageIdArray:[Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/SavedState;->mCursorStart:I

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/SavedState;->mCursorEnd:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/SavedState;->mPrevNightMode:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/SavedState;->mLastSelectedPageIdArray:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/SavedState;->mLastSelectedObjectIndexArray:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/SavedState;->mCursorStart:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/SavedState;->mCursorEnd:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/SavedState;->mPrevNightMode:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCursorEnd()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/SavedState;->mCursorEnd:I

    return v0
.end method

.method public getCursorStart()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/SavedState;->mCursorStart:I

    return v0
.end method

.method public getLastSelectedObjectIndexArray()[I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/SavedState;->mLastSelectedObjectIndexArray:[I

    return-object v0
.end method

.method public getLastSelectedPageIdArray()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/SavedState;->mLastSelectedPageIdArray:[Ljava/lang/String;

    return-object v0
.end method

.method public getPrevNightMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/SavedState;->mPrevNightMode:Z

    return v0
.end method

.method public setCursor(II)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/SavedState;->mCursorStart:I

    iput p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/SavedState;->mCursorEnd:I

    return-void
.end method

.method public setLastSelectedObjectIndexArray([I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/SavedState;->mLastSelectedObjectIndexArray:[I

    return-void
.end method

.method public setLastSelectedPageIdArray([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/SavedState;->mLastSelectedPageIdArray:[Ljava/lang/String;

    return-void
.end method

.method public setPrevNightMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/SavedState;->mPrevNightMode:Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/SavedState;->mLastSelectedPageIdArray:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/SavedState;->mLastSelectedObjectIndexArray:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    iget p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/SavedState;->mCursorStart:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/SavedState;->mCursorEnd:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/SavedState;->mPrevNightMode:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
