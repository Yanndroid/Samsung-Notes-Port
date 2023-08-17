.class public abstract Lorg/apache/poi/java/awt/KeyboardFocusManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/java/awt/KeyEventDispatcher;
.implements Lorg/apache/poi/java/awt/KeyEventPostProcessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/java/awt/KeyboardFocusManager$HeavyweightFocusRequest;,
        Lorg/apache/poi/java/awt/KeyboardFocusManager$LightweightFocusRequest;
    }
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z = false

.field public static final BACKWARD_TRAVERSAL_KEYS:I = 0x1

.field public static final DOWN_CYCLE_TRAVERSAL_KEYS:I = 0x3

.field public static final FORWARD_TRAVERSAL_KEYS:I = 0x0

.field public static final SNFH_FAILURE:I = 0x0

.field public static final SNFH_SUCCESS_HANDLED:I = 0x1

.field public static final SNFH_SUCCESS_PROCEED:I = 0x2

.field public static final TRAVERSAL_KEY_LENGTH:I = 0x4

.field public static final UP_CYCLE_TRAVERSAL_KEYS:I = 0x2

.field private static activeWindow:Lorg/apache/poi/java/awt/Window; = null

.field private static allowSyncFocusRequests:Z = false

.field private static clearingCurrentLightweightRequests:Z = false

.field private static currentFocusCycleRoot:Lorg/apache/poi/java/awt/Container; = null

