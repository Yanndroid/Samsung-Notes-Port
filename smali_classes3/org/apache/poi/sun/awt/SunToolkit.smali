.class public abstract Lorg/apache/poi/sun/awt/SunToolkit;
.super Lorg/apache/poi/java/awt/Toolkit;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sun/awt/WindowClosingSupport;
.implements Lorg/apache/poi/sun/awt/WindowClosingListener;
.implements Lorg/apache/poi/sun/awt/ComponentFactory;
.implements Lorg/apache/poi/sun/awt/InputMethodSupport;
.implements Lorg/apache/poi/sun/awt/KeyboardFocusManagerPeerProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/sun/awt/SunToolkit$IllegalThreadException;,
        Lorg/apache/poi/sun/awt/SunToolkit$InfiniteLoop;,
        Lorg/apache/poi/sun/awt/SunToolkit$OperationTimedOut;,
        Lorg/apache/poi/sun/awt/SunToolkit$ModalityListenerList;
    }
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z = false

.field private static final AWT_LOCK:Ljava/util/concurrent/locks/ReentrantLock;

.field private static final AWT_LOCK_COND:Ljava/util/concurrent/locks/Condition;

.field private static final DEACTIVATION_TIMES_MAP_KEY:Ljava/lang/Object;

.field private static DEFAULT_MODAL_EXCLUSION_TYPE:Lorg/apache/poi/java/awt/Dialog$ModalExclusionType; = null

.field public static final DEFAULT_WAIT_TIME:I = 0x2710

.field public static final DESKTOPFONTHINTS:Ljava/lang/String; = "awt.font.desktophints"

.field public static final GRAB_EVENT_MASK:I = -0x80000000

.field public static final MAX_BUTTONS_SUPPORTED:I = 0x14

.field private static final MAX_ITERS:I = 0x14

.field private static final MINIMAL_EDELAY:I = 0x0

.field private static final MIN_ITERS:I = 0x0

.field private static final POST_EVENT_QUEUE_KEY:Ljava/lang/String; = "PostEventQueue"

.field private static final appContextMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lorg/apache/poi/sun/awt/AppContext;",
            ">;"
        }
    .end annotation
.end field

.field private static checkedSystemAAFontSettings:Z

.field private static desktopFontHints:Lorg/apache/poi/java/awt/RenderingHints;

.field public static final fileImgCache:Lorg/apache/poi/sun/misc/SoftCache;

.field private static lastExtraCondition:Z

.field private static mPeer:Lorg/apache/poi/sun/awt/DefaultMouseInfoPeer;

.field public static numberOfButtons:I

.field private static startupLocale:Ljava/util/Locale;

.field private static sunAwtDisableMixing:Ljava/lang/Boolean;

.field private static touchKeyboardAutoShowIsEnabled:Z

.field public static final urlImgCache:Lorg/apache/poi/sun/misc/SoftCache;

.field private static useSystemAAFontSettings:Z


# instance fields
.field private eventDispatched:Z

.field private modalityListeners:Lorg/apache/poi/sun/awt/SunToolkit$ModalityListenerList;

.field private queueEmpty:Z

.field private final waitLock:Ljava/lang/Object;

