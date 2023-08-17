.class public Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;
.super Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0014\n\u0002\u0008\t\u0008\u0016\u0018\u0000 52\u00020\u0001:\u00015B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u0014\u001a\u00020\u0015H\u0014J\u0008\u0010\u0016\u001a\u00020\u0015H\u0002J\u0008\u0010\u0017\u001a\u00020\u0015H\u0014J\u0008\u0010\u0018\u001a\u00020\u0015H\u0014J\u0006\u0010\u0019\u001a\u00020\u001aJ\u0010\u0010\u001b\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u001a\u0018\u00010\u001cJ\u0006\u0010\u001d\u001a\u00020\u001aJ\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u000bJ\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u0010J\u0008\u0010 \u001a\u0004\u0018\u00010\u0005J\u0008\u0010!\u001a\u0004\u0018\u00010\"J\u0010\u0010#\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u001a\u0018\u00010\u001cJ\u0010\u0010$\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u001a\u0018\u00010\u001cJ\u001e\u0010%\u001a\u00020\u00152\u0006\u0010&\u001a\u00020\u001a2\u0006\u0010\'\u001a\u00020\u001a2\u0006\u0010(\u001a\u00020)J\u0008\u0010*\u001a\u00020\u0015H\u0002J\u0018\u0010+\u001a\u00020\u00152\u0008\u0010,\u001a\u0004\u0018\u00010-2\u0006\u0010.\u001a\u00020\u001aJ\u0010\u0010/\u001a\u00020\u00152\u0008\u00100\u001a\u0004\u0018\u00010\u0013J\u0016\u00101\u001a\u00020\u00152\u0006\u00102\u001a\u00020\u001a2\u0006\u00103\u001a\u00020\u001aJ\u0008\u00104\u001a\u00020\u0015H\u0002R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000c\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00066"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;",
        "Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel;",
        "manager",
        "Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;",
        "screenModel",
        "Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;",
        "(Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;)V",
        "mCallback",
        "Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;",
        "mColorManager",
        "mPaletteSettingActionListener",
        "Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/listeners/IPaletteSettingActionListener;",
        "mPalettes",
        "",
        "Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorPaletteViewModel;",
        "mRecent",
        "Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorRecentViewModel;",
        "mScreenModel",
        "mSettingsModel",
        "Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;",
        "clearModels",
        "",
        "clearPalettes",
        "closeCallbacks",
        "closeSubViewModels",
        "getCurrentPage",
        "",
        "getMaxPaletteIndices",
        "",
        "getMaxPaletteSelectable",
        "getPaletteSettingListener",
        "getRecentVM",
        "getScreenModel",
        "getSelectedColor",
        "Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;",
        "getSelectedIndices",
        "getSelectedPalettes",
        "selectColorButton",
        "pageIndex",
        "childIndex",
        "isSelected",
        "",
        "setColorPalettes",
        "setMainColorAndPosition",
        "hsvColor",
        "",
        "position",
        "setSettingModel",
        "settingModel",
        "swipePalettes",
        "direction",
        "id",
        "updatePalettes",
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
.field public static final Companion:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private mCallback:Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mColorManager:Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final mPaletteSettingActionListener:Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/listeners/IPaletteSettingActionListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mPalettes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorPaletteViewModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mRecent:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorRecentViewModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mScreenModel:Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mSettingsModel:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;->Companion:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel$Companion;

    const-string v0, "ColorMenuViewModel"

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->createBrushTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;)V
    .locals 1
    .param p1    # Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "manager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "screenModel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;->mPalettes:Ljava/util/List;

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;->mColorManager:Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;

    iput-object p2, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;->mScreenModel:Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;->setColorPalettes()V

    new-instance p1, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel$mCallback$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel$mCallback$1;-><init>(Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;->mCallback:Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;

    new-instance p1, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel$mPaletteSettingActionListener$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel$mPaletteSettingActionListener$1;-><init>(Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;->mPaletteSettingActionListener:Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/listeners/IPaletteSettingActionListener;

    return-void
.end method

.method public static final synthetic access$getMColorManager$p(Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;)Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;->mColorManager:Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;

    return-object p0
.end method

.method public static final synthetic access$getMSettingsModel$p(Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;)Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;->mSettingsModel:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    return-object p0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$updatePalettes(Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;->updatePalettes()V

    return-void
.end method

.method private final clearPalettes()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;->mPalettes:Ljava/util/List;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;->mPalettes:Ljava/util/List;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorPaletteViewModel;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel;->close()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;->mPalettes:Ljava/util/List;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private final setColorPalettes()V
    .locals 5

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;->clearPalettes()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;->mRecent:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorRecentViewModel;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorRecentViewModel;

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;->mColorManager:Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->getRecent()Lcom/samsung/android/support/senl/addons/brush/model/color/ColorRecentModel;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;->mScreenModel:Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorRecentViewModel;-><init>(Lcom/samsung/android/support/senl/addons/brush/model/color/ColorRecentModel;Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;->mRecent:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorRecentViewModel;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;->mColorManager:Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->getColorPalletSize()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    new-instance v2, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorPaletteViewModel;

    iget-object v3, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;->mColorManager:Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3, v1}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->getPalette(I)Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;->mScreenModel:Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorPaletteViewModel;-><init>(Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;)V

    iget-object v3, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;->mPalettes:Ljava/util/List;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final updatePalettes()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;->mColorManager:Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->updatePalette()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;->setColorPalettes()V

    const-string v0, "palette_list_change"

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->notifyChanged(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public clearModels()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;->mSettingsModel:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;->mCallback:Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->removeObserver(Lcom/samsung/android/support/senl/addons/base/common/IObservable$Observer;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;->mSettingsModel:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;->mScreenModel:Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;->mScreenModel:Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;->mColorManager:Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;

    if-eqz v0, :cond_2

    iput-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;->mColorManager:Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;

    :cond_2
    return-void
.end method

.method public closeCallbacks()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;->mCallback:Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;

    return-void
.end method

.method public closeSubViewModels()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;->mPalettes:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;->mPalettes:Ljava/util/List;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorPaletteViewModel;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel;->close()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;->mPalettes:Ljava/util/List;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;->mPalettes:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;->mRecent:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorRecentViewModel;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel;->close()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;->mRecent:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorRecentViewModel;

    :cond_2
    return-void
.end method

.method public final getCurrentPage()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;->mColorManager:Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->getActivatedPage()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getMaxPaletteIndices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;->mColorManager:Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->getMaxPaletteIndices()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getMaxPaletteSelectable()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;->mColorManager:Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->getMaxPaletteSelectable()I

    move-result v0

    return v0
.end method

.method public final getPaletteSettingListener()Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/listeners/IPaletteSettingActionListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;->mPaletteSettingActionListener:Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/listeners/IPaletteSettingActionListener;

    return-object v0
.end method

.method public final getRecentVM()Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorRecentViewModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;->mRecent:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorRecentViewModel;

    return-object v0
.end method

.method public final getScreenModel()Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;->mScreenModel:Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;

    return-object v0
.end method

.method public final getSelectedColor()Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;->mColorManager:Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->getSelectedColor()Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;

    move-result-object v0

    return-object v0
.end method

.method public final getSelectedIndices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;->mColorManager:Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->getSelectedIndices()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getSelectedPalettes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;->mColorManager:Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->getSelectedPalettes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final selectColorButton(IIZ)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selectColorButton. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x2f

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;->mSettingsModel:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->getCurrentMode()I

    move-result p1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;->mSettingsModel:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->setMode(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;->mSettingsModel:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->clearAllPopupVisibility()V

    :cond_0
    return-void
.end method

.method public final setMainColorAndPosition([FI)V
    .locals 3
    .param p1    # [F
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/ColorCompat;->HSVToColor([F)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;->mRecent:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorRecentViewModel;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v0, p2}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorRecentViewModel;->selectPaletteColor(II)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;->mPalettes:Ljava/util/List;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorPaletteViewModel;

    invoke-virtual {v2, v0, p2}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorPaletteViewModel;->selectPaletteColor(II)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;->mColorManager:Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v2, 0x1

    invoke-virtual {v1, p1, p2, v2}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->setSelectedColor([FIZ)V

    sget-object p1, Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;->INSTANCE:Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;->onColorSelected(I)V

    :cond_1
    return-void
.end method

.method public final setSettingModel(Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;)V
    .locals 3
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;->mSettingsModel:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;->mRecent:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorRecentViewModel;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;->mSettingsModel:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorRecentViewModel;->setSettingModel(Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;->mPalettes:Ljava/util/List;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;->mPalettes:Ljava/util/List;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorPaletteViewModel;

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;->mSettingsModel:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorPaletteViewModel;->setSettingModel(Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;->mSettingsModel:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;->mCallback:Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->addObserver(Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;)V

    return-void
.end method

.method public final swipePalettes(II)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "swipePalettes. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-gez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;->mColorManager:Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->prev()V

    sget-object p1, Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;->INSTANCE:Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;->onPaletteSwipeNext()V

    goto :goto_0

    :cond_0
    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;->mColorManager:Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->next()V

    sget-object p1, Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;->INSTANCE:Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;->onPaletteSwipePrev()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;->mColorManager:Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->setActivatedPage(I)V

    :goto_0
    return-void
.end method
