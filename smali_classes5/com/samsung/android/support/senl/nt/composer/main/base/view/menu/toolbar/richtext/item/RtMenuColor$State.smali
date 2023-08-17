.class public Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuColor$State;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuColor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "State"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuColor$State;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mColorSettingState:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/common/ColorSettingState;

.field private mPopup:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuColor$State$1;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuColor$State$1;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuColor$State;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuColor$State;->mPopup:I

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/common/ColorSettingState;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/common/ColorSettingState;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuColor$State;->mColorSettingState:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/common/ColorSettingState;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuColor$State;->mPopup:I

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/common/ColorSettingState;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/common/ColorSettingState;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuColor$State;->mColorSettingState:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/common/ColorSettingState;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuColor$State;->mPopup:I

    const-class v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/common/ColorSettingState;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/common/ColorSettingState;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuColor$State;->mColorSettingState:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/common/ColorSettingState;

    if-nez p1, :cond_0

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/common/ColorSettingState;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/common/ColorSettingState;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuColor$State;->mColorSettingState:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/common/ColorSettingState;

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuColor$State;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuColor$State;->mPopup:I

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/common/ColorSettingState;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/common/ColorSettingState;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuColor$State;->mColorSettingState:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/common/ColorSettingState;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuColor$State;->copyData(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuColor$State;)V

    return-void
.end method


# virtual methods
.method public copyData(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuColor$State;)V
    .locals 1

    iget v0, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuColor$State;->mPopup:I

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuColor$State;->mPopup:I

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuColor$State;->mColorSettingState:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/common/ColorSettingState;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuColor$State;->mColorSettingState:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/common/ColorSettingState;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/common/ColorSettingState;->copyData(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/common/ColorSettingState;)V

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getColor()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuColor$State;->mColorSettingState:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/common/ColorSettingState;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/common/ColorSettingState;->getColor()I

    move-result v0

    return v0
.end method

.method public getPaletteId()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuColor$State;->mColorSettingState:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/common/ColorSettingState;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/common/ColorSettingState;->getPaletteId()I

    move-result v0

    return v0
.end method

.method public isColorPickerEnable()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuColor$State;->mColorSettingState:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/common/ColorSettingState;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/common/ColorSettingState;->isColorPickerEnable()Z

    move-result v0

    return v0
.end method

.method public isColorSettingEnable()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuColor$State;->mColorSettingState:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/common/ColorSettingState;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/common/ColorSettingState;->isColorSettingEnable()Z

    move-result v0

    return v0
.end method

.method public isPopupEnable()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuColor$State;->mPopup:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public setColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuColor$State;->mColorSettingState:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/common/ColorSettingState;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/common/ColorSettingState;->setColor(I)V

    return-void
.end method

.method public setColorPickerEnable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuColor$State;->mColorSettingState:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/common/ColorSettingState;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/common/ColorSettingState;->setColorPickerEnable(Z)V

    return-void
.end method

.method public setColorSettingEnable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuColor$State;->mColorSettingState:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/common/ColorSettingState;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/common/ColorSettingState;->setColorSettingEnable(Z)V

    return-void
.end method

.method public setColorSettingState()V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/common/ColorSettingState;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/common/ColorSettingState;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuColor$State;->mColorSettingState:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/common/ColorSettingState;

    return-void
.end method

.method public setPaletteId(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuColor$State;->mColorSettingState:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/common/ColorSettingState;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/common/ColorSettingState;->setPaletteId(I)V

    return-void
.end method

.method public setPopupEnable(Z)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuColor;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPopupEnable# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuColor$State;->mPopup:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPopup: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuColor$State;->mPopup:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n-@    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mColorSettingState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuColor$State;->mColorSettingState:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/common/ColorSettingState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuColor$State;->mPopup:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuColor$State;->mColorSettingState:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/common/ColorSettingState;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