.field private transient windowClosingListener:Lorg/apache/poi/sun/awt/WindowClosingListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/poi/sun/security/action/GetBooleanAction;

    const-string v1, "org.apache.poi.sun.awt.nativedebug"

    invoke-direct {v0, v1}, Lorg/apache/poi/sun/security/action/GetBooleanAction;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/apache/poi/sun/awt/DebugSettings;->init()V

    :cond_0
    new-instance v0, Lorg/apache/poi/sun/security/action/GetPropertyAction;

    const-string v1, "awt.touchKeyboardAutoShowIsEnabled"

    const-string/jumbo v2, "true"

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/sun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lorg/apache/poi/sun/awt/SunToolkit;->touchKeyboardAutoShowIsEnabled:Z

    const/4 v0, 0x0

    sput v0, Lorg/apache/poi/sun/awt/SunToolkit;->numberOfButtons:I

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lorg/apache/poi/sun/awt/SunToolkit;->AWT_LOCK:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/sun/awt/SunToolkit;->AWT_LOCK_COND:Ljava/util/concurrent/locks/Condition;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/sun/awt/SunToolkit;->appContextMap:Ljava/util/Map;

    new-instance v0, Lorg/apache/poi/sun/misc/SoftCache;

    invoke-direct {v0}, Lorg/apache/poi/sun/misc/SoftCache;-><init>()V

    sput-object v0, Lorg/apache/poi/sun/awt/SunToolkit;->fileImgCache:Lorg/apache/poi/sun/misc/SoftCache;

    new-instance v0, Lorg/apache/poi/sun/misc/SoftCache;

    invoke-direct {v0}, Lorg/apache/poi/sun/misc/SoftCache;-><init>()V

    sput-object v0, Lorg/apache/poi/sun/awt/SunToolkit;->urlImgCache:Lorg/apache/poi/sun/misc/SoftCache;

    const/4 v0, 0x0

    sput-object v0, Lorg/apache/poi/sun/awt/SunToolkit;->startupLocale:Ljava/util/Locale;

    sput-object v0, Lorg/apache/poi/sun/awt/SunToolkit;->mPeer:Lorg/apache/poi/sun/awt/DefaultMouseInfoPeer;

    sput-object v0, Lorg/apache/poi/sun/awt/SunToolkit;->DEFAULT_MODAL_EXCLUSION_TYPE:Lorg/apache/poi/java/awt/Dialog$ModalExclusionType;

    const/4 v1, 0x1

    sput-boolean v1, Lorg/apache/poi/sun/awt/SunToolkit;->lastExtraCondition:Z

    sput-object v0, Lorg/apache/poi/sun/awt/SunToolkit;->sunAwtDisableMixing:Ljava/lang/Boolean;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/apache/poi/sun/awt/SunToolkit;->DEACTIVATION_TIMES_MAP_KEY:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/java/awt/Toolkit;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/sun/awt/SunToolkit;->windowClosingListener:Lorg/apache/poi/sun/awt/WindowClosingListener;

    new-instance v0, Lorg/apache/poi/sun/awt/SunToolkit$ModalityListenerList;

    invoke-direct {v0}, Lorg/apache/poi/sun/awt/SunToolkit$ModalityListenerList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/sun/awt/SunToolkit;->modalityListeners:Lorg/apache/poi/sun/awt/SunToolkit$ModalityListenerList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/sun/awt/SunToolkit;->eventDispatched:Z

    iput-boolean v0, p0, Lorg/apache/poi/sun/awt/SunToolkit;->queueEmpty:Z

    const-string v0, "Wait Lock"

    iput-object v0, p0, Lorg/apache/poi/sun/awt/SunToolkit;->waitLock:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic access$000(Lorg/apache/poi/sun/awt/SunToolkit;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sun/awt/SunToolkit;->waitLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$102(Lorg/apache/poi/sun/awt/SunToolkit;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/sun/awt/SunToolkit;->queueEmpty:Z

    return p1
.end method

.method public static synthetic access$200(Lorg/apache/poi/sun/awt/SunToolkit;)Z
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/sun/awt/SunToolkit;->isEQEmpty()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$302(Lorg/apache/poi/sun/awt/SunToolkit;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/sun/awt/SunToolkit;->eventDispatched:Z

    return p1
.end method

.method public static final awtLock()V
    .locals 1

    sget-object v0, Lorg/apache/poi/sun/awt/SunToolkit;->AWT_LOCK:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    return-void
.end method

.method public static final awtLockNotify()V
    .locals 1

    sget-object v0, Lorg/apache/poi/sun/awt/SunToolkit;->AWT_LOCK_COND:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    return-void
.end method

.method public static final awtLockNotifyAll()V
    .locals 1

    sget-object v0, Lorg/apache/poi/sun/awt/SunToolkit;->AWT_LOCK_COND:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    return-void
.end method

.method public static final awtLockWait()V
    .locals 1

    sget-object v0, Lorg/apache/poi/sun/awt/SunToolkit;->AWT_LOCK_COND:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V

    return-void
.end method

.method public static final awtLockWait(J)V
    .locals 2

    sget-object v0, Lorg/apache/poi/sun/awt/SunToolkit;->AWT_LOCK_COND:Ljava/util/concurrent/locks/Condition;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p0, p1, v1}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    return-void
.end method

.method public static final awtTryLock()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/sun/awt/SunToolkit;->AWT_LOCK:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v0

    return v0
.end method

.method public static final awtUnlock()V
    .locals 1

    sget-object v0, Lorg/apache/poi/sun/awt/SunToolkit;->AWT_LOCK:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public static checkAndSetPolicy(Lorg/apache/poi/java/awt/Container;)V
    .locals 1

    invoke-static {}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getCurrentKeyboardFocusManager()Lorg/apache/poi/java/awt/KeyboardFocusManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getDefaultFocusTraversalPolicy()Lorg/apache/poi/java/awt/FocusTraversalPolicy;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/Container;->setFocusTraversalPolicy(Lorg/apache/poi/java/awt/FocusTraversalPolicy;)V

    return-void
.end method

.method private static checkPermissions(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static checkPermissions(Ljava/net/URL;)V
    .locals 6

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_2

    :try_start_0
    invoke-static {p0}, Lsun/net/util/URLUtil;->getConnectPermission(Ljava/net/URL;)Ljava/security/Permission;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_2

    :try_start_1
    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    instance-of v3, v1, Ljava/io/FilePermission;

    const/4 v4, -0x1

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/security/Permission;->getActions()Ljava/lang/String;

    move-result-object v3

    const-string v5, "read"

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v4, :cond_0

    invoke-virtual {v1}, Ljava/security/Permission;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    instance-of v3, v1, Ljava/net/SocketPermission;

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Ljava/security/Permission;->getActions()Ljava/lang/String;

    move-result-object v1

    const-string v3, "connect"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v4, :cond_1

    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/URL;->getPort()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    throw v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/URL;->getPort()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private checkResolutionVariant(Lorg/apache/poi/java/awt/Image;IILorg/apache/poi/java/awt/image/ImageObserver;)I
    .locals 10

    invoke-static {p1}, Lorg/apache/poi/sun/awt/SunToolkit;->getResolutionVariant(Lorg/apache/poi/java/awt/Image;)Lorg/apache/poi/sun/awt/image/ToolkitImage;

    move-result-object v0

    invoke-static {p2}, Lorg/apache/poi/sun/awt/SunToolkit;->getRVSize(I)I

    move-result v8

    invoke-static {p3}, Lorg/apache/poi/sun/awt/SunToolkit;->getRVSize(I)I

    move-result v9

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/poi/sun/awt/image/ToolkitImage;->hasError()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v7, 0x1

    move-object v1, p1

    move-object v2, p4

    move v3, p2

    move v4, p3

    move v5, v8

    move v6, v9

    invoke-static/range {v1 .. v7}, Lorg/apache/poi/sun/awt/image/MultiResolutionToolkitImage;->getResolutionVariantObserver(Lorg/apache/poi/java/awt/Image;Lorg/apache/poi/java/awt/image/ImageObserver;IIIIZ)Lorg/apache/poi/java/awt/image/ImageObserver;

    move-result-object p1

    invoke-virtual {p0, v0, v8, v9, p1}, Lorg/apache/poi/sun/awt/SunToolkit;->checkImage(Lorg/apache/poi/java/awt/Image;IILorg/apache/poi/java/awt/image/ImageObserver;)I

    move-result p1

    goto :goto_1

    :cond_1
    :goto_0
    const p1, 0xffff

    :goto_1
    return p1
.end method

.method public static native closeSplashScreen()V
.end method

.method public static declared-synchronized consumeNextKeyTyped(Lorg/apache/poi/java/awt/event/KeyEvent;)V
    .locals 3

    const-class v0, Lorg/apache/poi/sun/awt/SunToolkit;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lorg/apache/poi/sun/awt/AWTAccessor;->getDefaultKeyboardFocusManagerAccessor()Lorg/apache/poi/sun/awt/AWTAccessor$DefaultKeyboardFocusManagerAccessor;

    move-result-object v1

    invoke-static {}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getCurrentKeyboardFocusManager()Lorg/apache/poi/java/awt/KeyboardFocusManager;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;

    invoke-interface {v1, v2, p0}, Lorg/apache/poi/sun/awt/AWTAccessor$DefaultKeyboardFocusManagerAccessor;->consumeNextKeyTyped(Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;Lorg/apache/poi/java/awt/event/KeyEvent;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/ClassCastException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public static createImageWithResolutionVariant(Lorg/apache/poi/java/awt/Image;Lorg/apache/poi/java/awt/Image;)Lorg/apache/poi/java/awt/Image;
    .locals 1

    new-instance v0, Lorg/apache/poi/sun/awt/image/MultiResolutionToolkitImage;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/sun/awt/image/MultiResolutionToolkitImage;-><init>(Lorg/apache/poi/java/awt/Image;Lorg/apache/poi/java/awt/Image;)V

    return-object v0
.end method

.method private static createLayoutPolicy()Lorg/apache/poi/java/awt/FocusTraversalPolicy;
    .locals 1

    :try_start_0
    const-string v0, "javax.swing.LayoutFocusTraversalPolicy"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/java/awt/FocusTraversalPolicy;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static createNewAppContext()Lorg/apache/poi/sun/awt/AppContext;
    .locals 1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/sun/awt/SunToolkit;->createNewAppContext(Ljava/lang/ThreadGroup;)Lorg/apache/poi/sun/awt/AppContext;

    move-result-object v0

    return-object v0
.end method

.method public static final createNewAppContext(Ljava/lang/ThreadGroup;)Lorg/apache/poi/sun/awt/AppContext;
    .locals 1

    new-instance v0, Lorg/apache/poi/sun/awt/AppContext;

    invoke-direct {v0, p0}, Lorg/apache/poi/sun/awt/AppContext;-><init>(Ljava/lang/ThreadGroup;)V

    invoke-static {v0}, Lorg/apache/poi/sun/awt/SunToolkit;->initEQ(Lorg/apache/poi/sun/awt/AppContext;)V

    return-object v0
.end method

.method private disableBackgroundEraseImpl(Lorg/apache/poi/java/awt/Component;)V
    .locals 2

    invoke-static {}, Lorg/apache/poi/sun/awt/AWTAccessor;->getComponentAccessor()Lorg/apache/poi/sun/awt/AWTAccessor$ComponentAccessor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lorg/apache/poi/sun/awt/AWTAccessor$ComponentAccessor;->setBackgroundEraseDisabled(Lorg/apache/poi/java/awt/Component;Z)V

    return-void
.end method

.method public static dumpPeers(Lorg/apache/poi/sun/util/logging/PlatformLogger;)V
    .locals 1

    invoke-static {}, Lorg/apache/poi/sun/awt/AWTAutoShutdown;->getInstance()Lorg/apache/poi/sun/awt/AWTAutoShutdown;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/poi/sun/awt/AWTAutoShutdown;->dumpPeers(Lorg/apache/poi/sun/util/logging/PlatformLogger;)V

    return-void
.end method

.method public static executeOnEDTAndWait(Ljava/lang/Object;Ljava/lang/Runnable;)V
    .locals 9

    invoke-static {}, Lorg/apache/poi/java/awt/EventQueue;->isDispatchThread()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lorg/apache/poi/sun/awt/SunToolkit$1AWTInvocationLock;

    invoke-direct {v0}, Lorg/apache/poi/sun/awt/SunToolkit$1AWTInvocationLock;-><init>()V

    new-instance v8, Lorg/apache/poi/sun/awt/PeerEvent;

    const/4 v5, 0x1

    const-wide/16 v6, 0x1

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, v0

    invoke-direct/range {v1 .. v7}, Lorg/apache/poi/sun/awt/PeerEvent;-><init>(Ljava/lang/Object;Ljava/lang/Runnable;Ljava/lang/Object;ZJ)V

    monitor-enter v0

    :try_start_0
    invoke-static {v8}, Lorg/apache/poi/sun/awt/SunToolkit;->executeOnEventHandlerThread(Lorg/apache/poi/sun/awt/PeerEvent;)V

    :goto_0
    invoke-virtual {v8}, Lorg/apache/poi/sun/awt/PeerEvent;->isDispatched()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v8}, Lorg/apache/poi/sun/awt/PeerEvent;->getThrowable()Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    new-instance p1, Ljava/lang/reflect/InvocationTargetException;

    invoke-direct {p1, p0}, Ljava/lang/reflect/InvocationTargetException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/Error;

    const-string p1, "Cannot call executeOnEDTAndWait from any event dispatcher thread"

    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static executeOnEventHandlerThread(Ljava/lang/Object;Ljava/lang/Runnable;)V
    .locals 3

    new-instance v0, Lorg/apache/poi/sun/awt/PeerEvent;

    const-wide/16 v1, 0x1

    invoke-direct {v0, p0, p1, v1, v2}, Lorg/apache/poi/sun/awt/PeerEvent;-><init>(Ljava/lang/Object;Ljava/lang/Runnable;J)V

    invoke-static {v0}, Lorg/apache/poi/sun/awt/SunToolkit;->executeOnEventHandlerThread(Lorg/apache/poi/sun/awt/PeerEvent;)V

    return-void
.end method

.method public static executeOnEventHandlerThread(Ljava/lang/Object;Ljava/lang/Runnable;J)V
    .locals 8

    new-instance v7, Lorg/apache/poi/sun/awt/SunToolkit$2;

    const-wide/16 v3, 0x1

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Lorg/apache/poi/sun/awt/SunToolkit$2;-><init>(Ljava/lang/Object;Ljava/lang/Runnable;JJ)V

    invoke-static {v7}, Lorg/apache/poi/sun/awt/SunToolkit;->executeOnEventHandlerThread(Lorg/apache/poi/sun/awt/PeerEvent;)V

    return-void
.end method

.method public static executeOnEventHandlerThread(Lorg/apache/poi/sun/awt/PeerEvent;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/sun/awt/PeerEvent;->getSource()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/sun/awt/SunToolkit;->targetToAppContext(Ljava/lang/Object;)Lorg/apache/poi/sun/awt/AppContext;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/apache/poi/sun/awt/SunToolkit;->postEvent(Lorg/apache/poi/sun/awt/AppContext;Lorg/apache/poi/java/awt/AWTEvent;)V

    return-void
.end method

.method private fireDesktopFontPropertyChanges()V
    .locals 2

    invoke-static {}, Lorg/apache/poi/sun/awt/SunToolkit;->getDesktopFontHints()Lorg/apache/poi/java/awt/RenderingHints;

    move-result-object v0

    const-string v1, "awt.font.desktophints"

    invoke-virtual {p0, v1, v0}, Lorg/apache/poi/java/awt/Toolkit;->setDesktopProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static flushPendingEvents()V
    .locals 1

    invoke-static {}, Lorg/apache/poi/sun/awt/AppContext;->getAppContext()Lorg/apache/poi/sun/awt/AppContext;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/sun/awt/SunToolkit;->flushPendingEvents(Lorg/apache/poi/sun/awt/AppContext;)V

    return-void
.end method

.method public static flushPendingEvents(Lorg/apache/poi/sun/awt/AppContext;)V
    .locals 1

    const-string v0, "PostEventQueue"

    invoke-virtual {p0, v0}, Lorg/apache/poi/sun/awt/AppContext;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/sun/awt/PostEventQueue;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/sun/awt/PostEventQueue;->flush()V

    :cond_0
    return-void
.end method

.method private static getAppContext(Ljava/lang/Object;)Lorg/apache/poi/sun/awt/AppContext;
    .locals 1

    instance-of v0, p0, Lorg/apache/poi/java/awt/Component;

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/apache/poi/sun/awt/AWTAccessor;->getComponentAccessor()Lorg/apache/poi/sun/awt/AWTAccessor$ComponentAccessor;

    move-result-object v0

    check-cast p0, Lorg/apache/poi/java/awt/Component;

    invoke-interface {v0, p0}, Lorg/apache/poi/sun/awt/AWTAccessor$ComponentAccessor;->getAppContext(Lorg/apache/poi/java/awt/Component;)Lorg/apache/poi/sun/awt/AppContext;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p0, Lorg/apache/poi/java/awt/MenuComponent;

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/apache/poi/sun/awt/AWTAccessor;->getMenuComponentAccessor()Lorg/apache/poi/sun/awt/AWTAccessor$MenuComponentAccessor;

    move-result-object v0

    check-cast p0, Lorg/apache/poi/java/awt/MenuComponent;

    invoke-interface {v0, p0}, Lorg/apache/poi/sun/awt/AWTAccessor$MenuComponentAccessor;->getAppContext(Lorg/apache/poi/java/awt/MenuComponent;)Lorg/apache/poi/sun/awt/AppContext;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getContainingWindow(Lorg/apache/poi/java/awt/Component;)Lorg/apache/poi/java/awt/Window;
    .locals 1

    :goto_0
    if-eqz p0, :cond_0

    instance-of v0, p0, Lorg/apache/poi/java/awt/Window;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getParent()Lorg/apache/poi/java/awt/Container;

    move-result-object p0

    goto :goto_0

    :cond_0
    check-cast p0, Lorg/apache/poi/java/awt/Window;

    return-object p0
.end method

.method private static getDesktopAAHintsByName(Ljava/lang/String;)Lorg/apache/poi/java/awt/RenderingHints;
    .locals 2

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "on"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object p0, Lorg/apache/poi/java/awt/RenderingHints;->VALUE_TEXT_ANTIALIAS_ON:Ljava/lang/Object;

    goto :goto_1

    :cond_0
    const-string v0, "gasp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lorg/apache/poi/java/awt/RenderingHints;->VALUE_TEXT_ANTIALIAS_GASP:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const-string v0, "lcd"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "lcd_hrgb"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "lcd_hbgr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Lorg/apache/poi/java/awt/RenderingHints;->VALUE_TEXT_ANTIALIAS_LCD_HBGR:Ljava/lang/Object;

    goto :goto_1

    :cond_3
    const-string v0, "lcd_vrgb"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object p0, Lorg/apache/poi/java/awt/RenderingHints;->VALUE_TEXT_ANTIALIAS_LCD_VRGB:Ljava/lang/Object;

    goto :goto_1

    :cond_4
    const-string v0, "lcd_vbgr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    sget-object p0, Lorg/apache/poi/java/awt/RenderingHints;->VALUE_TEXT_ANTIALIAS_LCD_VBGR:Ljava/lang/Object;

    goto :goto_1

    :cond_5
    move-object p0, v1

    goto :goto_1

    :cond_6
    :goto_0
    sget-object p0, Lorg/apache/poi/java/awt/RenderingHints;->VALUE_TEXT_ANTIALIAS_LCD_HRGB:Ljava/lang/Object;

    :goto_1
    if-eqz p0, :cond_7

    new-instance v0, Lorg/apache/poi/java/awt/RenderingHints;

    invoke-direct {v0, v1}, Lorg/apache/poi/java/awt/RenderingHints;-><init>(Ljava/util/Map;)V

    sget-object v1, Lorg/apache/poi/java/awt/RenderingHints;->KEY_TEXT_ANTIALIASING:Lorg/apache/poi/java/awt/RenderingHints$Key;

    invoke-virtual {v0, v1, p0}, Lorg/apache/poi/java/awt/RenderingHints;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_7
    return-object v1
.end method

.method public static getDesktopFontHints()Lorg/apache/poi/java/awt/RenderingHints;
    .locals 3

    invoke-static {}, Lorg/apache/poi/sun/awt/SunToolkit;->useSystemAAFontSettings()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->getDefaultToolkit()Lorg/apache/poi/java/awt/Toolkit;

    move-result-object v0

    instance-of v2, v0, Lorg/apache/poi/sun/awt/SunToolkit;

    if-eqz v2, :cond_0

    check-cast v0, Lorg/apache/poi/sun/awt/SunToolkit;

    invoke-virtual {v0}, Lorg/apache/poi/sun/awt/SunToolkit;->getDesktopAAHints()Lorg/apache/poi/java/awt/RenderingHints;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1

    :cond_1
    sget-object v0, Lorg/apache/poi/sun/awt/SunToolkit;->desktopFontHints:Lorg/apache/poi/java/awt/RenderingHints;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/RenderingHints;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/java/awt/RenderingHints;

    return-object v0

    :cond_2
    return-object v1
.end method

.method public static getHeavyweightComponent(Lorg/apache/poi/java/awt/Component;)Lorg/apache/poi/java/awt/Component;
    .locals 1

    :goto_0
    if-eqz p0, :cond_0

    invoke-static {}, Lorg/apache/poi/sun/awt/AWTAccessor;->getComponentAccessor()Lorg/apache/poi/sun/awt/AWTAccessor$ComponentAccessor;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/apache/poi/sun/awt/AWTAccessor$ComponentAccessor;->isLightweight(Lorg/apache/poi/java/awt/Component;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/apache/poi/sun/awt/AWTAccessor;->getComponentAccessor()Lorg/apache/poi/sun/awt/AWTAccessor$ComponentAccessor;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/apache/poi/sun/awt/AWTAccessor$ComponentAccessor;->getParent(Lorg/apache/poi/java/awt/Component;)Lorg/apache/poi/java/awt/Container;

    move-result-object p0

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static getImageFromHash(Lorg/apache/poi/java/awt/Toolkit;Ljava/lang/String;)Lorg/apache/poi/java/awt/Image;
    .locals 3

    invoke-static {p1}, Lorg/apache/poi/sun/awt/SunToolkit;->checkPermissions(Ljava/lang/String;)V

    sget-object v0, Lorg/apache/poi/sun/awt/SunToolkit;->fileImgCache:Lorg/apache/poi/sun/misc/SoftCache;

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0, p1}, Lorg/apache/poi/sun/misc/SoftCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/java/awt/Image;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    new-instance v2, Lorg/apache/poi/sun/awt/image/FileImageSource;

    invoke-direct {v2, p1}, Lorg/apache/poi/sun/awt/image/FileImageSource;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lorg/apache/poi/java/awt/Toolkit;->createImage(Lorg/apache/poi/java/awt/image/ImageProducer;)Lorg/apache/poi/java/awt/Image;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/apache/poi/sun/misc/SoftCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :cond_0
    :try_start_2
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static getImageFromHash(Lorg/apache/poi/java/awt/Toolkit;Ljava/net/URL;)Lorg/apache/poi/java/awt/Image;
    .locals 4

    invoke-static {p1}, Lorg/apache/poi/sun/awt/SunToolkit;->checkPermissions(Ljava/net/URL;)V

    sget-object v0, Lorg/apache/poi/sun/awt/SunToolkit;->urlImgCache:Lorg/apache/poi/sun/misc/SoftCache;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/sun/misc/SoftCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/java/awt/Image;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    :try_start_1
    new-instance v3, Lorg/apache/poi/sun/awt/image/URLImageSource;

    invoke-direct {v3, p1}, Lorg/apache/poi/sun/awt/image/URLImageSource;-><init>(Ljava/net/URL;)V

    invoke-virtual {p0, v3}, Lorg/apache/poi/java/awt/Toolkit;->createImage(Lorg/apache/poi/java/awt/image/ImageProducer;)Lorg/apache/poi/java/awt/Image;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/sun/misc/SoftCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :cond_0
    :try_start_2
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static getLightweightFrame(Lorg/apache/poi/java/awt/Component;)Lorg/apache/poi/sun/awt/LightweightFrame;
    .locals 2

    :goto_0
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    instance-of v1, p0, Lorg/apache/poi/sun/awt/LightweightFrame;

    if-eqz v1, :cond_0

    check-cast p0, Lorg/apache/poi/sun/awt/LightweightFrame;

    return-object p0

    :cond_0
    instance-of v1, p0, Lorg/apache/poi/java/awt/Window;

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getParent()Lorg/apache/poi/java/awt/Container;

    move-result-object p0

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static getNativeContainer(Lorg/apache/poi/java/awt/Component;)Lorg/apache/poi/java/awt/Container;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/java/awt/Toolkit;->getNativeContainer(Lorg/apache/poi/java/awt/Component;)Lorg/apache/poi/java/awt/Container;

    move-result-object p0

    return-object p0
.end method

.method private static getRVSize(I)I
    .locals 1

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, p0, 0x2

    :goto_0
    return v0
.end method

.method private static getResolutionVariant(Lorg/apache/poi/java/awt/Image;)Lorg/apache/poi/sun/awt/image/ToolkitImage;
    .locals 1

    instance-of v0, p0, Lorg/apache/poi/sun/awt/image/MultiResolutionToolkitImage;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/apache/poi/sun/awt/image/MultiResolutionToolkitImage;

    invoke-virtual {p0}, Lorg/apache/poi/sun/awt/image/MultiResolutionToolkitImage;->getResolutionVariant()Lorg/apache/poi/java/awt/Image;

    move-result-object p0

    instance-of v0, p0, Lorg/apache/poi/sun/awt/image/ToolkitImage;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/apache/poi/sun/awt/image/ToolkitImage;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getScaledIconData(Ljava/util/List;II)Lorg/apache/poi/java/awt/image/DataBufferInt;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/java/awt/Image;",
            ">;II)",
            "Lorg/apache/poi/java/awt/image/DataBufferInt;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lorg/apache/poi/sun/awt/SunToolkit;->getScaledIconImage(Ljava/util/List;II)Lorg/apache/poi/java/awt/image/BufferedImage;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/image/BufferedImage;->getRaster()Lorg/apache/poi/java/awt/image/WritableRaster;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/image/Raster;->getDataBuffer()Lorg/apache/poi/java/awt/image/DataBuffer;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/java/awt/image/DataBufferInt;

    return-object p0
.end method

.method public static getScaledIconImage(Ljava/util/List;II)Lorg/apache/poi/java/awt/image/BufferedImage;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/java/awt/Image;",
            ">;II)",
            "Lorg/apache/poi/java/awt/image/BufferedImage;"
        }
    .end annotation

    move/from16 v0, p1

    move/from16 v1, p2

    const/4 v2, 0x0

    if-eqz v0, :cond_c

    if-nez v1, :cond_0

    goto/16 :goto_7

    :cond_0
    const-wide/high16 v3, 0x4008000000000000L    # 3.0

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    move-object v8, v2

    move v7, v6

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/poi/java/awt/Image;

    if-nez v9, :cond_1

    :catch_0
    move-wide/from16 v16, v3

    move-object/from16 p0, v5

    move/from16 v18, v6

    move/from16 v19, v7

    move-object/from16 v20, v8

    goto/16 :goto_4

    :cond_1
    instance-of v10, v9, Lorg/apache/poi/sun/awt/image/ToolkitImage;

    if-eqz v10, :cond_2

    move-object v10, v9

    check-cast v10, Lorg/apache/poi/sun/awt/image/ToolkitImage;

    invoke-virtual {v10}, Lorg/apache/poi/sun/awt/image/ToolkitImage;->getImageRep()Lorg/apache/poi/sun/awt/image/ImageRepresentation;

    move-result-object v10

    const/16 v11, 0x20

    invoke-virtual {v10, v11}, Lorg/apache/poi/sun/awt/image/ImageRepresentation;->reconstruct(I)V

    :cond_2
    :try_start_0
    invoke-virtual {v9, v2}, Lorg/apache/poi/java/awt/Image;->getWidth(Lorg/apache/poi/java/awt/image/ImageObserver;)I

    move-result v10

    invoke-virtual {v9, v2}, Lorg/apache/poi/java/awt/Image;->getHeight(Lorg/apache/poi/java/awt/image/ImageObserver;)I

    move-result v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v10, :cond_9

    if-lez v11, :cond_9

    int-to-double v12, v0

    int-to-double v14, v10

    move-wide/from16 v16, v3

    div-double v2, v12, v14

    move-object/from16 p0, v5

    int-to-double v4, v1

    move/from16 v18, v6

    move/from16 v19, v7

    int-to-double v6, v11

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    div-double v8, v4, v6

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    cmpl-double v8, v2, v8

    const-wide/16 v22, 0x0

    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    if-ltz v8, :cond_3

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v6, v2

    mul-int/2addr v10, v6

    mul-int/2addr v11, v6

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    div-double/2addr v6, v2

    sub-double v24, v24, v6

    goto :goto_1

    :cond_3
    cmpl-double v8, v2, v24

    if-ltz v8, :cond_4

    move-wide/from16 v24, v22

    goto :goto_1

    :cond_4
    const-wide/high16 v8, 0x3fe8000000000000L    # 0.75

    cmpl-double v8, v2, v8

    if-ltz v8, :cond_5

    mul-int/lit8 v10, v10, 0x3

    div-int/lit8 v10, v10, 0x4

    mul-int/lit8 v11, v11, 0x3

    div-int/lit8 v11, v11, 0x4

    const-wide v24, 0x3fd3333333333333L    # 0.3

    goto :goto_1

    :cond_5
    const-wide v8, 0x3fe554c985f06f69L    # 0.6666

    cmpl-double v8, v2, v8

    if-ltz v8, :cond_6

    mul-int/lit8 v10, v10, 0x2

    div-int/lit8 v10, v10, 0x3

    mul-int/lit8 v11, v11, 0x2

    div-int/lit8 v11, v11, 0x3

    const-wide v24, 0x3fd51eb851eb851fL    # 0.33

    goto :goto_1

    :cond_6
    div-double v2, v24, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    div-double v8, v24, v2

    div-double/2addr v14, v2

    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-int v10, v10

    div-double/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v11, v2

    sub-double v24, v24, v8

    :goto_1
    int-to-double v2, v10

    sub-double v2, v12, v2

    div-double/2addr v2, v12

    int-to-double v6, v11

    sub-double v6, v4, v6

    div-double/2addr v6, v4

    add-double/2addr v2, v6

    add-double v2, v2, v24

    cmpg-double v4, v2, v16

    if-gez v4, :cond_7

    move-wide/from16 v16, v2

    move v6, v10

    move v7, v11

    move-object/from16 v8, v21

    goto :goto_2

    :cond_7
    move/from16 v6, v18

    move/from16 v7, v19

    move-object/from16 v8, v20

    :goto_2
    cmpl-double v2, v2, v22

    if-nez v2, :cond_8

    move v13, v6

    move v14, v7

    move-object v10, v8

    goto :goto_6

    :cond_8
    move-wide/from16 v3, v16

    goto :goto_3

    :cond_9
    move-wide/from16 v16, v3

    move-object/from16 p0, v5

    move/from16 v18, v6

    move/from16 v19, v7

    move-object/from16 v20, v8

    move-wide/from16 v3, v16

    move/from16 v6, v18

    move/from16 v7, v19

    move-object/from16 v8, v20

    :goto_3
    move-object/from16 v5, p0

    goto :goto_5

    :goto_4
    move-object/from16 v5, p0

    move-wide/from16 v3, v16

    move/from16 v6, v18

    move/from16 v7, v19

    move-object/from16 v8, v20

    :goto_5
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_a
    move/from16 v18, v6

    move/from16 v19, v7

    move-object/from16 v20, v8

    move/from16 v13, v18

    move/from16 v14, v19

    move-object/from16 v10, v20

    :goto_6
    if-nez v10, :cond_b

    const/4 v2, 0x0

    return-object v2

    :cond_b
    new-instance v2, Lorg/apache/poi/java/awt/image/BufferedImage;

    const/4 v3, 0x2

    invoke-direct {v2, v0, v1, v3}, Lorg/apache/poi/java/awt/image/BufferedImage;-><init>(III)V

    invoke-virtual {v2}, Lorg/apache/poi/java/awt/image/BufferedImage;->createGraphics()Lorg/apache/poi/java/awt/Graphics2D;

    move-result-object v4

    sget-object v5, Lorg/apache/poi/java/awt/RenderingHints;->KEY_INTERPOLATION:Lorg/apache/poi/java/awt/RenderingHints$Key;

    sget-object v6, Lorg/apache/poi/java/awt/RenderingHints;->VALUE_INTERPOLATION_BILINEAR:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lorg/apache/poi/java/awt/Graphics2D;->setRenderingHint(Lorg/apache/poi/java/awt/RenderingHints$Key;Ljava/lang/Object;)V

    sub-int/2addr v0, v13

    :try_start_1
    div-int/lit8 v11, v0, 0x2

    sub-int v0, v1, v14

    div-int/lit8 v12, v0, 0x2

    const/4 v15, 0x0

    move-object v9, v4

    invoke-virtual/range {v9 .. v15}, Lorg/apache/poi/java/awt/Graphics;->drawImage(Lorg/apache/poi/java/awt/Image;IIIILorg/apache/poi/java/awt/image/ImageObserver;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v4}, Lorg/apache/poi/java/awt/Graphics;->dispose()V

    return-object v2

    :catchall_0
    move-exception v0

    invoke-virtual {v4}, Lorg/apache/poi/java/awt/Graphics;->dispose()V

    throw v0

    :cond_c
    :goto_7
    move-object v0, v2

    return-object v0
.end method

.method public static getStartupLocale()Ljava/util/Locale;
    .locals 6

    sget-object v0, Lorg/apache/poi/sun/awt/SunToolkit;->startupLocale:Ljava/util/Locale;

    if-nez v0, :cond_2

    new-instance v0, Lorg/apache/poi/sun/security/action/GetPropertyAction;

    const-string/jumbo v1, "user.language"

    const-string v2, "en"

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/sun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Lorg/apache/poi/sun/security/action/GetPropertyAction;

    const-string/jumbo v2, "user.region"

    invoke-direct {v1, v2}, Lorg/apache/poi/sun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, ""

    if-eqz v1, :cond_0

    const/16 v3, 0x5f

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/apache/poi/sun/security/action/GetPropertyAction;

    const-string/jumbo v3, "user.country"

    invoke-direct {v1, v3, v2}, Lorg/apache/poi/sun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v3, Lorg/apache/poi/sun/security/action/GetPropertyAction;

    const-string/jumbo v4, "user.variant"

    invoke-direct {v3, v4, v2}, Lorg/apache/poi/sun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :cond_1
    :goto_0
    new-instance v3, Ljava/util/Locale;

    invoke-direct {v3, v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lorg/apache/poi/sun/awt/SunToolkit;->startupLocale:Ljava/util/Locale;

    :cond_2
    sget-object v0, Lorg/apache/poi/sun/awt/SunToolkit;->startupLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public static declared-synchronized getSunAwtDisableMixing()Z
    .locals 3

    const-class v0, Lorg/apache/poi/sun/awt/SunToolkit;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/apache/poi/sun/awt/SunToolkit;->sunAwtDisableMixing:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    new-instance v1, Lorg/apache/poi/sun/security/action/GetBooleanAction;

    const-string v2, "org.apache.poi.sun.awt.disableMixing"

    invoke-direct {v1, v2}, Lorg/apache/poi/sun/security/action/GetBooleanAction;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    sput-object v1, Lorg/apache/poi/sun/awt/SunToolkit;->sunAwtDisableMixing:Ljava/lang/Boolean;

    :cond_0
    sget-object v1, Lorg/apache/poi/sun/awt/SunToolkit;->sunAwtDisableMixing:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getSunAwtErasebackgroundonresize()Z
    .locals 2

    new-instance v0, Lorg/apache/poi/sun/security/action/GetBooleanAction;

    const-string v1, "org.apache.poi.sun.awt.erasebackgroundonresize"

    invoke-direct {v0, v1}, Lorg/apache/poi/sun/security/action/GetBooleanAction;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static getSunAwtNoerasebackground()Z
    .locals 2

    new-instance v0, Lorg/apache/poi/sun/security/action/GetBooleanAction;

    const-string v1, "org.apache.poi.sun.awt.noerasebackground"

    invoke-direct {v0, v1}, Lorg/apache/poi/sun/security/action/GetBooleanAction;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static getSystemEventQueueImplPP()Lorg/apache/poi/java/awt/EventQueue;
    .locals 1

    invoke-static {}, Lorg/apache/poi/sun/awt/AppContext;->getAppContext()Lorg/apache/poi/sun/awt/AppContext;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/sun/awt/SunToolkit;->getSystemEventQueueImplPP(Lorg/apache/poi/sun/awt/AppContext;)Lorg/apache/poi/java/awt/EventQueue;

    move-result-object v0

    return-object v0
.end method

.method public static getSystemEventQueueImplPP(Lorg/apache/poi/sun/awt/AppContext;)Lorg/apache/poi/java/awt/EventQueue;
    .locals 1

    sget-object v0, Lorg/apache/poi/sun/awt/AppContext;->EVENT_QUEUE_KEY:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/apache/poi/sun/awt/AppContext;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/java/awt/EventQueue;

    return-object p0
.end method

.method public static imageCached(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lorg/apache/poi/sun/awt/SunToolkit;->fileImgCache:Lorg/apache/poi/sun/misc/SoftCache;

    invoke-virtual {v0, p0}, Lorg/apache/poi/sun/misc/SoftCache;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static imageCached(Ljava/net/URL;)Z
    .locals 1

    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lorg/apache/poi/sun/awt/SunToolkit;->urlImgCache:Lorg/apache/poi/sun/misc/SoftCache;

    invoke-virtual {v0, p0}, Lorg/apache/poi/sun/misc/SoftCache;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static imageExists(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-static {p0}, Lorg/apache/poi/sun/awt/SunToolkit;->checkPermissions(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static imageExists(Ljava/net/URL;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-static {p0}, Lorg/apache/poi/sun/awt/SunToolkit;->checkPermissions(Ljava/net/URL;)V

    :try_start_0
    invoke-virtual {p0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p0

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return v1

    :catch_0
    :cond_1
    return v0
.end method

.method private static initEQ(Lorg/apache/poi/sun/awt/AppContext;)V
    .locals 5

    const-string v0, "AWT.EventQueueClass"

    const-string v1, "org.apache.poi.java.awt.EventQueue"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/java/awt/EventQueue;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed loading "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v1, Lorg/apache/poi/java/awt/EventQueue;

    invoke-direct {v1}, Lorg/apache/poi/java/awt/EventQueue;-><init>()V

    :goto_0
    sget-object v0, Lorg/apache/poi/sun/awt/AppContext;->EVENT_QUEUE_KEY:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/sun/awt/AppContext;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/apache/poi/sun/awt/PostEventQueue;

    invoke-direct {v0, v1}, Lorg/apache/poi/sun/awt/PostEventQueue;-><init>(Lorg/apache/poi/java/awt/EventQueue;)V

    const-string v1, "PostEventQueue"

    invoke-virtual {p0, v1, v0}, Lorg/apache/poi/sun/awt/AppContext;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static insertTargetMapping(Ljava/lang/Object;Lorg/apache/poi/sun/awt/AppContext;)V
    .locals 1

    invoke-static {p0, p1}, Lorg/apache/poi/sun/awt/SunToolkit;->setAppContext(Ljava/lang/Object;Lorg/apache/poi/sun/awt/AppContext;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/poi/sun/awt/SunToolkit;->appContextMap:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static invokeLaterOnAppContext(Lorg/apache/poi/sun/awt/AppContext;Ljava/lang/Runnable;)V
    .locals 4

    new-instance v0, Lorg/apache/poi/sun/awt/PeerEvent;

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->getDefaultToolkit()Lorg/apache/poi/java/awt/Toolkit;

    move-result-object v1

    const-wide/16 v2, 0x1

    invoke-direct {v0, v1, p1, v2, v3}, Lorg/apache/poi/sun/awt/PeerEvent;-><init>(Ljava/lang/Object;Ljava/lang/Runnable;J)V

    invoke-static {p0, v0}, Lorg/apache/poi/sun/awt/SunToolkit;->postEvent(Lorg/apache/poi/sun/awt/AppContext;Lorg/apache/poi/java/awt/AWTEvent;)V

    return-void
.end method

.method public static final isAWTLockHeldByCurrentThread()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/sun/awt/SunToolkit;->AWT_LOCK:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    return v0
.end method

.method public static isContainingTopLevelOpaque(Lorg/apache/poi/java/awt/Component;)Z
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/sun/awt/SunToolkit;->getContainingWindow(Lorg/apache/poi/java/awt/Component;)Lorg/apache/poi/java/awt/Window;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Window;->isOpaque()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isContainingTopLevelTranslucent(Lorg/apache/poi/java/awt/Component;)Z
    .locals 1

    invoke-static {p0}, Lorg/apache/poi/sun/awt/SunToolkit;->getContainingWindow(Lorg/apache/poi/java/awt/Component;)Lorg/apache/poi/java/awt/Window;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Window;->getOpacity()F

    move-result p0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isDispatchThreadForAppContext(Ljava/lang/Object;)Z
    .locals 1

    invoke-static {p0}, Lorg/apache/poi/sun/awt/SunToolkit;->targetToAppContext(Ljava/lang/Object;)Lorg/apache/poi/sun/awt/AppContext;

    move-result-object p0

    sget-object v0, Lorg/apache/poi/sun/awt/AppContext;->EVENT_QUEUE_KEY:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/apache/poi/sun/awt/AppContext;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/java/awt/EventQueue;

    invoke-static {}, Lorg/apache/poi/sun/awt/AWTAccessor;->getEventQueueAccessor()Lorg/apache/poi/sun/awt/AWTAccessor$EventQueueAccessor;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/apache/poi/sun/awt/AWTAccessor$EventQueueAccessor;->isDispatchThreadImpl(Lorg/apache/poi/java/awt/EventQueue;)Z

    move-result p0

    return p0
.end method

.method private isEQEmpty()Z
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/sun/awt/SunToolkit;->getSystemEventQueueImpl()Lorg/apache/poi/java/awt/EventQueue;

    move-result-object v0

    invoke-static {}, Lorg/apache/poi/sun/awt/AWTAccessor;->getEventQueueAccessor()Lorg/apache/poi/sun/awt/AWTAccessor$EventQueueAccessor;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/apache/poi/sun/awt/AWTAccessor$EventQueueAccessor;->noEvents(Lorg/apache/poi/java/awt/EventQueue;)Z

    move-result v0

    return v0
.end method

.method private static isInstanceOf(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v1

    array-length v3, v1

    :goto_0
    if-ge v0, v3, :cond_3

    aget-object v4, v1, v0

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/apache/poi/sun/awt/SunToolkit;->isInstanceOf(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isInstanceOf(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    if-nez p1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/apache/poi/sun/awt/SunToolkit;->isInstanceOf(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isLightweightOrUnknown(Lorg/apache/poi/java/awt/Component;)Z
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->isLightweight()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->getDefaultToolkit()Lorg/apache/poi/java/awt/Toolkit;

    move-result-object v0

    instance-of v0, v0, Lorg/apache/poi/sun/awt/SunToolkit;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lorg/apache/poi/java/awt/Button;

    if-nez v0, :cond_1

    instance-of v0, p0, Lorg/apache/poi/java/awt/Canvas;

    if-nez v0, :cond_1

    instance-of v0, p0, Lorg/apache/poi/java/awt/Checkbox;

    if-nez v0, :cond_1

    instance-of v0, p0, Lorg/apache/poi/java/awt/Choice;

    if-nez v0, :cond_1

    instance-of v0, p0, Lorg/apache/poi/java/awt/Label;

    if-nez v0, :cond_1

    instance-of v0, p0, Lorg/apache/poi/java/awt/List;

    if-nez v0, :cond_1

    instance-of v0, p0, Lorg/apache/poi/java/awt/Panel;

    if-nez v0, :cond_1

    instance-of v0, p0, Lorg/apache/poi/java/awt/Scrollbar;

    if-nez v0, :cond_1

    instance-of v0, p0, Lorg/apache/poi/java/awt/ScrollPane;

    if-nez v0, :cond_1

    instance-of v0, p0, Lorg/apache/poi/java/awt/TextArea;

    if-nez v0, :cond_1

    instance-of v0, p0, Lorg/apache/poi/java/awt/TextField;

    if-nez v0, :cond_1

    instance-of p0, p0, Lorg/apache/poi/java/awt/Window;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public static isModalExcluded(Lorg/apache/poi/java/awt/Window;)Z
    .locals 1

    sget-object v0, Lorg/apache/poi/sun/awt/SunToolkit;->DEFAULT_MODAL_EXCLUSION_TYPE:Lorg/apache/poi/java/awt/Dialog$ModalExclusionType;

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/poi/java/awt/Dialog$ModalExclusionType;->APPLICATION_EXCLUDE:Lorg/apache/poi/java/awt/Dialog$ModalExclusionType;

    sput-object v0, Lorg/apache/poi/sun/awt/SunToolkit;->DEFAULT_MODAL_EXCLUSION_TYPE:Lorg/apache/poi/java/awt/Dialog$ModalExclusionType;

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Window;->getModalExclusionType()Lorg/apache/poi/java/awt/Dialog$ModalExclusionType;

    move-result-object p0

    sget-object v0, Lorg/apache/poi/sun/awt/SunToolkit;->DEFAULT_MODAL_EXCLUSION_TYPE:Lorg/apache/poi/java/awt/Dialog$ModalExclusionType;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p0

    if-ltz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isModalExcludedSupported()Z
    .locals 2

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->getDefaultToolkit()Lorg/apache/poi/java/awt/Toolkit;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/sun/awt/SunToolkit;->DEFAULT_MODAL_EXCLUSION_TYPE:Lorg/apache/poi/java/awt/Dialog$ModalExclusionType;

    invoke-virtual {v0, v1}, Lorg/apache/poi/java/awt/Toolkit;->isModalExclusionTypeSupported(Lorg/apache/poi/java/awt/Dialog$ModalExclusionType;)Z

    move-result v0

    return v0
.end method

.method public static isSystemGenerated(Lorg/apache/poi/java/awt/AWTEvent;)Z
    .locals 1

    invoke-static {}, Lorg/apache/poi/sun/awt/AWTAccessor;->getAWTEventAccessor()Lorg/apache/poi/sun/awt/AWTAccessor$AWTEventAccessor;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/apache/poi/sun/awt/AWTAccessor$AWTEventAccessor;->isSystemGenerated(Lorg/apache/poi/java/awt/AWTEvent;)Z

    move-result p0

    return p0
.end method

.method public static isTouchKeyboardAutoShowEnabled()Z
    .locals 1

    sget-boolean v0, Lorg/apache/poi/sun/awt/SunToolkit;->touchKeyboardAutoShowIsEnabled:Z

    return v0
.end method

.method public static needsXEmbed()Z
    .locals 3

    new-instance v0, Lorg/apache/poi/sun/security/action/GetPropertyAction;

    const-string v1, "org.apache.poi.sun.awt.noxembed"

    const-string v2, "false"

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/sun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->getDefaultToolkit()Lorg/apache/poi/java/awt/Toolkit;

    move-result-object v0

    instance-of v2, v0, Lorg/apache/poi/sun/awt/SunToolkit;

    if-eqz v2, :cond_1

    check-cast v0, Lorg/apache/poi/sun/awt/SunToolkit;

    invoke-virtual {v0}, Lorg/apache/poi/sun/awt/SunToolkit;->needsXEmbedImpl()Z

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method public static postEvent(Lorg/apache/poi/sun/awt/AppContext;Lorg/apache/poi/java/awt/AWTEvent;)V
    .locals 5

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lorg/apache/poi/sun/awt/AWTAccessor;->getSequencedEventAccessor()Lorg/apache/poi/sun/awt/AWTAccessor$SequencedEventAccessor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/apache/poi/sun/awt/AWTAccessor$SequencedEventAccessor;->isSequencedEvent(Lorg/apache/poi/java/awt/AWTEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Lorg/apache/poi/sun/awt/AWTAccessor$SequencedEventAccessor;->getNested(Lorg/apache/poi/java/awt/AWTEvent;)Lorg/apache/poi/java/awt/AWTEvent;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/AWTEvent;->getID()I

    move-result v1

    const/16 v2, 0xd0

    if-ne v1, v2, :cond_0

    instance-of v1, v0, Lorg/apache/poi/sun/awt/TimedWindowEvent;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/apache/poi/sun/awt/TimedWindowEvent;

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->getDefaultToolkit()Lorg/apache/poi/java/awt/Toolkit;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/sun/awt/SunToolkit;

    invoke-virtual {v0}, Lorg/apache/poi/sun/awt/TimedWindowEvent;->getSource()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/java/awt/Window;

    invoke-virtual {v0}, Lorg/apache/poi/sun/awt/TimedWindowEvent;->getWhen()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/apache/poi/sun/awt/SunToolkit;->setWindowDeactivationTime(Lorg/apache/poi/java/awt/Window;J)V

    :cond_0
    invoke-static {p1}, Lorg/apache/poi/sun/awt/SunToolkit;->setSystemGenerated(Lorg/apache/poi/java/awt/AWTEvent;)V

    invoke-virtual {p1}, Ljava/util/EventObject;->getSource()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/sun/awt/SunToolkit;->targetToAppContext(Ljava/lang/Object;)Lorg/apache/poi/sun/awt/AppContext;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Event posted on wrong app context : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    const-string v0, "PostEventQueue"

    invoke-virtual {p0, v0}, Lorg/apache/poi/sun/awt/AppContext;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/sun/awt/PostEventQueue;

    if-eqz p0, :cond_3

    invoke-virtual {p0, p1}, Lorg/apache/poi/sun/awt/PostEventQueue;->postEvent(Lorg/apache/poi/java/awt/AWTEvent;)V

    :cond_3
    return-void
.end method

.method public static postPriorityEvent(Lorg/apache/poi/java/awt/AWTEvent;)V
    .locals 5

    new-instance v0, Lorg/apache/poi/sun/awt/PeerEvent;

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->getDefaultToolkit()Lorg/apache/poi/java/awt/Toolkit;

    move-result-object v1

    new-instance v2, Lorg/apache/poi/sun/awt/SunToolkit$1;

    invoke-direct {v2, p0}, Lorg/apache/poi/sun/awt/SunToolkit$1;-><init>(Lorg/apache/poi/java/awt/AWTEvent;)V

    const-wide/16 v3, 0x2

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/poi/sun/awt/PeerEvent;-><init>(Ljava/lang/Object;Ljava/lang/Runnable;J)V

    invoke-virtual {p0}, Ljava/util/EventObject;->getSource()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/sun/awt/SunToolkit;->targetToAppContext(Ljava/lang/Object;)Lorg/apache/poi/sun/awt/AppContext;

    move-result-object p0

    invoke-static {p0, v0}, Lorg/apache/poi/sun/awt/SunToolkit;->postEvent(Lorg/apache/poi/sun/awt/AppContext;Lorg/apache/poi/java/awt/AWTEvent;)V

    return-void
.end method

.method private prepareResolutionVariant(Lorg/apache/poi/java/awt/Image;IILorg/apache/poi/java/awt/image/ImageObserver;)Z
    .locals 10

    invoke-static {p1}, Lorg/apache/poi/sun/awt/SunToolkit;->getResolutionVariant(Lorg/apache/poi/java/awt/Image;)Lorg/apache/poi/sun/awt/image/ToolkitImage;

    move-result-object v0

    invoke-static {p2}, Lorg/apache/poi/sun/awt/SunToolkit;->getRVSize(I)I

    move-result v8

    invoke-static {p3}, Lorg/apache/poi/sun/awt/SunToolkit;->getRVSize(I)I

    move-result v9

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/poi/sun/awt/image/ToolkitImage;->hasError()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v7, 0x1

    move-object v1, p1

    move-object v2, p4

    move v3, p2

    move v4, p3

    move v5, v8

    move v6, v9

    invoke-static/range {v1 .. v7}, Lorg/apache/poi/sun/awt/image/MultiResolutionToolkitImage;->getResolutionVariantObserver(Lorg/apache/poi/java/awt/Image;Lorg/apache/poi/java/awt/image/ImageObserver;IIIIZ)Lorg/apache/poi/java/awt/image/ImageObserver;

    move-result-object p1

    invoke-virtual {p0, v0, v8, v9, p1}, Lorg/apache/poi/sun/awt/SunToolkit;->prepareImage(Lorg/apache/poi/java/awt/Image;IILorg/apache/poi/java/awt/image/ImageObserver;)Z

    move-result p1

    if-eqz p1, :cond_0

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

.method public static setAAFontSettingsCondition(Z)V
    .locals 1

    sget-boolean v0, Lorg/apache/poi/sun/awt/SunToolkit;->lastExtraCondition:Z

    if-eq p0, v0, :cond_0

    sput-boolean p0, Lorg/apache/poi/sun/awt/SunToolkit;->lastExtraCondition:Z

    sget-boolean p0, Lorg/apache/poi/sun/awt/SunToolkit;->checkedSystemAAFontSettings:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    sput-boolean p0, Lorg/apache/poi/sun/awt/SunToolkit;->checkedSystemAAFontSettings:Z

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->getDefaultToolkit()Lorg/apache/poi/java/awt/Toolkit;

    move-result-object p0

    instance-of v0, p0, Lorg/apache/poi/sun/awt/SunToolkit;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/apache/poi/sun/awt/SunToolkit;

    invoke-direct {p0}, Lorg/apache/poi/sun/awt/SunToolkit;->fireDesktopFontPropertyChanges()V

    :cond_0
    return-void
.end method

.method private static setAppContext(Ljava/lang/Object;Lorg/apache/poi/sun/awt/AppContext;)Z
    .locals 1

    instance-of v0, p0, Lorg/apache/poi/java/awt/Component;

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/apache/poi/sun/awt/AWTAccessor;->getComponentAccessor()Lorg/apache/poi/sun/awt/AWTAccessor$ComponentAccessor;

    move-result-object v0

    check-cast p0, Lorg/apache/poi/java/awt/Component;

    invoke-interface {v0, p0, p1}, Lorg/apache/poi/sun/awt/AWTAccessor$ComponentAccessor;->setAppContext(Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/sun/awt/AppContext;)V

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lorg/apache/poi/java/awt/MenuComponent;

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/apache/poi/sun/awt/AWTAccessor;->getMenuComponentAccessor()Lorg/apache/poi/sun/awt/AWTAccessor$MenuComponentAccessor;

    move-result-object v0

    check-cast p0, Lorg/apache/poi/java/awt/MenuComponent;

    invoke-interface {v0, p0, p1}, Lorg/apache/poi/sun/awt/AWTAccessor$MenuComponentAccessor;->setAppContext(Lorg/apache/poi/java/awt/MenuComponent;Lorg/apache/poi/sun/awt/AppContext;)V

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static setLWRequestStatus(Lorg/apache/poi/java/awt/Window;Z)V
    .locals 1

    invoke-static {}, Lorg/apache/poi/sun/awt/AWTAccessor;->getWindowAccessor()Lorg/apache/poi/sun/awt/AWTAccessor$WindowAccessor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lorg/apache/poi/sun/awt/AWTAccessor$WindowAccessor;->setLWRequestStatus(Lorg/apache/poi/java/awt/Window;Z)V

    return-void
.end method

.method public static setModalExcluded(Lorg/apache/poi/java/awt/Window;)V
    .locals 1

    sget-object v0, Lorg/apache/poi/sun/awt/SunToolkit;->DEFAULT_MODAL_EXCLUSION_TYPE:Lorg/apache/poi/java/awt/Dialog$ModalExclusionType;

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/poi/java/awt/Dialog$ModalExclusionType;->APPLICATION_EXCLUDE:Lorg/apache/poi/java/awt/Dialog$ModalExclusionType;

    sput-object v0, Lorg/apache/poi/sun/awt/SunToolkit;->DEFAULT_MODAL_EXCLUSION_TYPE:Lorg/apache/poi/java/awt/Dialog$ModalExclusionType;

    :cond_0
    sget-object v0, Lorg/apache/poi/sun/awt/SunToolkit;->DEFAULT_MODAL_EXCLUSION_TYPE:Lorg/apache/poi/java/awt/Dialog$ModalExclusionType;

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/Window;->setModalExclusionType(Lorg/apache/poi/java/awt/Dialog$ModalExclusionType;)V

    return-void
.end method

.method public static setSystemGenerated(Lorg/apache/poi/java/awt/AWTEvent;)V
    .locals 1

    invoke-static {}, Lorg/apache/poi/sun/awt/AWTAccessor;->getAWTEventAccessor()Lorg/apache/poi/sun/awt/AWTAccessor$AWTEventAccessor;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/apache/poi/sun/awt/AWTAccessor$AWTEventAccessor;->setSystemGenerated(Lorg/apache/poi/java/awt/AWTEvent;)V

    return-void
.end method

.method public static targetCreatedPeer(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {}, Lorg/apache/poi/java/awt/GraphicsEnvironment;->isHeadless()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/apache/poi/sun/awt/AWTAutoShutdown;->getInstance()Lorg/apache/poi/sun/awt/AWTAutoShutdown;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/apache/poi/sun/awt/AWTAutoShutdown;->registerPeer(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static targetDisposedPeer(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {}, Lorg/apache/poi/java/awt/GraphicsEnvironment;->isHeadless()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/apache/poi/sun/awt/AWTAutoShutdown;->getInstance()Lorg/apache/poi/sun/awt/AWTAutoShutdown;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/apache/poi/sun/awt/AWTAutoShutdown;->unregisterPeer(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static targetToAppContext(Ljava/lang/Object;)Lorg/apache/poi/sun/awt/AppContext;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Lorg/apache/poi/sun/awt/SunToolkit;->getAppContext(Ljava/lang/Object;)Lorg/apache/poi/sun/awt/AppContext;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/apache/poi/sun/awt/SunToolkit;->appContextMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lorg/apache/poi/sun/awt/AppContext;

    :cond_1
    return-object v0
.end method

.method public static targetToPeer(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-eqz p0, :cond_0

    invoke-static {}, Lorg/apache/poi/java/awt/GraphicsEnvironment;->isHeadless()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/apache/poi/sun/awt/AWTAutoShutdown;->getInstance()Lorg/apache/poi/sun/awt/AWTAutoShutdown;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/poi/sun/awt/AWTAutoShutdown;->getPeer(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static useSystemAAFontSettings()Z
    .locals 3

    sget-boolean v0, Lorg/apache/poi/sun/awt/SunToolkit;->checkedSystemAAFontSettings:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    sput-boolean v0, Lorg/apache/poi/sun/awt/SunToolkit;->useSystemAAFontSettings:Z

    const/4 v1, 0x0

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->getDefaultToolkit()Lorg/apache/poi/java/awt/Toolkit;

    move-result-object v2

    instance-of v2, v2, Lorg/apache/poi/sun/awt/SunToolkit;

    if-eqz v2, :cond_0

    new-instance v1, Lorg/apache/poi/sun/security/action/GetPropertyAction;

    const-string v2, "awt.useSystemAAFontSettings"

    invoke-direct {v1, v2}, Lorg/apache/poi/sun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :cond_0
    if-eqz v1, :cond_1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    sput-boolean v2, Lorg/apache/poi/sun/awt/SunToolkit;->useSystemAAFontSettings:Z

    if-nez v2, :cond_1

    invoke-static {v1}, Lorg/apache/poi/sun/awt/SunToolkit;->getDesktopAAHintsByName(Ljava/lang/String;)Lorg/apache/poi/java/awt/RenderingHints;

    move-result-object v1

    sput-object v1, Lorg/apache/poi/sun/awt/SunToolkit;->desktopFontHints:Lorg/apache/poi/java/awt/RenderingHints;

    :cond_1
    sget-boolean v1, Lorg/apache/poi/sun/awt/SunToolkit;->useSystemAAFontSettings:Z

    if-eqz v1, :cond_2

    sget-boolean v1, Lorg/apache/poi/sun/awt/SunToolkit;->lastExtraCondition:Z

    sput-boolean v1, Lorg/apache/poi/sun/awt/SunToolkit;->useSystemAAFontSettings:Z

    :cond_2
    sput-boolean v0, Lorg/apache/poi/sun/awt/SunToolkit;->checkedSystemAAFontSettings:Z

    :cond_3
    sget-boolean v0, Lorg/apache/poi/sun/awt/SunToolkit;->useSystemAAFontSettings:Z

    return v0
.end method

.method public static wakeupEventQueue(Lorg/apache/poi/java/awt/EventQueue;Z)V
    .locals 1

    invoke-static {}, Lorg/apache/poi/sun/awt/AWTAccessor;->getEventQueueAccessor()Lorg/apache/poi/sun/awt/AWTAccessor$EventQueueAccessor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lorg/apache/poi/sun/awt/AWTAccessor$EventQueueAccessor;->wakeup(Lorg/apache/poi/java/awt/EventQueue;Z)V

    return-void
.end method


# virtual methods
.method public addModalityListener(Lorg/apache/poi/sun/awt/ModalityListener;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sun/awt/SunToolkit;->modalityListeners:Lorg/apache/poi/sun/awt/SunToolkit$ModalityListenerList;

    invoke-virtual {v0, p1}, Lorg/apache/poi/sun/awt/SunToolkit$ModalityListenerList;->add(Lorg/apache/poi/sun/awt/ModalityListener;)V

    return-void
.end method

.method public canPopupOverlapTaskBar()Z
    .locals 2

    :try_start_0
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lorg/apache/poi/sun/security/util/SecurityConstants$AWT;->SET_WINDOW_ALWAYS_ON_TOP_PERMISSION:Ljava/security/Permission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public checkImage(Lorg/apache/poi/java/awt/Image;IILorg/apache/poi/java/awt/image/ImageObserver;)I
    .locals 2

    instance-of v0, p1, Lorg/apache/poi/sun/awt/image/ToolkitImage;

    const/16 v1, 0x20

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/sun/awt/image/ToolkitImage;

    if-eqz p2, :cond_2

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lorg/apache/poi/sun/awt/image/ToolkitImage;->getImageRep()Lorg/apache/poi/sun/awt/image/ImageRepresentation;

    move-result-object v1

    invoke-virtual {v1, p4}, Lorg/apache/poi/sun/awt/image/ImageRepresentation;->check(Lorg/apache/poi/java/awt/image/ImageObserver;)I

    move-result v1

    :cond_2
    :goto_0
    invoke-virtual {v0, p4}, Lorg/apache/poi/sun/awt/image/ToolkitImage;->check(Lorg/apache/poi/java/awt/image/ImageObserver;)I

    move-result v0

    or-int/2addr v0, v1

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/poi/sun/awt/SunToolkit;->checkResolutionVariant(Lorg/apache/poi/java/awt/Image;IILorg/apache/poi/java/awt/image/ImageObserver;)I

    move-result p1

    and-int/2addr p1, v0

    return p1
.end method

.method public abstract createButton(Lorg/apache/poi/java/awt/Button;)Lorg/apache/poi/java/awt/peer/ButtonPeer;
.end method

.method public createCanvas(Lorg/apache/poi/java/awt/Canvas;)Lorg/apache/poi/java/awt/peer/CanvasPeer;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/Toolkit;->createComponent(Lorg/apache/poi/java/awt/Component;)Lorg/apache/poi/java/awt/peer/LightweightPeer;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/java/awt/peer/CanvasPeer;

    return-object p1
.end method

.method public abstract createCheckbox(Lorg/apache/poi/java/awt/Checkbox;)Lorg/apache/poi/java/awt/peer/CheckboxPeer;
.end method

.method public abstract createCheckboxMenuItem(Lorg/apache/poi/java/awt/CheckboxMenuItem;)Lorg/apache/poi/java/awt/peer/CheckboxMenuItemPeer;
.end method

.method public abstract createChoice(Lorg/apache/poi/java/awt/Choice;)Lorg/apache/poi/java/awt/peer/ChoicePeer;
.end method

.method public abstract createDialog(Lorg/apache/poi/java/awt/Dialog;)Lorg/apache/poi/java/awt/peer/DialogPeer;
.end method

.method public abstract createDragSourceContextPeer(Lorg/apache/poi/java/awt/dnd/DragGestureEvent;)Lorg/apache/poi/java/awt/dnd/peer/DragSourceContextPeer;
.end method

.method public abstract createFileDialog(Lorg/apache/poi/java/awt/FileDialog;)Lorg/apache/poi/java/awt/peer/FileDialogPeer;
.end method

.method public abstract createFrame(Lorg/apache/poi/java/awt/Frame;)Lorg/apache/poi/java/awt/peer/FramePeer;
.end method

.method public createImage(Ljava/lang/String;)Lorg/apache/poi/java/awt/Image;
    .locals 1

    invoke-static {p1}, Lorg/apache/poi/sun/awt/SunToolkit;->checkPermissions(Ljava/lang/String;)V

    new-instance v0, Lorg/apache/poi/sun/awt/image/FileImageSource;

    invoke-direct {v0, p1}, Lorg/apache/poi/sun/awt/image/FileImageSource;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/sun/awt/SunToolkit;->createImage(Lorg/apache/poi/java/awt/image/ImageProducer;)Lorg/apache/poi/java/awt/Image;

    move-result-object p1

    return-object p1
.end method

.method public createImage(Ljava/net/URL;)Lorg/apache/poi/java/awt/Image;
    .locals 1

    invoke-static {p1}, Lorg/apache/poi/sun/awt/SunToolkit;->checkPermissions(Ljava/net/URL;)V

    new-instance v0, Lorg/apache/poi/sun/awt/image/URLImageSource;

    invoke-direct {v0, p1}, Lorg/apache/poi/sun/awt/image/URLImageSource;-><init>(Ljava/net/URL;)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/sun/awt/SunToolkit;->createImage(Lorg/apache/poi/java/awt/image/ImageProducer;)Lorg/apache/poi/java/awt/Image;

    move-result-object p1

    return-object p1
.end method

.method public createImage(Lorg/apache/poi/java/awt/image/ImageProducer;)Lorg/apache/poi/java/awt/Image;
    .locals 1

    new-instance v0, Lorg/apache/poi/sun/awt/image/ToolkitImage;

    invoke-direct {v0, p1}, Lorg/apache/poi/sun/awt/image/ToolkitImage;-><init>(Lorg/apache/poi/java/awt/image/ImageProducer;)V

    return-object v0
.end method

.method public createImage([BII)Lorg/apache/poi/java/awt/Image;
    .locals 1

    new-instance v0, Lorg/apache/poi/sun/awt/image/ByteArrayImageSource;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/poi/sun/awt/image/ByteArrayImageSource;-><init>([BII)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/sun/awt/SunToolkit;->createImage(Lorg/apache/poi/java/awt/image/ImageProducer;)Lorg/apache/poi/java/awt/Image;

    move-result-object p1

    return-object p1
.end method

.method public createInputMethodWindow(Ljava/lang/String;Lorg/apache/poi/sun/awt/im/InputContext;)Lorg/apache/poi/java/awt/Window;
    .locals 1

    new-instance v0, Lorg/apache/poi/sun/awt/im/SimpleInputMethodWindow;

    invoke-direct {v0, p1, p2}, Lorg/apache/poi/sun/awt/im/SimpleInputMethodWindow;-><init>(Ljava/lang/String;Lorg/apache/poi/sun/awt/im/InputContext;)V

    return-object v0
.end method

.method public abstract createLabel(Lorg/apache/poi/java/awt/Label;)Lorg/apache/poi/java/awt/peer/LabelPeer;
.end method

.method public abstract createLightweightFrame(Lorg/apache/poi/sun/awt/LightweightFrame;)Lorg/apache/poi/java/awt/peer/FramePeer;
.end method

.method public abstract createList(Lorg/apache/poi/java/awt/List;)Lorg/apache/poi/java/awt/peer/ListPeer;
.end method

.method public abstract createMenu(Lorg/apache/poi/java/awt/Menu;)Lorg/apache/poi/java/awt/peer/MenuPeer;
.end method

.method public abstract createMenuBar(Lorg/apache/poi/java/awt/MenuBar;)Lorg/apache/poi/java/awt/peer/MenuBarPeer;
.end method

.method public abstract createMenuItem(Lorg/apache/poi/java/awt/MenuItem;)Lorg/apache/poi/java/awt/peer/MenuItemPeer;
.end method

.method public createPanel(Lorg/apache/poi/java/awt/Panel;)Lorg/apache/poi/java/awt/peer/PanelPeer;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/Toolkit;->createComponent(Lorg/apache/poi/java/awt/Component;)Lorg/apache/poi/java/awt/peer/LightweightPeer;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/java/awt/peer/PanelPeer;

    return-object p1
.end method

.method public abstract createPopupMenu(Lorg/apache/poi/java/awt/PopupMenu;)Lorg/apache/poi/java/awt/peer/PopupMenuPeer;
.end method

.method public abstract createRobot(Lorg/apache/poi/java/awt/Robot;Lorg/apache/poi/java/awt/GraphicsDevice;)Lorg/apache/poi/java/awt/peer/RobotPeer;
.end method

.method public abstract createScrollPane(Lorg/apache/poi/java/awt/ScrollPane;)Lorg/apache/poi/java/awt/peer/ScrollPanePeer;
.end method

.method public abstract createScrollbar(Lorg/apache/poi/java/awt/Scrollbar;)Lorg/apache/poi/java/awt/peer/ScrollbarPeer;
.end method

.method public abstract createSystemTray(Lorg/apache/poi/java/awt/SystemTray;)Lorg/apache/poi/java/awt/peer/SystemTrayPeer;
.end method

.method public abstract createTextArea(Lorg/apache/poi/java/awt/TextArea;)Lorg/apache/poi/java/awt/peer/TextAreaPeer;
.end method

.method public abstract createTextField(Lorg/apache/poi/java/awt/TextField;)Lorg/apache/poi/java/awt/peer/TextFieldPeer;
.end method

.method public abstract createTrayIcon(Lorg/apache/poi/java/awt/TrayIcon;)Lorg/apache/poi/java/awt/peer/TrayIconPeer;
.end method

.method public abstract createWindow(Lorg/apache/poi/java/awt/Window;)Lorg/apache/poi/java/awt/peer/WindowPeer;
.end method

.method public disableBackgroundErase(Lorg/apache/poi/java/awt/Canvas;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/sun/awt/SunToolkit;->disableBackgroundEraseImpl(Lorg/apache/poi/java/awt/Component;)V

    return-void
.end method

.method public disableBackgroundErase(Lorg/apache/poi/java/awt/Component;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/sun/awt/SunToolkit;->disableBackgroundEraseImpl(Lorg/apache/poi/java/awt/Component;)V

    return-void
.end method

.method public enableInputMethodsForTextComponent()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDefaultKeyboardLocale()Ljava/util/Locale;
    .locals 1

    invoke-static {}, Lorg/apache/poi/sun/awt/SunToolkit;->getStartupLocale()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getDesktopAAHints()Lorg/apache/poi/java/awt/RenderingHints;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFocusAcceleratorKeyMask()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public getFontList()[Ljava/lang/String;
    .locals 5

    const-string v0, "Dialog"

    const-string v1, "SansSerif"

    const-string v2, "Serif"

    const-string v3, "Monospaced"

    const-string v4, "DialogInput"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFontMetrics(Lorg/apache/poi/java/awt/Font;)Lorg/apache/poi/java/awt/FontMetrics;
    .locals 0

    invoke-static {p1}, Lsun/font/FontDesignMetrics;->getMetrics(Lorg/apache/poi/java/awt/Font;)Lsun/font/FontDesignMetrics;

    move-result-object p1

    return-object p1
.end method

.method public abstract getFontPeer(Ljava/lang/String;I)Lorg/apache/poi/java/awt/peer/FontPeer;
.end method

.method public getImage(Ljava/lang/String;)Lorg/apache/poi/java/awt/Image;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/sun/awt/SunToolkit;->getImageFromHash(Lorg/apache/poi/java/awt/Toolkit;Ljava/lang/String;)Lorg/apache/poi/java/awt/Image;

    move-result-object p1

    return-object p1
.end method

.method public getImage(Ljava/net/URL;)Lorg/apache/poi/java/awt/Image;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/sun/awt/SunToolkit;->getImageFromHash(Lorg/apache/poi/java/awt/Toolkit;Ljava/net/URL;)Lorg/apache/poi/java/awt/Image;

    move-result-object p1

    return-object p1
.end method

.method public getImageWithResolutionVariant(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/java/awt/Image;
    .locals 3

    sget-object v0, Lorg/apache/poi/sun/awt/SunToolkit;->fileImgCache:Lorg/apache/poi/sun/misc/SoftCache;

    monitor-enter v0

    :try_start_0
    invoke-static {p0, p1}, Lorg/apache/poi/sun/awt/SunToolkit;->getImageFromHash(Lorg/apache/poi/java/awt/Toolkit;Ljava/lang/String;)Lorg/apache/poi/java/awt/Image;

    move-result-object v1

    instance-of v2, v1, Lorg/apache/poi/sun/awt/image/MultiResolutionImage;

    if-eqz v2, :cond_0

    monitor-exit v0

    return-object v1

    :cond_0
    invoke-static {p0, p2}, Lorg/apache/poi/sun/awt/SunToolkit;->getImageFromHash(Lorg/apache/poi/java/awt/Toolkit;Ljava/lang/String;)Lorg/apache/poi/java/awt/Image;

    move-result-object p2

    invoke-static {v1, p2}, Lorg/apache/poi/sun/awt/SunToolkit;->createImageWithResolutionVariant(Lorg/apache/poi/java/awt/Image;Lorg/apache/poi/java/awt/Image;)Lorg/apache/poi/java/awt/Image;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/sun/misc/SoftCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-object p2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getImageWithResolutionVariant(Ljava/net/URL;Ljava/net/URL;)Lorg/apache/poi/java/awt/Image;
    .locals 3

    sget-object v0, Lorg/apache/poi/sun/awt/SunToolkit;->urlImgCache:Lorg/apache/poi/sun/misc/SoftCache;

    monitor-enter v0

    :try_start_0
    invoke-static {p0, p1}, Lorg/apache/poi/sun/awt/SunToolkit;->getImageFromHash(Lorg/apache/poi/java/awt/Toolkit;Ljava/net/URL;)Lorg/apache/poi/java/awt/Image;

    move-result-object v1

    instance-of v2, v1, Lorg/apache/poi/sun/awt/image/MultiResolutionImage;

    if-eqz v2, :cond_0

    monitor-exit v0

    return-object v1

    :cond_0
    invoke-static {p0, p2}, Lorg/apache/poi/sun/awt/SunToolkit;->getImageFromHash(Lorg/apache/poi/java/awt/Toolkit;Ljava/net/URL;)Lorg/apache/poi/java/awt/Image;

    move-result-object p2

    invoke-static {v1, p2}, Lorg/apache/poi/sun/awt/SunToolkit;->createImageWithResolutionVariant(Lorg/apache/poi/java/awt/Image;Lorg/apache/poi/java/awt/Image;)Lorg/apache/poi/java/awt/Image;

    move-result-object p2

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/sun/misc/SoftCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-object p2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public abstract getKeyboardFocusManagerPeer()Lorg/apache/poi/java/awt/peer/KeyboardFocusManagerPeer;
.end method

.method public declared-synchronized getMouseInfoPeer()Lorg/apache/poi/java/awt/peer/MouseInfoPeer;
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-object v0, Lorg/apache/poi/sun/awt/SunToolkit;->mPeer:Lorg/apache/poi/sun/awt/DefaultMouseInfoPeer;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/poi/sun/awt/DefaultMouseInfoPeer;

    invoke-direct {v0}, Lorg/apache/poi/sun/awt/DefaultMouseInfoPeer;-><init>()V

    sput-object v0, Lorg/apache/poi/sun/awt/SunToolkit;->mPeer:Lorg/apache/poi/sun/awt/DefaultMouseInfoPeer;

    :cond_0
    sget-object v0, Lorg/apache/poi/sun/awt/SunToolkit;->mPeer:Lorg/apache/poi/sun/awt/DefaultMouseInfoPeer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getNumberOfButtons()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public abstract getScreenHeight()I
.end method

.method public getScreenSize()Lorg/apache/poi/java/awt/Dimension;
    .locals 3

    new-instance v0, Lorg/apache/poi/java/awt/Dimension;

    invoke-virtual {p0}, Lorg/apache/poi/sun/awt/SunToolkit;->getScreenWidth()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/poi/sun/awt/SunToolkit;->getScreenHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/java/awt/Dimension;-><init>(II)V

    return-object v0
.end method

.method public abstract getScreenWidth()I
.end method

.method public getSystemEventQueueImpl()Lorg/apache/poi/java/awt/EventQueue;
    .locals 1

    invoke-static {}, Lorg/apache/poi/sun/awt/SunToolkit;->getSystemEventQueueImplPP()Lorg/apache/poi/java/awt/EventQueue;

    move-result-object v0

    return-object v0
.end method

.method public getWindowClosingListener()Lorg/apache/poi/sun/awt/WindowClosingListener;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sun/awt/SunToolkit;->windowClosingListener:Lorg/apache/poi/sun/awt/WindowClosingListener;

    return-object v0
.end method

.method public declared-synchronized getWindowDeactivationTime(Lorg/apache/poi/java/awt/Window;)J
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lorg/apache/poi/sun/awt/SunToolkit;->getAppContext(Ljava/lang/Object;)Lorg/apache/poi/sun/awt/AppContext;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/sun/awt/SunToolkit;->DEACTIVATION_TIMES_MAP_KEY:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/apache/poi/sun/awt/AppContext;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/WeakHashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v1, -0x1

    if-nez v0, :cond_0

    monitor-exit p0

    return-wide v1

    :cond_0
    :try_start_1
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-wide v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public abstract grab(Lorg/apache/poi/java/awt/Window;)V
.end method

.method public abstract isDesktopSupported()Z
.end method

.method public isModalExcludedSupportedImpl()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isModalExclusionTypeSupported(Lorg/apache/poi/java/awt/Dialog$ModalExclusionType;)Z
    .locals 1

    sget-object v0, Lorg/apache/poi/java/awt/Dialog$ModalExclusionType;->NO_EXCLUDE:Lorg/apache/poi/java/awt/Dialog$ModalExclusionType;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isModalityTypeSupported(Lorg/apache/poi/java/awt/Dialog$ModalityType;)Z
    .locals 1

    sget-object v0, Lorg/apache/poi/java/awt/Dialog$ModalityType;->MODELESS:Lorg/apache/poi/java/awt/Dialog$ModalityType;

    if-eq p1, v0, :cond_1

    sget-object v0, Lorg/apache/poi/java/awt/Dialog$ModalityType;->APPLICATION_MODAL:Lorg/apache/poi/java/awt/Dialog$ModalityType;

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

.method public isNativeGTKAvailable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isPrintableCharacterModifiersMask(I)Z
    .locals 1

    and-int/lit8 v0, p1, 0x8

    and-int/lit8 p1, p1, 0x2

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isSwingBackbufferTranslucencySupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isTranslucencyCapable(Lorg/apache/poi/java/awt/GraphicsConfiguration;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public abstract isTraySupported()Z
.end method

.method public isWindowOpacitySupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isWindowShapingSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isWindowTranslucencySupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final isXEmbedServerRequested()Z
    .locals 2

    new-instance v0, Lorg/apache/poi/sun/security/action/GetBooleanAction;

    const-string v1, "org.apache.poi.sun.awt.xembedserver"

    invoke-direct {v0, v1}, Lorg/apache/poi/sun/security/action/GetBooleanAction;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public needUpdateWindow()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public needsXEmbedImpl()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final notifyModalityChange(ILorg/apache/poi/java/awt/Dialog;)V
    .locals 2

    new-instance v0, Lorg/apache/poi/sun/awt/ModalityEvent;

    iget-object v1, p0, Lorg/apache/poi/sun/awt/SunToolkit;->modalityListeners:Lorg/apache/poi/sun/awt/SunToolkit$ModalityListenerList;

    invoke-direct {v0, p2, v1, p1}, Lorg/apache/poi/sun/awt/ModalityEvent;-><init>(Ljava/lang/Object;Lorg/apache/poi/sun/awt/ModalityListener;I)V

    invoke-virtual {v0}, Lorg/apache/poi/sun/awt/ModalityEvent;->dispatch()V

    return-void
.end method

.method public notifyModalityPopped(Lorg/apache/poi/java/awt/Dialog;)V
    .locals 1

    const/16 v0, 0x515

    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/sun/awt/SunToolkit;->notifyModalityChange(ILorg/apache/poi/java/awt/Dialog;)V

    return-void
.end method

.method public notifyModalityPushed(Lorg/apache/poi/java/awt/Dialog;)V
    .locals 1

    const/16 v0, 0x514

    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/sun/awt/SunToolkit;->notifyModalityChange(ILorg/apache/poi/java/awt/Dialog;)V

    return-void
.end method

.method public prepareImage(Lorg/apache/poi/java/awt/Image;IILorg/apache/poi/java/awt/image/ImageObserver;)Z
    .locals 9

    const/4 v0, 0x1

    if-eqz p2, :cond_4

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    instance-of v1, p1, Lorg/apache/poi/sun/awt/image/ToolkitImage;

    if-nez v1, :cond_1

    return v0

    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/sun/awt/image/ToolkitImage;

    invoke-virtual {v0}, Lorg/apache/poi/sun/awt/image/ToolkitImage;->hasError()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p4, :cond_2

    const/16 v4, 0xc0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    move-object v2, p4

    move-object v3, p1

    invoke-interface/range {v2 .. v8}, Lorg/apache/poi/java/awt/image/ImageObserver;->imageUpdate(Lorg/apache/poi/java/awt/Image;IIIII)Z

    :cond_2
    const/4 p1, 0x0

    return p1

    :cond_3
    invoke-virtual {v0}, Lorg/apache/poi/sun/awt/image/ToolkitImage;->getImageRep()Lorg/apache/poi/sun/awt/image/ImageRepresentation;

    move-result-object v0

    invoke-virtual {v0, p4}, Lorg/apache/poi/sun/awt/image/ImageRepresentation;->prepare(Lorg/apache/poi/java/awt/image/ImageObserver;)Z

    move-result v0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/poi/sun/awt/SunToolkit;->prepareResolutionVariant(Lorg/apache/poi/java/awt/Image;IILorg/apache/poi/java/awt/image/ImageObserver;)Z

    move-result p1

    and-int/2addr p1, v0

    return p1

    :cond_4
    :goto_0
    return v0
.end method

.method public realSync()V
    .locals 2

    const-wide/16 v0, 0x2710

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/sun/awt/SunToolkit;->realSync(J)V

    return-void
.end method

.method public realSync(J)V
    .locals 5

    invoke-static {}, Lorg/apache/poi/java/awt/EventQueue;->isDispatchThread()Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Toolkit;->sync()V

    move v2, v0

    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/sun/awt/SunToolkit;->syncNativeQueue(J)Z

    move-result v3

    const/16 v4, 0x14

    if-eqz v3, :cond_1

    if-ge v2, v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-ge v2, v4, :cond_6

    move v2, v0

    :goto_1
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/sun/awt/SunToolkit;->waitForIdle(J)Z

    move-result v3

    if-eqz v3, :cond_2

    if-ge v2, v4, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    if-ge v2, v4, :cond_5

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/sun/awt/SunToolkit;->syncNativeQueue(J)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/sun/awt/SunToolkit;->waitForIdle(J)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    if-lt v1, v4, :cond_0

    :cond_4
    return-void

    :cond_5
    new-instance p1, Lorg/apache/poi/sun/awt/SunToolkit$InfiniteLoop;

    invoke-direct {p1}, Lorg/apache/poi/sun/awt/SunToolkit$InfiniteLoop;-><init>()V

    throw p1

    :cond_6
    new-instance p1, Lorg/apache/poi/sun/awt/SunToolkit$InfiniteLoop;

    invoke-direct {p1}, Lorg/apache/poi/sun/awt/SunToolkit$InfiniteLoop;-><init>()V

    throw p1

    :cond_7
    new-instance p1, Lorg/apache/poi/sun/awt/SunToolkit$IllegalThreadException;

    const-string p2, "The SunToolkit.realSync() method cannot be used on the event dispatch thread (EDT)."

    invoke-direct {p1, p2}, Lorg/apache/poi/sun/awt/SunToolkit$IllegalThreadException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeModalityListener(Lorg/apache/poi/sun/awt/ModalityListener;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sun/awt/SunToolkit;->modalityListeners:Lorg/apache/poi/sun/awt/SunToolkit$ModalityListenerList;

    invoke-virtual {v0, p1}, Lorg/apache/poi/sun/awt/SunToolkit$ModalityListenerList;->remove(Lorg/apache/poi/sun/awt/ModalityListener;)V

    return-void
.end method

.method public setWindowClosingListener(Lorg/apache/poi/sun/awt/WindowClosingListener;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/sun/awt/SunToolkit;->windowClosingListener:Lorg/apache/poi/sun/awt/WindowClosingListener;

    return-void
.end method

.method public declared-synchronized setWindowDeactivationTime(Lorg/apache/poi/java/awt/Window;J)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lorg/apache/poi/sun/awt/SunToolkit;->getAppContext(Ljava/lang/Object;)Lorg/apache/poi/sun/awt/AppContext;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/sun/awt/SunToolkit;->DEACTIVATION_TIMES_MAP_KEY:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/apache/poi/sun/awt/AppContext;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/WeakHashMap;

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/WeakHashMap;

    invoke-direct {v2}, Ljava/util/WeakHashMap;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/sun/awt/AppContext;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public showOrHideTouchKeyboard(Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/AWTEvent;)V
    .locals 0

    return-void
.end method

.method public abstract syncNativeQueue(J)Z
.end method

.method public abstract ungrab(Lorg/apache/poi/java/awt/Window;)V
.end method

.method public useBufferPerWindow()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final waitForIdle(J)Z
    .locals 13

    invoke-static {}, Lorg/apache/poi/sun/awt/SunToolkit;->flushPendingEvents()V

    invoke-direct {p0}, Lorg/apache/poi/sun/awt/SunToolkit;->isEQEmpty()Z

    move-result v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/poi/sun/awt/SunToolkit;->queueEmpty:Z

    iput-boolean v1, p0, Lorg/apache/poi/sun/awt/SunToolkit;->eventDispatched:Z

    iget-object v2, p0, Lorg/apache/poi/sun/awt/SunToolkit;->waitLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lorg/apache/poi/sun/awt/AppContext;->getAppContext()Lorg/apache/poi/sun/awt/AppContext;

    move-result-object v3

    new-instance v12, Lorg/apache/poi/sun/awt/SunToolkit$3;

    invoke-virtual {p0}, Lorg/apache/poi/sun/awt/SunToolkit;->getSystemEventQueueImpl()Lorg/apache/poi/java/awt/EventQueue;

    move-result-object v6

    const/4 v7, 0x0

    const-wide/16 v8, 0x4

    move-object v4, v12

    move-object v5, p0

    move-wide v10, p1

    invoke-direct/range {v4 .. v11}, Lorg/apache/poi/sun/awt/SunToolkit$3;-><init>(Lorg/apache/poi/sun/awt/SunToolkit;Ljava/lang/Object;Ljava/lang/Runnable;JJ)V

    invoke-static {v3, v12}, Lorg/apache/poi/sun/awt/SunToolkit;->postEvent(Lorg/apache/poi/sun/awt/AppContext;Lorg/apache/poi/java/awt/AWTEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    :try_start_1
    iget-boolean p1, p0, Lorg/apache/poi/sun/awt/SunToolkit;->eventDispatched:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/sun/awt/SunToolkit;->waitLock:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :cond_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-wide/16 p1, 0x0

    :try_start_3
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    invoke-static {}, Lorg/apache/poi/sun/awt/SunToolkit;->flushPendingEvents()V

    iget-object p1, p0, Lorg/apache/poi/sun/awt/SunToolkit;->waitLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_4
    iget-boolean p2, p0, Lorg/apache/poi/sun/awt/SunToolkit;->queueEmpty:Z

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lorg/apache/poi/sun/awt/SunToolkit;->isEQEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    if-nez v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    monitor-exit p1

    return v1

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p2

    :catch_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Interrupted"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    :try_start_5
    monitor-exit v2

    return v1

    :catchall_1
    move-exception p1

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p1
.end method

.method public windowClosingDelivered(Lorg/apache/poi/java/awt/event/WindowEvent;)Ljava/lang/RuntimeException;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sun/awt/SunToolkit;->windowClosingListener:Lorg/apache/poi/sun/awt/WindowClosingListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/apache/poi/sun/awt/WindowClosingListener;->windowClosingDelivered(Lorg/apache/poi/java/awt/event/WindowEvent;)Ljava/lang/RuntimeException;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public windowClosingNotify(Lorg/apache/poi/java/awt/event/WindowEvent;)Ljava/lang/RuntimeException;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sun/awt/SunToolkit;->windowClosingListener:Lorg/apache/poi/sun/awt/WindowClosingListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/apache/poi/sun/awt/WindowClosingListener;->windowClosingNotify(Lorg/apache/poi/java/awt/event/WindowEvent;)Ljava/lang/RuntimeException;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
