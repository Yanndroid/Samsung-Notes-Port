.class Lcom/samsung/android/support/senl/nt/base/common/displaydata/DisplayData$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/base/common/displaydata/DisplayData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/support/senl/nt/base/common/displaydata/DisplayData;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/support/senl/nt/base/common/displaydata/DisplayData;
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/nt/base/common/displaydata/DisplayData;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/base/common/displaydata/DisplayData;-><init>()V

    sget-object v1, Lcom/samsung/android/support/senl/nt/base/common/displaydata/DisplayData;->CHAR_SEQUENCE_CREATOR_VERSION_1:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/displaydata/DisplayData;->setContent(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/base/common/displaydata/DisplayData$2;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/support/senl/nt/base/common/displaydata/DisplayData;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/samsung/android/support/senl/nt/base/common/displaydata/DisplayData;
    .locals 0

    const/4 p1, 0x0

    new-array p1, p1, [Lcom/samsung/android/support/senl/nt/base/common/displaydata/DisplayData;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/base/common/displaydata/DisplayData$2;->newArray(I)[Lcom/samsung/android/support/senl/nt/base/common/displaydata/DisplayData;

    move-result-object p1

    return-object p1
.end method
