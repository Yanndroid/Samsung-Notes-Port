.class public Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorRecentViewModel;
.super Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorPaletteViewModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorRecentViewModel$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0014\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0010\u0008\u0016\u0018\u0000 *2\u00020\u0001:\u0001*B\u0019\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\r\u001a\u00020\u000eH\u0014J\u0008\u0010\u000f\u001a\u00020\u000eH\u0014J\u0014\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016J\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015J\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0015J\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u0018J\u0008\u0010\u001a\u001a\u00020\u001bH\u0016J\u000e\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001d\u001a\u00020\u001bJ\u000e\u0010\u001e\u001a\u00020\u001b2\u0006\u0010\u001d\u001a\u00020\u001bJ\u0006\u0010\u001f\u001a\u00020\nJ\u0006\u0010 \u001a\u00020\u000eJ\u0018\u0010!\u001a\u00020\u000e2\u0006\u0010\"\u001a\u00020\u001b2\u0006\u0010#\u001a\u00020\u001bH\u0016J\u0012\u0010$\u001a\u00020\u000e2\u0008\u0010%\u001a\u0004\u0018\u00010\u000cH\u0016J\u000e\u0010&\u001a\u00020\u000e2\u0006\u0010\'\u001a\u00020\nJ\u0018\u0010(\u001a\u00020\u000e2\u0010\u0010)\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0019\u0018\u00010\u0018R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006+"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorRecentViewModel;",
        "Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorPaletteViewModel;",
        "model",
        "Lcom/samsung/android/support/senl/addons/brush/model/color/ColorRecentModel;",
        "screenModel",
        "Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;",
        "(Lcom/samsung/android/support/senl/addons/brush/model/color/ColorRecentModel;Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;)V",
        "mCallback",
        "Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;",
        "mIsShown",
        "",
        "mSettingsModel",
        "Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;",
        "clearModels",
        "",
        "closeCallbacks",
        "getData",
        "",
        "id",
        "",
        "getNextRecentColor",
        "",
        "getPrevRecentColor",
        "getRecentPaletteList",
        "",
        "Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenHSVColor;",
        "getSelectedIndex",
        "",
        "getSelectedNextItem",
        "selectIdx",
        "getSelectedPrevItem",
        "getVisibility",
        "onClickColorPicker",
        "selectPaletteColor",
        "color",
        "position",
        "setSettingModel",
        "settingModel",
        "setVisibility",
        "visible",
        "updateColorRecentViewModel",
        "list",
        "Companion",
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


# static fields
.field private static final BINDING_ID_VISIBILITY:Ljava/lang/String; = "visibility"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorRecentViewModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final RECENT_MAX_SIZE:I = 0x9

.field private static final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private mCallback:Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mIsShown:Z

