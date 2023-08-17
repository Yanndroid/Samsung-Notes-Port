.class public Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mStrategy:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy$1;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy$1;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy;->set(I)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy;->mStrategy:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/support/senl/cm/base/common/util/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public add(I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy;->mStrategy:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy;->mStrategy:I

    return-void
.end method

.method public check(I)Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy;->mStrategy:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy;->mStrategy:I

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public get()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy;->mStrategy:I

    return v0
.end method

.method public remove(I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy;->mStrategy:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy;->mStrategy:I

    return-void
.end method

.method public set(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy;->mStrategy:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataStrategy{mStrategy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy;->mStrategy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy;->mStrategy:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
