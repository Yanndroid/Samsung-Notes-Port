.class public final Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/ColorPickerViewModel;
.super Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsModelControlViewModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/ColorPickerViewModel$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B#\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\u000f\u001a\u00020\u0010H\u0016J\u0008\u0010\u0011\u001a\u00020\u0010H\u0016J\u0008\u0010\u0012\u001a\u00020\u0010H\u0014J\u0006\u0010\u0013\u001a\u00020\rJ\u0006\u0010\u0014\u001a\u00020\u0015J\u0008\u0010\u0016\u001a\u00020\u0010H\u0002R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/ColorPickerViewModel;",
        "Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsModelControlViewModel;",
        "facade",
        "Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;",
        "model",
        "Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;",
        "manager",
        "Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;",
        "(Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;)V",
        "mCallback",
        "Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;",
        "mColorModelsManager",
        "mColorPickerActionListener",
        "Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/listeners/IColorPickerActionListener;",
        "mSettingsModel",
        "clearModels",
        "",
        "closeCallbacks",
        "closeSubViewModels",
        "getColorPickerActionListener",
        "getPickerColor",
        "",
        "onClickClose",
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
.field public static final Companion:Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/ColorPickerViewModel$Companion;
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

.field private mColorModelsManager:Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final mColorPickerActionListener:Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/listeners/IColorPickerActionListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mSettingsModel:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/ColorPickerViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/ColorPickerViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/ColorPickerViewModel;->Companion:Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/ColorPickerViewModel$Companion;

    const-string v0, "ColorPickerViewModel"

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->createBrushTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/ColorPickerViewModel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;)V
    .locals 1
    .param p1    # Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsModelControlViewModel;-><init>(Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;)V

    new-instance p1, Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/ColorPickerViewModel$mCallback$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/ColorPickerViewModel$mCallback$1;-><init>(Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/ColorPickerViewModel;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/ColorPickerViewModel;->mCallback:Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;

    sget-object p1, Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/ColorPickerViewModel;->TAG:Ljava/lang/String;

    const-string v0, "ColorPickerViewModel construct "

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/ColorPickerViewModel;->mSettingsModel:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    iput-object p3, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/ColorPickerViewModel;->mColorModelsManager:Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsModelControlViewModel;->getMFacade()Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/ColorPickerViewModel;->mCallback:Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1, p2}, Lcom/samsung/android/support/senl/addons/base/common/IObservable;->addObserver(Ljava/beans/PropertyChangeListener;)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/ColorPickerViewModel;->mColorModelsManager:Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/ColorPickerViewModel;->mCallback:Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->addObserver(Lcom/samsung/android/support/senl/addons/base/common/IObservable$Observer;)V

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/ColorPickerViewModel;->mSettingsModel:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/ColorPickerViewModel;->mCallback:Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->addObserver(Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;)V

    :cond_2
    new-instance p1, Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/ColorPickerViewModel$mColorPickerActionListener$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/ColorPickerViewModel$mColorPickerActionListener$1;-><init>(Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/ColorPickerViewModel;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/ColorPickerViewModel;->mColorPickerActionListener:Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/listeners/IColorPickerActionListener;

    return-void
.end method

.method public static final synthetic access$getMSettingsModel$p(Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/ColorPickerViewModel;)Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/ColorPickerViewModel;->mSettingsModel:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    return-object p0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/ColorPickerViewModel;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$onClickClose(Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/ColorPickerViewModel;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/ColorPickerViewModel;->onClickClose()V

    return-void
.end method

.method private final onClickClose()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/ColorPickerViewModel;->mSettingsModel:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->setColorPickerVisibility(Z)V

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;->INSTANCE:Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;->onEyeDropperClosed()V

    return-void
.end method


# virtual methods
.method public clearModels()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/ColorPickerViewModel;->mColorModelsManager:Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/ColorPickerViewModel;->mCallback:Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->removeObserver(Lcom/samsung/android/support/senl/addons/base/common/IObservable$Observer;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/ColorPickerViewModel;->mColorModelsManager:Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsModelControlViewModel;->getMFacade()Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/ColorPickerViewModel;->mCallback:Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Lcom/samsung/android/support/senl/addons/base/common/IObservable;->removeObserver(Ljava/beans/PropertyChangeListener;)V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/ColorPickerViewModel;->mSettingsModel:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/ColorPickerViewModel;->mCallback:Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->removeObserver(Lcom/samsung/android/support/senl/addons/base/common/IObservable$Observer;)V

    :cond_2
    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/ColorPickerViewModel;->mSettingsModel:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    invoke-super {p0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsModelControlViewModel;->clearModels()V

    return-void
.end method

.method public closeCallbacks()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/ColorPickerViewModel;->mCallback:Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;

    invoke-super {p0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsModelControlViewModel;->closeCallbacks()V

    return-void
.end method

.method public closeSubViewModels()V
    .locals 0

    return-void
.end method

.method public final getColorPickerActionListener()Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/listeners/IColorPickerActionListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/ColorPickerViewModel;->mColorPickerActionListener:Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/listeners/IColorPickerActionListener;

    return-object v0
.end method

.method public final getPickerColor()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/ColorPickerViewModel;->mColorModelsManager:Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->getColorPickerColor()Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/color/IBaseColorModel;->getColor()I

    move-result v0

    const/high16 v1, -0x1000000

    or-int/2addr v0, v1

    return v0
.end method
