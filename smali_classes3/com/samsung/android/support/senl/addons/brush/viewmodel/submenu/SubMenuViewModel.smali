.class public Lcom/samsung/android/support/senl/addons/brush/viewmodel/submenu/SubMenuViewModel;
.super Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsUndoRedoViewModel;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/addons/base/viewmodel/IEraserViewModel;
.implements Lcom/samsung/android/support/senl/addons/brush/viewmodel/submenu/ISubMenuViewModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/brush/viewmodel/submenu/SubMenuViewModel$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0016\u0018\u0000 \u001e2\u00020\u00012\u00020\u00022\u00020\u0003:\u0001\u001eB\u000f\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\n\u001a\u00020\u000bH\u0016J\u0008\u0010\u000c\u001a\u00020\u000bH\u0016J\u0008\u0010\r\u001a\u00020\u000bH\u0014J\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J\u0008\u0010\u0012\u001a\u00020\u0013H\u0016J\u0006\u0010\u0014\u001a\u00020\u0013J\u0006\u0010\u0015\u001a\u00020\u000bJ\u0008\u0010\u0016\u001a\u00020\u000bH\u0016J\u0008\u0010\u0017\u001a\u00020\u000bH\u0016J\u0012\u0010\u0018\u001a\u00020\u000b2\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0016J\u0010\u0010\u001b\u001a\u00020\u000b2\u0006\u0010\u001c\u001a\u00020\u001dH\u0016R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/brush/viewmodel/submenu/SubMenuViewModel;",
        "Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsUndoRedoViewModel;",
        "Lcom/samsung/android/support/senl/addons/base/viewmodel/IEraserViewModel;",
        "Lcom/samsung/android/support/senl/addons/brush/viewmodel/submenu/ISubMenuViewModel;",
        "facade",
        "Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;",
        "(Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;)V",
        "mCallback",
        "Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;",
        "mFacadeCallback",
        "clearModels",
        "",
        "closeCallbacks",
        "closeSubViewModels",
        "getData",
        "",
        "id",
        "",
        "getEraserEnabled",
        "",
        "getEraserSelection",
        "onEraserClick",
        "onRedoClicked",
        "onUndoClicked",
        "perform",
        "action",
        "Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Action;",
        "setSettingsModel",
        "model",
        "Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;",
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
.field private static final BINDING_ID_ERASER_CLICK:Ljava/lang/String; = "eraserClick"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final BINDING_ID_ERASER_ENABLE:Ljava/lang/String; = "eraserEnable"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final BINDING_ID_ERASER_SELECTION:Ljava/lang/String; = "eraserSelection"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Lcom/samsung/android/support/senl/addons/brush/viewmodel/submenu/SubMenuViewModel$Companion;
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