.field private static currentLightweightRequests:Ljava/util/LinkedList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lorg/apache/poi/java/awt/KeyboardFocusManager$LightweightFocusRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultFocusTraversalKeyPropertyNames:[Ljava/lang/String;

.field private static final defaultFocusTraversalKeyStrokes:[[Lorg/apache/poi/java/awt/AWTKeyStroke;

.field private static volatile disableRestoreFocus:Z = false

.field private static final focusLog:Lorg/apache/poi/sun/util/logging/PlatformLogger;

.field private static focusOwner:Lorg/apache/poi/java/awt/Component; = null

.field private static focusedWindow:Lorg/apache/poi/java/awt/Window; = null

.field private static heavyweightRequests:Ljava/util/LinkedList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lorg/apache/poi/java/awt/KeyboardFocusManager$HeavyweightFocusRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final log:Lorg/apache/poi/sun/util/logging/PlatformLogger;

.field private static mostRecentFocusOwners:Ljava/util/Map; = null

.field private static newFocusOwner:Lorg/apache/poi/java/awt/Component; = null

.field private static final notPrivileged:Ljava/lang/String; = "this KeyboardFocusManager is not installed in the current thread\'s context"

.field private static permanentFocusOwner:Lorg/apache/poi/java/awt/Component;

.field public static proxyActive:Ljava/lang/reflect/Field;

.field private static replaceKeyboardFocusManagerPermission:Lorg/apache/poi/java/awt/AWTPermission;


# instance fields
.field private changeSupport:Ljava/beans/PropertyChangeSupport;

.field public transient currentSequencedEvent:Lorg/apache/poi/java/awt/SequencedEvent;

.field private defaultFocusTraversalKeys:[Ljava/util/Set;

.field private defaultPolicy:Lorg/apache/poi/java/awt/FocusTraversalPolicy;

.field private keyEventDispatchers:Ljava/util/LinkedList;

.field private keyEventPostProcessors:Ljava/util/LinkedList;

.field public transient peer:Lorg/apache/poi/java/awt/peer/KeyboardFocusManagerPeer;

.field private vetoableSupport:Ljava/beans/VetoableChangeSupport;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    const-string v0, "org.apache.poi.java.awt.focus.KeyboardFocusManager"

    invoke-static {v0}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->getLogger(Ljava/lang/String;)Lorg/apache/poi/sun/util/logging/PlatformLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/java/awt/KeyboardFocusManager;->focusLog:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->loadLibraries()V

    invoke-static {}, Lorg/apache/poi/java/awt/GraphicsEnvironment;->isHeadless()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->initIDs()V

    :cond_0
    new-instance v0, Lorg/apache/poi/java/awt/KeyboardFocusManager$1;

    invoke-direct {v0}, Lorg/apache/poi/java/awt/KeyboardFocusManager$1;-><init>()V

    invoke-static {v0}, Lorg/apache/poi/sun/awt/AWTAccessor;->setKeyboardFocusManagerAccessor(Lorg/apache/poi/sun/awt/AWTAccessor$KeyboardFocusManagerAccessor;)V

    const-string v0, "org.apache.poi.java.awt.KeyboardFocusManager"

    invoke-static {v0}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->getLogger(Ljava/lang/String;)Lorg/apache/poi/sun/util/logging/PlatformLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/java/awt/KeyboardFocusManager;->log:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    const-string v0, "forwardDefaultFocusTraversalKeys"

    const-string v1, "backwardDefaultFocusTraversalKeys"

    const-string/jumbo v2, "upCycleDefaultFocusTraversalKeys"

    const-string v3, "downCycleDefaultFocusTraversalKeys"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/java/awt/KeyboardFocusManager;->defaultFocusTraversalKeyPropertyNames:[Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [[Lorg/apache/poi/java/awt/AWTKeyStroke;

    const/4 v1, 0x2

    new-array v2, v1, [Lorg/apache/poi/java/awt/AWTKeyStroke;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-static {v3, v4, v4}, Lorg/apache/poi/java/awt/AWTKeyStroke;->getAWTKeyStroke(IIZ)Lorg/apache/poi/java/awt/AWTKeyStroke;

    move-result-object v5

    aput-object v5, v2, v4

    const/16 v5, 0x82

    invoke-static {v3, v5, v4}, Lorg/apache/poi/java/awt/AWTKeyStroke;->getAWTKeyStroke(IIZ)Lorg/apache/poi/java/awt/AWTKeyStroke;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v2, v6

    aput-object v2, v0, v4

    new-array v2, v1, [Lorg/apache/poi/java/awt/AWTKeyStroke;

    const/16 v5, 0x41

    invoke-static {v3, v5, v4}, Lorg/apache/poi/java/awt/AWTKeyStroke;->getAWTKeyStroke(IIZ)Lorg/apache/poi/java/awt/AWTKeyStroke;

    move-result-object v5

    aput-object v5, v2, v4

    const/16 v5, 0xc3

    invoke-static {v3, v5, v4}, Lorg/apache/poi/java/awt/AWTKeyStroke;->getAWTKeyStroke(IIZ)Lorg/apache/poi/java/awt/AWTKeyStroke;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object v2, v0, v6

    new-array v2, v4, [Lorg/apache/poi/java/awt/AWTKeyStroke;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v4, [Lorg/apache/poi/java/awt/AWTKeyStroke;

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/poi/java/awt/KeyboardFocusManager;->defaultFocusTraversalKeyStrokes:[[Lorg/apache/poi/java/awt/AWTKeyStroke;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lorg/apache/poi/java/awt/KeyboardFocusManager;->mostRecentFocusOwners:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lorg/apache/poi/java/awt/KeyboardFocusManager;->heavyweightRequests:Ljava/util/LinkedList;

    sput-boolean v6, Lorg/apache/poi/java/awt/KeyboardFocusManager;->allowSyncFocusRequests:Z

    const/4 v0, 0x0

    sput-object v0, Lorg/apache/poi/java/awt/KeyboardFocusManager;->newFocusOwner:Lorg/apache/poi/java/awt/Component;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/poi/java/awt/DefaultFocusTraversalPolicy;

    invoke-direct {v0}, Lorg/apache/poi/java/awt/DefaultFocusTraversalPolicy;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/java/awt/KeyboardFocusManager;->defaultPolicy:Lorg/apache/poi/java/awt/FocusTraversalPolicy;

    const/4 v0, 0x4

    new-array v1, v0, [Ljava/util/Set;

    iput-object v1, p0, Lorg/apache/poi/java/awt/KeyboardFocusManager;->defaultFocusTraversalKeys:[Ljava/util/Set;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/poi/java/awt/KeyboardFocusManager;->currentSequencedEvent:Lorg/apache/poi/java/awt/SequencedEvent;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    move v4, v1

    :goto_1
    sget-object v5, Lorg/apache/poi/java/awt/KeyboardFocusManager;->defaultFocusTraversalKeyStrokes:[[Lorg/apache/poi/java/awt/AWTKeyStroke;

    aget-object v6, v5, v2

    array-length v6, v6

    if-ge v4, v6, :cond_0

    aget-object v5, v5, v2

    aget-object v5, v5, v4

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lorg/apache/poi/java/awt/KeyboardFocusManager;->defaultFocusTraversalKeys:[Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v3, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    goto :goto_2

    :cond_1
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    :goto_2
    aput-object v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->initPeer()V

    return-void
.end method

.method private _clearGlobalFocusOwner()V
    .locals 2

    invoke-static {}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->markClearGlobalFocusOwner()Lorg/apache/poi/java/awt/Window;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/java/awt/KeyboardFocusManager;->peer:Lorg/apache/poi/java/awt/peer/KeyboardFocusManagerPeer;

    invoke-interface {v1, v0}, Lorg/apache/poi/java/awt/peer/KeyboardFocusManagerPeer;->clearGlobalFocusOwner(Lorg/apache/poi/java/awt/Window;)V

    return-void
.end method

.method public static synthetic access$000()Lorg/apache/poi/java/awt/Container;
    .locals 1

    sget-object v0, Lorg/apache/poi/java/awt/KeyboardFocusManager;->currentFocusCycleRoot:Lorg/apache/poi/java/awt/Container;

    return-object v0
.end method

.method public static synthetic access$100()Lorg/apache/poi/sun/util/logging/PlatformLogger;
    .locals 1

    sget-object v0, Lorg/apache/poi/java/awt/KeyboardFocusManager;->log:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    return-object v0
.end method

.method private checkKFMSecurity()V
    .locals 1

    invoke-static {}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getCurrentKeyboardFocusManager()Lorg/apache/poi/java/awt/KeyboardFocusManager;

    move-result-object v0

    if-eq p0, v0, :cond_0

    invoke-static {}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->checkReplaceKFMPermission()V

    :cond_0
    return-void
.end method

.method private static checkReplaceKFMPermission()V
    .locals 3

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lorg/apache/poi/java/awt/KeyboardFocusManager;->replaceKeyboardFocusManagerPermission:Lorg/apache/poi/java/awt/AWTPermission;

    if-nez v1, :cond_0

    new-instance v1, Lorg/apache/poi/java/awt/AWTPermission;

    const-string v2, "replaceKeyboardFocusManager"

    invoke-direct {v1, v2}, Lorg/apache/poi/java/awt/AWTPermission;-><init>(Ljava/lang/String;)V

    sput-object v1, Lorg/apache/poi/java/awt/KeyboardFocusManager;->replaceKeyboardFocusManagerPermission:Lorg/apache/poi/java/awt/AWTPermission;

    :cond_0
    sget-object v1, Lorg/apache/poi/java/awt/KeyboardFocusManager;->replaceKeyboardFocusManagerPermission:Lorg/apache/poi/java/awt/AWTPermission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    :cond_1
    return-void
.end method

.method public static clearMostRecentFocusOwner(Lorg/apache/poi/java/awt/Component;)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getParent()Lorg/apache/poi/java/awt/Container;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    instance-of v2, v1, Lorg/apache/poi/java/awt/Window;

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/Component;->getParent()Lorg/apache/poi/java/awt/Container;

    move-result-object v1

    goto :goto_0

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-class v2, Lorg/apache/poi/java/awt/KeyboardFocusManager;

    monitor-enter v2

    const/4 v0, 0x0

    if-eqz v1, :cond_2

    :try_start_1
    move-object v3, v1

    check-cast v3, Lorg/apache/poi/java/awt/Window;

    invoke-static {v3}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getMostRecentFocusOwner(Lorg/apache/poi/java/awt/Window;)Lorg/apache/poi/java/awt/Component;

    move-result-object v3

    if-ne v3, p0, :cond_2

    move-object v3, v1

    check-cast v3, Lorg/apache/poi/java/awt/Window;

    invoke-static {v3, v0}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->setMostRecentFocusOwner(Lorg/apache/poi/java/awt/Window;Lorg/apache/poi/java/awt/Component;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    check-cast v1, Lorg/apache/poi/java/awt/Window;

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/Window;->getTemporaryLostComponent()Lorg/apache/poi/java/awt/Component;

    move-result-object v3

    if-ne v3, p0, :cond_3

    invoke-virtual {v1, v0}, Lorg/apache/poi/java/awt/Window;->setTemporaryLostComponent(Lorg/apache/poi/java/awt/Component;)Lorg/apache/poi/java/awt/Component;

    :cond_3
    monitor-exit v2

    return-void

    :goto_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method private static dispatchAndCatchException(Ljava/lang/Throwable;Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/event/FocusEvent;)Ljava/lang/Throwable;
    .locals 0

    :try_start_0
    invoke-virtual {p1, p2}, Lorg/apache/poi/java/awt/Component;->dispatchEvent(Lorg/apache/poi/java/awt/AWTEvent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    if-eqz p1, :cond_1

    if-eqz p0, :cond_0

    invoke-static {p0}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->handleException(Ljava/lang/Throwable;)V

    :cond_0
    return-object p1

    :cond_1
    return-object p0
.end method

.method private static focusedWindowChanged(Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/Component;)Z
    .locals 1

    invoke-static {p0}, Lorg/apache/poi/sun/awt/SunToolkit;->getContainingWindow(Lorg/apache/poi/java/awt/Component;)Lorg/apache/poi/java/awt/Window;

    move-result-object p0

    invoke-static {p1}, Lorg/apache/poi/sun/awt/SunToolkit;->getContainingWindow(Lorg/apache/poi/java/awt/Component;)Lorg/apache/poi/java/awt/Window;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-nez p0, :cond_1

    return v0

    :cond_1
    if-nez p1, :cond_2

    return v0

    :cond_2
    if-eq p0, p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static getCurrentKeyboardFocusManager()Lorg/apache/poi/java/awt/KeyboardFocusManager;
    .locals 1

    invoke-static {}, Lorg/apache/poi/sun/awt/AppContext;->getAppContext()Lorg/apache/poi/sun/awt/AppContext;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getCurrentKeyboardFocusManager(Lorg/apache/poi/sun/awt/AppContext;)Lorg/apache/poi/java/awt/KeyboardFocusManager;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getCurrentKeyboardFocusManager(Lorg/apache/poi/sun/awt/AppContext;)Lorg/apache/poi/java/awt/KeyboardFocusManager;
    .locals 2

    const-class v0, Lorg/apache/poi/java/awt/KeyboardFocusManager;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/apache/poi/sun/awt/AppContext;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/java/awt/KeyboardFocusManager;

    if-nez v1, :cond_0

    new-instance v1, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;

    invoke-direct {v1}, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/sun/awt/AppContext;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static getFirstHWRequest()Lorg/apache/poi/java/awt/KeyboardFocusManager$HeavyweightFocusRequest;
    .locals 2

    sget-object v0, Lorg/apache/poi/java/awt/KeyboardFocusManager;->heavyweightRequests:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/apache/poi/java/awt/KeyboardFocusManager;->heavyweightRequests:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_0

    sget-object v1, Lorg/apache/poi/java/awt/KeyboardFocusManager;->heavyweightRequests:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/java/awt/KeyboardFocusManager$HeavyweightFocusRequest;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getHeavyweight(Lorg/apache/poi/java/awt/Component;)Lorg/apache/poi/java/awt/Component;
    .locals 1

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getPeer()Lorg/apache/poi/java/awt/peer/ComponentPeer;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getPeer()Lorg/apache/poi/java/awt/peer/ComponentPeer;

    move-result-object v0

    instance-of v0, v0, Lorg/apache/poi/java/awt/peer/LightweightPeer;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getNativeContainer()Lorg/apache/poi/java/awt/Container;

    move-result-object p0

    :cond_1
    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getLastHWRequest()Lorg/apache/poi/java/awt/KeyboardFocusManager$HeavyweightFocusRequest;
    .locals 2

    sget-object v0, Lorg/apache/poi/java/awt/KeyboardFocusManager;->heavyweightRequests:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/apache/poi/java/awt/KeyboardFocusManager;->heavyweightRequests:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_0

    sget-object v1, Lorg/apache/poi/java/awt/KeyboardFocusManager;->heavyweightRequests:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/java/awt/KeyboardFocusManager$HeavyweightFocusRequest;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static declared-synchronized getMostRecentFocusOwner(Lorg/apache/poi/java/awt/Window;)Lorg/apache/poi/java/awt/Component;
    .locals 2

    const-class v0, Lorg/apache/poi/java/awt/KeyboardFocusManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/apache/poi/java/awt/KeyboardFocusManager;->mostRecentFocusOwners:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/ref/WeakReference;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/java/awt/Component;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static handleException(Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static initFocusTraversalKeysSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 2

    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, ","

    invoke-direct {v0, p0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/java/awt/AWTKeyStroke;->getAWTKeyStroke(Ljava/lang/String;)Lorg/apache/poi/java/awt/AWTKeyStroke;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    goto :goto_1

    :cond_1
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method private static native initIDs()V
.end method

.method private initPeer()V
    .locals 1

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->getDefaultToolkit()Lorg/apache/poi/java/awt/Toolkit;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/sun/awt/KeyboardFocusManagerPeerProvider;

    invoke-interface {v0}, Lorg/apache/poi/sun/awt/KeyboardFocusManagerPeerProvider;->getKeyboardFocusManagerPeer()Lorg/apache/poi/java/awt/peer/KeyboardFocusManagerPeer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/java/awt/KeyboardFocusManager;->peer:Lorg/apache/poi/java/awt/peer/KeyboardFocusManagerPeer;

    return-void
.end method

.method public static isAutoFocusTransferEnabled()Z
    .locals 2

    sget-object v0, Lorg/apache/poi/java/awt/KeyboardFocusManager;->heavyweightRequests:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/apache/poi/java/awt/KeyboardFocusManager;->heavyweightRequests:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-nez v1, :cond_0

    sget-boolean v1, Lorg/apache/poi/java/awt/KeyboardFocusManager;->disableRestoreFocus:Z

    if-nez v1, :cond_0

    sget-object v1, Lorg/apache/poi/java/awt/KeyboardFocusManager;->currentLightweightRequests:Ljava/util/LinkedList;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static isAutoFocusTransferEnabledFor(Lorg/apache/poi/java/awt/Component;)Z
    .locals 1

    invoke-static {}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->isAutoFocusTransferEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->isAutoFocusTransferOnDisposal()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isProxyActive(Lorg/apache/poi/java/awt/event/KeyEvent;)Z
    .locals 1

    invoke-static {}, Lorg/apache/poi/java/awt/GraphicsEnvironment;->isHeadless()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->isProxyActiveImpl(Lorg/apache/poi/java/awt/event/KeyEvent;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static isProxyActiveImpl(Lorg/apache/poi/java/awt/event/KeyEvent;)Z
    .locals 1

    sget-object v0, Lorg/apache/poi/java/awt/KeyboardFocusManager;->proxyActive:Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/poi/java/awt/KeyboardFocusManager$3;

    invoke-direct {v0}, Lorg/apache/poi/java/awt/KeyboardFocusManager$3;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    sput-object v0, Lorg/apache/poi/java/awt/KeyboardFocusManager;->proxyActive:Ljava/lang/reflect/Field;

    :cond_0
    :try_start_0
    sget-object v0, Lorg/apache/poi/java/awt/KeyboardFocusManager;->proxyActive:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method private static isTemporary(Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/Component;)Z
    .locals 2

    invoke-static {p0}, Lorg/apache/poi/sun/awt/SunToolkit;->getContainingWindow(Lorg/apache/poi/java/awt/Component;)Lorg/apache/poi/java/awt/Window;

    move-result-object p0

    invoke-static {p1}, Lorg/apache/poi/sun/awt/SunToolkit;->getContainingWindow(Lorg/apache/poi/java/awt/Component;)Lorg/apache/poi/java/awt/Window;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-nez p0, :cond_1

    return v1

    :cond_1
    if-nez p1, :cond_2

    return v0

    :cond_2
    if-eq p0, p1, :cond_3

    move v0, v1

    :cond_3
    return v0
.end method

.method public static markClearGlobalFocusOwner()Lorg/apache/poi/java/awt/Window;
    .locals 5

    invoke-static {}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getCurrentKeyboardFocusManager()Lorg/apache/poi/java/awt/KeyboardFocusManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getNativeFocusedWindow()Lorg/apache/poi/java/awt/Window;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/java/awt/KeyboardFocusManager;->heavyweightRequests:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getLastHWRequest()Lorg/apache/poi/java/awt/KeyboardFocusManager$HeavyweightFocusRequest;

    move-result-object v2

    sget-object v3, Lorg/apache/poi/java/awt/KeyboardFocusManager$HeavyweightFocusRequest;->CLEAR_GLOBAL_FOCUS_OWNER:Lorg/apache/poi/java/awt/KeyboardFocusManager$HeavyweightFocusRequest;

    if-ne v2, v3, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    return-object v0

    :cond_0
    sget-object v4, Lorg/apache/poi/java/awt/KeyboardFocusManager;->heavyweightRequests:Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_1

    iget-object v0, v2, Lorg/apache/poi/java/awt/KeyboardFocusManager$HeavyweightFocusRequest;->heavyweight:Lorg/apache/poi/java/awt/Component;

    invoke-static {v0}, Lorg/apache/poi/sun/awt/SunToolkit;->getContainingWindow(Lorg/apache/poi/java/awt/Component;)Lorg/apache/poi/java/awt/Window;

    move-result-object v0

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    instance-of v2, v0, Lorg/apache/poi/java/awt/Frame;

    if-nez v2, :cond_2

    instance-of v2, v0, Lorg/apache/poi/java/awt/Dialog;

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Component;->getParent_NoClientCode()Lorg/apache/poi/java/awt/Container;

    move-result-object v0

    goto :goto_0

    :cond_2
    check-cast v0, Lorg/apache/poi/java/awt/Window;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static processCurrentLightweightRequests()V
    .locals 17

    invoke-static {}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getCurrentKeyboardFocusManager()Lorg/apache/poi/java/awt/KeyboardFocusManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getGlobalFocusOwner()Lorg/apache/poi/java/awt/Component;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v1, Lorg/apache/poi/java/awt/Component;->appContext:Lorg/apache/poi/sun/awt/AppContext;

    invoke-static {}, Lorg/apache/poi/sun/awt/AppContext;->getAppContext()Lorg/apache/poi/sun/awt/AppContext;

    move-result-object v2

    if-eq v1, v2, :cond_0

    return-void

    :cond_0
    sget-object v1, Lorg/apache/poi/java/awt/KeyboardFocusManager;->heavyweightRequests:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lorg/apache/poi/java/awt/KeyboardFocusManager;->currentLightweightRequests:Ljava/util/LinkedList;

    if-eqz v2, :cond_a

    const/4 v2, 0x1

    sput-boolean v2, Lorg/apache/poi/java/awt/KeyboardFocusManager;->clearingCurrentLightweightRequests:Z

    sput-boolean v2, Lorg/apache/poi/java/awt/KeyboardFocusManager;->disableRestoreFocus:Z

    sget-object v3, Lorg/apache/poi/java/awt/KeyboardFocusManager;->currentLightweightRequests:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-ge v4, v5, :cond_1

    move v4, v2

    goto :goto_0

    :cond_1
    move v4, v6

    :goto_0
    sput-boolean v4, Lorg/apache/poi/java/awt/KeyboardFocusManager;->allowSyncFocusRequests:Z

    const/4 v4, 0x0

    sput-object v4, Lorg/apache/poi/java/awt/KeyboardFocusManager;->currentLightweightRequests:Ljava/util/LinkedList;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v3, v4

    move-object v5, v3

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getGlobalFocusOwner()Lorg/apache/poi/java/awt/Component;

    move-result-object v7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v14, v8

    check-cast v14, Lorg/apache/poi/java/awt/KeyboardFocusManager$LightweightFocusRequest;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_2

    sput-boolean v6, Lorg/apache/poi/java/awt/KeyboardFocusManager;->disableRestoreFocus:Z

    :cond_2
    if-eqz v7, :cond_3

    new-instance v15, Lorg/apache/poi/sun/awt/CausedFocusEvent;

    const/16 v10, 0x3ed

    iget-boolean v11, v14, Lorg/apache/poi/java/awt/KeyboardFocusManager$LightweightFocusRequest;->temporary:Z

    iget-object v12, v14, Lorg/apache/poi/java/awt/KeyboardFocusManager$LightweightFocusRequest;->component:Lorg/apache/poi/java/awt/Component;

    iget-object v13, v14, Lorg/apache/poi/java/awt/KeyboardFocusManager$LightweightFocusRequest;->cause:Lorg/apache/poi/sun/awt/CausedFocusEvent$Cause;

    move-object v8, v15

    move-object v9, v7

    invoke-direct/range {v8 .. v13}, Lorg/apache/poi/sun/awt/CausedFocusEvent;-><init>(Lorg/apache/poi/java/awt/Component;IZLorg/apache/poi/java/awt/Component;Lorg/apache/poi/sun/awt/CausedFocusEvent$Cause;)V

    goto :goto_2

    :cond_3
    move-object v15, v4

    :goto_2
    new-instance v13, Lorg/apache/poi/sun/awt/CausedFocusEvent;

    iget-object v9, v14, Lorg/apache/poi/java/awt/KeyboardFocusManager$LightweightFocusRequest;->component:Lorg/apache/poi/java/awt/Component;

    const/16 v10, 0x3ec

    iget-boolean v11, v14, Lorg/apache/poi/java/awt/KeyboardFocusManager$LightweightFocusRequest;->temporary:Z

    if-nez v7, :cond_4

    move-object v12, v5

    goto :goto_3

    :cond_4
    move-object v12, v7

    :goto_3
    iget-object v8, v14, Lorg/apache/poi/java/awt/KeyboardFocusManager$LightweightFocusRequest;->cause:Lorg/apache/poi/sun/awt/CausedFocusEvent$Cause;

    move-object/from16 v16, v8

    move-object v8, v13

    move-object v4, v13

    move-object/from16 v13, v16

    invoke-direct/range {v8 .. v13}, Lorg/apache/poi/sun/awt/CausedFocusEvent;-><init>(Lorg/apache/poi/java/awt/Component;IZLorg/apache/poi/java/awt/Component;Lorg/apache/poi/sun/awt/CausedFocusEvent$Cause;)V

    if-eqz v7, :cond_5

    iput-boolean v2, v15, Lorg/apache/poi/java/awt/AWTEvent;->isPosted:Z

    invoke-static {v3, v7, v15}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->dispatchAndCatchException(Ljava/lang/Throwable;Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/event/FocusEvent;)Ljava/lang/Throwable;

    move-result-object v3

    :cond_5
    iput-boolean v2, v4, Lorg/apache/poi/java/awt/AWTEvent;->isPosted:Z

    iget-object v7, v14, Lorg/apache/poi/java/awt/KeyboardFocusManager$LightweightFocusRequest;->component:Lorg/apache/poi/java/awt/Component;

    invoke-static {v3, v7, v4}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->dispatchAndCatchException(Ljava/lang/Throwable;Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/event/FocusEvent;)Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getGlobalFocusOwner()Lorg/apache/poi/java/awt/Component;

    move-result-object v4

    iget-object v7, v14, Lorg/apache/poi/java/awt/KeyboardFocusManager$LightweightFocusRequest;->component:Lorg/apache/poi/java/awt/Component;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v4, v7, :cond_6

    move-object v5, v7

    :cond_6
    const/4 v4, 0x0

    goto :goto_1

    :cond_7
    sput-boolean v6, Lorg/apache/poi/java/awt/KeyboardFocusManager;->clearingCurrentLightweightRequests:Z

    sput-boolean v6, Lorg/apache/poi/java/awt/KeyboardFocusManager;->disableRestoreFocus:Z

    sput-boolean v2, Lorg/apache/poi/java/awt/KeyboardFocusManager;->allowSyncFocusRequests:Z

    instance-of v0, v3, Ljava/lang/RuntimeException;

    if-nez v0, :cond_9

    instance-of v0, v3, Ljava/lang/Error;

    if-nez v0, :cond_8

    return-void

    :cond_8
    check-cast v3, Ljava/lang/Error;

    throw v3

    :cond_9
    check-cast v3, Ljava/lang/RuntimeException;

    throw v3

    :catchall_0
    move-exception v0

    sput-boolean v6, Lorg/apache/poi/java/awt/KeyboardFocusManager;->clearingCurrentLightweightRequests:Z

    sput-boolean v6, Lorg/apache/poi/java/awt/KeyboardFocusManager;->disableRestoreFocus:Z

    sput-boolean v2, Lorg/apache/poi/java/awt/KeyboardFocusManager;->allowSyncFocusRequests:Z

    throw v0

    :cond_a
    :try_start_2
    monitor-exit v1

    return-void

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public static processSynchronousLightweightTransfer(Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/Component;ZZJ)Z
    .locals 6

    invoke-static {p0}, Lorg/apache/poi/sun/awt/SunToolkit;->getContainingWindow(Lorg/apache/poi/java/awt/Component;)Lorg/apache/poi/java/awt/Window;

    move-result-object p3

    const/4 v0, 0x0

    if-eqz p3, :cond_9

    iget-boolean p3, p3, Lorg/apache/poi/java/awt/Window;->syncLWRequests:Z

    if-nez p3, :cond_0

    goto/16 :goto_3

    :cond_0
    if-nez p1, :cond_1

    move-object p1, p0

    :cond_1
    invoke-static {p1}, Lorg/apache/poi/sun/awt/SunToolkit;->targetToAppContext(Ljava/lang/Object;)Lorg/apache/poi/sun/awt/AppContext;

    move-result-object p3

    invoke-static {p3}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getCurrentKeyboardFocusManager(Lorg/apache/poi/sun/awt/AppContext;)Lorg/apache/poi/java/awt/KeyboardFocusManager;

    move-result-object p3

    invoke-virtual {p3}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getGlobalFocusOwner()Lorg/apache/poi/java/awt/Component;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/java/awt/KeyboardFocusManager;->heavyweightRequests:Ljava/util/LinkedList;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getLastHWRequest()Lorg/apache/poi/java/awt/KeyboardFocusManager$HeavyweightFocusRequest;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_4

    invoke-virtual {p3}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getNativeFocusOwner()Lorg/apache/poi/java/awt/Component;

    move-result-object v3

    if-ne p0, v3, :cond_4

    sget-boolean v3, Lorg/apache/poi/java/awt/KeyboardFocusManager;->allowSyncFocusRequests:Z

    if-eqz v3, :cond_4

    if-ne p1, v1, :cond_2

    monitor-exit v2

    return v5

    :cond_2
    invoke-virtual {p3, p4, p5, p1}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->enqueueKeyEvents(JLorg/apache/poi/java/awt/Component;)V

    new-instance p3, Lorg/apache/poi/java/awt/KeyboardFocusManager$HeavyweightFocusRequest;

    sget-object p4, Lorg/apache/poi/sun/awt/CausedFocusEvent$Cause;->UNKNOWN:Lorg/apache/poi/sun/awt/CausedFocusEvent$Cause;

    invoke-direct {p3, p0, p1, p2, p4}, Lorg/apache/poi/java/awt/KeyboardFocusManager$HeavyweightFocusRequest;-><init>(Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/Component;ZLorg/apache/poi/sun/awt/CausedFocusEvent$Cause;)V

    sget-object p0, Lorg/apache/poi/java/awt/KeyboardFocusManager;->heavyweightRequests:Ljava/util/LinkedList;

    invoke-virtual {p0, p3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_3

    new-instance p0, Lorg/apache/poi/java/awt/event/FocusEvent;

    const/16 p3, 0x3ed

    invoke-direct {p0, v1, p3, p2, p1}, Lorg/apache/poi/java/awt/event/FocusEvent;-><init>(Lorg/apache/poi/java/awt/Component;IZLorg/apache/poi/java/awt/Component;)V

    goto :goto_0

    :cond_3
    move-object p0, v4

    :goto_0
    new-instance p3, Lorg/apache/poi/java/awt/event/FocusEvent;

    const/16 p4, 0x3ec

    invoke-direct {p3, p1, p4, p2, v1}, Lorg/apache/poi/java/awt/event/FocusEvent;-><init>(Lorg/apache/poi/java/awt/Component;IZLorg/apache/poi/java/awt/Component;)V

    goto :goto_1

    :cond_4
    move-object p0, v4

    move-object p3, p0

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    sget-boolean p2, Lorg/apache/poi/java/awt/KeyboardFocusManager;->clearingCurrentLightweightRequests:Z

    :try_start_1
    sput-boolean v0, Lorg/apache/poi/java/awt/KeyboardFocusManager;->clearingCurrentLightweightRequests:Z

    sget-object p4, Lorg/apache/poi/java/awt/Component;->LOCK:Ljava/lang/Object;

    monitor-enter p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p0, :cond_5

    if-eqz v1, :cond_5

    :try_start_2
    iput-boolean v5, p0, Lorg/apache/poi/java/awt/AWTEvent;->isPosted:Z

    invoke-static {v4, v1, p0}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->dispatchAndCatchException(Ljava/lang/Throwable;Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/event/FocusEvent;)Ljava/lang/Throwable;

    move-result-object v4

    move v0, v5

    :cond_5
    if-eqz p3, :cond_6

    if-eqz p1, :cond_6

    iput-boolean v5, p3, Lorg/apache/poi/java/awt/AWTEvent;->isPosted:Z

    invoke-static {v4, p1, p3}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->dispatchAndCatchException(Ljava/lang/Throwable;Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/event/FocusEvent;)Ljava/lang/Throwable;

    move-result-object v4

    goto :goto_2

    :cond_6
    move v5, v0

    :goto_2
    monitor-exit p4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sput-boolean p2, Lorg/apache/poi/java/awt/KeyboardFocusManager;->clearingCurrentLightweightRequests:Z

    instance-of p0, v4, Ljava/lang/RuntimeException;

    if-nez p0, :cond_8

    instance-of p0, v4, Ljava/lang/Error;

    if-nez p0, :cond_7

    return v5

    :cond_7
    check-cast v4, Ljava/lang/Error;

    throw v4

    :cond_8
    check-cast v4, Ljava/lang/RuntimeException;

    throw v4

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit p4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p0

    sput-boolean p2, Lorg/apache/poi/java/awt/KeyboardFocusManager;->clearingCurrentLightweightRequests:Z

    throw p0

    :catchall_2
    move-exception p0

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p0

    :cond_9
    :goto_3
    return v0
.end method

.method public static removeFirstRequest()Z
    .locals 6

    invoke-static {}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getCurrentKeyboardFocusManager()Lorg/apache/poi/java/awt/KeyboardFocusManager;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/java/awt/KeyboardFocusManager;->heavyweightRequests:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getFirstHWRequest()Lorg/apache/poi/java/awt/KeyboardFocusManager$HeavyweightFocusRequest;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v3, Lorg/apache/poi/java/awt/KeyboardFocusManager;->heavyweightRequests:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    iget-object v2, v2, Lorg/apache/poi/java/awt/KeyboardFocusManager$HeavyweightFocusRequest;->lightweightRequests:Ljava/util/LinkedList;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    const-wide/16 v3, -0x1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/java/awt/KeyboardFocusManager$LightweightFocusRequest;

    iget-object v5, v5, Lorg/apache/poi/java/awt/KeyboardFocusManager$LightweightFocusRequest;->component:Lorg/apache/poi/java/awt/Component;

    invoke-virtual {v0, v3, v4, v5}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->dequeueKeyEvents(JLorg/apache/poi/java/awt/Component;)V

    goto :goto_0

    :cond_0
    sget-object v2, Lorg/apache/poi/java/awt/KeyboardFocusManager;->heavyweightRequests:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->clearMarkers()V

    :cond_1
    sget-object v0, Lorg/apache/poi/java/awt/KeyboardFocusManager;->heavyweightRequests:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static removeLastFocusRequest(Lorg/apache/poi/java/awt/Component;)V
    .locals 3

    sget-object v0, Lorg/apache/poi/java/awt/KeyboardFocusManager;->log:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p0, :cond_0

    const-string v1, "Assertion (heavyweight != null) failed"

    invoke-virtual {v0, v1}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getCurrentKeyboardFocusManager()Lorg/apache/poi/java/awt/KeyboardFocusManager;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/java/awt/KeyboardFocusManager;->heavyweightRequests:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getLastHWRequest()Lorg/apache/poi/java/awt/KeyboardFocusManager$HeavyweightFocusRequest;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, v2, Lorg/apache/poi/java/awt/KeyboardFocusManager$HeavyweightFocusRequest;->heavyweight:Lorg/apache/poi/java/awt/Component;

    if-ne v2, p0, :cond_1

    sget-object p0, Lorg/apache/poi/java/awt/KeyboardFocusManager;->heavyweightRequests:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    :cond_1
    sget-object p0, Lorg/apache/poi/java/awt/KeyboardFocusManager;->heavyweightRequests:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    move-result p0

    if-nez p0, :cond_2

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->clearMarkers()V

    :cond_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static retargetFocusEvent(Lorg/apache/poi/java/awt/AWTEvent;)Lorg/apache/poi/java/awt/AWTEvent;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static retargetFocusGained(Lorg/apache/poi/java/awt/event/FocusEvent;)Lorg/apache/poi/java/awt/event/FocusEvent;
    .locals 10

    invoke-static {}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getCurrentKeyboardFocusManager()Lorg/apache/poi/java/awt/KeyboardFocusManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getGlobalFocusOwner()Lorg/apache/poi/java/awt/Component;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/event/FocusEvent;->getComponent()Lorg/apache/poi/java/awt/Component;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/event/FocusEvent;->getOppositeComponent()Lorg/apache/poi/java/awt/Component;

    move-result-object v7

    invoke-static {v0}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getHeavyweight(Lorg/apache/poi/java/awt/Component;)Lorg/apache/poi/java/awt/Component;

    move-result-object v1

    sget-object v9, Lorg/apache/poi/java/awt/KeyboardFocusManager;->heavyweightRequests:Ljava/util/LinkedList;

    monitor-enter v9

    :try_start_0
    invoke-static {}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getFirstHWRequest()Lorg/apache/poi/java/awt/KeyboardFocusManager$HeavyweightFocusRequest;

    move-result-object v3

    sget-object v4, Lorg/apache/poi/java/awt/KeyboardFocusManager$HeavyweightFocusRequest;->CLEAR_GLOBAL_FOCUS_OWNER:Lorg/apache/poi/java/awt/KeyboardFocusManager$HeavyweightFocusRequest;

    if-ne v3, v4, :cond_0

    invoke-static {p0}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->retargetUnexpectedFocusEvent(Lorg/apache/poi/java/awt/event/FocusEvent;)Lorg/apache/poi/java/awt/event/FocusEvent;

    move-result-object p0

    monitor-exit v9

    return-object p0

    :cond_0
    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lorg/apache/poi/java/awt/KeyboardFocusManager$HeavyweightFocusRequest;->getFirstLightweightRequest()Lorg/apache/poi/java/awt/KeyboardFocusManager$LightweightFocusRequest;

    move-result-object v4

    iget-object v4, v4, Lorg/apache/poi/java/awt/KeyboardFocusManager$LightweightFocusRequest;->component:Lorg/apache/poi/java/awt/Component;

    if-ne v0, v4, :cond_1

    iget-object v0, v3, Lorg/apache/poi/java/awt/KeyboardFocusManager$HeavyweightFocusRequest;->heavyweight:Lorg/apache/poi/java/awt/Component;

    move-object v1, v0

    :cond_1
    if-eqz v3, :cond_6

    iget-object v4, v3, Lorg/apache/poi/java/awt/KeyboardFocusManager$HeavyweightFocusRequest;->heavyweight:Lorg/apache/poi/java/awt/Component;

    if-ne v1, v4, :cond_6

    sget-object p0, Lorg/apache/poi/java/awt/KeyboardFocusManager;->heavyweightRequests:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    iget-object p0, v3, Lorg/apache/poi/java/awt/KeyboardFocusManager$HeavyweightFocusRequest;->lightweightRequests:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/java/awt/KeyboardFocusManager$LightweightFocusRequest;

    iget-object v4, p0, Lorg/apache/poi/java/awt/KeyboardFocusManager$LightweightFocusRequest;->component:Lorg/apache/poi/java/awt/Component;

    if-eqz v2, :cond_2

    sput-object v4, Lorg/apache/poi/java/awt/KeyboardFocusManager;->newFocusOwner:Lorg/apache/poi/java/awt/Component;

    :cond_2
    if-eqz v7, :cond_4

    invoke-static {v4, v7}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->isTemporary(Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/Component;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lorg/apache/poi/java/awt/KeyboardFocusManager$LightweightFocusRequest;->temporary:Z

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, 0x0

    :goto_1
    move v6, v0

    iget-object v0, v3, Lorg/apache/poi/java/awt/KeyboardFocusManager$HeavyweightFocusRequest;->lightweightRequests:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, v3, Lorg/apache/poi/java/awt/KeyboardFocusManager$HeavyweightFocusRequest;->lightweightRequests:Ljava/util/LinkedList;

    sput-object v0, Lorg/apache/poi/java/awt/KeyboardFocusManager;->currentLightweightRequests:Ljava/util/LinkedList;

    new-instance v0, Lorg/apache/poi/java/awt/KeyboardFocusManager$2;

    invoke-direct {v0}, Lorg/apache/poi/java/awt/KeyboardFocusManager$2;-><init>()V

    invoke-static {v0}, Lorg/apache/poi/java/awt/EventQueue;->invokeLater(Ljava/lang/Runnable;)V

    :cond_5
    new-instance v0, Lorg/apache/poi/sun/awt/CausedFocusEvent;

    const/16 v5, 0x3ec

    iget-object v8, p0, Lorg/apache/poi/java/awt/KeyboardFocusManager$LightweightFocusRequest;->cause:Lorg/apache/poi/sun/awt/CausedFocusEvent$Cause;

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lorg/apache/poi/sun/awt/CausedFocusEvent;-><init>(Lorg/apache/poi/java/awt/Component;IZLorg/apache/poi/java/awt/Component;Lorg/apache/poi/sun/awt/CausedFocusEvent$Cause;)V

    monitor-exit v9

    return-object v0

    :cond_6
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lorg/apache/poi/java/awt/Component;->getContainingWindow()Lorg/apache/poi/java/awt/Window;

    move-result-object v1

    if-ne v1, v0, :cond_8

    if-eqz v3, :cond_7

    iget-object v1, v3, Lorg/apache/poi/java/awt/KeyboardFocusManager$HeavyweightFocusRequest;->heavyweight:Lorg/apache/poi/java/awt/Component;

    if-eq v0, v1, :cond_8

    :cond_7
    new-instance p0, Lorg/apache/poi/sun/awt/CausedFocusEvent;

    const/16 v3, 0x3ec

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v6, Lorg/apache/poi/sun/awt/CausedFocusEvent$Cause;->ACTIVATION:Lorg/apache/poi/sun/awt/CausedFocusEvent$Cause;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/sun/awt/CausedFocusEvent;-><init>(Lorg/apache/poi/java/awt/Component;IZLorg/apache/poi/java/awt/Component;Lorg/apache/poi/sun/awt/CausedFocusEvent$Cause;)V

    monitor-exit v9

    return-object p0

    :cond_8
    invoke-static {p0}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->retargetUnexpectedFocusEvent(Lorg/apache/poi/java/awt/event/FocusEvent;)Lorg/apache/poi/java/awt/event/FocusEvent;

    move-result-object p0

    monitor-exit v9

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static retargetFocusLost(Lorg/apache/poi/java/awt/event/FocusEvent;)Lorg/apache/poi/java/awt/event/FocusEvent;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static retargetUnexpectedFocusEvent(Lorg/apache/poi/java/awt/event/FocusEvent;)Lorg/apache/poi/java/awt/event/FocusEvent;
    .locals 8

    sget-object v0, Lorg/apache/poi/java/awt/KeyboardFocusManager;->heavyweightRequests:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->removeFirstRequest()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/event/FocusEvent;->getComponent()Lorg/apache/poi/java/awt/Component;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/event/FocusEvent;->getOppositeComponent()Lorg/apache/poi/java/awt/Component;

    move-result-object v6

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/event/FocusEvent;->getID()I

    move-result v2

    const/16 v4, 0x3ed

    if-ne v2, v4, :cond_1

    if-eqz v6, :cond_0

    invoke-static {v6, v3}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->isTemporary(Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/Component;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    move v5, v1

    new-instance v1, Lorg/apache/poi/sun/awt/CausedFocusEvent;

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/event/FocusEvent;->getID()I

    move-result v4

    sget-object v7, Lorg/apache/poi/sun/awt/CausedFocusEvent$Cause;->NATIVE_SYSTEM:Lorg/apache/poi/sun/awt/CausedFocusEvent$Cause;

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lorg/apache/poi/sun/awt/CausedFocusEvent;-><init>(Lorg/apache/poi/java/awt/Component;IZLorg/apache/poi/java/awt/Component;Lorg/apache/poi/sun/awt/CausedFocusEvent$Cause;)V

    monitor-exit v0

    return-object v1

    :cond_2
    invoke-static {p0}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->retargetFocusEvent(Lorg/apache/poi/java/awt/AWTEvent;)Lorg/apache/poi/java/awt/AWTEvent;

    const/4 p0, 0x0

    throw p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static setCurrentKeyboardFocusManager(Lorg/apache/poi/java/awt/KeyboardFocusManager;)V
    .locals 4

    const-class v0, Lorg/apache/poi/java/awt/KeyboardFocusManager;

    invoke-static {}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->checkReplaceKFMPermission()V

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lorg/apache/poi/sun/awt/AppContext;->getAppContext()Lorg/apache/poi/sun/awt/AppContext;

    move-result-object v1

    if-eqz p0, :cond_0

    invoke-static {v1}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getCurrentKeyboardFocusManager(Lorg/apache/poi/sun/awt/AppContext;)Lorg/apache/poi/java/awt/KeyboardFocusManager;

    move-result-object v2

    invoke-virtual {v1, v0, p0}, Lorg/apache/poi/sun/awt/AppContext;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getCurrentKeyboardFocusManager(Lorg/apache/poi/sun/awt/AppContext;)Lorg/apache/poi/java/awt/KeyboardFocusManager;

    move-result-object v2

    invoke-virtual {v1, v0}, Lorg/apache/poi/sun/awt/AppContext;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    const-string v0, "managingFocus"

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v0, v1, v3}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    if-eqz p0, :cond_2

    const-string v0, "managingFocus"

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static setMostRecentFocusOwner(Lorg/apache/poi/java/awt/Component;)V
    .locals 2

    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_0

    instance-of v1, v0, Lorg/apache/poi/java/awt/Window;

    if-nez v1, :cond_0

    iget-object v0, v0, Lorg/apache/poi/java/awt/Component;->parent:Lorg/apache/poi/java/awt/Container;

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    check-cast v0, Lorg/apache/poi/java/awt/Window;

    invoke-static {v0, p0}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->setMostRecentFocusOwner(Lorg/apache/poi/java/awt/Window;Lorg/apache/poi/java/awt/Component;)V

    :cond_1
    return-void
.end method

.method public static declared-synchronized setMostRecentFocusOwner(Lorg/apache/poi/java/awt/Window;Lorg/apache/poi/java/awt/Component;)V
    .locals 2

    const-class v0, Lorg/apache/poi/java/awt/KeyboardFocusManager;

    monitor-enter v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    :cond_0
    sget-object p1, Lorg/apache/poi/java/awt/KeyboardFocusManager;->mostRecentFocusOwners:Ljava/util/Map;

    invoke-interface {p1, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static shouldNativelyFocusHeavyweight(Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/Component;ZZJLorg/apache/poi/sun/awt/CausedFocusEvent$Cause;)I
    .locals 19

    move-object/from16 v0, p0

    move/from16 v6, p2

    move-wide/from16 v1, p4

    move-object/from16 v7, p6

    sget-object v3, Lorg/apache/poi/java/awt/KeyboardFocusManager;->log:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    const/16 v4, 0x1f4

    invoke-virtual {v3, v4}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v0, :cond_0

    const-string v4, "Assertion (heavyweight != null) failed"

    invoke-virtual {v3, v4}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    :cond_0
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-nez v4, :cond_1

    const-string v4, "Assertion (time != 0) failed"

    invoke-virtual {v3, v4}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    :cond_1
    if-nez p1, :cond_2

    move-object v8, v0

    goto :goto_0

    :cond_2
    move-object/from16 v8, p1

    :goto_0
    invoke-static {v8}, Lorg/apache/poi/sun/awt/SunToolkit;->targetToAppContext(Ljava/lang/Object;)Lorg/apache/poi/sun/awt/AppContext;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getCurrentKeyboardFocusManager(Lorg/apache/poi/sun/awt/AppContext;)Lorg/apache/poi/java/awt/KeyboardFocusManager;

    move-result-object v3

    invoke-static {}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getCurrentKeyboardFocusManager()Lorg/apache/poi/java/awt/KeyboardFocusManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getGlobalFocusOwner()Lorg/apache/poi/java/awt/Component;

    move-result-object v9

    invoke-virtual {v4}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getNativeFocusOwner()Lorg/apache/poi/java/awt/Component;

    move-result-object v5

    invoke-virtual {v4}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getNativeFocusedWindow()Lorg/apache/poi/java/awt/Window;

    move-result-object v4

    sget-object v10, Lorg/apache/poi/java/awt/KeyboardFocusManager;->focusLog:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    const/16 v11, 0x190

    invoke-virtual {v10, v11}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v11

    const/4 v12, 0x2

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-eqz v11, :cond_3

    const-string v11, "SNFH for {0} in {1}"

    new-array v15, v12, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v15, v14

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v15, v13

    invoke-virtual {v10, v11, v15}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->finer(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    const/16 v11, 0x12c

    invoke-virtual {v10, v11}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v15

    if-eqz v15, :cond_4

    const-string v15, "0. Current focus owner {0}"

    new-array v12, v13, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v12, v14

    invoke-virtual {v10, v15, v12}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->finest(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v12, "0. Native focus owner {0}"

    new-array v15, v13, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v15, v14

    invoke-virtual {v10, v12, v15}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->finest(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v12, "0. Native focused window {0}"

    new-array v15, v13, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v15, v14

    invoke-virtual {v10, v12, v15}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->finest(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    sget-object v12, Lorg/apache/poi/java/awt/KeyboardFocusManager;->heavyweightRequests:Ljava/util/LinkedList;

    monitor-enter v12

    :try_start_0
    invoke-static {}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getLastHWRequest()Lorg/apache/poi/java/awt/KeyboardFocusManager$HeavyweightFocusRequest;

    move-result-object v15

    invoke-virtual {v10, v11}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v16

    if-eqz v16, :cond_5

    const-string v11, "Request {0}"

    new-array v14, v13, [Ljava/lang/Object;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    const/16 v17, 0x0

    aput-object v18, v14, v17

    invoke-virtual {v10, v11, v14}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->finest(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    if-nez v15, :cond_a

    if-ne v0, v5, :cond_a

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/java/awt/Component;->getContainingWindow()Lorg/apache/poi/java/awt/Window;

    move-result-object v5

    if-ne v5, v4, :cond_a

    if-ne v8, v9, :cond_7

    const/16 v0, 0x12c

    invoke-virtual {v10, v0}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "1. SNFH_FAILURE for {0}"

    new-array v1, v13, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v10, v0, v1}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->finest(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    monitor-exit v12

    const/4 v0, 0x0

    return v0

    :cond_7
    invoke-virtual {v3, v1, v2, v8}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->enqueueKeyEvents(JLorg/apache/poi/java/awt/Component;)V

    new-instance v1, Lorg/apache/poi/java/awt/KeyboardFocusManager$HeavyweightFocusRequest;

    invoke-direct {v1, v0, v8, v6, v7}, Lorg/apache/poi/java/awt/KeyboardFocusManager$HeavyweightFocusRequest;-><init>(Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/Component;ZLorg/apache/poi/sun/awt/CausedFocusEvent$Cause;)V

    sget-object v0, Lorg/apache/poi/java/awt/KeyboardFocusManager;->heavyweightRequests:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    if-eqz v9, :cond_8

    new-instance v11, Lorg/apache/poi/sun/awt/CausedFocusEvent;

    const/16 v2, 0x3ed

    move-object v0, v11

    move-object v1, v9

    move/from16 v3, p2

    move-object v4, v8

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/sun/awt/CausedFocusEvent;-><init>(Lorg/apache/poi/java/awt/Component;IZLorg/apache/poi/java/awt/Component;Lorg/apache/poi/sun/awt/CausedFocusEvent$Cause;)V

    iget-object v0, v9, Lorg/apache/poi/java/awt/Component;->appContext:Lorg/apache/poi/sun/awt/AppContext;

    invoke-static {v0, v11}, Lorg/apache/poi/sun/awt/SunToolkit;->postEvent(Lorg/apache/poi/sun/awt/AppContext;Lorg/apache/poi/java/awt/AWTEvent;)V

    :cond_8
    new-instance v11, Lorg/apache/poi/sun/awt/CausedFocusEvent;

    const/16 v2, 0x3ec

    move-object v0, v11

    move-object v1, v8

    move/from16 v3, p2

    move-object v4, v9

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/sun/awt/CausedFocusEvent;-><init>(Lorg/apache/poi/java/awt/Component;IZLorg/apache/poi/java/awt/Component;Lorg/apache/poi/sun/awt/CausedFocusEvent$Cause;)V

    iget-object v0, v8, Lorg/apache/poi/java/awt/Component;->appContext:Lorg/apache/poi/sun/awt/AppContext;

    invoke-static {v0, v11}, Lorg/apache/poi/sun/awt/SunToolkit;->postEvent(Lorg/apache/poi/sun/awt/AppContext;Lorg/apache/poi/java/awt/AWTEvent;)V

    const/16 v0, 0x12c

    invoke-virtual {v10, v0}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "2. SNFH_HANDLED for {0}"

    new-array v1, v13, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v10, v0, v1}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->finest(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    monitor-exit v12

    return v13

    :cond_a
    if-eqz v15, :cond_d

    iget-object v5, v15, Lorg/apache/poi/java/awt/KeyboardFocusManager$HeavyweightFocusRequest;->heavyweight:Lorg/apache/poi/java/awt/Component;

    if-ne v5, v0, :cond_d

    invoke-virtual {v15, v8, v6, v7}, Lorg/apache/poi/java/awt/KeyboardFocusManager$HeavyweightFocusRequest;->addLightweightRequest(Lorg/apache/poi/java/awt/Component;ZLorg/apache/poi/sun/awt/CausedFocusEvent$Cause;)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {v3, v1, v2, v8}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->enqueueKeyEvents(JLorg/apache/poi/java/awt/Component;)V

    :cond_b
    const/16 v1, 0x12c

    invoke-virtual {v10, v1}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "3. SNFH_HANDLED for lightweight"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->finest(Ljava/lang/String;)V

    :cond_c
    monitor-exit v12

    return v13

    :cond_d
    if-nez p3, :cond_12

    sget-object v5, Lorg/apache/poi/java/awt/KeyboardFocusManager$HeavyweightFocusRequest;->CLEAR_GLOBAL_FOCUS_OWNER:Lorg/apache/poi/java/awt/KeyboardFocusManager$HeavyweightFocusRequest;

    if-ne v15, v5, :cond_f

    sget-object v5, Lorg/apache/poi/java/awt/KeyboardFocusManager;->heavyweightRequests:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    const/4 v9, 0x2

    if-lt v5, v9, :cond_e

    sget-object v11, Lorg/apache/poi/java/awt/KeyboardFocusManager;->heavyweightRequests:Ljava/util/LinkedList;

    sub-int/2addr v5, v9

    invoke-virtual {v11, v5}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/java/awt/KeyboardFocusManager$HeavyweightFocusRequest;

    goto :goto_1

    :cond_e
    const/4 v5, 0x0

    :goto_1
    move-object v15, v5

    :cond_f
    if-eqz v15, :cond_10

    iget-object v4, v15, Lorg/apache/poi/java/awt/KeyboardFocusManager$HeavyweightFocusRequest;->heavyweight:Lorg/apache/poi/java/awt/Component;

    :cond_10
    invoke-static {v0, v4}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->focusedWindowChanged(Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/Component;)Z

    move-result v4

    if-eqz v4, :cond_12

    const/16 v0, 0x12c

    invoke-virtual {v10, v0}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "4. SNFH_FAILURE for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->finest(Ljava/lang/String;)V

    :cond_11
    monitor-exit v12

    const/4 v0, 0x0

    return v0

    :cond_12
    invoke-virtual {v3, v1, v2, v8}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->enqueueKeyEvents(JLorg/apache/poi/java/awt/Component;)V

    sget-object v1, Lorg/apache/poi/java/awt/KeyboardFocusManager;->heavyweightRequests:Ljava/util/LinkedList;

    new-instance v2, Lorg/apache/poi/java/awt/KeyboardFocusManager$HeavyweightFocusRequest;

    invoke-direct {v2, v0, v8, v6, v7}, Lorg/apache/poi/java/awt/KeyboardFocusManager$HeavyweightFocusRequest;-><init>(Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/Component;ZLorg/apache/poi/sun/awt/CausedFocusEvent$Cause;)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x12c

    invoke-virtual {v10, v0}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "5. SNFH_PROCEED for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->finest(Ljava/lang/String;)V

    :cond_13
    monitor-exit v12

    const/4 v0, 0x2

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public addKeyEventDispatcher(Lorg/apache/poi/java/awt/KeyEventDispatcher;)V
    .locals 1

    if-eqz p1, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/KeyboardFocusManager;->keyEventDispatchers:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/java/awt/KeyboardFocusManager;->keyEventDispatchers:Ljava/util/LinkedList;

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/KeyboardFocusManager;->keyEventDispatchers:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public addKeyEventPostProcessor(Lorg/apache/poi/java/awt/KeyEventPostProcessor;)V
    .locals 1

    if-eqz p1, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/KeyboardFocusManager;->keyEventPostProcessors:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/java/awt/KeyboardFocusManager;->keyEventPostProcessors:Ljava/util/LinkedList;

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/KeyboardFocusManager;->keyEventPostProcessors:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V
    .locals 1

    if-eqz p1, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/KeyboardFocusManager;->changeSupport:Ljava/beans/PropertyChangeSupport;

    if-nez v0, :cond_0

    new-instance v0, Ljava/beans/PropertyChangeSupport;

    invoke-direct {v0, p0}, Ljava/beans/PropertyChangeSupport;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/poi/java/awt/KeyboardFocusManager;->changeSupport:Ljava/beans/PropertyChangeSupport;

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/KeyboardFocusManager;->changeSupport:Ljava/beans/PropertyChangeSupport;

    invoke-virtual {v0, p1}, Ljava/beans/PropertyChangeSupport;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public addPropertyChangeListener(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)V
    .locals 1

    if-eqz p2, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/KeyboardFocusManager;->changeSupport:Ljava/beans/PropertyChangeSupport;

    if-nez v0, :cond_0

    new-instance v0, Ljava/beans/PropertyChangeSupport;

    invoke-direct {v0, p0}, Ljava/beans/PropertyChangeSupport;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/poi/java/awt/KeyboardFocusManager;->changeSupport:Ljava/beans/PropertyChangeSupport;

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/KeyboardFocusManager;->changeSupport:Ljava/beans/PropertyChangeSupport;

    invoke-virtual {v0, p1, p2}, Ljava/beans/PropertyChangeSupport;->addPropertyChangeListener(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public addVetoableChangeListener(Ljava/beans/VetoableChangeListener;)V
    .locals 1

    if-eqz p1, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/KeyboardFocusManager;->vetoableSupport:Ljava/beans/VetoableChangeSupport;

    if-nez v0, :cond_0

    new-instance v0, Ljava/beans/VetoableChangeSupport;

    invoke-direct {v0, p0}, Ljava/beans/VetoableChangeSupport;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/poi/java/awt/KeyboardFocusManager;->vetoableSupport:Ljava/beans/VetoableChangeSupport;

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/KeyboardFocusManager;->vetoableSupport:Ljava/beans/VetoableChangeSupport;

    invoke-virtual {v0, p1}, Ljava/beans/VetoableChangeSupport;->addVetoableChangeListener(Ljava/beans/VetoableChangeListener;)V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public addVetoableChangeListener(Ljava/lang/String;Ljava/beans/VetoableChangeListener;)V
    .locals 1

    if-eqz p2, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/KeyboardFocusManager;->vetoableSupport:Ljava/beans/VetoableChangeSupport;

    if-nez v0, :cond_0

    new-instance v0, Ljava/beans/VetoableChangeSupport;

    invoke-direct {v0, p0}, Ljava/beans/VetoableChangeSupport;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/poi/java/awt/KeyboardFocusManager;->vetoableSupport:Ljava/beans/VetoableChangeSupport;

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/KeyboardFocusManager;->vetoableSupport:Ljava/beans/VetoableChangeSupport;

    invoke-virtual {v0, p1, p2}, Ljava/beans/VetoableChangeSupport;->addVetoableChangeListener(Ljava/lang/String;Ljava/beans/VetoableChangeListener;)V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public clearGlobalFocusOwner()V
    .locals 2

    const-class v0, Lorg/apache/poi/java/awt/KeyboardFocusManager;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->checkKFMSecurity()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lorg/apache/poi/java/awt/GraphicsEnvironment;->isHeadless()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->getDefaultToolkit()Lorg/apache/poi/java/awt/Toolkit;

    invoke-direct {p0}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->_clearGlobalFocusOwner()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public clearMarkers()V
    .locals 0

    return-void
.end method

.method public abstract dequeueKeyEvents(JLorg/apache/poi/java/awt/Component;)V
.end method

.method public abstract discardKeyEvents(Lorg/apache/poi/java/awt/Component;)V
.end method

.method public abstract dispatchEvent(Lorg/apache/poi/java/awt/AWTEvent;)Z
.end method

.method public abstract dispatchKeyEvent(Lorg/apache/poi/java/awt/event/KeyEvent;)Z
.end method

.method public final downFocusCycle()V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getFocusOwner()Lorg/apache/poi/java/awt/Component;

    move-result-object v0

    instance-of v1, v0, Lorg/apache/poi/java/awt/Container;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/apache/poi/java/awt/Container;

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->downFocusCycle(Lorg/apache/poi/java/awt/Container;)V

    :cond_0
    return-void
.end method

.method public abstract downFocusCycle(Lorg/apache/poi/java/awt/Container;)V
.end method

.method public dumpRequests()V
    .locals 6

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>> Requests dump, time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Lorg/apache/poi/java/awt/KeyboardFocusManager;->heavyweightRequests:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/apache/poi/java/awt/KeyboardFocusManager;->heavyweightRequests:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/java/awt/KeyboardFocusManager$HeavyweightFocusRequest;

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ">>> Req: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public abstract enqueueKeyEvents(JLorg/apache/poi/java/awt/Component;)V
.end method

.method public firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    if-ne p2, p3, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/KeyboardFocusManager;->changeSupport:Ljava/beans/PropertyChangeSupport;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2, p3}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public fireVetoableChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    if-ne p2, p3, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/KeyboardFocusManager;->vetoableSupport:Ljava/beans/VetoableChangeSupport;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2, p3}, Ljava/beans/VetoableChangeSupport;->fireVetoableChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final focusNextComponent()V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getFocusOwner()Lorg/apache/poi/java/awt/Component;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->focusNextComponent(Lorg/apache/poi/java/awt/Component;)V

    :cond_0
    return-void
.end method

.method public abstract focusNextComponent(Lorg/apache/poi/java/awt/Component;)V
.end method

.method public final focusPreviousComponent()V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getFocusOwner()Lorg/apache/poi/java/awt/Component;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->focusPreviousComponent(Lorg/apache/poi/java/awt/Component;)V

    :cond_0
    return-void
.end method

.method public abstract focusPreviousComponent(Lorg/apache/poi/java/awt/Component;)V
.end method

.method public getActiveWindow()Lorg/apache/poi/java/awt/Window;
    .locals 4

    const-class v0, Lorg/apache/poi/java/awt/KeyboardFocusManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/apache/poi/java/awt/KeyboardFocusManager;->activeWindow:Lorg/apache/poi/java/awt/Window;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return-object v2

    :cond_0
    iget-object v1, v1, Lorg/apache/poi/java/awt/Component;->appContext:Lorg/apache/poi/sun/awt/AppContext;

    invoke-static {}, Lorg/apache/poi/sun/awt/AppContext;->getAppContext()Lorg/apache/poi/sun/awt/AppContext;

    move-result-object v3

    if-ne v1, v3, :cond_1

    sget-object v2, Lorg/apache/poi/java/awt/KeyboardFocusManager;->activeWindow:Lorg/apache/poi/java/awt/Window;

    :cond_1
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCurrentFocusCycleRoot()Lorg/apache/poi/java/awt/Container;
    .locals 4

    const-class v0, Lorg/apache/poi/java/awt/KeyboardFocusManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/apache/poi/java/awt/KeyboardFocusManager;->currentFocusCycleRoot:Lorg/apache/poi/java/awt/Container;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return-object v2

    :cond_0
    iget-object v1, v1, Lorg/apache/poi/java/awt/Component;->appContext:Lorg/apache/poi/sun/awt/AppContext;

    invoke-static {}, Lorg/apache/poi/sun/awt/AppContext;->getAppContext()Lorg/apache/poi/sun/awt/AppContext;

    move-result-object v3

    if-ne v1, v3, :cond_1

    sget-object v2, Lorg/apache/poi/java/awt/KeyboardFocusManager;->currentFocusCycleRoot:Lorg/apache/poi/java/awt/Container;

    :cond_1
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final getCurrentSequencedEvent()Lorg/apache/poi/java/awt/SequencedEvent;
    .locals 2

    const-class v0, Lorg/apache/poi/java/awt/SequencedEvent;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/KeyboardFocusManager;->currentSequencedEvent:Lorg/apache/poi/java/awt/SequencedEvent;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCurrentWaitingRequest(Lorg/apache/poi/java/awt/Component;)Lorg/apache/poi/java/awt/Component;
    .locals 3

    sget-object v0, Lorg/apache/poi/java/awt/KeyboardFocusManager;->heavyweightRequests:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getFirstHWRequest()Lorg/apache/poi/java/awt/KeyboardFocusManager$HeavyweightFocusRequest;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Lorg/apache/poi/java/awt/KeyboardFocusManager$HeavyweightFocusRequest;->heavyweight:Lorg/apache/poi/java/awt/Component;

    if-ne v2, p1, :cond_0

    iget-object p1, v1, Lorg/apache/poi/java/awt/KeyboardFocusManager$HeavyweightFocusRequest;->lightweightRequests:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/java/awt/KeyboardFocusManager$LightweightFocusRequest;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lorg/apache/poi/java/awt/KeyboardFocusManager$LightweightFocusRequest;->component:Lorg/apache/poi/java/awt/Component;

    monitor-exit v0

    return-object p1

    :cond_0
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getDefaultFocusTraversalKeys(I)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Lorg/apache/poi/java/awt/AWTKeyStroke;",
            ">;"
        }
    .end annotation

    if-ltz p1, :cond_0

    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/java/awt/KeyboardFocusManager;->defaultFocusTraversalKeys:[Ljava/util/Set;

    aget-object p1, v0, p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid focus traversal key identifier"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public declared-synchronized getDefaultFocusTraversalPolicy()Lorg/apache/poi/java/awt/FocusTraversalPolicy;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/KeyboardFocusManager;->defaultPolicy:Lorg/apache/poi/java/awt/FocusTraversalPolicy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getFocusOwner()Lorg/apache/poi/java/awt/Component;
    .locals 4

    const-class v0, Lorg/apache/poi/java/awt/KeyboardFocusManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/apache/poi/java/awt/KeyboardFocusManager;->focusOwner:Lorg/apache/poi/java/awt/Component;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return-object v2

    :cond_0
    iget-object v1, v1, Lorg/apache/poi/java/awt/Component;->appContext:Lorg/apache/poi/sun/awt/AppContext;

    invoke-static {}, Lorg/apache/poi/sun/awt/AppContext;->getAppContext()Lorg/apache/poi/sun/awt/AppContext;

    move-result-object v3

    if-ne v1, v3, :cond_1

    sget-object v2, Lorg/apache/poi/java/awt/KeyboardFocusManager;->focusOwner:Lorg/apache/poi/java/awt/Component;

    :cond_1
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getFocusedWindow()Lorg/apache/poi/java/awt/Window;
    .locals 4

    const-class v0, Lorg/apache/poi/java/awt/KeyboardFocusManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/apache/poi/java/awt/KeyboardFocusManager;->focusedWindow:Lorg/apache/poi/java/awt/Window;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return-object v2

    :cond_0
    iget-object v1, v1, Lorg/apache/poi/java/awt/Component;->appContext:Lorg/apache/poi/sun/awt/AppContext;

    invoke-static {}, Lorg/apache/poi/sun/awt/AppContext;->getAppContext()Lorg/apache/poi/sun/awt/AppContext;

    move-result-object v3

    if-ne v1, v3, :cond_1

    sget-object v2, Lorg/apache/poi/java/awt/KeyboardFocusManager;->focusedWindow:Lorg/apache/poi/java/awt/Window;

    :cond_1
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getGlobalActiveWindow()Lorg/apache/poi/java/awt/Window;
    .locals 2

    const-class v0, Lorg/apache/poi/java/awt/KeyboardFocusManager;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->checkKFMSecurity()V

    sget-object v1, Lorg/apache/poi/java/awt/KeyboardFocusManager;->activeWindow:Lorg/apache/poi/java/awt/Window;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getGlobalCurrentFocusCycleRoot()Lorg/apache/poi/java/awt/Container;
    .locals 2

    const-class v0, Lorg/apache/poi/java/awt/KeyboardFocusManager;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->checkKFMSecurity()V

    sget-object v1, Lorg/apache/poi/java/awt/KeyboardFocusManager;->currentFocusCycleRoot:Lorg/apache/poi/java/awt/Container;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getGlobalFocusOwner()Lorg/apache/poi/java/awt/Component;
    .locals 2

    const-class v0, Lorg/apache/poi/java/awt/KeyboardFocusManager;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->checkKFMSecurity()V

    sget-object v1, Lorg/apache/poi/java/awt/KeyboardFocusManager;->focusOwner:Lorg/apache/poi/java/awt/Component;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getGlobalFocusedWindow()Lorg/apache/poi/java/awt/Window;
    .locals 2

    const-class v0, Lorg/apache/poi/java/awt/KeyboardFocusManager;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->checkKFMSecurity()V

    sget-object v1, Lorg/apache/poi/java/awt/KeyboardFocusManager;->focusedWindow:Lorg/apache/poi/java/awt/Window;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getGlobalPermanentFocusOwner()Lorg/apache/poi/java/awt/Component;
    .locals 2

    const-class v0, Lorg/apache/poi/java/awt/KeyboardFocusManager;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->checkKFMSecurity()V

    sget-object v1, Lorg/apache/poi/java/awt/KeyboardFocusManager;->permanentFocusOwner:Lorg/apache/poi/java/awt/Component;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public declared-synchronized getKeyEventDispatchers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/java/awt/KeyEventDispatcher;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/KeyboardFocusManager;->keyEventDispatchers:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getKeyEventPostProcessors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/java/awt/KeyEventPostProcessor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/java/awt/KeyboardFocusManager;->keyEventPostProcessors:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getNativeFocusOwner()Lorg/apache/poi/java/awt/Component;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/KeyboardFocusManager;->peer:Lorg/apache/poi/java/awt/peer/KeyboardFocusManagerPeer;

    invoke-interface {v0}, Lorg/apache/poi/java/awt/peer/KeyboardFocusManagerPeer;->getCurrentFocusOwner()Lorg/apache/poi/java/awt/Component;

    move-result-object v0

    return-object v0
.end method

.method public getNativeFocusedWindow()Lorg/apache/poi/java/awt/Window;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/KeyboardFocusManager;->peer:Lorg/apache/poi/java/awt/peer/KeyboardFocusManagerPeer;

    invoke-interface {v0}, Lorg/apache/poi/java/awt/peer/KeyboardFocusManagerPeer;->getCurrentFocusedWindow()Lorg/apache/poi/java/awt/Window;

    move-result-object v0

    return-object v0
.end method

.method public getPermanentFocusOwner()Lorg/apache/poi/java/awt/Component;
    .locals 4

    const-class v0, Lorg/apache/poi/java/awt/KeyboardFocusManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/apache/poi/java/awt/KeyboardFocusManager;->permanentFocusOwner:Lorg/apache/poi/java/awt/Component;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return-object v2

    :cond_0
    iget-object v1, v1, Lorg/apache/poi/java/awt/Component;->appContext:Lorg/apache/poi/sun/awt/AppContext;

    invoke-static {}, Lorg/apache/poi/sun/awt/AppContext;->getAppContext()Lorg/apache/poi/sun/awt/AppContext;

    move-result-object v3

    if-ne v1, v3, :cond_1

    sget-object v2, Lorg/apache/poi/java/awt/KeyboardFocusManager;->permanentFocusOwner:Lorg/apache/poi/java/awt/Component;

    :cond_1
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public declared-synchronized getPropertyChangeListeners()[Ljava/beans/PropertyChangeListener;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/KeyboardFocusManager;->changeSupport:Ljava/beans/PropertyChangeSupport;

    if-nez v0, :cond_0

    new-instance v0, Ljava/beans/PropertyChangeSupport;

    invoke-direct {v0, p0}, Ljava/beans/PropertyChangeSupport;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/poi/java/awt/KeyboardFocusManager;->changeSupport:Ljava/beans/PropertyChangeSupport;

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/KeyboardFocusManager;->changeSupport:Ljava/beans/PropertyChangeSupport;

    invoke-virtual {v0}, Ljava/beans/PropertyChangeSupport;->getPropertyChangeListeners()[Ljava/beans/PropertyChangeListener;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPropertyChangeListeners(Ljava/lang/String;)[Ljava/beans/PropertyChangeListener;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/KeyboardFocusManager;->changeSupport:Ljava/beans/PropertyChangeSupport;

    if-nez v0, :cond_0

    new-instance v0, Ljava/beans/PropertyChangeSupport;

    invoke-direct {v0, p0}, Ljava/beans/PropertyChangeSupport;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/poi/java/awt/KeyboardFocusManager;->changeSupport:Ljava/beans/PropertyChangeSupport;

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/KeyboardFocusManager;->changeSupport:Ljava/beans/PropertyChangeSupport;

    invoke-virtual {v0, p1}, Ljava/beans/PropertyChangeSupport;->getPropertyChangeListeners(Ljava/lang/String;)[Ljava/beans/PropertyChangeListener;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getVetoableChangeListeners()[Ljava/beans/VetoableChangeListener;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/KeyboardFocusManager;->vetoableSupport:Ljava/beans/VetoableChangeSupport;

    if-nez v0, :cond_0

    new-instance v0, Ljava/beans/VetoableChangeSupport;

    invoke-direct {v0, p0}, Ljava/beans/VetoableChangeSupport;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/poi/java/awt/KeyboardFocusManager;->vetoableSupport:Ljava/beans/VetoableChangeSupport;

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/KeyboardFocusManager;->vetoableSupport:Ljava/beans/VetoableChangeSupport;

    invoke-virtual {v0}, Ljava/beans/VetoableChangeSupport;->getVetoableChangeListeners()[Ljava/beans/VetoableChangeListener;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getVetoableChangeListeners(Ljava/lang/String;)[Ljava/beans/VetoableChangeListener;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/KeyboardFocusManager;->vetoableSupport:Ljava/beans/VetoableChangeSupport;

    if-nez v0, :cond_0

    new-instance v0, Ljava/beans/VetoableChangeSupport;

    invoke-direct {v0, p0}, Ljava/beans/VetoableChangeSupport;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/poi/java/awt/KeyboardFocusManager;->vetoableSupport:Ljava/beans/VetoableChangeSupport;

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/KeyboardFocusManager;->vetoableSupport:Ljava/beans/VetoableChangeSupport;

    invoke-virtual {v0, p1}, Ljava/beans/VetoableChangeSupport;->getVetoableChangeListeners(Ljava/lang/String;)[Ljava/beans/VetoableChangeListener;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public abstract postProcessKeyEvent(Lorg/apache/poi/java/awt/event/KeyEvent;)Z
.end method

.method public abstract processKeyEvent(Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/event/KeyEvent;)V
.end method

.method public final redispatchEvent(Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/AWTEvent;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p2, Lorg/apache/poi/java/awt/AWTEvent;->focusManagerIsDispatching:Z

    invoke-virtual {p1, p2}, Lorg/apache/poi/java/awt/Component;->dispatchEvent(Lorg/apache/poi/java/awt/AWTEvent;)V

    const/4 p1, 0x0

    iput-boolean p1, p2, Lorg/apache/poi/java/awt/AWTEvent;->focusManagerIsDispatching:Z

    return-void
.end method

.method public removeKeyEventDispatcher(Lorg/apache/poi/java/awt/KeyEventDispatcher;)V
    .locals 1

    if-eqz p1, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/KeyboardFocusManager;->keyEventDispatchers:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public removeKeyEventPostProcessor(Lorg/apache/poi/java/awt/KeyEventPostProcessor;)V
    .locals 1

    if-eqz p1, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/KeyboardFocusManager;->keyEventPostProcessors:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V
    .locals 1

    if-eqz p1, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/KeyboardFocusManager;->changeSupport:Ljava/beans/PropertyChangeSupport;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/beans/PropertyChangeSupport;->removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public removePropertyChangeListener(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)V
    .locals 1

    if-eqz p2, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/KeyboardFocusManager;->changeSupport:Ljava/beans/PropertyChangeSupport;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Ljava/beans/PropertyChangeSupport;->removePropertyChangeListener(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)V

    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public removeVetoableChangeListener(Ljava/beans/VetoableChangeListener;)V
    .locals 1

    if-eqz p1, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/KeyboardFocusManager;->vetoableSupport:Ljava/beans/VetoableChangeSupport;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/beans/VetoableChangeSupport;->removeVetoableChangeListener(Ljava/beans/VetoableChangeListener;)V

    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public removeVetoableChangeListener(Ljava/lang/String;Ljava/beans/VetoableChangeListener;)V
    .locals 1

    if-eqz p2, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/KeyboardFocusManager;->vetoableSupport:Ljava/beans/VetoableChangeSupport;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Ljava/beans/VetoableChangeSupport;->removeVetoableChangeListener(Ljava/lang/String;Ljava/beans/VetoableChangeListener;)V

    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public final setCurrentSequencedEvent(Lorg/apache/poi/java/awt/SequencedEvent;)V
    .locals 1

    const-class v0, Lorg/apache/poi/java/awt/SequencedEvent;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lorg/apache/poi/java/awt/KeyboardFocusManager;->currentSequencedEvent:Lorg/apache/poi/java/awt/SequencedEvent;

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_0
.end method

.method public setDefaultFocusTraversalKeys(ILjava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "+",
            "Lorg/apache/poi/java/awt/AWTKeyStroke;",
            ">;)V"
        }
    .end annotation

    if-ltz p1, :cond_8

    const/4 v0, 0x4

    if-ge p1, v0, :cond_8

    if-eqz p2, :cond_7

    monitor-enter p0

    :try_start_0
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5

    instance-of v3, v2, Lorg/apache/poi/java/awt/AWTKeyStroke;

    if-eqz v3, :cond_4

    check-cast v2, Lorg/apache/poi/java/awt/AWTKeyStroke;

    invoke-virtual {v2}, Lorg/apache/poi/java/awt/AWTKeyStroke;->getKeyChar()C

    move-result v3

    const v4, 0xffff

    if-ne v3, v4, :cond_3

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    if-ne v3, p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lorg/apache/poi/java/awt/KeyboardFocusManager;->defaultFocusTraversalKeys:[Ljava/util/Set;

    aget-object v4, v4, v3

    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "focus traversal keys must be unique for a Component"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "focus traversal keys cannot map to KEY_TYPED events"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "object is expected to be AWTKeyStroke"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "cannot set null focus traversal key"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    iget-object v0, p0, Lorg/apache/poi/java/awt/KeyboardFocusManager;->defaultFocusTraversalKeys:[Ljava/util/Set;

    aget-object v1, v0, p1

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    aput-object v2, v0, p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lorg/apache/poi/java/awt/KeyboardFocusManager;->defaultFocusTraversalKeyPropertyNames:[Ljava/lang/String;

    aget-object p1, v0, p1

    invoke-virtual {p0, p1, v1, p2}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "cannot set null Set of default focus traversal keys"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid focus traversal key identifier"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDefaultFocusTraversalPolicy(Lorg/apache/poi/java/awt/FocusTraversalPolicy;)V
    .locals 2

    if-eqz p1, :cond_0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/KeyboardFocusManager;->defaultPolicy:Lorg/apache/poi/java/awt/FocusTraversalPolicy;

    iput-object p1, p0, Lorg/apache/poi/java/awt/KeyboardFocusManager;->defaultPolicy:Lorg/apache/poi/java/awt/FocusTraversalPolicy;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "defaultFocusTraversalPolicy"

    invoke-virtual {p0, v1, v0, p1}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "default focus traversal policy cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setGlobalActiveWindow(Lorg/apache/poi/java/awt/Window;)V
    .locals 5

    const-class v0, Lorg/apache/poi/java/awt/KeyboardFocusManager;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->checkKFMSecurity()V

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getActiveWindow()Lorg/apache/poi/java/awt/Window;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/java/awt/KeyboardFocusManager;->focusLog:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    const/16 v3, 0x190

    invoke-virtual {v2, v3}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting global active window to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", old active "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->finer(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :try_start_1
    const-string v2, "activeWindow"

    invoke-virtual {p0, v2, v1, p1}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->fireVetoableChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/beans/PropertyVetoException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sput-object p1, Lorg/apache/poi/java/awt/KeyboardFocusManager;->activeWindow:Lorg/apache/poi/java/awt/Window;

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v0, "activeWindow"

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :catch_0
    :try_start_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public setGlobalCurrentFocusCycleRoot(Lorg/apache/poi/java/awt/Container;)V
    .locals 2

    const-class v0, Lorg/apache/poi/java/awt/KeyboardFocusManager;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->checkKFMSecurity()V

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getCurrentFocusCycleRoot()Lorg/apache/poi/java/awt/Container;

    move-result-object v1

    sput-object p1, Lorg/apache/poi/java/awt/KeyboardFocusManager;->currentFocusCycleRoot:Lorg/apache/poi/java/awt/Container;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "currentFocusCycleRoot"

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setGlobalFocusOwner(Lorg/apache/poi/java/awt/Component;)V
    .locals 4

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const-class v0, Lorg/apache/poi/java/awt/KeyboardFocusManager;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->checkKFMSecurity()V

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getFocusOwner()Lorg/apache/poi/java/awt/Component;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v2, "focusOwner"

    invoke-virtual {p0, v2, v1, p1}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->fireVetoableChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/beans/PropertyVetoException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sput-object p1, Lorg/apache/poi/java/awt/KeyboardFocusManager;->focusOwner:Lorg/apache/poi/java/awt/Component;

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getCurrentFocusCycleRoot()Lorg/apache/poi/java/awt/Container;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getCurrentFocusCycleRoot()Lorg/apache/poi/java/awt/Container;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/apache/poi/java/awt/Component;->isFocusCycleRoot(Lorg/apache/poi/java/awt/Container;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_2
    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->getFocusCycleRootAncestor()Lorg/apache/poi/java/awt/Container;

    move-result-object v2

    if-nez v2, :cond_3

    instance-of v3, p1, Lorg/apache/poi/java/awt/Window;

    if-eqz v3, :cond_3

    move-object v2, p1

    check-cast v2, Lorg/apache/poi/java/awt/Container;

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {p0, v2}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->setGlobalCurrentFocusCycleRoot(Lorg/apache/poi/java/awt/Container;)V

    :cond_4
    const/4 v2, 0x1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v1

    move v1, v2

    :goto_1
    if-eqz v1, :cond_5

    const-string v1, "focusOwner"

    invoke-virtual {p0, v1, v0, p1}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    return-void

    :catch_0
    :try_start_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public setGlobalFocusedWindow(Lorg/apache/poi/java/awt/Window;)V
    .locals 3

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Window;->isFocusableWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const-class v0, Lorg/apache/poi/java/awt/KeyboardFocusManager;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->checkKFMSecurity()V

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getFocusedWindow()Lorg/apache/poi/java/awt/Window;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v2, "focusedWindow"

    invoke-virtual {p0, v2, v1, p1}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->fireVetoableChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/beans/PropertyVetoException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sput-object p1, Lorg/apache/poi/java/awt/KeyboardFocusManager;->focusedWindow:Lorg/apache/poi/java/awt/Window;

    const/4 v2, 0x1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v1

    move v1, v2

    :goto_1
    if-eqz v1, :cond_2

    const-string v1, "focusedWindow"

    invoke-virtual {p0, v1, v0, p1}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-void

    :catch_0
    :try_start_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public setGlobalPermanentFocusOwner(Lorg/apache/poi/java/awt/Component;)V
    .locals 3

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const-class v0, Lorg/apache/poi/java/awt/KeyboardFocusManager;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->checkKFMSecurity()V

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getPermanentFocusOwner()Lorg/apache/poi/java/awt/Component;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v2, "permanentFocusOwner"

    invoke-virtual {p0, v2, v1, p1}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->fireVetoableChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/beans/PropertyVetoException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sput-object p1, Lorg/apache/poi/java/awt/KeyboardFocusManager;->permanentFocusOwner:Lorg/apache/poi/java/awt/Component;

    invoke-static {p1}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->setMostRecentFocusOwner(Lorg/apache/poi/java/awt/Component;)V

    const/4 v2, 0x1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v1

    move v1, v2

    :goto_1
    if-eqz v1, :cond_2

    const-string v1, "permanentFocusOwner"

    invoke-virtual {p0, v1, v0, p1}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-void

    :catch_0
    :try_start_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public setNativeFocusOwner(Lorg/apache/poi/java/awt/Component;)V
    .locals 4

    sget-object v0, Lorg/apache/poi/java/awt/KeyboardFocusManager;->focusLog:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/apache/poi/java/awt/KeyboardFocusManager;->peer:Lorg/apache/poi/java/awt/peer/KeyboardFocusManagerPeer;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Calling peer {0} setCurrentFocusOwner for {1}"

    invoke-virtual {v0, v2, v1}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->finest(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/KeyboardFocusManager;->peer:Lorg/apache/poi/java/awt/peer/KeyboardFocusManagerPeer;

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/peer/KeyboardFocusManagerPeer;->setCurrentFocusOwner(Lorg/apache/poi/java/awt/Component;)V

    return-void
.end method

.method public final upFocusCycle()V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getFocusOwner()Lorg/apache/poi/java/awt/Component;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->upFocusCycle(Lorg/apache/poi/java/awt/Component;)V

    :cond_0
    return-void
.end method

.method public abstract upFocusCycle(Lorg/apache/poi/java/awt/Component;)V
.end method
