.class public Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingAddFavoritePenLayout$FavoritePenState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingAddFavoritePenLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FavoritePenState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingAddFavoritePenLayout$FavoritePenState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mPenInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingAddFavoritePenLayout$FavoritePenState$1;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingAddFavoritePenLayout$FavoritePenState$1;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingAddFavoritePenLayout$FavoritePenState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingAddFavoritePenLayout$FavoritePenState;->mPenInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingAddFavoritePenLayout$FavoritePenState;->mPenInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->size:F

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingAddFavoritePenLayout$FavoritePenState;->mPenInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingAddFavoritePenLayout$FavoritePenState;->mPenInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->isCurvable:Z

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingAddFavoritePenLayout$FavoritePenState;->mPenInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->advancedSetting:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingAddFavoritePenLayout$FavoritePenState;->mPenInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    iput-boolean v2, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->isEraserEnabled:Z

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingAddFavoritePenLayout$FavoritePenState;->mPenInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingAddFavoritePenLayout$FavoritePenState;->mPenInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->particleDensity:I

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingAddFavoritePenLayout$FavoritePenState;->mPenInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPenInfo()Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingAddFavoritePenLayout$FavoritePenState;->mPenInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    return-object v0
.end method

.method public setPenInfo(Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingAddFavoritePenLayout$FavoritePenState;->mPenInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingAddFavoritePenLayout$FavoritePenState;->mPenInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    iget-object p2, p2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingAddFavoritePenLayout$FavoritePenState;->mPenInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    iget p2, p2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->size:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingAddFavoritePenLayout$FavoritePenState;->mPenInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    iget p2, p2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingAddFavoritePenLayout$FavoritePenState;->mPenInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    iget-boolean p2, p2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->isCurvable:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingAddFavoritePenLayout$FavoritePenState;->mPenInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    iget-object p2, p2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->advancedSetting:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingAddFavoritePenLayout$FavoritePenState;->mPenInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    iget-boolean p2, p2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->isEraserEnabled:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingAddFavoritePenLayout$FavoritePenState;->mPenInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    iget p2, p2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingAddFavoritePenLayout$FavoritePenState;->mPenInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    iget p2, p2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->particleDensity:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
