.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager$ActionType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public mActionsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager$ActionType;",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/AbsAction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "ActionManager"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addMap(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager$ActionType;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/AbsAction;)V
    .locals 1

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/AbsAction;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager;->mActionsMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private getAction(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager$ActionType;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/AbsAction;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager;->mActionsMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager;->TAG:Ljava/lang/String;

    const-string v0, "getAction : mActionsMap is null"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/AbsAction;

    if-nez v0, :cond_1

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAction : don\'t have : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method


# virtual methods
.method public doAction(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager$ActionType;)Z
    .locals 1

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager;->doAction(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager$ActionType;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public doAction(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager$ActionType;Ljava/lang/String;)Z
    .locals 4

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager;->getAction(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager$ActionType;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/AbsAction;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/AbsAction;->doAction(Ljava/lang/String;)Z

    move-result v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doAction : do type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " / result = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "/ caller = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public doAction(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager$ActionType;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 4

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager;->getAction(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager$ActionType;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/AbsAction;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {v0, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/AbsAction;->doAction(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doAction : do type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " / result = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "/ caller = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/arg = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public init(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/common/MenuPresenterContract$IMenuManager;)V
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager;->mActionsMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getComposerControllerManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;->getScrollController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ScrollController;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager$ActionType;->ZoomIn:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager$ActionType;

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionZoom;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionZoom;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ScrollController;Z)V

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager;->addMap(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager$ActionType;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/AbsAction;)V

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager$ActionType;->ZoomOut:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager$ActionType;

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionZoom;

    const/4 v4, 0x0

    invoke-direct {v2, v0, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionZoom;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ScrollController;Z)V

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager;->addMap(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager$ActionType;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/AbsAction;)V

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager$ActionType;->ReadOnlyMode:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager$ActionType;

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionReadonlyMode;

    invoke-direct {v2, p1, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionReadonlyMode;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/common/MenuPresenterContract$IMenuManager;)V

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager;->addMap(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager$ActionType;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/AbsAction;)V

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager$ActionType;->EditMode:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager$ActionType;

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionEditMode;

    invoke-direct {v2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionEditMode;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;)V

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager;->addMap(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager$ActionType;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/AbsAction;)V

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager$ActionType;->FullScreen:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager$ActionType;

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionFullScreen;

    invoke-direct {v2, p1, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionFullScreen;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/common/MenuPresenterContract$IMenuManager;)V

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager;->addMap(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager$ActionType;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/AbsAction;)V

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager$ActionType;->TextIndent:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager$ActionType;

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionTextIndent;

    invoke-direct {v2, p1, p2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionTextIndent;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;Z)V

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager;->addMap(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager$ActionType;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/AbsAction;)V

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager$ActionType;->TextOutdent:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager$ActionType;

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionTextIndent;

    invoke-direct {v2, p1, p2, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionTextIndent;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;Z)V

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager;->addMap(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager$ActionType;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/AbsAction;)V

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager$ActionType;->PageList:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager$ActionType;

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionPageList;

    invoke-direct {v2, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionPageList;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/common/MenuPresenterContract$IMenuManager;)V

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager;->addMap(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager$ActionType;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/AbsAction;)V

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager$ActionType;->SeekForward:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager$ActionType;

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionAudioSeek;

    invoke-direct {v2, p3, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionAudioSeek;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/common/MenuPresenterContract$IMenuManager;Z)V

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager;->addMap(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager$ActionType;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/AbsAction;)V

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager$ActionType;->SeekRewind:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager$ActionType;

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionAudioSeek;

    invoke-direct {v2, p3, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionAudioSeek;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/common/MenuPresenterContract$IMenuManager;Z)V

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager;->addMap(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager$ActionType;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/AbsAction;)V

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager$ActionType;->ToggleVoicePanel:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager$ActionType;

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionVoicePanel;

    invoke-direct {v2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionVoicePanel;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/common/MenuPresenterContract$IMenuManager;)V

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager;->addMap(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager$ActionType;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/AbsAction;)V

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager$ActionType;->ToggleAudioPlay:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager$ActionType;

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionAudioPlay;

    invoke-direct {v2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionAudioPlay;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/common/MenuPresenterContract$IMenuManager;)V

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager;->addMap(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager$ActionType;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/AbsAction;)V

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager$ActionType;->ToggleZoomLock:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager$ActionType;

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionZoomLock;

    invoke-direct {v2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionZoomLock;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/common/MenuPresenterContract$IMenuManager;)V

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager;->addMap(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager$ActionType;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/AbsAction;)V

    sget-object p3, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager$ActionType;->InsertNewPage:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager$ActionType;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionNewPage;

    invoke-direct {v1, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionNewPage;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;)V

    invoke-direct {p0, p3, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager;->addMap(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager$ActionType;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/AbsAction;)V

    sget-object p3, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager$ActionType;->Print:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager$ActionType;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionPrint;

    invoke-direct {v1, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionPrint;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;)V

    invoke-direct {p0, p3, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager;->addMap(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager$ActionType;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/AbsAction;)V

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager$ActionType;->MoveVerticalScroll:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager$ActionType;

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionMoveScroll;

    invoke-direct {p2, v0, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionMoveScroll;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ScrollController;Z)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager;->addMap(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager$ActionType;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/AbsAction;)V

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager$ActionType;->MoveHorizontalScroll:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager$ActionType;

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionMoveScroll;

    invoke-direct {p2, v0, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionMoveScroll;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ScrollController;Z)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager;->addMap(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager$ActionType;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/AbsAction;)V

    return-void
.end method
