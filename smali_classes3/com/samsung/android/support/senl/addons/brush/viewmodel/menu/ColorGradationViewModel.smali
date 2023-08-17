.class public Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorGradationViewModel;
.super Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorGradationViewModel$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0014\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0008\u0016\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aB\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\n\u001a\u00020\u000bH\u0014J\u0008\u0010\u000c\u001a\u00020\u000bH\u0014J\u0008\u0010\r\u001a\u00020\u000bH\u0014J\u0006\u0010\u000e\u001a\u00020\u0006J\u0006\u0010\u000f\u001a\u00020\u0010J\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0010J\u0006\u0010\u0012\u001a\u00020\u0013J\u0006\u0010\u0014\u001a\u00020\u0013J\u0006\u0010\u0015\u001a\u00020\u000bJ\u0010\u0010\u0016\u001a\u00020\u000b2\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0010J\u0010\u0010\u0018\u001a\u00020\u000b2\u0008\u0010\u0019\u001a\u0004\u0018\u00010\tR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorGradationViewModel;",
        "Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel;",
        "manager",
        "Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;",
        "(Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;)V",
        "mCloseGradationListener",
        "Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/listeners/IGradationActionListener;",
        "mColorModelsManager",
        "mSettingsModel",
        "Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;",
        "clearModels",
        "",
        "closeCallbacks",
        "closeSubViewModels",
        "getActionListener",
        "getCurrentColor",
        "",
        "getRecentColors",
        "getRecentColorsNum",
        "",
        "getViewMode",
        "onColorGradationClick",
        "setColorGradationColor",
        "hsvColor",
        "setSettingModel",
        "settingsModel",
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
.field public static final Companion:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorGradationViewModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final mCloseGradationListener:Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/listeners/IGradationActionListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mColorModelsManager:Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;
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

    new-instance v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorGradationViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorGradationViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorGradationViewModel;->Companion:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorGradationViewModel$Companion;

    const-string v0, "ColorGradationViewModel"

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->createBrushTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorGradationViewModel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorGradationViewModel;->mColorModelsManager:Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;

    new-instance p1, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorGradationViewModel$mCloseGradationListener$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorGradationViewModel$mCloseGradationListener$1;-><init>(Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorGradationViewModel;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorGradationViewModel;->mCloseGradationListener:Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/listeners/IGradationActionListener;

    return-void
.end method

.method public static final synthetic access$getMColorModelsManager$p(Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorGradationViewModel;)Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorGradationViewModel;->mColorModelsManager:Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;

    return-object p0
.end method

.method public static final synthetic access$getMSettingsModel$p(Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorGradationViewModel;)Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorGradationViewModel;->mSettingsModel:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    return-object p0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorGradationViewModel;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public clearModels()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorGradationViewModel;->mSettingsModel:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorGradationViewModel;->mColorModelsManager:Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;

    return-void
.end method

.method public closeCallbacks()V
    .locals 0

    return-void
.end method

.method public closeSubViewModels()V
    .locals 0

    return-void
.end method

.method public final getActionListener()Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/listeners/IGradationActionListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorGradationViewModel;->mCloseGradationListener:Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/listeners/IGradationActionListener;

    return-object v0
.end method

.method public final getCurrentColor()[F
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorGradationViewModel;->mColorModelsManager:Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->getHSVColor()[F

    move-result-object v0

    return-object v0
.end method

.method public final getRecentColors()[F
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorGradationViewModel;->mColorModelsManager:Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->getColorPickerRecent()[F

    move-result-object v0

    return-object v0
.end method

.method public final getRecentColorsNum()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorGradationViewModel;->mColorModelsManager:Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->getColorPickerRecentNum()I

    move-result v0

    return v0
.end method

.method public final getViewMode()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorGradationViewModel;->mColorModelsManager:Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->getColorPickerViewMode()I

    move-result v0

    return v0
.end method

.method public final onColorGradationClick()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorGradationViewModel;->TAG:Ljava/lang/String;

    const-string v1, "onColorGradationClick."

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorGradationViewModel;->mSettingsModel:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->getColorGradationVisibility()Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorGradationViewModel;->mSettingsModel:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->clearAllPopupVisibility()V

    sget-object v1, Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;->INSTANCE:Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;->onColorPickerSelected()V

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorGradationViewModel;->mSettingsModel:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->setColorGradationVisibility(Z)V

    :cond_0
    return-void
.end method

.method public final setColorGradationColor([F)V
    .locals 3
    .param p1    # [F
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorGradationViewModel;->mColorModelsManager:Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->getColorGradationPosition()I

    move-result v0

    new-instance v1, Lcom/samsung/android/support/senl/addons/base/model/color/ColorModel;

    invoke-static {p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/ColorCompat;->HSVToColor([F)I

    move-result v2

    invoke-direct {v1, v2, p1, v0}, Lcom/samsung/android/support/senl/addons/base/model/color/ColorModel;-><init>(I[FI)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorGradationViewModel;->mColorModelsManager:Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v1, v0}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->updateColorAndPosition(Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;I)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorGradationViewModel;->mColorModelsManager:Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->saveColorPickerRecentColor([F)V

    :cond_0
    const-string p1, "color_gradation_color_select"

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->notifyChanged(Ljava/lang/Object;)V

    return-void
.end method

.method public final setSettingModel(Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorGradationViewModel;->mSettingsModel:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    return-void
.end method
