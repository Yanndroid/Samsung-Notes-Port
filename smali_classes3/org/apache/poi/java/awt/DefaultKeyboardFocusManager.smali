.class public Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;
.super Lorg/apache/poi/java/awt/KeyboardFocusManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager$DefaultKeyboardFocusManagerSentEvent;,
        Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager$TypeAheadMarker;
    }
.end annotation


# static fields
.field private static final NULL_COMPONENT_WR:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lorg/apache/poi/java/awt/Component;",
            ">;"
        }
    .end annotation
.end field

.field private static final NULL_WINDOW_WR:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lorg/apache/poi/java/awt/Window;",
            ">;"
        }
    .end annotation
.end field

.field private static final focusLog:Lorg/apache/poi/sun/util/logging/PlatformLogger;


# instance fields
.field private consumeNextKeyTyped:Z

.field private enqueuedKeyEvents:Ljava/util/LinkedList;

.field private inSendMessage:I

.field private realOppositeComponentWR:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lorg/apache/poi/java/awt/Component;",
            ">;"
        }
    .end annotation
.end field

.field private realOppositeWindowWR:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lorg/apache/poi/java/awt/Window;",
            ">;"
        }
    .end annotation
.end field

.field private typeAheadMarkers:Ljava/util/LinkedList;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "org.apache.poi.java.awt.focus.DefaultKeyboardFocusManager"

    invoke-static {v0}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->getLogger(Ljava/lang/String;)Lorg/apache/poi/sun/util/logging/PlatformLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->focusLog:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->NULL_WINDOW_WR:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->NULL_COMPONENT_WR:Ljava/lang/ref/WeakReference;

    new-instance v0, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager$1;

    invoke-direct {v0}, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager$1;-><init>()V

    invoke-static {v0}, Lorg/apache/poi/sun/awt/AWTAccessor;->setDefaultKeyboardFocusManagerAccessor(Lorg/apache/poi/sun/awt/AWTAccessor$DefaultKeyboardFocusManagerAccessor;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/java/awt/KeyboardFocusManager;-><init>()V

    sget-object v0, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->NULL_WINDOW_WR:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->realOppositeWindowWR:Ljava/lang/ref/WeakReference;

    sget-object v0, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->NULL_COMPONENT_WR:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->realOppositeComponentWR:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->enqueuedKeyEvents:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->typeAheadMarkers:Ljava/util/LinkedList;

    return-void
.end method

.method public static synthetic access$000(Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;Lorg/apache/poi/java/awt/event/KeyEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->consumeNextKeyTyped(Lorg/apache/poi/java/awt/event/KeyEvent;)V

    return-void
.end method

.method public static synthetic access$108(Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;)I
    .locals 2

    iget v0, p0, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->inSendMessage:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->inSendMessage:I

    return v0
.end method

.method public static synthetic access$110(Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;)I
    .locals 2

    iget v0, p0, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->inSendMessage:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->inSendMessage:I

    return v0
.end method

.method private consumeNextKeyTyped(Lorg/apache/poi/java/awt/event/KeyEvent;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->consumeNextKeyTyped:Z

    return-void
.end method

.method private consumeProcessedKeyEvent(Lorg/apache/poi/java/awt/event/KeyEvent;)Z
    .locals 3

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/event/KeyEvent;->getID()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x190

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->consumeNextKeyTyped:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/event/KeyEvent;->consume()V

    iput-boolean v1, p0, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->consumeNextKeyTyped:Z

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method private consumeTraversalKey(Lorg/apache/poi/java/awt/event/KeyEvent;)V
    .locals 2

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/event/KeyEvent;->consume()V

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/event/KeyEvent;->getID()I

    move-result v0

    const/16 v1, 0x191

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/event/KeyEvent;->isActionKey()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->consumeNextKeyTyped:Z

    return-void
.end method

.method private doRestoreFocus(Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/Component;Z)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, p2, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->canBeFocusOwner()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lorg/apache/poi/sun/awt/CausedFocusEvent$Cause;->ROLLBACK:Lorg/apache/poi/sun/awt/CausedFocusEvent$Cause;

    invoke-virtual {p1, v0, v2}, Lorg/apache/poi/java/awt/Component;->requestFocus(ZLorg/apache/poi/sun/awt/CausedFocusEvent$Cause;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->getNextFocusCandidate()Lorg/apache/poi/java/awt/Component;

    move-result-object p1

    if-eqz p1, :cond_1

    if-eq p1, p2, :cond_1

    sget-object p2, Lorg/apache/poi/sun/awt/CausedFocusEvent$Cause;->ROLLBACK:Lorg/apache/poi/sun/awt/CausedFocusEvent$Cause;

    invoke-virtual {p1, p2}, Lorg/apache/poi/java/awt/Component;->requestFocusInWindow(Lorg/apache/poi/sun/awt/CausedFocusEvent$Cause;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->clearGlobalFocusOwner()V

    return v1

    :cond_2
    return v0
.end method

.method private getOwningFrameDialog(Lorg/apache/poi/java/awt/Window;)Lorg/apache/poi/java/awt/Window;
    .locals 1

    :goto_0
    if-eqz p1, :cond_0

    instance-of v0, p1, Lorg/apache/poi/java/awt/Frame;

    if-nez v0, :cond_0

    instance-of v0, p1, Lorg/apache/poi/java/awt/Dialog;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->getParent()Lorg/apache/poi/java/awt/Container;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/java/awt/Window;

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method private hasMarker(Lorg/apache/poi/java/awt/Component;)Z
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->typeAheadMarkers:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager$TypeAheadMarker;

    iget-object v1, v1, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager$TypeAheadMarker;->untilFocused:Lorg/apache/poi/java/awt/Component;

    if-ne v1, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private preDispatchKeyEvent(Lorg/apache/poi/java/awt/event/KeyEvent;)Z
    .locals 3

    iget-boolean v0, p1, Lorg/apache/poi/java/awt/AWTEvent;->isPosted:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getFocusOwner()Lorg/apache/poi/java/awt/Component;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getFocusedWindow()Lorg/apache/poi/java/awt/Window;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Lorg/apache/poi/java/awt/event/KeyEvent;->setSource(Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/java/awt/event/KeyEvent;->getSource()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-static {p1}, Lorg/apache/poi/java/awt/EventQueue;->setCurrentEventAndMostRecentTime(Lorg/apache/poi/java/awt/AWTEvent;)V

    invoke-static {p1}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->isProxyActive(Lorg/apache/poi/java/awt/event/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/event/KeyEvent;->getSource()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/java/awt/Component;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Component;->getNativeContainer()Lorg/apache/poi/java/awt/Container;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Component;->getPeer()Lorg/apache/poi/java/awt/peer/ComponentPeer;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/peer/ComponentPeer;->handleEvent(Lorg/apache/poi/java/awt/AWTEvent;)V

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/event/KeyEvent;->consume()V

    :cond_3
    return v1

    :cond_4
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getKeyEventDispatchers()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/java/awt/KeyEventDispatcher;

    invoke-interface {v2, p1}, Lorg/apache/poi/java/awt/KeyEventDispatcher;->dispatchKeyEvent(Lorg/apache/poi/java/awt/event/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_5

    return v1

    :cond_6
    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->dispatchKeyEvent(Lorg/apache/poi/java/awt/event/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method private pumpApprovedKeyEvents()V
    .locals 7

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->enqueuedKeyEvents:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->enqueuedKeyEvents:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/java/awt/event/KeyEvent;

    iget-object v2, p0, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->typeAheadMarkers:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->typeAheadMarkers:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager$TypeAheadMarker;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/event/KeyEvent;->getWhen()J

    move-result-wide v3

    iget-wide v5, v2, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager$TypeAheadMarker;->after:J

    cmp-long v2, v3, v5

    if-lez v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_2

    sget-object v0, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->focusLog:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    const-string v2, "Pumping approved event {0}"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->finer(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->enqueuedKeyEvents:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    invoke-direct {p0, v1}, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->preDispatchKeyEvent(Lorg/apache/poi/java/awt/event/KeyEvent;)Z

    :cond_3
    if-nez v1, :cond_0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private purgeStampedEvents(JJ)V
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->enqueuedKeyEvents:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/java/awt/event/KeyEvent;

    invoke-virtual {v3}, Lorg/apache/poi/java/awt/event/KeyEvent;->getWhen()J

    move-result-wide v3

    cmp-long v5, p1, v3

    if-gez v5, :cond_3

    cmp-long v5, p3, v0

    if-ltz v5, :cond_2

    cmp-long v5, v3, p3

    if-gtz v5, :cond_3

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    :cond_3
    cmp-long v5, p3, v0

    if-ltz v5, :cond_1

    cmp-long v3, v3, p3

    if-lez v3, :cond_1

    :cond_4
    return-void
.end method

.method private restoreFocus(Lorg/apache/poi/java/awt/event/FocusEvent;Lorg/apache/poi/java/awt/Window;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->realOppositeComponentWR:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/java/awt/Component;

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/event/FocusEvent;->getComponent()Lorg/apache/poi/java/awt/Component;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    invoke-direct {p0, p2, v1, v2}, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->restoreFocus(Lorg/apache/poi/java/awt/Window;Lorg/apache/poi/java/awt/Component;Z)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->doRestoreFocus(Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/Component;Z)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/java/awt/event/FocusEvent;->getOppositeComponent()Lorg/apache/poi/java/awt/Component;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/event/FocusEvent;->getOppositeComponent()Lorg/apache/poi/java/awt/Component;

    move-result-object p1

    invoke-direct {p0, p1, v1, v2}, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->doRestoreFocus(Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/Component;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->clearGlobalFocusOwner()V

    :goto_0
    return-void
.end method

.method private restoreFocus(Lorg/apache/poi/java/awt/event/WindowEvent;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->realOppositeWindowWR:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/java/awt/Window;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0, v2, v1}, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->restoreFocus(Lorg/apache/poi/java/awt/Window;Lorg/apache/poi/java/awt/Component;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/java/awt/event/WindowEvent;->getOppositeWindow()Lorg/apache/poi/java/awt/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/event/WindowEvent;->getOppositeWindow()Lorg/apache/poi/java/awt/Window;

    move-result-object p1

    invoke-direct {p0, p1, v2, v1}, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->restoreFocus(Lorg/apache/poi/java/awt/Window;Lorg/apache/poi/java/awt/Component;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->clearGlobalFocusOwner()V

    :goto_0
    return-void
.end method

.method private restoreFocus(Lorg/apache/poi/java/awt/Component;Z)Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->doRestoreFocus(Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/Component;Z)Z

    move-result p1

    return p1
.end method

.method private restoreFocus(Lorg/apache/poi/java/awt/Window;Lorg/apache/poi/java/awt/Component;Z)Z
    .locals 2

    invoke-static {p1}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getMostRecentFocusOwner(Lorg/apache/poi/java/awt/Window;)Lorg/apache/poi/java/awt/Component;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    if-eq p1, p2, :cond_0

    invoke-direct {p0, p1, p2, v1}, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->doRestoreFocus(Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/Component;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->clearGlobalFocusOwner()V

    return v0

    :cond_1
    return v1
.end method

.method public static sendMessage(Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/AWTEvent;)Z
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p1, Lorg/apache/poi/java/awt/AWTEvent;->isPosted:Z

    invoke-static {}, Lorg/apache/poi/sun/awt/AppContext;->getAppContext()Lorg/apache/poi/sun/awt/AppContext;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/poi/java/awt/Component;->appContext:Lorg/apache/poi/sun/awt/AppContext;

    new-instance v1, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager$DefaultKeyboardFocusManagerSentEvent;

    invoke-direct {v1, p1, v0}, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager$DefaultKeyboardFocusManagerSentEvent;-><init>(Lorg/apache/poi/java/awt/AWTEvent;Lorg/apache/poi/sun/awt/AppContext;)V

    if-ne v0, p0, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/SentEvent;->dispatch()V

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/sun/awt/AppContext;->isDisposed()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-static {p0, v1}, Lorg/apache/poi/sun/awt/SunToolkit;->postEvent(Lorg/apache/poi/sun/awt/AppContext;Lorg/apache/poi/java/awt/AWTEvent;)V

    invoke-static {}, Lorg/apache/poi/java/awt/EventQueue;->isDispatchThread()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/java/awt/EventDispatchThread;

    const/16 v0, 0x3ef

    new-instance v2, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager$2;

    invoke-direct {v2, v1, p0}, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager$2;-><init>(Lorg/apache/poi/java/awt/SentEvent;Lorg/apache/poi/sun/awt/AppContext;)V

    invoke-virtual {p1, v0, v2}, Lorg/apache/poi/java/awt/EventDispatchThread;->pumpEvents(ILorg/apache/poi/java/awt/Conditional;)V

    goto :goto_1

    :cond_2
    monitor-enter v1

    :goto_0
    :try_start_0
    iget-boolean p1, v1, Lorg/apache/poi/java/awt/SentEvent;->dispatched:Z

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lorg/apache/poi/sun/awt/AppContext;->isDisposed()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_3

    const-wide/16 v2, 0x3e8

    :try_start_1
    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :cond_3
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    iget-boolean p0, v1, Lorg/apache/poi/java/awt/SentEvent;->dispatched:Z

    return p0

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method private typeAheadAssertions(Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/AWTEvent;)Z
    .locals 6

    invoke-direct {p0}, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->pumpApprovedKeyEvents()V

    invoke-virtual {p2}, Lorg/apache/poi/java/awt/AWTEvent;->getID()I

    move-result v0

    const/16 v1, 0x3ec

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->redispatchEvent(Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/AWTEvent;)V

    return v3

    :pswitch_0
    move-object p1, p2

    check-cast p1, Lorg/apache/poi/java/awt/event/KeyEvent;

    monitor-enter p0

    :try_start_0
    iget-boolean p2, p2, Lorg/apache/poi/java/awt/AWTEvent;->isPosted:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->typeAheadMarkers:Ljava/util/LinkedList;

    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->typeAheadMarkers:Ljava/util/LinkedList;

    invoke-virtual {p2}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager$TypeAheadMarker;

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/event/KeyEvent;->getWhen()J

    move-result-wide v0

    iget-wide v4, p2, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager$TypeAheadMarker;->after:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    sget-object v0, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->focusLog:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    const-string v1, "Storing event {0} because of marker {1}"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    aput-object p2, v4, v3

    invoke-virtual {v0, v1, v4}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->finer(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p2, p0, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->enqueuedKeyEvents:Ljava/util/LinkedList;

    invoke-virtual {p2, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    monitor-exit p0

    return v3

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, p1}, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->preDispatchKeyEvent(Lorg/apache/poi/java/awt/event/KeyEvent;)Z

    move-result p1

    return p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    sget-object v0, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->focusLog:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    const-string v1, "Markers before FOCUS_GAINED on {0}"

    new-array v4, v3, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-virtual {v0, v1, v4}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->finest(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->dumpMarkers()V

    monitor-enter p0

    :try_start_2
    invoke-direct {p0, p1}, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->hasMarker(Lorg/apache/poi/java/awt/Component;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->typeAheadMarkers:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager$TypeAheadMarker;

    iget-object v1, v1, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager$TypeAheadMarker;->untilFocused:Lorg/apache/poi/java/awt/Component;

    if-ne v1, p1, :cond_2

    move v2, v3

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_4
    const-string v1, "Event without marker {0}"

    new-array v4, v3, [Ljava/lang/Object;

    aput-object p2, v4, v2

    invoke-virtual {v0, v1, v4}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->finer(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    :goto_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    sget-object v0, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->focusLog:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    const-string v1, "Markers after FOCUS_GAINED"

    invoke-virtual {v0, v1}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->finest(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->dumpMarkers()V

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->redispatchEvent(Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/AWTEvent;)V

    invoke-direct {p0}, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->pumpApprovedKeyEvents()V

    return v3

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :pswitch_data_0
    .packed-switch 0x190
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public clearMarkers()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->typeAheadMarkers:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized dequeueKeyEvents(JLorg/apache/poi/java/awt/Component;)V
    .locals 5

    monitor-enter p0

    if-nez p3, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    sget-object v0, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->focusLog:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    const-string v1, "Dequeue at {0} for {1}"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p3, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->finer(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->typeAheadMarkers:Ljava/util/LinkedList;

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-ltz v1, :cond_1

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v4

    :cond_1
    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    if-gez v1, :cond_3

    :cond_2
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager$TypeAheadMarker;

    iget-object p1, p1, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager$TypeAheadMarker;->untilFocused:Lorg/apache/poi/java/awt/Component;

    if-ne p1, p3, :cond_2

    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    :try_start_1
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager$TypeAheadMarker;

    iget-object v2, v1, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager$TypeAheadMarker;->untilFocused:Lorg/apache/poi/java/awt/Component;

    if-ne v2, p3, :cond_3

    iget-wide v1, v1, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager$TypeAheadMarker;->after:J

    cmp-long v1, v1, p1

    if-nez v1, :cond_3

    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized discardKeyEvents(Lorg/apache/poi/java/awt/Component;)V
    .locals 11

    monitor-enter p0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->typeAheadMarkers:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, -0x1

    :goto_0
    move-wide v3, v1

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager$TypeAheadMarker;

    iget-object v6, v5, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager$TypeAheadMarker;->untilFocused:Lorg/apache/poi/java/awt/Component;

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-ne v6, p1, :cond_2

    :goto_2
    move v9, v7

    goto :goto_3

    :cond_2
    move v9, v8

    :goto_3
    if-nez v9, :cond_3

    if-eqz v6, :cond_3

    instance-of v10, v6, Lorg/apache/poi/java/awt/Window;

    if-nez v10, :cond_3

    invoke-virtual {v6}, Lorg/apache/poi/java/awt/Component;->getParent()Lorg/apache/poi/java/awt/Container;

    move-result-object v6

    if-ne v6, p1, :cond_2

    goto :goto_2

    :cond_3
    const-wide/16 v6, 0x0

    cmp-long v6, v3, v6

    if-eqz v9, :cond_5

    if-gez v6, :cond_4

    iget-wide v3, v5, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager$TypeAheadMarker;->after:J

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_5
    if-ltz v6, :cond_1

    iget-wide v5, v5, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager$TypeAheadMarker;->after:J

    invoke-direct {p0, v3, v4, v5, v6}, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->purgeStampedEvents(JJ)V

    goto :goto_0

    :cond_6
    invoke-direct {p0, v3, v4, v1, v2}, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->purgeStampedEvents(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public dispatchEvent(Lorg/apache/poi/java/awt/AWTEvent;)Z
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    sget-object v2, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->focusLog:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    const/16 v3, 0x1f4

    invoke-virtual {v2, v3}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v4

    if-eqz v4, :cond_1

    instance-of v4, v0, Lorg/apache/poi/java/awt/event/WindowEvent;

    if-nez v4, :cond_0

    instance-of v4, v0, Lorg/apache/poi/java/awt/event/FocusEvent;

    if-eqz v4, :cond_1

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/java/awt/AWTEvent;->getID()I

    move-result v4

    const/16 v5, 0x3ec

    const/16 v6, 0xcf

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eq v4, v5, :cond_24

    const/16 v5, 0x3ed

    if-eq v4, v5, :cond_1d

    const/16 v5, 0xce

    const/4 v10, 0x2

    packed-switch v4, :pswitch_data_0

    packed-switch v4, :pswitch_data_1

    return v7

    :pswitch_0
    invoke-direct {v1, v9, v0}, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->typeAheadAssertions(Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/AWTEvent;)Z

    move-result v0

    return v0

    :pswitch_1
    check-cast v0, Lorg/apache/poi/java/awt/event/WindowEvent;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getGlobalFocusedWindow()Lorg/apache/poi/java/awt/Window;

    move-result-object v4

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/event/WindowEvent;->getWindow()Lorg/apache/poi/java/awt/Window;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getGlobalActiveWindow()Lorg/apache/poi/java/awt/Window;

    move-result-object v11

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/event/WindowEvent;->getOppositeWindow()Lorg/apache/poi/java/awt/Window;

    move-result-object v12

    invoke-virtual {v2, v3}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "Active {0}, Current focused {1}, losing focus {2} opposite {3}"

    const/4 v13, 0x4

    new-array v13, v13, [Ljava/lang/Object;

    aput-object v11, v13, v7

    aput-object v4, v13, v8

    aput-object v6, v13, v10

    const/4 v7, 0x3

    aput-object v12, v13, v7

    invoke-virtual {v2, v3, v13}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    if-nez v4, :cond_3

    goto/16 :goto_c

    :cond_3
    iget v2, v1, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->inSendMessage:I

    if-nez v2, :cond_4

    if-ne v6, v11, :cond_4

    if-ne v12, v4, :cond_4

    goto/16 :goto_c

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getGlobalFocusOwner()Lorg/apache/poi/java/awt/Component;

    move-result-object v2

    if-eqz v2, :cond_8

    if-eqz v12, :cond_5

    invoke-virtual {v12}, Lorg/apache/poi/java/awt/Window;->getTemporaryLostComponent()Lorg/apache/poi/java/awt/Component;

    move-result-object v3

    if-nez v3, :cond_6

    invoke-virtual {v12}, Lorg/apache/poi/java/awt/Window;->getMostRecentFocusOwner()Lorg/apache/poi/java/awt/Component;

    move-result-object v3

    goto :goto_0

    :cond_5
    move-object v3, v9

    :cond_6
    :goto_0
    if-nez v3, :cond_7

    move-object/from16 v17, v12

    goto :goto_1

    :cond_7
    move-object/from16 v17, v3

    :goto_1
    new-instance v3, Lorg/apache/poi/sun/awt/CausedFocusEvent;

    const/16 v15, 0x3ed

    const/16 v16, 0x1

    sget-object v18, Lorg/apache/poi/sun/awt/CausedFocusEvent$Cause;->ACTIVATION:Lorg/apache/poi/sun/awt/CausedFocusEvent$Cause;

    move-object v13, v3

    move-object v14, v2

    invoke-direct/range {v13 .. v18}, Lorg/apache/poi/sun/awt/CausedFocusEvent;-><init>(Lorg/apache/poi/java/awt/Component;IZLorg/apache/poi/java/awt/Component;Lorg/apache/poi/sun/awt/CausedFocusEvent$Cause;)V

    invoke-static {v2, v3}, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->sendMessage(Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/AWTEvent;)Z

    :cond_8
    invoke-virtual {v1, v9}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->setGlobalFocusedWindow(Lorg/apache/poi/java/awt/Window;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getGlobalFocusedWindow()Lorg/apache/poi/java/awt/Window;

    move-result-object v2

    if-eqz v2, :cond_9

    :goto_2
    invoke-direct {v1, v4, v9, v8}, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->restoreFocus(Lorg/apache/poi/java/awt/Window;Lorg/apache/poi/java/awt/Component;Z)Z

    goto/16 :goto_c

    :cond_9
    invoke-virtual {v0, v4}, Lorg/apache/poi/java/awt/event/WindowEvent;->setSource(Ljava/lang/Object;)V

    if-eqz v12, :cond_a

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    goto :goto_3

    :cond_a
    sget-object v2, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->NULL_WINDOW_WR:Ljava/lang/ref/WeakReference;

    :goto_3
    iput-object v2, v1, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->realOppositeWindowWR:Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v4, v0}, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->typeAheadAssertions(Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/AWTEvent;)Z

    if-nez v12, :cond_31

    new-instance v0, Lorg/apache/poi/java/awt/event/WindowEvent;

    invoke-direct {v0, v11, v5, v9}, Lorg/apache/poi/java/awt/event/WindowEvent;-><init>(Lorg/apache/poi/java/awt/Window;ILorg/apache/poi/java/awt/Window;)V

    invoke-static {v11, v0}, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->sendMessage(Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/AWTEvent;)Z

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getGlobalActiveWindow()Lorg/apache/poi/java/awt/Window;

    move-result-object v0

    if-eqz v0, :cond_31

    goto :goto_2

    :pswitch_2
    check-cast v0, Lorg/apache/poi/java/awt/event/WindowEvent;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getGlobalFocusedWindow()Lorg/apache/poi/java/awt/Window;

    move-result-object v3

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/event/WindowEvent;->getWindow()Lorg/apache/poi/java/awt/Window;

    move-result-object v4

    if-ne v4, v3, :cond_b

    goto/16 :goto_c

    :cond_b
    invoke-virtual {v4}, Lorg/apache/poi/java/awt/Window;->isFocusableWindow()Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-virtual {v4}, Lorg/apache/poi/java/awt/Component;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-virtual {v4}, Lorg/apache/poi/java/awt/Component;->isDisplayable()Z

    move-result v5

    if-nez v5, :cond_c

    goto/16 :goto_5

    :cond_c
    if-eqz v3, :cond_d

    new-instance v5, Lorg/apache/poi/java/awt/event/WindowEvent;

    const/16 v11, 0xd0

    invoke-direct {v5, v3, v11, v4}, Lorg/apache/poi/java/awt/event/WindowEvent;-><init>(Lorg/apache/poi/java/awt/Window;ILorg/apache/poi/java/awt/Window;)V

    invoke-static {v3, v5}, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->sendMessage(Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/AWTEvent;)Z

    move-result v3

    if-nez v3, :cond_d

    invoke-virtual {v1, v9}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->setGlobalFocusOwner(Lorg/apache/poi/java/awt/Component;)V

    invoke-virtual {v1, v9}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->setGlobalFocusedWindow(Lorg/apache/poi/java/awt/Window;)V

    :cond_d
    invoke-direct {v1, v4}, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->getOwningFrameDialog(Lorg/apache/poi/java/awt/Window;)Lorg/apache/poi/java/awt/Window;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getGlobalActiveWindow()Lorg/apache/poi/java/awt/Window;

    move-result-object v5

    if-eq v3, v5, :cond_e

    new-instance v11, Lorg/apache/poi/java/awt/event/WindowEvent;

    const/16 v12, 0xcd

    invoke-direct {v11, v3, v12, v5}, Lorg/apache/poi/java/awt/event/WindowEvent;-><init>(Lorg/apache/poi/java/awt/Window;ILorg/apache/poi/java/awt/Window;)V

    invoke-static {v3, v11}, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->sendMessage(Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/AWTEvent;)Z

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getGlobalActiveWindow()Lorg/apache/poi/java/awt/Window;

    move-result-object v5

    if-eq v3, v5, :cond_e

    goto :goto_5

    :cond_e
    invoke-virtual {v1, v4}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->setGlobalFocusedWindow(Lorg/apache/poi/java/awt/Window;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getGlobalFocusedWindow()Lorg/apache/poi/java/awt/Window;

    move-result-object v3

    if-eq v4, v3, :cond_f

    goto :goto_5

    :cond_f
    iget v3, v1, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->inSendMessage:I

    if-nez v3, :cond_13

    invoke-static {v4}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getMostRecentFocusOwner(Lorg/apache/poi/java/awt/Window;)Lorg/apache/poi/java/awt/Component;

    move-result-object v3

    if-nez v3, :cond_10

    invoke-virtual {v4}, Lorg/apache/poi/java/awt/Window;->isFocusableWindow()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-virtual {v4}, Lorg/apache/poi/java/awt/Container;->getFocusTraversalPolicy()Lorg/apache/poi/java/awt/FocusTraversalPolicy;

    move-result-object v3

    invoke-virtual {v3, v4}, Lorg/apache/poi/java/awt/FocusTraversalPolicy;->getInitialComponent(Lorg/apache/poi/java/awt/Window;)Lorg/apache/poi/java/awt/Component;

    move-result-object v3

    :cond_10
    const-class v5, Lorg/apache/poi/java/awt/KeyboardFocusManager;

    monitor-enter v5

    :try_start_0
    invoke-virtual {v4, v9}, Lorg/apache/poi/java/awt/Window;->setTemporaryLostComponent(Lorg/apache/poi/java/awt/Component;)Lorg/apache/poi/java/awt/Component;

    move-result-object v9

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v5, 0x190

    invoke-virtual {v2, v5}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v5

    if-eqz v5, :cond_11

    const-string/jumbo v5, "tempLost {0}, toFocus {1}"

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v9, v10, v7

    aput-object v3, v10, v8

    invoke-virtual {v2, v5, v10}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->finer(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_11
    if-eqz v9, :cond_12

    sget-object v2, Lorg/apache/poi/sun/awt/CausedFocusEvent$Cause;->ACTIVATION:Lorg/apache/poi/sun/awt/CausedFocusEvent$Cause;

    invoke-virtual {v9, v2}, Lorg/apache/poi/java/awt/Component;->requestFocusInWindow(Lorg/apache/poi/sun/awt/CausedFocusEvent$Cause;)Z

    :cond_12
    if-eqz v3, :cond_13

    if-eq v3, v9, :cond_13

    sget-object v2, Lorg/apache/poi/sun/awt/CausedFocusEvent$Cause;->ACTIVATION:Lorg/apache/poi/sun/awt/CausedFocusEvent$Cause;

    invoke-virtual {v3, v2}, Lorg/apache/poi/java/awt/Component;->requestFocusInWindow(Lorg/apache/poi/sun/awt/CausedFocusEvent$Cause;)Z

    goto :goto_4

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_13
    :goto_4
    iget-object v2, v1, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->realOppositeWindowWR:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/java/awt/Window;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/event/WindowEvent;->getOppositeWindow()Lorg/apache/poi/java/awt/Window;

    move-result-object v3

    if-eq v2, v3, :cond_14

    new-instance v0, Lorg/apache/poi/java/awt/event/WindowEvent;

    invoke-direct {v0, v4, v6, v2}, Lorg/apache/poi/java/awt/event/WindowEvent;-><init>(Lorg/apache/poi/java/awt/Window;ILorg/apache/poi/java/awt/Window;)V

    :cond_14
    invoke-direct {v1, v4, v0}, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->typeAheadAssertions(Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/AWTEvent;)Z

    move-result v0

    return v0

    :cond_15
    :goto_5
    invoke-direct {v1, v0}, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->restoreFocus(Lorg/apache/poi/java/awt/event/WindowEvent;)V

    goto/16 :goto_c

    :pswitch_3
    move-object v2, v0

    check-cast v2, Lorg/apache/poi/java/awt/event/WindowEvent;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getGlobalActiveWindow()Lorg/apache/poi/java/awt/Window;

    move-result-object v3

    if-nez v3, :cond_16

    goto/16 :goto_c

    :cond_16
    invoke-virtual/range {p1 .. p1}, Ljava/util/EventObject;->getSource()Ljava/lang/Object;

    move-result-object v0

    if-eq v3, v0, :cond_17

    goto/16 :goto_c

    :cond_17
    invoke-virtual {v1, v9}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->setGlobalActiveWindow(Lorg/apache/poi/java/awt/Window;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getGlobalActiveWindow()Lorg/apache/poi/java/awt/Window;

    move-result-object v0

    if-eqz v0, :cond_18

    goto/16 :goto_c

    :cond_18
    invoke-virtual {v2, v3}, Lorg/apache/poi/java/awt/event/WindowEvent;->setSource(Ljava/lang/Object;)V

    invoke-direct {v1, v3, v2}, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->typeAheadAssertions(Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/AWTEvent;)Z

    move-result v0

    return v0

    :pswitch_4
    check-cast v0, Lorg/apache/poi/java/awt/event/WindowEvent;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getGlobalActiveWindow()Lorg/apache/poi/java/awt/Window;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/event/WindowEvent;->getWindow()Lorg/apache/poi/java/awt/Window;

    move-result-object v3

    if-ne v2, v3, :cond_19

    goto/16 :goto_c

    :cond_19
    if-eqz v2, :cond_1b

    new-instance v4, Lorg/apache/poi/java/awt/event/WindowEvent;

    invoke-direct {v4, v2, v5, v3}, Lorg/apache/poi/java/awt/event/WindowEvent;-><init>(Lorg/apache/poi/java/awt/Window;ILorg/apache/poi/java/awt/Window;)V

    invoke-static {v2, v4}, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->sendMessage(Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/AWTEvent;)Z

    move-result v2

    if-nez v2, :cond_1a

    invoke-virtual {v1, v9}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->setGlobalActiveWindow(Lorg/apache/poi/java/awt/Window;)V

    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getGlobalActiveWindow()Lorg/apache/poi/java/awt/Window;

    move-result-object v2

    if-eqz v2, :cond_1b

    goto/16 :goto_c

    :cond_1b
    invoke-virtual {v1, v3}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->setGlobalActiveWindow(Lorg/apache/poi/java/awt/Window;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getGlobalActiveWindow()Lorg/apache/poi/java/awt/Window;

    move-result-object v2

    if-eq v3, v2, :cond_1c

    goto/16 :goto_c

    :cond_1c
    invoke-direct {v1, v3, v0}, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->typeAheadAssertions(Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/AWTEvent;)Z

    move-result v0

    return v0

    :cond_1d
    move-object v4, v0

    check-cast v4, Lorg/apache/poi/java/awt/event/FocusEvent;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getGlobalFocusOwner()Lorg/apache/poi/java/awt/Component;

    move-result-object v5

    if-nez v5, :cond_1e

    invoke-virtual {v2, v3}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v3

    if-eqz v3, :cond_31

    const-string v3, "Skipping {0} because focus owner is null"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v0, v4, v7

    invoke-virtual {v2, v3, v4}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_c

    :cond_1e
    invoke-virtual {v4}, Lorg/apache/poi/java/awt/event/FocusEvent;->getOppositeComponent()Lorg/apache/poi/java/awt/Component;

    move-result-object v6

    if-ne v5, v6, :cond_1f

    invoke-virtual {v2, v3}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v3

    if-eqz v3, :cond_31

    const-string v3, "Skipping {0} because current focus owner is equal to opposite"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v0, v4, v7

    invoke-virtual {v2, v3, v4}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_c

    :cond_1f
    invoke-virtual {v1, v9}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->setGlobalFocusOwner(Lorg/apache/poi/java/awt/Component;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getGlobalFocusOwner()Lorg/apache/poi/java/awt/Component;

    move-result-object v0

    if-eqz v0, :cond_20

    :goto_6
    invoke-direct {v1, v5, v8}, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->restoreFocus(Lorg/apache/poi/java/awt/Component;Z)Z

    goto/16 :goto_c

    :cond_20
    invoke-virtual {v4}, Lorg/apache/poi/java/awt/event/FocusEvent;->isTemporary()Z

    move-result v0

    if-nez v0, :cond_21

    invoke-virtual {v1, v9}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->setGlobalPermanentFocusOwner(Lorg/apache/poi/java/awt/Component;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getGlobalPermanentFocusOwner()Lorg/apache/poi/java/awt/Component;

    move-result-object v0

    if-eqz v0, :cond_22

    goto :goto_6

    :cond_21
    invoke-virtual {v5}, Lorg/apache/poi/java/awt/Component;->getContainingWindow()Lorg/apache/poi/java/awt/Window;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-virtual {v0, v5}, Lorg/apache/poi/java/awt/Window;->setTemporaryLostComponent(Lorg/apache/poi/java/awt/Component;)Lorg/apache/poi/java/awt/Component;

    :cond_22
    invoke-virtual {v1, v9}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->setNativeFocusOwner(Lorg/apache/poi/java/awt/Component;)V

    invoke-virtual {v4, v5}, Lorg/apache/poi/java/awt/event/FocusEvent;->setSource(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lorg/apache/poi/java/awt/event/FocusEvent;->getOppositeComponent()Lorg/apache/poi/java/awt/Component;

    move-result-object v0

    if-eqz v0, :cond_23

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    goto :goto_7

    :cond_23
    sget-object v0, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->NULL_COMPONENT_WR:Ljava/lang/ref/WeakReference;

    :goto_7
    iput-object v0, v1, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->realOppositeComponentWR:Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v5, v4}, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->typeAheadAssertions(Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/AWTEvent;)Z

    move-result v0

    return v0

    :cond_24
    move-object v4, v0

    check-cast v4, Lorg/apache/poi/java/awt/event/FocusEvent;

    instance-of v5, v4, Lorg/apache/poi/sun/awt/CausedFocusEvent;

    if-eqz v5, :cond_25

    move-object v5, v4

    check-cast v5, Lorg/apache/poi/sun/awt/CausedFocusEvent;

    invoke-virtual {v5}, Lorg/apache/poi/sun/awt/CausedFocusEvent;->getCause()Lorg/apache/poi/sun/awt/CausedFocusEvent$Cause;

    move-result-object v5

    goto :goto_8

    :cond_25
    sget-object v5, Lorg/apache/poi/sun/awt/CausedFocusEvent$Cause;->UNKNOWN:Lorg/apache/poi/sun/awt/CausedFocusEvent$Cause;

    :goto_8
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getGlobalFocusOwner()Lorg/apache/poi/java/awt/Component;

    move-result-object v15

    invoke-virtual {v4}, Lorg/apache/poi/java/awt/event/FocusEvent;->getComponent()Lorg/apache/poi/java/awt/Component;

    move-result-object v14

    const-wide/16 v12, -0x1

    if-ne v15, v14, :cond_27

    invoke-virtual {v2, v3}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v3

    if-eqz v3, :cond_26

    const-string v3, "Skipping {0} because focus owner is the same"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v0, v4, v7

    invoke-virtual {v2, v3, v4}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_26
    invoke-virtual {v1, v12, v13, v14}, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->dequeueKeyEvents(JLorg/apache/poi/java/awt/Component;)V

    goto/16 :goto_c

    :cond_27
    if-eqz v15, :cond_28

    new-instance v0, Lorg/apache/poi/sun/awt/CausedFocusEvent;

    const/16 v2, 0x3ed

    invoke-virtual {v4}, Lorg/apache/poi/java/awt/event/FocusEvent;->isTemporary()Z

    move-result v3

    move-object v10, v0

    move-object v11, v15

    move v12, v2

    move v13, v3

    move-object v2, v14

    move-object v3, v15

    move-object v15, v5

    invoke-direct/range {v10 .. v15}, Lorg/apache/poi/sun/awt/CausedFocusEvent;-><init>(Lorg/apache/poi/java/awt/Component;IZLorg/apache/poi/java/awt/Component;Lorg/apache/poi/sun/awt/CausedFocusEvent$Cause;)V

    invoke-static {v3, v0}, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->sendMessage(Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/AWTEvent;)Z

    move-result v0

    if-nez v0, :cond_29

    invoke-virtual {v1, v9}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->setGlobalFocusOwner(Lorg/apache/poi/java/awt/Component;)V

    invoke-virtual {v4}, Lorg/apache/poi/java/awt/event/FocusEvent;->isTemporary()Z

    move-result v0

    if-nez v0, :cond_29

    invoke-virtual {v1, v9}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->setGlobalPermanentFocusOwner(Lorg/apache/poi/java/awt/Component;)V

    goto :goto_9

    :cond_28
    move-object v2, v14

    :cond_29
    :goto_9
    invoke-static {v2}, Lorg/apache/poi/sun/awt/SunToolkit;->getContainingWindow(Lorg/apache/poi/java/awt/Component;)Lorg/apache/poi/java/awt/Window;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getGlobalFocusedWindow()Lorg/apache/poi/java/awt/Window;

    move-result-object v3

    if-eqz v0, :cond_2a

    if-eq v0, v3, :cond_2a

    new-instance v7, Lorg/apache/poi/java/awt/event/WindowEvent;

    invoke-direct {v7, v0, v6, v3}, Lorg/apache/poi/java/awt/event/WindowEvent;-><init>(Lorg/apache/poi/java/awt/Window;ILorg/apache/poi/java/awt/Window;)V

    invoke-static {v0, v7}, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->sendMessage(Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/AWTEvent;)Z

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getGlobalFocusedWindow()Lorg/apache/poi/java/awt/Window;

    move-result-object v6

    if-eq v0, v6, :cond_2a

    const-wide/16 v6, -0x1

    invoke-virtual {v1, v6, v7, v2}, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->dequeueKeyEvents(JLorg/apache/poi/java/awt/Component;)V

    goto/16 :goto_c

    :cond_2a
    const-wide/16 v6, -0x1

    invoke-virtual {v2}, Lorg/apache/poi/java/awt/Component;->isFocusable()Z

    move-result v9

    if-eqz v9, :cond_2f

    invoke-virtual {v2}, Lorg/apache/poi/java/awt/Component;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_2f

    invoke-virtual {v2}, Lorg/apache/poi/java/awt/Component;->isEnabled()Z

    move-result v9

    if-nez v9, :cond_2b

    sget-object v9, Lorg/apache/poi/sun/awt/CausedFocusEvent$Cause;->UNKNOWN:Lorg/apache/poi/sun/awt/CausedFocusEvent$Cause;

    invoke-virtual {v5, v9}, Lorg/apache/poi/sun/awt/CausedFocusEvent$Cause;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2b

    goto :goto_a

    :cond_2b
    invoke-virtual {v1, v2}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->setGlobalFocusOwner(Lorg/apache/poi/java/awt/Component;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getGlobalFocusOwner()Lorg/apache/poi/java/awt/Component;

    move-result-object v3

    if-eq v2, v3, :cond_2c

    invoke-virtual {v1, v6, v7, v2}, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->dequeueKeyEvents(JLorg/apache/poi/java/awt/Component;)V

    invoke-static {}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->isAutoFocusTransferEnabled()Z

    move-result v2

    if-eqz v2, :cond_31

    goto :goto_b

    :cond_2c
    invoke-virtual {v4}, Lorg/apache/poi/java/awt/event/FocusEvent;->isTemporary()Z

    move-result v3

    if-nez v3, :cond_2d

    invoke-virtual {v1, v2}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->setGlobalPermanentFocusOwner(Lorg/apache/poi/java/awt/Component;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getGlobalPermanentFocusOwner()Lorg/apache/poi/java/awt/Component;

    move-result-object v3

    if-eq v2, v3, :cond_2d

    invoke-virtual {v1, v6, v7, v2}, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->dequeueKeyEvents(JLorg/apache/poi/java/awt/Component;)V

    invoke-static {}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->isAutoFocusTransferEnabled()Z

    move-result v2

    if-eqz v2, :cond_31

    goto :goto_b

    :cond_2d
    invoke-static {v2}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getHeavyweight(Lorg/apache/poi/java/awt/Component;)Lorg/apache/poi/java/awt/Component;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->setNativeFocusOwner(Lorg/apache/poi/java/awt/Component;)V

    iget-object v0, v1, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->realOppositeComponentWR:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lorg/apache/poi/java/awt/Component;

    if-eqz v14, :cond_2e

    invoke-virtual {v4}, Lorg/apache/poi/java/awt/event/FocusEvent;->getOppositeComponent()Lorg/apache/poi/java/awt/Component;

    move-result-object v0

    if-eq v14, v0, :cond_2e

    new-instance v0, Lorg/apache/poi/sun/awt/CausedFocusEvent;

    const/16 v12, 0x3ec

    invoke-virtual {v4}, Lorg/apache/poi/java/awt/event/FocusEvent;->isTemporary()Z

    move-result v13

    move-object v10, v0

    move-object v11, v2

    move-object v15, v5

    invoke-direct/range {v10 .. v15}, Lorg/apache/poi/sun/awt/CausedFocusEvent;-><init>(Lorg/apache/poi/java/awt/Component;IZLorg/apache/poi/java/awt/Component;Lorg/apache/poi/sun/awt/CausedFocusEvent$Cause;)V

    iput-boolean v8, v0, Lorg/apache/poi/java/awt/AWTEvent;->isPosted:Z

    move-object v4, v0

    :cond_2e
    invoke-direct {v1, v2, v4}, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->typeAheadAssertions(Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/AWTEvent;)Z

    move-result v0

    return v0

    :cond_2f
    :goto_a
    invoke-virtual {v1, v6, v7, v2}, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->dequeueKeyEvents(JLorg/apache/poi/java/awt/Component;)V

    invoke-static {}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->isAutoFocusTransferEnabled()Z

    move-result v2

    if-eqz v2, :cond_31

    if-nez v0, :cond_30

    invoke-direct {v1, v4, v3}, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->restoreFocus(Lorg/apache/poi/java/awt/event/FocusEvent;Lorg/apache/poi/java/awt/Window;)V

    goto :goto_c

    :cond_30
    :goto_b
    invoke-direct {v1, v4, v0}, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->restoreFocus(Lorg/apache/poi/java/awt/event/FocusEvent;Lorg/apache/poi/java/awt/Window;)V

    :cond_31
    :goto_c
    return v8

    nop

    :pswitch_data_0
    .packed-switch 0xcd
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x190
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public dispatchKeyEvent(Lorg/apache/poi/java/awt/event/KeyEvent;)Z
    .locals 3

    iget-boolean v0, p1, Lorg/apache/poi/java/awt/AWTEvent;->isPosted:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getFocusOwner()Lorg/apache/poi/java/awt/Component;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/java/awt/event/KeyEvent;->getComponent()Lorg/apache/poi/java/awt/Component;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Component;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Component;->canBeFocusOwner()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/event/KeyEvent;->isConsumed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/event/KeyEvent;->getComponent()Lorg/apache/poi/java/awt/Component;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Component;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->redispatchEvent(Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/AWTEvent;)V

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getKeyEventPostProcessors()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    if-nez v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/java/awt/KeyEventPostProcessor;

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/KeyEventPostProcessor;->postProcessKeyEvent(Lorg/apache/poi/java/awt/event/KeyEvent;)Z

    move-result v0

    goto :goto_1

    :cond_2
    if-nez v0, :cond_3

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->postProcessKeyEvent(Lorg/apache/poi/java/awt/event/KeyEvent;)Z

    :cond_3
    invoke-virtual {p1}, Lorg/apache/poi/java/awt/event/KeyEvent;->getComponent()Lorg/apache/poi/java/awt/Component;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Component;->getPeer()Lorg/apache/poi/java/awt/peer/ComponentPeer;

    move-result-object v1

    if-eqz v1, :cond_4

    instance-of v2, v1, Lorg/apache/poi/java/awt/peer/LightweightPeer;

    if-eqz v2, :cond_5

    :cond_4
    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Component;->getNativeContainer()Lorg/apache/poi/java/awt/Container;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Component;->getPeer()Lorg/apache/poi/java/awt/peer/ComponentPeer;

    move-result-object v1

    :cond_5
    if-eqz v1, :cond_6

    invoke-interface {v1, p1}, Lorg/apache/poi/java/awt/peer/ComponentPeer;->handleEvent(Lorg/apache/poi/java/awt/AWTEvent;)V

    :cond_6
    const/4 p1, 0x1

    return p1
.end method

.method public downFocusCycle(Lorg/apache/poi/java/awt/Container;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Container;->isFocusCycleRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Container;->transferFocusDownCycle()V

    :cond_0
    return-void
.end method

.method public dumpMarkers()V
    .locals 7

    sget-object v0, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->focusLog:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ">>> Markers dump, time: {0}"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->finest(Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->typeAheadMarkers:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->typeAheadMarkers:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager$TypeAheadMarker;

    sget-object v3, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->focusLog:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    const-string v4, "    {0}"

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v1, v6, v5

    invoke-virtual {v3, v4, v6}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->finest(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_1
    return-void
.end method

.method public declared-synchronized enqueueKeyEvents(JLorg/apache/poi/java/awt/Component;)V
    .locals 5

    monitor-enter p0

    if-nez p3, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    sget-object v0, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->focusLog:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    const-string v1, "Enqueue at {0} for {1}"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p3, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->finer(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->typeAheadMarkers:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget-object v1, p0, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->typeAheadMarkers:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    :goto_0
    if-lez v0, :cond_2

    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager$TypeAheadMarker;

    iget-wide v2, v2, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager$TypeAheadMarker;->after:J

    cmp-long v2, v2, p1

    if-gtz v2, :cond_1

    move v4, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->typeAheadMarkers:Ljava/util/LinkedList;

    new-instance v1, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager$TypeAheadMarker;

    invoke-direct {v1, p1, p2, p3}, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager$TypeAheadMarker;-><init>(JLorg/apache/poi/java/awt/Component;)V

    invoke-virtual {v0, v4, v1}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public focusNextComponent(Lorg/apache/poi/java/awt/Component;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->transferFocus()V

    :cond_0
    return-void
.end method

.method public focusPreviousComponent(Lorg/apache/poi/java/awt/Component;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->transferFocusBackward()V

    :cond_0
    return-void
.end method

.method public postProcessKeyEvent(Lorg/apache/poi/java/awt/event/KeyEvent;)Z
    .locals 2

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/event/KeyEvent;->isConsumed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/event/KeyEvent;->getComponent()Lorg/apache/poi/java/awt/Component;

    move-result-object v0

    instance-of v1, v0, Lorg/apache/poi/java/awt/Container;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Component;->getParent()Lorg/apache/poi/java/awt/Container;

    move-result-object v0

    :goto_0
    check-cast v0, Lorg/apache/poi/java/awt/Container;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lorg/apache/poi/java/awt/Container;->postProcessKeyEvent(Lorg/apache/poi/java/awt/event/KeyEvent;)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public processKeyEvent(Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/event/KeyEvent;)V
    .locals 6

    invoke-direct {p0, p2}, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->consumeProcessedKeyEvent(Lorg/apache/poi/java/awt/event/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lorg/apache/poi/java/awt/event/KeyEvent;->getID()I

    move-result v0

    const/16 v1, 0x190

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->getFocusTraversalKeysEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p2}, Lorg/apache/poi/java/awt/event/KeyEvent;->isConsumed()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {p2}, Lorg/apache/poi/java/awt/AWTKeyStroke;->getAWTKeyStrokeForEvent(Lorg/apache/poi/java/awt/event/KeyEvent;)Lorg/apache/poi/java/awt/AWTKeyStroke;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/AWTKeyStroke;->getKeyCode()I

    move-result v1

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/AWTKeyStroke;->getModifiers()I

    move-result v2

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/AWTKeyStroke;->isOnKeyRelease()Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    invoke-static {v1, v2, v3}, Lorg/apache/poi/java/awt/AWTKeyStroke;->getAWTKeyStroke(IIZ)Lorg/apache/poi/java/awt/AWTKeyStroke;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lorg/apache/poi/java/awt/Component;->getFocusTraversalKeys(I)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v5, :cond_d

    if-eqz v3, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {p2}, Lorg/apache/poi/java/awt/event/KeyEvent;->getID()I

    move-result v3

    const/16 v5, 0x191

    if-ne v3, v5, :cond_3

    iput-boolean v2, p0, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->consumeNextKeyTyped:Z

    :cond_3
    invoke-virtual {p1, v4}, Lorg/apache/poi/java/awt/Component;->getFocusTraversalKeys(I)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v3, :cond_b

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lorg/apache/poi/java/awt/Component;->getFocusTraversalKeys(I)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v3, :cond_9

    if-eqz v2, :cond_5

    goto :goto_1

    :cond_5
    instance-of v2, p1, Lorg/apache/poi/java/awt/Container;

    if-eqz v2, :cond_8

    move-object v2, p1

    check-cast v2, Lorg/apache/poi/java/awt/Container;

    invoke-virtual {v2}, Lorg/apache/poi/java/awt/Container;->isFocusCycleRoot()Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_0

    :cond_6
    const/4 v3, 0x3

    invoke-virtual {p1, v3}, Lorg/apache/poi/java/awt/Component;->getFocusTraversalKeys(I)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez v0, :cond_7

    if-eqz p1, :cond_e

    :cond_7
    invoke-direct {p0, p2}, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->consumeTraversalKey(Lorg/apache/poi/java/awt/event/KeyEvent;)V

    if-eqz v0, :cond_e

    invoke-virtual {p0, v2}, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->downFocusCycle(Lorg/apache/poi/java/awt/Container;)V

    goto :goto_4

    :cond_8
    :goto_0
    return-void

    :cond_9
    :goto_1
    invoke-direct {p0, p2}, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->consumeTraversalKey(Lorg/apache/poi/java/awt/event/KeyEvent;)V

    if-eqz v3, :cond_a

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->upFocusCycle(Lorg/apache/poi/java/awt/Component;)V

    :cond_a
    return-void

    :cond_b
    :goto_2
    invoke-direct {p0, p2}, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->consumeTraversalKey(Lorg/apache/poi/java/awt/event/KeyEvent;)V

    if-eqz v3, :cond_c

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->focusPreviousComponent(Lorg/apache/poi/java/awt/Component;)V

    :cond_c
    return-void

    :cond_d
    :goto_3
    invoke-direct {p0, p2}, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->consumeTraversalKey(Lorg/apache/poi/java/awt/event/KeyEvent;)V

    if-eqz v5, :cond_e

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->focusNextComponent(Lorg/apache/poi/java/awt/Component;)V

    :cond_e
    :goto_4
    return-void
.end method

.method public upFocusCycle(Lorg/apache/poi/java/awt/Component;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->transferFocusUpCycle()V

    :cond_0
    return-void
.end method
