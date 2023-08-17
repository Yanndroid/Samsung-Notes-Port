.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IShortCutManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager$OnUnhandledKeyEventListenerImpl;
    }
.end annotation


# static fields
.field private static final SKIP_BLE_CLICK_EVENT_TIME:I = 0x190

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActionManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager;

.field public mBLEShortCutMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentTouchAction:I

.field public mGlobalShortCutMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyCopy:J

.field private mKeyCut:J

.field private mKeyPaste:J

.field private mKeySelectAll:J

.field private mLastTouchWithBtnTime:J

.field public mModeManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

.field private mOnUnhandledKeyEventListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager$OnUnhandledKeyEventListenerImpl;

.field public mProgressController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController;

.field private mScrollController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ScrollController;

.field public mShortCutMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;",
            ">;"
        }
    .end annotation
.end field

.field private mWritingToolManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "ShortCutManager"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mLastTouchWithBtnTime:J

    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mCurrentTouchAction:I

    return-void
.end method

.method private doAction(Landroid/view/KeyEvent;Ljava/util/HashMap;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/KeyEvent;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;",
            ">;)Z"
        }
    .end annotation

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;->convertKey(Landroid/view/KeyEvent;)J

    move-result-wide v0

    sget-object v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doAction# "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;->isEditType()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mModeManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->isEditMode()Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mWritingToolManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->isFloatingViewShown()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p1, "doAction# skip action. clearControl is true."

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_2
    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;->doAction(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method private initBLEShortcut(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarPresenter;)V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mBLEShortCutMap:Ljava/util/HashMap;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutRemoteFavoritePen;

    const/4 v2, 0x1

    invoke-direct {v1, p2, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutRemoteFavoritePen;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarPresenter;Z)V

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->putAction(Ljava/util/HashMap;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mBLEShortCutMap:Ljava/util/HashMap;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutRemoteFavoritePen;

    const/4 v3, 0x0

    invoke-direct {v1, p2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutRemoteFavoritePen;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarPresenter;Z)V

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->putAction(Ljava/util/HashMap;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mBLEShortCutMap:Ljava/util/HashMap;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutRemoteEraser;

    invoke-direct {v1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutRemoteEraser;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarPresenter;)V

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->putAction(Ljava/util/HashMap;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mBLEShortCutMap:Ljava/util/HashMap;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutRemoteUndo;

    invoke-direct {v1, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutRemoteUndo;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarPresenter;)V

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->putAction(Ljava/util/HashMap;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mBLEShortCutMap:Ljava/util/HashMap;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutRemoteRedo;

    invoke-direct {v1, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutRemoteRedo;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarPresenter;)V

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->putAction(Ljava/util/HashMap;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mBLEShortCutMap:Ljava/util/HashMap;

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutPageScroll;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mModeManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mScrollController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ScrollController;

    invoke-direct {p2, v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutPageScroll;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ScrollController;Z)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->putAction(Ljava/util/HashMap;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mBLEShortCutMap:Ljava/util/HashMap;

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutPageScroll;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mModeManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mScrollController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ScrollController;

    invoke-direct {p2, v0, v1, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutPageScroll;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ScrollController;Z)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->putAction(Ljava/util/HashMap;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mBLEShortCutMap:Ljava/util/HashMap;

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutPageZoom;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mActionManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager;

    invoke-direct {p2, v0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutPageZoom;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager;Z)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->putAction(Ljava/util/HashMap;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mBLEShortCutMap:Ljava/util/HashMap;

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutPageZoom;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mActionManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager;

    invoke-direct {p2, v0, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutPageZoom;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager;Z)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->putAction(Ljava/util/HashMap;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mBLEShortCutMap:Ljava/util/HashMap;

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutPageFitToScreen;

    invoke-direct {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutPageFitToScreen;-><init>()V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->putAction(Ljava/util/HashMap;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;)V

    return-void
.end method

.method private isTouchAction()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mCurrentTouchAction:I

    if-eqz v0, :cond_1

    const/16 v1, 0xd3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/16 v1, 0xd5

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private onKey(Landroid/view/View;Landroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mShortCutMap:Ljava/util/HashMap;

    if-nez p1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result p1

    const/high16 v1, 0x2000000

    and-int/2addr p1, v1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mShortCutMap:Ljava/util/HashMap;

    invoke-direct {p0, p2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->doAction(Landroid/view/KeyEvent;Ljava/util/HashMap;)Z

    move-result p1

    return p1
.end method

.method private putAction(Ljava/util/HashMap;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;",
            ">;",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;->getKey()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private putAction(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;",
            ">;",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;",
            ")V"
        }
    .end annotation

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;->getKey()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;->getKey()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p2, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public copy()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mShortCutMap:Ljava/util/HashMap;

    iget-wide v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mKeyCopy:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;->doAction()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public cut()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mShortCutMap:Ljava/util/HashMap;

    iget-wide v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mKeyCut:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;->doAction()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getKeyboardShortcutGroup(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;)Landroid/view/KeyboardShortcutGroup;
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x18
    .end annotation

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->isEditable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getMdeInfo()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->hasWritePermission()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/keyshortcut/KeyboardShortcutManager;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/keyshortcut/KeyboardShortcutManager;-><init>()V

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/keyshortcut/NotEditKeyboardShortcutManager;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/keyshortcut/NotEditKeyboardShortcutManager;-><init>()V

    :goto_1
    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->isSingleMode()Z

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/keyshortcut/KeyboardShortcutManager;->getKeyboardShortcutGroup(Landroid/app/Activity;Z)Landroid/view/KeyboardShortcutGroup;

    move-result-object p1

    return-object p1
.end method

.method public getOnUnhandledKeyEventListener(Z)Landroid/view/View$OnUnhandledKeyEventListener;
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1c
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mOnUnhandledKeyEventListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager$OnUnhandledKeyEventListenerImpl;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager$OnUnhandledKeyEventListenerImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager$OnUnhandledKeyEventListenerImpl;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/a;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mOnUnhandledKeyEventListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager$OnUnhandledKeyEventListenerImpl;

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mOnUnhandledKeyEventListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager$OnUnhandledKeyEventListenerImpl;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager$OnUnhandledKeyEventListenerImpl;->release()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mOnUnhandledKeyEventListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager$OnUnhandledKeyEventListenerImpl;

    invoke-virtual {p1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager$OnUnhandledKeyEventListenerImpl;->setShortCutManager(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;)V

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mOnUnhandledKeyEventListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager$OnUnhandledKeyEventListenerImpl;

    return-object p1
.end method

.method public init(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/richtext/RtToolbarPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/CompListPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getComposerControllerManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;->getScrollController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ScrollController;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mScrollController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ScrollController;

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getComposerModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getModeManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mModeManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getWritingToolManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mWritingToolManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;->getProgressController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mProgressController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController;

    iput-object p8, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mActionManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager;

    invoke-direct {p0, p3, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->initBLEShortcut(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarPresenter;)V

    new-instance p8, Ljava/util/HashMap;

    invoke-direct {p8}, Ljava/util/HashMap;-><init>()V

    iput-object p8, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mShortCutMap:Ljava/util/HashMap;

    new-instance p8, Ljava/util/HashMap;

    invoke-direct {p8}, Ljava/util/HashMap;-><init>()V

    iput-object p8, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mGlobalShortCutMap:Ljava/util/HashMap;

    new-instance p8, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutCopy;

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuConstants$ContextMenuCode;->CONTEXT_MENU_ID_COPY:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuConstants$ContextMenuCode;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuConstants$ContextMenuCode;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuManager;->getContextMenu(I)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuItem;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuCopy;

    invoke-direct {p8, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutCopy;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuCopy;)V

    invoke-virtual {p8}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;->getKey()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mKeyCopy:J

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mShortCutMap:Ljava/util/HashMap;

    invoke-virtual {p8}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;->getKey()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p8, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutCut;

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuConstants$ContextMenuCode;->CONTEXT_MENU_ID_CUT:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuConstants$ContextMenuCode;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuConstants$ContextMenuCode;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuManager;->getContextMenu(I)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuItem;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuCut;

    invoke-direct {p8, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutCut;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuCut;)V

    invoke-virtual {p8}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;->getKey()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mKeyCut:J

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mShortCutMap:Ljava/util/HashMap;

    invoke-virtual {p8}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;->getKey()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p8, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutPaste;

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuConstants$ContextMenuCode;->CONTEXT_MENU_ID_PASTE:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuConstants$ContextMenuCode;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuConstants$ContextMenuCode;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuManager;->getContextMenu(I)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuItem;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPaste;

    invoke-direct {p8, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutPaste;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPaste;)V

    invoke-virtual {p8}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;->getKey()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mKeyPaste:J

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mShortCutMap:Ljava/util/HashMap;

    invoke-virtual {p8}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;->getKey()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p8, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutSelectAll;

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuConstants$ContextMenuCode;->CONTEXT_MENU_ID_SELECT_ALL:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuConstants$ContextMenuCode;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuConstants$ContextMenuCode;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuManager;->getContextMenu(I)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuItem;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuSelectAll;

    invoke-direct {p8, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutSelectAll;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuSelectAll;)V

    invoke-virtual {p8}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;->getKey()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mKeySelectAll:J

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mShortCutMap:Ljava/util/HashMap;

    invoke-virtual {p8}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;->getKey()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p8, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mShortCutMap:Ljava/util/HashMap;

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutClipboard;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;->getClipboardController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutClipboard;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;)V

    invoke-direct {p0, p8, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->putAction(Ljava/util/HashMap;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mShortCutMap:Ljava/util/HashMap;

    new-instance p8, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutDelete;

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuConstants$ContextMenuCode;->CONTEXT_MENU_ID_OBJECT_DELETE:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuConstants$ContextMenuCode;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuConstants$ContextMenuCode;->getId()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuManager;->getContextMenu(I)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuItem;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuDelete;

    invoke-direct {p8, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutDelete;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuDelete;)V

    invoke-direct {p0, p2, p8}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->putAction(Ljava/util/HashMap;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mShortCutMap:Ljava/util/HashMap;

    new-instance p8, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutDeleteSecond;

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getTextManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuConstants$ContextMenuCode;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuManager;->getContextMenu(I)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuItem;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuDelete;

    invoke-direct {p8, v1, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutDeleteSecond;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuDelete;)V

    invoke-direct {p0, p2, p8}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->putAction(Ljava/util/HashMap;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mShortCutMap:Ljava/util/HashMap;

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutSave;

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getComposerModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object p8

    invoke-direct {p2, p8}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutSave;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->putAction(Ljava/util/HashMap;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mShortCutMap:Ljava/util/HashMap;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mGlobalShortCutMap:Ljava/util/HashMap;

    new-instance p8, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutFind;

    invoke-direct {p8, p3, p6}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutFind;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/CompListPresenter;)V

    invoke-direct {p0, p1, p2, p8}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->putAction(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mShortCutMap:Ljava/util/HashMap;

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutSetBold;

    iget-object p6, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mModeManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getTextManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

    move-result-object p8

    invoke-direct {p2, p6, p8}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutSetBold;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->putAction(Ljava/util/HashMap;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mShortCutMap:Ljava/util/HashMap;

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutSetItalic;

    iget-object p6, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mModeManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getTextManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

    move-result-object p8

    invoke-direct {p2, p6, p8}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutSetItalic;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->putAction(Ljava/util/HashMap;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mShortCutMap:Ljava/util/HashMap;

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutSetStrikethrough;

    iget-object p6, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mModeManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getTextManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

    move-result-object p8

    invoke-direct {p2, p6, p8}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutSetStrikethrough;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->putAction(Ljava/util/HashMap;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mShortCutMap:Ljava/util/HashMap;

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutSetUnderline;

    iget-object p6, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mModeManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getTextManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

    move-result-object p8

    invoke-direct {p2, p6, p8}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutSetUnderline;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->putAction(Ljava/util/HashMap;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mShortCutMap:Ljava/util/HashMap;

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutUndo;

    invoke-direct {p2, p3, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutUndo;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarPresenter;)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->putAction(Ljava/util/HashMap;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mShortCutMap:Ljava/util/HashMap;

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutRedo;

    invoke-direct {p2, p3, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutRedo;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarPresenter;)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->putAction(Ljava/util/HashMap;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mShortCutMap:Ljava/util/HashMap;

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutToolbarSetting;

    iget-object p6, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mModeManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    invoke-direct {p2, p6, p5, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutToolbarSetting;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/richtext/RtToolbarPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarPresenter;)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->putAction(Ljava/util/HashMap;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mShortCutMap:Ljava/util/HashMap;

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutSetFontSize;

    iget-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mModeManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    const/4 p6, 0x1

    invoke-direct {p2, p4, p5, p6}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutSetFontSize;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/richtext/RtToolbarPresenter;Z)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->putAction(Ljava/util/HashMap;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mShortCutMap:Ljava/util/HashMap;

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutSetFontSize;

    iget-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mModeManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    const/4 p8, 0x0

    invoke-direct {p2, p4, p5, p8}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutSetFontSize;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/richtext/RtToolbarPresenter;Z)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->putAction(Ljava/util/HashMap;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mShortCutMap:Ljava/util/HashMap;

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutSetAlign;

    iget-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mModeManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    invoke-direct {p2, p4, p5, p8}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutSetAlign;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/richtext/RtToolbarPresenter;I)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->putAction(Ljava/util/HashMap;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mShortCutMap:Ljava/util/HashMap;

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutSetAlign;

    iget-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mModeManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    const/4 v0, 0x2

    invoke-direct {p2, p4, p5, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutSetAlign;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/richtext/RtToolbarPresenter;I)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->putAction(Ljava/util/HashMap;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mShortCutMap:Ljava/util/HashMap;

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutSetAlign;

    iget-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mModeManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    invoke-direct {p2, p4, p5, p6}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutSetAlign;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/richtext/RtToolbarPresenter;I)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->putAction(Ljava/util/HashMap;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mShortCutMap:Ljava/util/HashMap;

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutToggleTaskSpan;

    iget-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mModeManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    const/16 v1, 0x8

    invoke-direct {p2, p4, p5, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutToggleTaskSpan;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/richtext/RtToolbarPresenter;I)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->putAction(Ljava/util/HashMap;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mShortCutMap:Ljava/util/HashMap;

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutToggleTaskSpan;

    iget-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mModeManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    const/4 v1, 0x4

    invoke-direct {p2, p4, p5, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutToggleTaskSpan;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/richtext/RtToolbarPresenter;I)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->putAction(Ljava/util/HashMap;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mShortCutMap:Ljava/util/HashMap;

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutToggleTaskSpan;

    iget-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mModeManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    invoke-direct {p2, p4, p5, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutToggleTaskSpan;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/richtext/RtToolbarPresenter;I)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->putAction(Ljava/util/HashMap;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mShortCutMap:Ljava/util/HashMap;

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutSetIndent;

    iget-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mActionManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager;

    invoke-direct {p2, p4, p6}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutSetIndent;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager;Z)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->putAction(Ljava/util/HashMap;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mShortCutMap:Ljava/util/HashMap;

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutSetIndent;

    iget-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mActionManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager;

    invoke-direct {p2, p4, p8}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutSetIndent;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager;Z)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->putAction(Ljava/util/HashMap;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mShortCutMap:Ljava/util/HashMap;

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutPageScroll;

    iget-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mModeManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    iget-object p5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mScrollController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ScrollController;

    invoke-direct {p2, p4, p5, p6}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutPageScroll;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ScrollController;Z)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->putAction(Ljava/util/HashMap;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mShortCutMap:Ljava/util/HashMap;

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutPageScroll;

    iget-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mModeManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    iget-object p5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mScrollController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ScrollController;

    invoke-direct {p2, p4, p5, p8}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutPageScroll;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ScrollController;Z)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->putAction(Ljava/util/HashMap;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mShortCutMap:Ljava/util/HashMap;

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutPageZoom;

    iget-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mActionManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager;

    invoke-direct {p2, p4, p6}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutPageZoom;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager;Z)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->putAction(Ljava/util/HashMap;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mShortCutMap:Ljava/util/HashMap;

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutPageZoom;

    iget-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mActionManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager;

    invoke-direct {p2, p4, p8}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutPageZoom;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager;Z)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->putAction(Ljava/util/HashMap;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mShortCutMap:Ljava/util/HashMap;

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutMoveScroll;

    iget-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mActionManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager;

    invoke-direct {p2, p4, p6, p6}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutMoveScroll;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager;ZZ)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->putAction(Ljava/util/HashMap;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mShortCutMap:Ljava/util/HashMap;

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutMoveScroll;

    iget-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mActionManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager;

    invoke-direct {p2, p4, p6, p8}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutMoveScroll;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager;ZZ)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->putAction(Ljava/util/HashMap;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mShortCutMap:Ljava/util/HashMap;

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutAddTextBox;

    iget-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mModeManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    invoke-direct {p2, p4, p7}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutAddTextBox;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->putAction(Ljava/util/HashMap;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mShortCutMap:Ljava/util/HashMap;

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutReadOnly;

    iget-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mActionManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager;

    invoke-direct {p2, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutReadOnly;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager;)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->putAction(Ljava/util/HashMap;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;)V

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getComposerModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->isPDFReader()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mShortCutMap:Ljava/util/HashMap;

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutEditMode;

    iget-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mActionManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager;

    invoke-direct {p2, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutEditMode;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager;)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->putAction(Ljava/util/HashMap;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mShortCutMap:Ljava/util/HashMap;

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutFullScreen;

    iget-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mActionManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager;

    invoke-direct {p2, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutFullScreen;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager;)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->putAction(Ljava/util/HashMap;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;)V

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getComposerModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->isSingleMode()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mShortCutMap:Ljava/util/HashMap;

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutPageList;

    iget-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mActionManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager;

    invoke-direct {p2, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutPageList;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager;)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->putAction(Ljava/util/HashMap;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;)V

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mShortCutMap:Ljava/util/HashMap;

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutPrint;

    iget-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mActionManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager;

    invoke-direct {p2, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutPrint;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager;)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->putAction(Ljava/util/HashMap;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mShortCutMap:Ljava/util/HashMap;

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutSeekAudio;

    iget-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mActionManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager;

    invoke-direct {p2, p4, p6}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutSeekAudio;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager;Z)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->putAction(Ljava/util/HashMap;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mShortCutMap:Ljava/util/HashMap;

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutSeekAudio;

    iget-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mActionManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager;

    invoke-direct {p2, p4, p8}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutSeekAudio;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager;Z)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->putAction(Ljava/util/HashMap;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mShortCutMap:Ljava/util/HashMap;

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutVoicePanel;

    iget-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mActionManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager;

    invoke-direct {p2, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutVoicePanel;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager;)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->putAction(Ljava/util/HashMap;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mShortCutMap:Ljava/util/HashMap;

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutAudioPlay;

    iget-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mActionManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager;

    invoke-direct {p2, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutAudioPlay;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager;)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->putAction(Ljava/util/HashMap;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mShortCutMap:Ljava/util/HashMap;

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutZoomLock;

    iget-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mActionManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager;

    invoke-direct {p2, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutZoomLock;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager;)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->putAction(Ljava/util/HashMap;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mShortCutMap:Ljava/util/HashMap;

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutNewPage;

    iget-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mActionManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager;

    invoke-direct {p2, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutNewPage;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager;)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->putAction(Ljava/util/HashMap;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mShortCutMap:Ljava/util/HashMap;

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/KeyboardShortcutInfo;

    invoke-direct {p2, p3, p6}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/KeyboardShortcutInfo;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;Z)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->putAction(Ljava/util/HashMap;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mShortCutMap:Ljava/util/HashMap;

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/KeyboardShortcutInfo;

    invoke-direct {p2, p3, p8}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/KeyboardShortcutInfo;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;Z)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->putAction(Ljava/util/HashMap;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;)V

    return-void
.end method

.method public onBLEShortcutFromActivity(ILandroid/view/KeyEvent;)Z
    .locals 6

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mBLEShortCutMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->isTouchAction()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "skip BLE key event because it has been touching the screen "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mCurrentTouchAction:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mLastTouchWithBtnTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x190

    cmp-long p1, v1, v3

    if-gtz p1, :cond_2

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "skip BLE key event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mLastTouchWithBtnTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mBLEShortCutMap:Ljava/util/HashMap;

    invoke-direct {p0, p2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->doAction(Landroid/view/KeyEvent;Ljava/util/HashMap;)Z

    move-result p1

    return p1
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mProgressController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController;->isLockedScreen()Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->TAG:Ljava/lang/String;

    const-string p2, "ShortCut# Progress is running. return"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->onKey(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mCurrentTouchAction:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getButtonState()I

    move-result p1

    const/4 v0, 0x0

    const/16 v1, 0x20

    if-eq p1, v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/16 v1, 0xd4

    if-eq p1, v1, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/16 v1, 0xd5

    if-ne p1, v1, :cond_2

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mLastTouchWithBtnTime:J

    :cond_2
    return v0
.end method

.method public onUnhandledKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mGlobalShortCutMap:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mProgressController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController;->isLockedScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->TAG:Ljava/lang/String;

    const-string v0, "onUnhandledKeyEvent# Progress is running. return"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mGlobalShortCutMap:Ljava/util/HashMap;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->doAction(Landroid/view/KeyEvent;Ljava/util/HashMap;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public paste()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mShortCutMap:Ljava/util/HashMap;

    iget-wide v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mKeyPaste:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;->doAction()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public selectAll()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mShortCutMap:Ljava/util/HashMap;

    iget-wide v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->mKeySelectAll:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;->doAction()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
