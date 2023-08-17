.class public abstract Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsUndoRedoViewModel;
.super Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsModelControlViewModel;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/addons/base/viewmodel/IUndoRedoViewModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsUndoRedoViewModel$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\n\n\u0002\u0010\u0008\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008&\u0018\u0000 :2\u00020\u00012\u00020\u0002:\u0001:B\u000f\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\u0010\u001a\u00020\u0011H\u0016J\u0014\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016J\u0008\u0010\u0016\u001a\u00020\u0007H\u0016J\u0008\u0010\u0017\u001a\u00020\u0007H\u0016J\u0008\u0010\u0018\u001a\u00020\u0007H\u0016J\u0008\u0010\u0019\u001a\u00020\u0007H\u0016J\u0008\u0010\u001a\u001a\u00020\u0007H\u0016J\u0008\u0010\u001b\u001a\u00020\u0007H\u0016J\u0008\u0010\u001c\u001a\u00020\u0007H\u0016J\u0008\u0010\u001d\u001a\u00020\u0011H\u0002J\u0010\u0010\u001e\u001a\u00020\u00072\u0006\u0010\u001f\u001a\u00020 H\u0014J\u0010\u0010!\u001a\u00020\u00072\u0006\u0010\"\u001a\u00020 H\u0002J\u0010\u0010#\u001a\u00020\u00072\u0006\u0010\"\u001a\u00020 H\u0002J\u0010\u0010$\u001a\u00020\u00112\u0006\u0010\u001f\u001a\u00020 H\u0014J\u0010\u0010%\u001a\u00020\u00112\u0006\u0010\u001f\u001a\u00020 H\u0016J\u0008\u0010&\u001a\u00020\u0011H\u0016J\u0008\u0010\'\u001a\u00020\u0007H\u0016J\u0008\u0010(\u001a\u00020\u0011H\u0002J\u0008\u0010)\u001a\u00020\u0011H\u0016J\u0008\u0010*\u001a\u00020\u0007H\u0016J\u0012\u0010+\u001a\u00020\u00112\u0008\u0010\"\u001a\u0004\u0018\u00010,H\u0016J\u0010\u0010-\u001a\u00020\u00112\u0006\u0010\"\u001a\u00020,H\u0002J\u0010\u0010.\u001a\u00020\u00112\u0006\u0010\"\u001a\u00020,H\u0002J\u0010\u0010/\u001a\u00020\u00112\u0006\u0010\"\u001a\u00020,H\u0002J\u0010\u00100\u001a\u00020\u00112\u0006\u00101\u001a\u00020\u0007H\u0016J\u0010\u00102\u001a\u00020\u00112\u0006\u00103\u001a\u00020\u0007H\u0016J\u0010\u00104\u001a\u00020\u00112\u0006\u00105\u001a\u00020\u000bH\u0016J\u0010\u00106\u001a\u00020\u00112\u0006\u00103\u001a\u00020\u0007H\u0016J\u0010\u00107\u001a\u00020\u00072\u0006\u00108\u001a\u000209H\u0002R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000f\u00a8\u0006;"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsUndoRedoViewModel;",
        "Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsModelControlViewModel;",
        "Lcom/samsung/android/support/senl/addons/base/viewmodel/IUndoRedoViewModel;",
        "facade",
        "Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;",
        "(Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;)V",
        "mIsRedoLongPressed",
        "",
        "mIsUndoLongPressed",
        "mOnDoingRedoUndo",
        "mSettingsModel",
        "Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;",
        "getMSettingsModel",
        "()Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;",
        "setMSettingsModel",
        "(Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;)V",
        "clearModels",
        "",
        "getData",
        "",
        "id",
        "",
        "getOnDoingRedoUndo",
        "getRedoEnabled",
        "getRedoLongPressed",
        "getRedoSelected",
        "getUndoEnabled",
        "getUndoLongPressed",
        "getUndoSelected",
        "hidePopups",
        "isObjectChanged",
        "propertyId",
        "",
        "isReleaseAction",
        "action",
        "isTouchAction",
        "onObjectChanged",
        "onPropertyChanged",
        "onRedoClicked",
        "onRedoLongClicked",
        "onTouchReleased",
        "onUndoClicked",
        "onUndoLongClicked",
        "perform",
        "Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Action;",
        "performActionClick",
        "performActionLongClick",
        "performActionTouch",
        "setOnDoingRedoUndo",
        "onDoingRedoUndo",
        "setRedoLongPressed",
        "isLongPressed",
        "setSettingsModel",
        "model",
        "setUndoLongPressed",
        "touchUndoRedo",
        "touchEvent",
        "Lcom/samsung/android/support/senl/addons/base/model/event/ITouchEvent;",
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
.field private static final BINDING_ID_REDO_CLICKED:Ljava/lang/String; = "onRedoClicked"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final BINDING_ID_REDO_ENABLED:Ljava/lang/String; = "redoEnabled"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final BINDING_ID_REDO_LONG_CLICKED:Ljava/lang/String; = "onRedoLongClicked"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final BINDING_ID_REDO_SELECTED:Ljava/lang/String; = "redoSelected"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final BINDING_ID_UNDO_CLICKED:Ljava/lang/String; = "onUndoClicked"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final BINDING_ID_UNDO_ENABLED:Ljava/lang/String; = "undoEnabled"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final BINDING_ID_UNDO_LONG_CLICKED:Ljava/lang/String; = "onUndoLongClicked"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final BINDING_ID_UNDO_REDO_TOUCH:Ljava/lang/String; = "undoRedoTouch"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final BINDING_ID_UNDO_SELECTED:Ljava/lang/String; = "undoSelected"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsUndoRedoViewModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private mIsRedoLongPressed:Z