.field private mSettingsModel:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorRecentViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorRecentViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorRecentViewModel;->Companion:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorRecentViewModel$Companion;

    const-string v0, "ColorRecentViewModel"

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->createBrushTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorRecentViewModel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/addons/brush/model/color/ColorRecentModel;Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/addons/brush/model/color/ColorRecentModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorPaletteViewModel;-><init>(Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;)V

    new-instance p1, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorRecentViewModel$mCallback$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorRecentViewModel$mCallback$1;-><init>(Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorRecentViewModel;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorRecentViewModel;->mCallback:Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorPaletteViewModel;->getMModel()Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorRecentViewModel;->mCallback:Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->addObserver(Lcom/samsung/android/support/senl/addons/base/common/IObservable$Observer;)V

    return-void
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorRecentViewModel;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public clearModels()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorPaletteViewModel;->getMModel()Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorRecentViewModel;->mCallback:Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->removeObserver(Lcom/samsung/android/support/senl/addons/base/common/IObservable$Observer;)V

    :cond_0
    invoke-super {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorPaletteViewModel;->clearModels()V

    return-void
.end method

.method public closeCallbacks()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorRecentViewModel;->mCallback:Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;

    invoke-super {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorPaletteViewModel;->closeCallbacks()V

    return-void
.end method

.method public getData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string/jumbo v0, "visibility"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorRecentViewModel;->getVisibility()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final getNextRecentColor()[F
    .locals 4
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorRecentViewModel;->getSelectedIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorRecentViewModel;->getSelectedNextItem(I)I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    const/16 v2, 0x9

    if-ge v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_1

    sget-object v1, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorRecentViewModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNextRecentColor. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorPaletteViewModel;->getColorViewModel(I)Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;->getHSV()[F

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getPrevRecentColor()[F
    .locals 4
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorRecentViewModel;->getSelectedIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorRecentViewModel;->getSelectedPrevItem(I)I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    const/16 v2, 0x9

    if-ge v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_1

    sget-object v1, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorRecentViewModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPrevRecentColor. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorPaletteViewModel;->getColorViewModel(I)Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;->getHSV()[F

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getRecentPaletteList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenHSVColor;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x9

    if-ge v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorPaletteViewModel;->getMColorVMSet()[Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aget-object v2, v2, v1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenHSVColor;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;->getHSV()[F

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenHSVColor;-><init>([F)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorRecentViewModel;->updateColorRecentViewModel(Ljava/util/List;)V

    return-object v0
.end method

.method public getSelectedIndex()I
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorPaletteViewModel;->getMColorVMSet()[Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x9

    if-ge v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorPaletteViewModel;->getMColorVMSet()[Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aget-object v1, v1, v0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;->getEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorPaletteViewModel;->getMColorVMSet()[Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aget-object v1, v1, v0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorRecentViewModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSelectedIndex. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public final getSelectedNextItem(I)I
    .locals 3

    const/4 v0, 0x1

    add-int/2addr p1, v0

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    const/16 v2, 0x9

    if-ge p1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorPaletteViewModel;->getMColorVMSet()[Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aget-object v0, v0, p1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;->getEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    return p1

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorPaletteViewModel;->getMColorVMSet()[Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aget-object p1, p1, v1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;->getEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, -0x1

    :goto_1
    return v1
.end method

.method public final getSelectedPrevItem(I)I
    .locals 3

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    const/16 v2, 0x9

    if-ge p1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorPaletteViewModel;->getMColorVMSet()[Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aget-object v0, v0, p1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;->getEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    return p1

    :cond_1
    const/16 p1, 0x8

    :goto_1
    const/4 v0, -0x1

    if-ge v0, p1, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorPaletteViewModel;->getMColorVMSet()[Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aget-object v0, v0, p1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;->getEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    return p1

    :cond_2
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_3
    return v0
.end method

.method public final getVisibility()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorRecentViewModel;->mIsShown:Z

    return v0
.end method

.method public final onClickColorPicker()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorRecentViewModel;->TAG:Ljava/lang/String;

    const-string v1, "onClickColorPicker"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorRecentViewModel;->mSettingsModel:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->getColorPickerVisibility()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorRecentViewModel;->mSettingsModel:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->getCurrentMode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorRecentViewModel;->mSettingsModel:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->setMode(I)V

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;->INSTANCE:Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;->onEyeDropperOpened()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorRecentViewModel;->mSettingsModel:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->setColorPickerVisibility(Z)V

    :cond_1
    return-void
.end method

.method public selectPaletteColor(II)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x9

    if-ge v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorPaletteViewModel;->getMColorVMSet()[Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aget-object v2, v2, v1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorPaletteViewModel;->getMColorVMSet()[Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aget-object v3, v3, v1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;->getEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorPaletteViewModel;->getMColorVMSet()[Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aget-object v3, v3, v1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;->getColor()I

    move-result v3

    if-ne v3, p1, :cond_0

    const/high16 v3, -0x100000

    and-int/2addr v3, p2

    const/high16 v4, 0x100000

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    move v3, v0

    :goto_1
    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;->setSelected(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setSettingModel(Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorRecentViewModel;->mSettingsModel:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    return-void
.end method

.method public final setVisibility(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorRecentViewModel;->mIsShown:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorRecentViewModel;->mIsShown:Z

    const-string/jumbo p1, "visibility"

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->notifyChanged(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final updateColorRecentViewModel(Ljava/util/List;)V
    .locals 7
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenHSVColor;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [F

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "recent color : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/16 v5, 0x9

    if-ge v4, v5, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorPaletteViewModel;->getMColorVMSet()[Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;

    move-result-object v5

    if-ge v4, v1, :cond_1

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aget-object v5, v5, v4

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;->setEnabled(Z)V

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v5, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenHSVColor;

    invoke-virtual {v5, v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenHSVColor;->getColor([F)Z

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorPaletteViewModel;->getMColorVMSet()[Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aget-object v5, v5, v4

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5, v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;->setColor([F)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorPaletteViewModel;->getMColorVMSet()[Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aget-object v5, v5, v4

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;->getColor()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x7c

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aget-object v5, v5, v4

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5, v3}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorViewModel;->setEnabled(Z)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorRecentViewModel;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