.field private mFacadeCallback:Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/submenu/SubMenuViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/submenu/SubMenuViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/submenu/SubMenuViewModel;->Companion:Lcom/samsung/android/support/senl/addons/brush/viewmodel/submenu/SubMenuViewModel$Companion;

    const-string v0, "SubMenuViewModel"

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->createBrushTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/submenu/SubMenuViewModel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;)V
    .locals 1
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsUndoRedoViewModel;-><init>(Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;)V

    new-instance p1, Lcom/samsung/android/support/senl/addons/brush/viewmodel/submenu/SubMenuViewModel$mCallback$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/submenu/SubMenuViewModel$mCallback$1;-><init>(Lcom/samsung/android/support/senl/addons/brush/viewmodel/submenu/SubMenuViewModel;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/submenu/SubMenuViewModel;->mCallback:Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;

    new-instance p1, Lcom/samsung/android/support/senl/addons/brush/viewmodel/submenu/SubMenuViewModel$mFacadeCallback$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/submenu/SubMenuViewModel$mFacadeCallback$1;-><init>(Lcom/samsung/android/support/senl/addons/brush/viewmodel/submenu/SubMenuViewModel;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/submenu/SubMenuViewModel;->mFacadeCallback:Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsModelControlViewModel;->getMFacade()Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/submenu/SubMenuViewModel;->mFacadeCallback:Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/addons/base/common/IObservable;->addObserver(Ljava/beans/PropertyChangeListener;)V

    return-void
.end method

.method public static final synthetic access$isObjectChanged(Lcom/samsung/android/support/senl/addons/brush/viewmodel/submenu/SubMenuViewModel;I)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsUndoRedoViewModel;->isObjectChanged(I)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$onObjectChanged(Lcom/samsung/android/support/senl/addons/brush/viewmodel/submenu/SubMenuViewModel;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsUndoRedoViewModel;->onObjectChanged(I)V

    return-void
.end method


# virtual methods
.method public clearModels()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsUndoRedoViewModel;->getMSettingsModel()Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/submenu/SubMenuViewModel;->mCallback:Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->removeObserver(Lcom/samsung/android/support/senl/addons/base/common/IObservable$Observer;)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsModelControlViewModel;->getMFacade()Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/submenu/SubMenuViewModel;->mFacadeCallback:Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/addons/base/common/IObservable;->removeObserver(Ljava/beans/PropertyChangeListener;)V

    :cond_1
    invoke-super {p0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsUndoRedoViewModel;->clearModels()V

    return-void
.end method

.method public closeCallbacks()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/submenu/SubMenuViewModel;->mCallback:Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/submenu/SubMenuViewModel;->mFacadeCallback:Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;

    invoke-super {p0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsModelControlViewModel;->closeCallbacks()V

    return-void
.end method

.method public closeSubViewModels()V
    .locals 0

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

    const-string v0, "eraserEnable"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/submenu/SubMenuViewModel;->getEraserEnabled()Z

    move-result p1

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "eraserSelection"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/submenu/SubMenuViewModel;->getEraserSelection()Z

    move-result p1

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsUndoRedoViewModel;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getEraserEnabled()Z
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsModelControlViewModel;->getMFacade()Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsModelControlViewModel;->getMFacade()Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;->getObjectCount()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsModelControlViewModel;->getMFacade()Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;->getObjectCount()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsUndoRedoViewModel;->getMSettingsModel()Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->getCurrentMode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsUndoRedoViewModel;->getMSettingsModel()Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->setMode(I)V

    :cond_1
    return v0
.end method

.method public final getEraserSelection()Z
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsUndoRedoViewModel;->getMSettingsModel()Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->getCurrentMode()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final onEraserClick()V
    .locals 5

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/submenu/SubMenuViewModel;->TAG:Ljava/lang/String;

    const-string v1, "onEraserClick"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsUndoRedoViewModel;->getMSettingsModel()Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->getCurrentMode()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsUndoRedoViewModel;->getMSettingsModel()Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsUndoRedoViewModel;->getMSettingsModel()Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->getEraserSettingVisibility()Z

    move-result v1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->setEraserSettingVisibility(Z)V

    goto :goto_3

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsUndoRedoViewModel;->getMSettingsModel()Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->getPenSettingVisibility()Z

    move-result v0

    if-ne v0, v2, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v3

    :goto_1
    const/4 v4, 0x2

    if-eqz v0, :cond_3

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;->INSTANCE:Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;

    invoke-virtual {v0, v4, v3}, Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;->onBrushEraserSettingPopupClose(IZ)V

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsUndoRedoViewModel;->getMSettingsModel()Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->getEraserSettingVisibility()Z

    move-result v0

    if-ne v0, v2, :cond_4

    move v0, v2

    goto :goto_2

    :cond_4
    move v0, v3

    :goto_2
    if-eqz v0, :cond_5

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;->INSTANCE:Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;

    invoke-virtual {v0, v4, v2}, Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;->onBrushEraserSettingPopupClose(IZ)V

    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsUndoRedoViewModel;->getMSettingsModel()Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->clearAllPopupVisibility()V

    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsUndoRedoViewModel;->getMSettingsModel()Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->setMode(I)V

    :cond_7
    :goto_3
    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;->INSTANCE:Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsUndoRedoViewModel;->getMSettingsModel()Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->getEraserSettingVisibility()Z

    move-result v1

    if-ne v1, v2, :cond_8

    goto :goto_4

    :cond_8
    move v2, v3

    :goto_4
    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;->onEraserClicked(Z)V

    const-string v0, "erase_button_click"

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->notifyChanged(Ljava/lang/Object;)V

    return-void
.end method

.method public onRedoClicked()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsUndoRedoViewModel;->onRedoClicked()V

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;->INSTANCE:Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;->onRedoClicked()V

    return-void
.end method

.method public onUndoClicked()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsUndoRedoViewModel;->onUndoClicked()V

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;->INSTANCE:Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;->onUndoClicked()V

    return-void
.end method

.method public perform(Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Action;)V
    .locals 2
    .param p1    # Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Action;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Action;->getBindId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "eraserClick"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/submenu/SubMenuViewModel;->onEraserClick()V

    :cond_1
    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsUndoRedoViewModel;->perform(Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Action;)V

    return-void
.end method

.method public setSettingsModel(Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;)V
    .locals 1
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsUndoRedoViewModel;->setSettingsModel(Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsUndoRedoViewModel;->getMSettingsModel()Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/submenu/SubMenuViewModel;->mCallback:Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->addObserver(Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;)V

    :cond_0
    return-void
.end method