.field private mIsUndoLongPressed:Z

.field private mOnDoingRedoUndo:Z

.field private mSettingsModel:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsUndoRedoViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsUndoRedoViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsUndoRedoViewModel;->Companion:Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsUndoRedoViewModel$Companion;

    const-string v0, "AbsUndoRedoViewModel"

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsUndoRedoViewModel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsModelControlViewModel;-><init>(Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;)V

    return-void
.end method

.method private final hidePopups()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsUndoRedoViewModel;->mSettingsModel:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->hideShowingPopup()Z

    :cond_0
    return-void
.end method

.method private final isReleaseAction(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private final isTouchAction(I)Z
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private final onTouchReleased()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsUndoRedoViewModel;->setUndoLongPressed(Z)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsUndoRedoViewModel;->setRedoLongPressed(Z)V

    return-void
.end method

.method private final performActionClick(Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Action;)V
    .locals 1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Action;->getBindId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onUndoClicked"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsUndoRedoViewModel;->onUndoClicked()V

    goto :goto_0

    :cond_0
    const-string v0, "onRedoClicked"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsUndoRedoViewModel;->onRedoClicked()V

    :cond_1
    :goto_0
    return-void
.end method

.method private final performActionLongClick(Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Action;)V
    .locals 1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Action;->getBindId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onUndoLongClicked"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsUndoRedoViewModel;->onUndoLongClicked()Z

    goto :goto_0

    :cond_0
    const-string v0, "onRedoLongClicked"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsUndoRedoViewModel;->onRedoLongClicked()Z

    :cond_1
    :goto_0
    return-void
.end method

.method private final performActionTouch(Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Action;)V
    .locals 2

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Action;->getBindId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "undoRedoTouch"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Action;->getData()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.samsung.android.support.senl.addons.base.model.event.ITouchEvent"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/samsung/android/support/senl/addons/base/model/event/ITouchEvent;

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsUndoRedoViewModel;->touchUndoRedo(Lcom/samsung/android/support/senl/addons/base/model/event/ITouchEvent;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Action;->setResult(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private final touchUndoRedo(Lcom/samsung/android/support/senl/addons/base/model/event/ITouchEvent;)Z
    .locals 3

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/model/event/ITouchEvent;->getView()Landroid/view/View;

    move-result-object v0

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/model/event/ITouchEvent;->getEvent()Landroid/view/MotionEvent;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsUndoRedoViewModel;->isTouchAction(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsUndoRedoViewModel;->isReleaseAction(I)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsUndoRedoViewModel;->onTouchReleased()V

    :cond_1
    :goto_0
    return v2
.end method


# virtual methods
.method public clearModels()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsUndoRedoViewModel;->mSettingsModel:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    invoke-super {p0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsModelControlViewModel;->clearModels()V

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

    const-string/jumbo v0, "undoSelected"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsUndoRedoViewModel;->getUndoSelected()Z

    move-result p1

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_0
    const-string/jumbo v0, "undoEnabled"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsUndoRedoViewModel;->getUndoEnabled()Z

    move-result p1

    goto :goto_0

    :cond_1
    const-string v0, "redoSelected"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsUndoRedoViewModel;->getRedoSelected()Z

    move-result p1

    goto :goto_0

    :cond_2
    const-string v0, "redoEnabled"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsUndoRedoViewModel;->getRedoEnabled()Z

    move-result p1

    goto :goto_0

    :cond_3
    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getMSettingsModel()Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsUndoRedoViewModel;->mSettingsModel:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    return-object v0
.end method

.method public getOnDoingRedoUndo()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsUndoRedoViewModel;->mOnDoingRedoUndo:Z

    return v0
.end method

.method public getRedoEnabled()Z
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsModelControlViewModel;->getMFacade()Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;->isRedoable()Z

    move-result v0

    sget-object v1, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsUndoRedoViewModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRedoEnabled isRedoable/isRedoLongPressed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsUndoRedoViewModel;->mIsRedoLongPressed:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getRedoLongPressed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsUndoRedoViewModel;->mIsRedoLongPressed:Z

    return v0
.end method

.method public getRedoSelected()Z
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsModelControlViewModel;->getMFacade()Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;->isRedoable()Z

    move-result v0

    sget-object v1, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsUndoRedoViewModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRedoSelected isRedoable/isRedoLongPressed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsUndoRedoViewModel;->mIsRedoLongPressed:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsUndoRedoViewModel;->mIsRedoLongPressed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getUndoEnabled()Z
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsModelControlViewModel;->getMFacade()Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;->isUndoable()Z

    move-result v0

    sget-object v1, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsUndoRedoViewModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUndoEnabled isUndoable/isUndoLongPressed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsUndoRedoViewModel;->mIsUndoLongPressed:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getUndoLongPressed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsUndoRedoViewModel;->mIsUndoLongPressed:Z

    return v0
.end method

.method public getUndoSelected()Z
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsModelControlViewModel;->getMFacade()Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;->isUndoable()Z

    move-result v0

    sget-object v1, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsUndoRedoViewModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUndoSelected isUndoable/isUndoLongPressed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsUndoRedoViewModel;->mIsUndoLongPressed:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsUndoRedoViewModel;->mIsUndoLongPressed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isObjectChanged(I)Z
    .locals 1

    const/16 v0, 0x2af9

    if-lt p1, v0, :cond_0

    const/16 v0, 0x2aff

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onObjectChanged(I)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsUndoRedoViewModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onObjectChanged propertyId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x2afc

    const-string/jumbo v1, "undoEnabled"

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2afd

    const-string v2, "redoEnabled"

    if-eq p1, v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->notifyChanged(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p1, "redoSelected"

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->notifyChanged(Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->notifyChanged(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string/jumbo p1, "undoSelected"

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->notifyChanged(Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->notifyChanged(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public onPropertyChanged(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsUndoRedoViewModel;->isObjectChanged(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsUndoRedoViewModel;->onObjectChanged(I)V

    :cond_0
    return-void
.end method

.method public onRedoClicked()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsUndoRedoViewModel;->hidePopups()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsModelControlViewModel;->getMFacade()Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;->redo()V

    return-void
.end method

.method public onRedoLongClicked()Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsUndoRedoViewModel;->hidePopups()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsModelControlViewModel;->getMFacade()Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;->redoAll()V

    const/4 v0, 0x1

    return v0
.end method

.method public onUndoClicked()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsUndoRedoViewModel;->hidePopups()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsModelControlViewModel;->getMFacade()Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;->undo()V

    return-void
.end method

.method public onUndoLongClicked()Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsUndoRedoViewModel;->hidePopups()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsModelControlViewModel;->getMFacade()Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;->undoAll()V

    const/4 v0, 0x1

    return v0
.end method

.method public perform(Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Action;)V
    .locals 2
    .param p1    # Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Action;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Action;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "action_click"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsUndoRedoViewModel;->performActionClick(Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Action;)V

    goto :goto_1

    :cond_1
    const-string v1, "action_long_click"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsUndoRedoViewModel;->performActionLongClick(Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Action;)V

    goto :goto_1

    :cond_2
    const-string v1, "action_touch"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsUndoRedoViewModel;->performActionTouch(Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Action;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final setMSettingsModel(Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsUndoRedoViewModel;->mSettingsModel:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    return-void
.end method

.method public setOnDoingRedoUndo(Z)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsUndoRedoViewModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setOnDoingRedoUndo(), onDoingRedoUndo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsUndoRedoViewModel;->mOnDoingRedoUndo:Z

    return-void
.end method

.method public setRedoLongPressed(Z)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsUndoRedoViewModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRedoLongPressed(), isLongPressed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsUndoRedoViewModel;->mIsRedoLongPressed:Z

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

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsUndoRedoViewModel;->mSettingsModel:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    return-void
.end method

.method public setUndoLongPressed(Z)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsUndoRedoViewModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUndoLongPressed(), isLongPressed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsUndoRedoViewModel;->mIsUndoLongPressed:Z

    return-void
.end method
