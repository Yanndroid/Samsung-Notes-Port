.class public Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorPaletteViewModel;
.super Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\u0008\u0016\u0018\u00002\u00020\u0001B\u0019\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u0014\u001a\u00020\u0015H\u0014J\u0008\u0010\u0016\u001a\u00020\u0015H\u0014J\u0008\u0010\u0017\u001a\u00020\u0015H\u0014J\u0012\u0010\u0018\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J\u0008\u0010\u001b\u001a\u00020\u001aH\u0016J\u0018\u0010\u001c\u001a\u00020\u00152\u0006\u0010\u001d\u001a\u00020\u001a2\u0006\u0010\u001e\u001a\u00020\u001aH\u0016J\u0012\u0010\u001f\u001a\u00020\u00152\u0008\u0010 \u001a\u0004\u0018\u00010!H\u0016R&\u0010\u0007\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\t\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u000e\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0003X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\""
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorPaletteViewModel;",
        "Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel;",
        "model",
        "Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;",
        "screenModel",
        "Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;",
        "(Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;)V",
        "mColorVMSet",
        "",
        "Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;",
        "getMColorVMSet",
        "()[Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;",
        "setMColorVMSet",
        "([Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;)V",
        "[Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;",
        "mModel",
        "getMModel",
        "()Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;",
        "setMModel",
        "(Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;)V",
        "clearModels",
        "",
        "closeCallbacks",
        "closeSubViewModels",
        "getColorViewModel",
        "index",
        "",
        "getSelectedIndex",
        "selectPaletteColor",
        "color",
        "position",
        "setSettingModel",
        "settingModel",
        "Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;",
        "ntAddons_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private mColorVMSet:[Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mModel:Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;)V
    .locals 4
    .param p1    # Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorPaletteViewModel;->mModel:Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;->getColorSize()I

    move-result p1

    new-array v0, p1, [Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorPaletteViewModel;->mColorVMSet:[Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorPaletteViewModel;->mColorVMSet:[Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v2, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;

    iget-object v3, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorPaletteViewModel;->mModel:Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3, v0}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;->getColorModel(I)Lcom/samsung/android/support/senl/addons/brush/model/color/IMenuColorModel;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v2, v3, p2}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;-><init>(Lcom/samsung/android/support/senl/addons/brush/model/color/IMenuColorModel;Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public clearModels()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorPaletteViewModel;->mModel:Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;

    return-void
.end method

.method public closeCallbacks()V
    .locals 0

    return-void
.end method

.method public closeSubViewModels()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorPaletteViewModel;->mColorVMSet:[Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-ge v1, v0, :cond_0

    iget-object v3, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorPaletteViewModel;->mColorVMSet:[Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aget-object v3, v3, v1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel;->close()V

    iget-object v3, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorPaletteViewModel;->mColorVMSet:[Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorPaletteViewModel;->mColorVMSet:[Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;

    :cond_1
    return-void
.end method

.method public getColorViewModel(I)Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorPaletteViewModel;->mColorVMSet:[Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final getMColorVMSet()[Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorPaletteViewModel;->mColorVMSet:[Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;

    return-object v0
.end method

.method public final getMModel()Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorPaletteViewModel;->mModel:Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;

    return-object v0
.end method

.method public getSelectedIndex()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorPaletteViewModel;->mColorVMSet:[Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    array-length v0, v0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorPaletteViewModel;->mColorVMSet:[Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aget-object v2, v2, v1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public selectPaletteColor(II)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorPaletteViewModel;->mColorVMSet:[Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;->getColor()I

    move-result v5

    if-ne v5, p1, :cond_0

    const/high16 v5, -0x100000

    and-int/2addr v5, p2

    const/high16 v6, 0x200000

    if-ne v5, v6, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    move v5, v2

    :goto_1
    invoke-virtual {v4, v5}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;->setSelected(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final setMColorVMSet([Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;)V
    .locals 0
    .param p1    # [Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorPaletteViewModel;->mColorVMSet:[Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;

    return-void
.end method

.method public final setMModel(Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorPaletteViewModel;->mModel:Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;

    return-void
.end method

.method public setSettingModel(Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;)V
    .locals 3
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorPaletteViewModel;->mModel:Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;->getColorSize()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorPaletteViewModel;->mColorVMSet:[Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aget-object v2, v2, v1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, p1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;->setSettingModel(Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
