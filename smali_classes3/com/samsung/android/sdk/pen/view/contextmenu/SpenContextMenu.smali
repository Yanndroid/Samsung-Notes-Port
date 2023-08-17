.class public Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenuInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu$ContextMenuHandler;
    }
.end annotation


# static fields
.field private static final CONTEXT_MENU_SHOW_DELAY:I = 0x32

.field public static final HAPTIC_VIBRATION_PATTERN_LONG_PRESS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SpenContextMenu"


# instance fields
.field private mContentRect:Landroid/graphics/RectF;

.field private mContextMenuListener:Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenuListener;

.field private mHandler:Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu$ContextMenuHandler;

.field private mIsShowing:Z

.field private mNativeContextMenu:J

.field private mTextActionMode:Lcom/samsung/android/sdk/pen/view/contextmenu/ActionModeDelegate;

.field public mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;->mIsShowing:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;->mContextMenuListener:Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenuListener;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;->mView:Landroid/view/View;

    new-instance p1, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu$ContextMenuHandler;

    invoke-direct {p1, p0}, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu$ContextMenuHandler;-><init>(Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;->mHandler:Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu$ContextMenuHandler;

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;->Native_init(Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;->mNativeContextMenu:J

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;->Native_setTouchSlope(JI)V

    return-void
.end method

.method private static native Native_finalize(J)V
.end method

.method private static native Native_init(Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;)J
.end method

.method private static native Native_setShowStatus(JZ)V
.end method

.method private static native Native_setTouchSlope(JI)V
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;->hideContextMenu(Z)V

    return-void
.end method

.method private hasShownMenuItem(Landroid/view/Menu;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    move v1, v0

    :goto_0
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method private hideContextMenu(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;->mHandler:Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu$ContextMenuHandler;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu$ContextMenuHandler;->clearMessages()V

    :cond_0
    iget-boolean p1, p0, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;->mIsShowing:Z

    if-nez p1, :cond_1

    return-void

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "hideContextMenu mIsShowing : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;->mIsShowing:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SpenContextMenu"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;->mTextActionMode:Lcom/samsung/android/sdk/pen/view/contextmenu/ActionModeDelegate;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/view/contextmenu/ActionModeDelegate;->finish()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;->mTextActionMode:Lcom/samsung/android/sdk/pen/view/contextmenu/ActionModeDelegate;

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/samsung/android/spen/R$string;->composer_ctx_menu_closed:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;->mNativeContextMenu:J

    const/4 p1, 0x0

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;->Native_setShowStatus(JZ)V

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;->mIsShowing:Z

    return-void
.end method

.method private isWorkingInMainThread()Z
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static performHapticFeedback(Landroid/view/View;I)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/samsung/android/spen/libwrapper/ViewWrapper;->create(Landroid/content/Context;Landroid/view/View;)Lcom/samsung/android/spen/libwrapper/ViewWrapper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/spen/libwrapper/ViewWrapper;->performHapticFeedback(I)V
    :try_end_0
    .catch Lcom/samsung/android/spen/libwrapper/utils/PlatformException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;->hideContextMenu()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;->mView:Landroid/view/View;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;->mContextMenuListener:Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenuListener;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;->mHandler:Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu$ContextMenuHandler;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu$ContextMenuHandler;->close()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;->mHandler:Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu$ContextMenuHandler;

    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;->mNativeContextMenu:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;->Native_finalize(J)V

    iput-wide v2, p0, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;->mNativeContextMenu:J

    :cond_1
    return-void
.end method

.method public getNativeContextMenu()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;->mNativeContextMenu:J

    return-wide v0
.end method

.method public hideContextMenu()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;->isWorkingInMainThread()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SpenContextMenu"

    const-string v1, "hideContextMenu - It is not called from the main thread."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;->hideContextMenu(Z)V

    return-void
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActionItemClicked : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenContextMenu"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;->mContextMenuListener:Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenuListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenuListener;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 3

    const-string v0, "SpenContextMenu"

    const-string v1, "onCreateActionMode"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;->mContextMenuListener:Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenuListener;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenuListener;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;->hasShownMenuItem(Landroid/view/Menu;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreateActionMode() result="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;->hideContextMenu()V

    return v2
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;)V
    .locals 2

    const-string v0, "SpenContextMenu"

    const-string v1, "onCreateContextMenu()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;->mContextMenuListener:Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenuListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenuListener;->onCreateContextMenu(Landroid/view/ContextMenu;)V

    :cond_0
    return-void
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1

    const-string p1, "SpenContextMenu"

    const-string v0, "onDestroyActionMode"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;->mIsShowing:Z

    return-void
.end method

.method public onGetContentRect(Landroid/view/ActionMode;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onGetContentRect : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;->mContentRect:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SpenContextMenu"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;->mContentRect:Landroid/graphics/RectF;

    invoke-virtual {p1, p3}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onHideContextMenu()V
    .locals 2

    const-string v0, "SpenContextMenu"

    const-string v1, "onHideContextMenu()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;->isWorkingInMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;->hideContextMenu()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;->mHandler:Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu$ContextMenuHandler;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu$ContextMenuHandler;->sendHideMessage()V

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 0

    const-string p1, "SpenContextMenu"

    const-string p2, "onPrepareActionMode"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public onShowContextMenu(Landroid/graphics/RectF;Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onShowContextMenu() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", vibration : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenContextMenu"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;->mHandler:Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu$ContextMenuHandler;

    const/16 v1, 0x32

    invoke-virtual {v0, p1, p2, v1}, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu$ContextMenuHandler;->sendShowMessage(Landroid/graphics/RectF;ZI)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onUpdateContextMenuRect(Landroid/graphics/RectF;)V
    .locals 3

    const-string v0, "SpenContextMenu"

    if-nez p1, :cond_0

    const-string p1, "onUpdateContextMenuRect() : rect is null"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpdateContextMenuRect() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mIsShowing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;->mIsShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;->isWorkingInMainThread()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;->mHandler:Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu$ContextMenuHandler;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu$ContextMenuHandler;->sendUpdateMessage(Landroid/graphics/RectF;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;->mHandler:Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu$ContextMenuHandler;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu$ContextMenuHandler;->hasRectValidMessages()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;->setContentRect(Landroid/graphics/RectF;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;->mHandler:Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu$ContextMenuHandler;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu$ContextMenuHandler;->updateRect(Landroid/graphics/RectF;)V

    return-void
.end method

.method public setContentRect(Landroid/graphics/RectF;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setContentRect : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenContextMenu"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;->mContentRect:Landroid/graphics/RectF;

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;->mTextActionMode:Lcom/samsung/android/sdk/pen/view/contextmenu/ActionModeDelegate;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;->isWorkingInMainThread()Z

    move-result p1

    if-nez p1, :cond_1

    const-string/jumbo p1, "setContentRect() - It should be called from the main thread."

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;->mTextActionMode:Lcom/samsung/android/sdk/pen/view/contextmenu/ActionModeDelegate;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/view/contextmenu/ActionModeDelegate;->invalidateContentRect()V

    return-void
.end method

.method public setContextMenuListener(Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenuListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;->mContextMenuListener:Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenuListener;

    return-void
.end method

.method public showContextMenu(Landroid/graphics/RectF;Z)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;->isWorkingInMainThread()Z

    move-result v0

    const-string v1, "SpenContextMenu"

    if-nez v0, :cond_0

    const-string/jumbo p1, "showContextMenu - It is not called from the main thread."

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;->mView:Landroid/view/View;

    if-nez v0, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/view/SpenConfiguration;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/view/SpenConfiguration;->isDexStandAloneMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/view/SpenConfiguration;->isDexDualMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo p1, "showContextMenu - Device does not support Samsung DeX."

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;->mIsShowing:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;->mContentRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showContextMenu() : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;->mContentRect:Landroid/graphics/RectF;

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;->mTextActionMode:Lcom/samsung/android/sdk/pen/view/contextmenu/ActionModeDelegate;

    const/4 v0, 0x1

    if-nez p1, :cond_6

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    new-instance v1, Lcom/samsung/android/sdk/pen/view/contextmenu/ActionModeCallbackDelegate;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/pen/view/contextmenu/ActionModeCallbackDelegate;-><init>(Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenuInterface;)V

    const/16 v2, 0x1c

    if-lt p1, v2, :cond_4

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/spen/libwrapper/utils/PlatformUtils;->isSamsungDevice(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;->mView:Landroid/view/View;

    iget-object v1, v1, Lcom/samsung/android/sdk/pen/view/contextmenu/ActionModeCallbackDelegate;->mCallbackV23:Lcom/samsung/android/sdk/pen/view/contextmenu/ActionModeCallbackDelegate$TextActionModeCallback;

    sget v2, Lcom/samsung/android/spen/libwrapper/ActionModeWrapper;->SEM_TYPE_FLOATING:I

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;->mView:Landroid/view/View;

    iget-object v1, v1, Lcom/samsung/android/sdk/pen/view/contextmenu/ActionModeCallbackDelegate;->mCallbackV23:Lcom/samsung/android/sdk/pen/view/contextmenu/ActionModeCallbackDelegate$TextActionModeCallback;

    sget v2, Lcom/samsung/android/spen/libwrapper/ActionModeWrapper;->TYPE_FLOATING:I

    :goto_0
    invoke-virtual {p1, v1, v2}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p1

    if-nez p1, :cond_5

    return-void

    :cond_5
    new-instance v1, Lcom/samsung/android/sdk/pen/view/contextmenu/ActionModeDelegate;

    invoke-direct {v1, p1}, Lcom/samsung/android/sdk/pen/view/contextmenu/ActionModeDelegate;-><init>(Landroid/view/ActionMode;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;->mTextActionMode:Lcom/samsung/android/sdk/pen/view/contextmenu/ActionModeDelegate;

    if-eqz p2, :cond_7

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;->mView:Landroid/view/View;

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;->performHapticFeedback(Landroid/view/View;I)V

    goto :goto_1

    :cond_6
    const-string/jumbo p1, "showContextMenu() : mTextActionMode is not null so update position only."

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;->mTextActionMode:Lcom/samsung/android/sdk/pen/view/contextmenu/ActionModeDelegate;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/view/contextmenu/ActionModeDelegate;->invalidateContentRect()V

    :cond_7
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v1, Lcom/samsung/android/spen/R$string;->composer_ctx_menu_opened:I

    invoke-virtual {p2, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;->mIsShowing:Z

    iget-wide p1, p0, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;->mNativeContextMenu:J

    invoke-static {p1, p2, v0}, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;->Native_setShowStatus(JZ)V

    :cond_8
    :goto_2
    return-void
.end method

.method public startActionMode()V
    .locals 2

    const-string v0, "SpenContextMenu"

    const-string/jumbo v1, "startActionMode()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;->mContentRect:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;->showContextMenu(Landroid/graphics/RectF;Z)V

    return-void
.end method
