.class public Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager$SavedState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mPageLayoutColumn:I

.field public mPageLayoutFitToScreen:Z

.field public mPageLayoutRow:I

.field public mScrollVertical:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager$SavedState$1;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager$SavedState$1;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager$SavedState;->mPageLayoutColumn:I

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager$SavedState;->mPageLayoutRow:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager$SavedState;->mPageLayoutFitToScreen:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager$SavedState;->mScrollVertical:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager$SavedState;->mPageLayoutColumn:I

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager$SavedState;->mPageLayoutRow:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager$SavedState;->mPageLayoutFitToScreen:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager$SavedState;->mScrollVertical:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager$SavedState;->mPageLayoutColumn:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager$SavedState;->mPageLayoutRow:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager$SavedState;->mPageLayoutFitToScreen:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager$SavedState;->mScrollVertical:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setPageSetting(IIZZ)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager$SavedState;->mPageLayoutColumn:I

    iput p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager$SavedState;->mPageLayoutRow:I

    iput-boolean p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager$SavedState;->mPageLayoutFitToScreen:Z

    iput-boolean p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager$SavedState;->mScrollVertical:Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager$SavedState;->mPageLayoutColumn:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager$SavedState;->mPageLayoutRow:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager$SavedState;->mPageLayoutFitToScreen:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager$SavedState;->mScrollVertical:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
