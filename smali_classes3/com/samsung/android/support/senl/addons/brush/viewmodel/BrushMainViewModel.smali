.class public Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMainViewModel;
.super Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsLifeCycleObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMainViewModel$Companion;,
        Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMainViewModel$SettingViewChangeListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0016\u0018\u0000 $2\u00020\u0001:\u0002$%B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0010\u001a\u00020\u0011H\u0016J\u0008\u0010\u0012\u001a\u00020\u0011H\u0014J\u0014\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0016J\u0006\u0010\u0017\u001a\u00020\u0007J\u0006\u0010\u0018\u001a\u00020\tJ\u0006\u0010\u0019\u001a\u00020\u000bJ\u0006\u0010\u001a\u001a\u00020\rJ\u0006\u0010\u001b\u001a\u00020\u000fJ\u0010\u0010\u001c\u001a\u00020\u00112\u0006\u0010\u001d\u001a\u00020\u001eH\u0016J\u0010\u0010\u001f\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u001eH\u0016J\n\u0010 \u001a\u0004\u0018\u00010!H\u0016J\u0010\u0010\"\u001a\u00020\u00112\u0006\u0010#\u001a\u00020\u001eH\u0016R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006&"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMainViewModel;",
        "Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsLifeCycleObserver;",
        "model",
        "Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;",
        "(Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;)V",
        "mModel",
        "mPanningVM",
        "Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/PanningBarViewModel;",
        "mPenupVM",
        "Lcom/samsung/android/support/senl/addons/brush/viewmodel/penup/PenupViewModel;",
        "mPreviewVM",
        "Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/PreviewImageViewModel;",
        "mSaveVM",
        "Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushSaveViewModel;",
        "mSubmenuVM",
        "Lcom/samsung/android/support/senl/addons/brush/viewmodel/submenu/SubMenuViewModel;",
        "clearModels",
        "",
        "closeSubViewModels",
        "getData",
        "",
        "id",
        "",
        "getPanningViewModel",
        "getPenupViewModel",
        "getPreviewImageViewModel",
        "getSaveViewModel",
        "getSubMenuViewModel",
        "onBLEEvent",
        "eventId",
        "",
        "onOptionItemSelected",
        "popupChangeListener",
        "Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/ISettingView$IChangeListener;",
        "setOrientation",
        "orientation",
        "Companion",
        "SettingViewChangeListener",
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
.field private static final BINDING_ID_INFLATED:Ljava/lang/String; = "inflated"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final BINDING_ID_MAIN_VIEW_MODEL:Ljava/lang/String; = "mainViewModel"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final BINDING_ID_SETTING_POPUP_LISTENER:Ljava/lang/String; = "settingPopupListener"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMainViewModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private mModel:Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mPanningVM:Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/PanningBarViewModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mPenupVM:Lcom/samsung/android/support/senl/addons/brush/viewmodel/penup/PenupViewModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mPreviewVM:Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/PreviewImageViewModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mSaveVM:Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushSaveViewModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mSubmenuVM:Lcom/samsung/android/support/senl/addons/brush/viewmodel/submenu/SubMenuViewModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMainViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMainViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMainViewModel;->Companion:Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMainViewModel$Companion;

    const-string v0, "BrushMainViewModel"

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->createBrushTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMainViewModel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;)V
    .locals 3
    .param p1    # Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->getSpenFacade()Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsLifeCycleObserver;-><init>(Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;)V

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMainViewModel;->TAG:Ljava/lang/String;

    const-string v1, "construct"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMainViewModel;->mModel:Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;

    new-instance v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penup/PenupViewModel;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsModelControlViewModel;->getMFacade()Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penup/PenupViewModel;-><init>(Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMainViewModel;->mPenupVM:Lcom/samsung/android/support/senl/addons/brush/viewmodel/penup/PenupViewModel;

    new-instance v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/PanningBarViewModel;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsModelControlViewModel;->getMFacade()Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/PanningBarViewModel;-><init>(Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/PanningBarViewModel$IPanningBarTouchListener;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMainViewModel;->mPanningVM:Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/PanningBarViewModel;

    new-instance v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushSaveViewModel;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->getSaveModel()Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushSaveViewModel;-><init>(Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMainViewModel;->mSaveVM:Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushSaveViewModel;

    new-instance v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/submenu/SubMenuViewModel;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->getSpenFacade()Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/submenu/SubMenuViewModel;-><init>(Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMainViewModel;->mSubmenuVM:Lcom/samsung/android/support/senl/addons/brush/viewmodel/submenu/SubMenuViewModel;

    new-instance v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/PreviewImageViewModel;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->getSpenFacade()Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/PreviewImageViewModel;-><init>(Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvasModel;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMainViewModel;->mPreviewVM:Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/PreviewImageViewModel;

    return-void
.end method

.method public static final synthetic access$getMFacade(Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMainViewModel;)Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsModelControlViewModel;->getMFacade()Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getMModel$p(Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMainViewModel;)Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMainViewModel;->mModel:Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;

    return-object p0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMainViewModel;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public clearModels()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMainViewModel;->mModel:Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;

    invoke-super {p0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsModelControlViewModel;->clearModels()V

    return-void
.end method

.method public closeSubViewModels()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMainViewModel;->mPenupVM:Lcom/samsung/android/support/senl/addons/brush/viewmodel/penup/PenupViewModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penup/PenupViewModel;->close()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMainViewModel;->mPenupVM:Lcom/samsung/android/support/senl/addons/brush/viewmodel/penup/PenupViewModel;

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMainViewModel;->mPanningVM:Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/PanningBarViewModel;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel;->close()V

    :cond_1
    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMainViewModel;->mPanningVM:Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/PanningBarViewModel;

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMainViewModel;->mSaveVM:Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushSaveViewModel;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel;->close()V

    :cond_2
    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMainViewModel;->mSaveVM:Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushSaveViewModel;

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMainViewModel;->mSubmenuVM:Lcom/samsung/android/support/senl/addons/brush/viewmodel/submenu/SubMenuViewModel;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel;->close()V

    :cond_3
    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMainViewModel;->mSubmenuVM:Lcom/samsung/android/support/senl/addons/brush/viewmodel/submenu/SubMenuViewModel;

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMainViewModel;->mPreviewVM:Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/PreviewImageViewModel;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel;->close()V

    :cond_4
    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMainViewModel;->mPreviewVM:Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/PreviewImageViewModel;

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

    const-string v0, "inflated"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsLifeCycleObserver;->getInflateCallback()Lcom/samsung/android/support/senl/addons/base/model/canvas/view/ICanvasContainer$OnInflateCallback;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "mainViewModel"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    const-string/jumbo v0, "settingPopupListener"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMainViewModel;->popupChangeListener()Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/ISettingView$IChangeListener;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsLifeCycleObserver;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getPanningViewModel()Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/PanningBarViewModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMainViewModel;->mPanningVM:Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/PanningBarViewModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final getPenupViewModel()Lcom/samsung/android/support/senl/addons/brush/viewmodel/penup/PenupViewModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMainViewModel;->mPenupVM:Lcom/samsung/android/support/senl/addons/brush/viewmodel/penup/PenupViewModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final getPreviewImageViewModel()Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/PreviewImageViewModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMainViewModel;->mPreviewVM:Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/PreviewImageViewModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final getSaveViewModel()Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushSaveViewModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMainViewModel;->mSaveVM:Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushSaveViewModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final getSubMenuViewModel()Lcom/samsung/android/support/senl/addons/brush/viewmodel/submenu/SubMenuViewModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMainViewModel;->mSubmenuVM:Lcom/samsung/android/support/senl/addons/brush/viewmodel/submenu/SubMenuViewModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method public onBLEEvent(I)V
    .locals 2

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/16 v0, 0x64

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsLifeCycleObserver;->onBLEEvent(I)V

    goto/16 :goto_1

    :cond_0
    sget-object p1, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMainViewModel;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BLE_DOUBLE_PRESS. mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMainViewModel;->mModel:Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->getSettingsModel()Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->getCurrentMode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMainViewModel;->mModel:Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->getSettingsModel()Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->getCurrentMode()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMainViewModel;->mModel:Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->getSettingsModel()Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->setMode(I)V

    const-string p1, "ble_double_press"

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMainViewModel;->mSubmenuVM:Lcom/samsung/android/support/senl/addons/brush/viewmodel/submenu/SubMenuViewModel;

    if-eqz p1, :cond_4

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/submenu/SubMenuViewModel;->getEraserEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMainViewModel;->mSubmenuVM:Lcom/samsung/android/support/senl/addons/brush/viewmodel/submenu/SubMenuViewModel;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/submenu/SubMenuViewModel;->onEraserClick()V

    goto :goto_1

    :cond_2
    sget-object p1, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMainViewModel;->TAG:Ljava/lang/String;

    const-string v0, "BLE_SINGLE_PRESS(SECOND)"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "ble_single_press_type_2"

    goto :goto_0

    :cond_3
    sget-object p1, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMainViewModel;->TAG:Ljava/lang/String;

    const-string v0, "BLE_SINGLE_PRESS"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "ble_single_press"

    :goto_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->notifyChanged(Ljava/lang/Object;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public onOptionItemSelected(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsLifeCycleObserver;->onOptionItemSelected(I)V

    const/16 v0, 0xbba

    if-eq p1, v0, :cond_1

    const/16 v0, 0xbbb

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMainViewModel;->mSubmenuVM:Lcom/samsung/android/support/senl/addons/brush/viewmodel/submenu/SubMenuViewModel;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/submenu/SubMenuViewModel;->onRedoClicked()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMainViewModel;->mSubmenuVM:Lcom/samsung/android/support/senl/addons/brush/viewmodel/submenu/SubMenuViewModel;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/submenu/SubMenuViewModel;->onUndoClicked()V

    :goto_0
    return-void
.end method

.method public popupChangeListener()Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/ISettingView$IChangeListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    new-instance v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMainViewModel$SettingViewChangeListener;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMainViewModel$SettingViewChangeListener;-><init>(Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMainViewModel;)V

    return-object v0
.end method

.method public setOrientation(I)V
    .locals 0

    return-void
.end method
