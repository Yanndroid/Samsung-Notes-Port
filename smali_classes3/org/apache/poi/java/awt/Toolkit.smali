.class public abstract Lorg/apache/poi/java/awt/Toolkit;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic $assertionsDisabled:Z = false

.field private static final LONG_BITS:I = 0x40

.field private static atNames:Ljava/lang/String; = null

.field private static volatile enabledOnToolkitMask:J = 0x0L

.field private static lightweightMarker:Lorg/apache/poi/java/awt/peer/LightweightPeer; = null

.field private static loaded:Z = false

.field private static platformResources:Ljava/util/ResourceBundle;

.field private static resources:Ljava/util/ResourceBundle;

.field private static toolkit:Lorg/apache/poi/java/awt/Toolkit;


# instance fields
.field private calls:[I

.field public final desktopProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final desktopPropsSupport:Ljava/beans/PropertyChangeSupport;

.field private eventListener:Lorg/apache/poi/java/awt/event/AWTEventListener;

.field private listener2SelectiveListener:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lorg/apache/poi/java/awt/event/AWTEventListener;",
            "Lorg/apache/poi/java/awt/Toolkit$SelectiveAWTEventListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->loadLibraries()V

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->initAssistiveTechnologies()V

    invoke-static {}, Lorg/apache/poi/java/awt/GraphicsEnvironment;->isHeadless()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->initIDs()V

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/java/awt/Toolkit;->desktopProperties:Ljava/util/Map;

    invoke-static {p0}, Lorg/apache/poi/java/awt/Toolkit;->createPropertyChangeSupport(Lorg/apache/poi/java/awt/Toolkit;)Ljava/beans/PropertyChangeSupport;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/java/awt/Toolkit;->desktopPropsSupport:Ljava/beans/PropertyChangeSupport;

    const/16 v0, 0x40

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/poi/java/awt/Toolkit;->calls:[I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/java/awt/Toolkit;->eventListener:Lorg/apache/poi/java/awt/event/AWTEventListener;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/java/awt/Toolkit;->listener2SelectiveListener:Ljava/util/WeakHashMap;

    return-void
.end method

.method public static synthetic access$000()Lorg/apache/poi/java/awt/Toolkit;
    .locals 1

    sget-object v0, Lorg/apache/poi/java/awt/Toolkit;->toolkit:Lorg/apache/poi/java/awt/Toolkit;

    return-object v0
.end method

.method public static synthetic access$002(Lorg/apache/poi/java/awt/Toolkit;)Lorg/apache/poi/java/awt/Toolkit;
    .locals 0

    sput-object p0, Lorg/apache/poi/java/awt/Toolkit;->toolkit:Lorg/apache/poi/java/awt/Toolkit;

    return-object p0
.end method

.method private static createPropertyChangeSupport(Lorg/apache/poi/java/awt/Toolkit;)Ljava/beans/PropertyChangeSupport;
    .locals 1

    instance-of v0, p0, Lorg/apache/poi/sun/awt/SunToolkit;

    if-nez v0, :cond_1

    instance-of v0, p0, Lorg/apache/poi/sun/awt/HeadlessToolkit;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/beans/PropertyChangeSupport;

    invoke-direct {v0, p0}, Ljava/beans/PropertyChangeSupport;-><init>(Ljava/lang/Object;)V

    return-object v0

    :cond_1
    :goto_0
    new-instance v0, Lorg/apache/poi/java/awt/Toolkit$DesktopPropertyChangeSupport;

    invoke-direct {v0, p0}, Lorg/apache/poi/java/awt/Toolkit$DesktopPropertyChangeSupport;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method private static deProxyAWTEventListener(Lorg/apache/poi/java/awt/event/AWTEventListener;)Lorg/apache/poi/java/awt/event/AWTEventListener;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lorg/apache/poi/java/awt/event/AWTEventListenerProxy;

    if-eqz v0, :cond_1

    check-cast p0, Lorg/apache/poi/java/awt/event/AWTEventListenerProxy;

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/event/AWTEventListenerProxy;->getListener()Ljava/util/EventListener;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/java/awt/event/AWTEventListener;

    :cond_1
    return-object p0
.end method

.method public static enabledOnToolkit(J)Z
    .locals 2

    sget-wide v0, Lorg/apache/poi/java/awt/Toolkit;->enabledOnToolkitMask:J

    and-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static declared-synchronized getDefaultToolkit()Lorg/apache/poi/java/awt/Toolkit;
    .locals 2

    const-class v0, Lorg/apache/poi/java/awt/Toolkit;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/apache/poi/java/awt/Toolkit;->toolkit:Lorg/apache/poi/java/awt/Toolkit;

    if-nez v1, :cond_0

    new-instance v1, Lorg/apache/poi/java/awt/Toolkit$1;

    invoke-direct {v1}, Lorg/apache/poi/java/awt/Toolkit$1;-><init>()V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->loadAssistiveTechnologies()V

    :cond_0
    sget-object v1, Lorg/apache/poi/java/awt/Toolkit;->toolkit:Lorg/apache/poi/java/awt/Toolkit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getEventQueue()Lorg/apache/poi/java/awt/EventQueue;
    .locals 1

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->getDefaultToolkit()Lorg/apache/poi/java/awt/Toolkit;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Toolkit;->getSystemEventQueueImpl()Lorg/apache/poi/java/awt/EventQueue;

    move-result-object v0

    return-object v0
.end method

.method public static getNativeContainer(Lorg/apache/poi/java/awt/Component;)Lorg/apache/poi/java/awt/Container;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getNativeContainer()Lorg/apache/poi/java/awt/Container;

    move-result-object p0

    return-object p0
.end method

.method public static getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/poi/java/awt/Toolkit;->platformResources:Ljava/util/ResourceBundle;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    sget-object v0, Lorg/apache/poi/java/awt/Toolkit;->resources:Ljava/util/ResourceBundle;

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0, p0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    :cond_1
    return-object p1
.end method

.method private static initAssistiveTechnologies()V
    .locals 1

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    return-void
.end method

.method private static native initIDs()V
.end method

.method private static loadAssistiveTechnologies()V
    .locals 5

    sget-object v0, Lorg/apache/poi/java/awt/Toolkit;->atNames:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    new-instance v1, Ljava/util/StringTokenizer;

    sget-object v2, Lorg/apache/poi/java/awt/Toolkit;->atNames:Ljava/lang/String;

    const-string v3, " ,"

    invoke-direct {v1, v2, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    goto :goto_1

    :cond_0
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    :goto_1
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/poi/java/awt/AWTError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error trying to install Assistive Technology: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/poi/java/awt/AWTError;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_1
    new-instance v0, Lorg/apache/poi/java/awt/AWTError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not access Assistive Technology: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/java/awt/AWTError;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_2
    new-instance v0, Lorg/apache/poi/java/awt/AWTError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not instantiate Assistive Technology: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/java/awt/AWTError;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_3
    new-instance v0, Lorg/apache/poi/java/awt/AWTError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Assistive Technology not found: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/java/awt/AWTError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public static loadLibraries()V
    .locals 1

    sget-boolean v0, Lorg/apache/poi/java/awt/Toolkit;->loaded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lorg/apache/poi/java/awt/Toolkit;->loaded:Z

    :cond_0
    return-void
.end method

.method private static setPlatformResources(Ljava/util/ResourceBundle;)V
    .locals 0

    sput-object p0, Lorg/apache/poi/java/awt/Toolkit;->platformResources:Ljava/util/ResourceBundle;

    return-void
.end method


# virtual methods
.method public addAWTEventListener(Lorg/apache/poi/java/awt/event/AWTEventListener;J)V
    .locals 4

    invoke-static {p1}, Lorg/apache/poi/java/awt/Toolkit;->deProxyAWTEventListener(Lorg/apache/poi/java/awt/event/AWTEventListener;)Lorg/apache/poi/java/awt/event/AWTEventListener;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lorg/apache/poi/sun/security/util/SecurityConstants$AWT;->ALL_AWT_EVENTS_PERMISSION:Ljava/security/Permission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    :cond_1
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/Toolkit;->listener2SelectiveListener:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/java/awt/Toolkit$SelectiveAWTEventListener;

    if-nez v0, :cond_2

    new-instance v0, Lorg/apache/poi/java/awt/Toolkit$SelectiveAWTEventListener;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/apache/poi/java/awt/Toolkit$SelectiveAWTEventListener;-><init>(Lorg/apache/poi/java/awt/Toolkit;Lorg/apache/poi/java/awt/event/AWTEventListener;J)V

    iget-object v1, p0, Lorg/apache/poi/java/awt/Toolkit;->listener2SelectiveListener:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lorg/apache/poi/java/awt/Toolkit;->eventListener:Lorg/apache/poi/java/awt/event/AWTEventListener;

    invoke-static {p1, v0}, Lorg/apache/poi/java/awt/Toolkit$ToolkitEventMulticaster;->add(Lorg/apache/poi/java/awt/event/AWTEventListener;Lorg/apache/poi/java/awt/event/AWTEventListener;)Lorg/apache/poi/java/awt/event/AWTEventListener;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/java/awt/Toolkit;->eventListener:Lorg/apache/poi/java/awt/event/AWTEventListener;

    :cond_2
    invoke-virtual {v0, p2, p3}, Lorg/apache/poi/java/awt/Toolkit$SelectiveAWTEventListener;->orEventMasks(J)V

    sget-wide v0, Lorg/apache/poi/java/awt/Toolkit;->enabledOnToolkitMask:J

    or-long/2addr v0, p2

    sput-wide v0, Lorg/apache/poi/java/awt/Toolkit;->enabledOnToolkitMask:J

    const/4 p1, 0x0

    :goto_0
    const/16 v0, 0x40

    if-ge p1, v0, :cond_5

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    const-wide/16 v2, 0x1

    and-long/2addr v2, p2

    cmp-long v0, v2, v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/apache/poi/java/awt/Toolkit;->calls:[I

    aget v2, v0, p1

    add-int/2addr v2, v1

    aput v2, v0, p1

    :cond_4
    ushr-long/2addr p2, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public addPropertyChangeListener(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Toolkit;->desktopPropsSupport:Ljava/beans/PropertyChangeSupport;

    invoke-virtual {v0, p1, p2}, Ljava/beans/PropertyChangeSupport;->addPropertyChangeListener(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)V

    return-void
.end method

.method public areExtraMouseButtonsEnabled()Z
    .locals 1

    invoke-static {}, Lorg/apache/poi/java/awt/GraphicsEnvironment;->checkHeadless()V

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->getDefaultToolkit()Lorg/apache/poi/java/awt/Toolkit;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Toolkit;->areExtraMouseButtonsEnabled()Z

    move-result v0

    return v0
.end method

.method public abstract beep()V
.end method

.method public abstract checkImage(Lorg/apache/poi/java/awt/Image;IILorg/apache/poi/java/awt/image/ImageObserver;)I
.end method

.method public declared-synchronized countAWTEventListeners(J)I
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    :goto_0
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    ushr-long/2addr p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    :try_start_0
    iget-object p1, p0, Lorg/apache/poi/java/awt/Toolkit;->calls:[I

    aget p1, p1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public abstract createButton(Lorg/apache/poi/java/awt/Button;)Lorg/apache/poi/java/awt/peer/ButtonPeer;
.end method

.method public abstract createCanvas(Lorg/apache/poi/java/awt/Canvas;)Lorg/apache/poi/java/awt/peer/CanvasPeer;
.end method

.method public abstract createCheckbox(Lorg/apache/poi/java/awt/Checkbox;)Lorg/apache/poi/java/awt/peer/CheckboxPeer;
.end method

.method public abstract createCheckboxMenuItem(Lorg/apache/poi/java/awt/CheckboxMenuItem;)Lorg/apache/poi/java/awt/peer/CheckboxMenuItemPeer;
.end method

.method public abstract createChoice(Lorg/apache/poi/java/awt/Choice;)Lorg/apache/poi/java/awt/peer/ChoicePeer;
.end method

.method public createComponent(Lorg/apache/poi/java/awt/Component;)Lorg/apache/poi/java/awt/peer/LightweightPeer;
    .locals 0

    sget-object p1, Lorg/apache/poi/java/awt/Toolkit;->lightweightMarker:Lorg/apache/poi/java/awt/peer/LightweightPeer;

    if-nez p1, :cond_0

    new-instance p1, Lorg/apache/poi/sun/awt/NullComponentPeer;

    invoke-direct {p1}, Lorg/apache/poi/sun/awt/NullComponentPeer;-><init>()V

    sput-object p1, Lorg/apache/poi/java/awt/Toolkit;->lightweightMarker:Lorg/apache/poi/java/awt/peer/LightweightPeer;

    :cond_0
    sget-object p1, Lorg/apache/poi/java/awt/Toolkit;->lightweightMarker:Lorg/apache/poi/java/awt/peer/LightweightPeer;

    return-object p1
.end method

.method public createCustomCursor(Lorg/apache/poi/java/awt/Image;Lorg/apache/poi/java/awt/Point;Ljava/lang/String;)Lorg/apache/poi/java/awt/Cursor;
    .locals 1

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->getDefaultToolkit()Lorg/apache/poi/java/awt/Toolkit;

    move-result-object v0

    if-eq p0, v0, :cond_0

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->getDefaultToolkit()Lorg/apache/poi/java/awt/Toolkit;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/poi/java/awt/Toolkit;->createCustomCursor(Lorg/apache/poi/java/awt/Image;Lorg/apache/poi/java/awt/Point;Ljava/lang/String;)Lorg/apache/poi/java/awt/Cursor;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Lorg/apache/poi/java/awt/Cursor;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lorg/apache/poi/java/awt/Cursor;-><init>(I)V

    return-object p1
.end method

.method public abstract createDesktopPeer(Lorg/apache/poi/java/awt/Desktop;)Lorg/apache/poi/java/awt/peer/DesktopPeer;
.end method

.method public abstract createDialog(Lorg/apache/poi/java/awt/Dialog;)Lorg/apache/poi/java/awt/peer/DialogPeer;
.end method

.method public createDragGestureRecognizer(Ljava/lang/Class;Lorg/apache/poi/java/awt/dnd/DragSource;Lorg/apache/poi/java/awt/Component;ILorg/apache/poi/java/awt/dnd/DragGestureListener;)Lorg/apache/poi/java/awt/dnd/DragGestureRecognizer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/apache/poi/java/awt/dnd/DragGestureRecognizer;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lorg/apache/poi/java/awt/dnd/DragSource;",
            "Lorg/apache/poi/java/awt/Component;",
            "I",
            "Lorg/apache/poi/java/awt/dnd/DragGestureListener;",
            ")TT;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract createDragSourceContextPeer(Lorg/apache/poi/java/awt/dnd/DragGestureEvent;)Lorg/apache/poi/java/awt/dnd/peer/DragSourceContextPeer;
.end method

.method public abstract createFileDialog(Lorg/apache/poi/java/awt/FileDialog;)Lorg/apache/poi/java/awt/peer/FileDialogPeer;
.end method

.method public abstract createFrame(Lorg/apache/poi/java/awt/Frame;)Lorg/apache/poi/java/awt/peer/FramePeer;
.end method

.method public abstract createImage(Ljava/lang/String;)Lorg/apache/poi/java/awt/Image;
.end method

.method public abstract createImage(Ljava/net/URL;)Lorg/apache/poi/java/awt/Image;
.end method

.method public abstract createImage(Lorg/apache/poi/java/awt/image/ImageProducer;)Lorg/apache/poi/java/awt/Image;
.end method

.method public createImage([B)Lorg/apache/poi/java/awt/Image;
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/poi/java/awt/Toolkit;->createImage([BII)Lorg/apache/poi/java/awt/Image;

    move-result-object p1

    return-object p1
.end method

.method public abstract createImage([BII)Lorg/apache/poi/java/awt/Image;
.end method

.method public abstract createLabel(Lorg/apache/poi/java/awt/Label;)Lorg/apache/poi/java/awt/peer/LabelPeer;
.end method

.method public abstract createList(Lorg/apache/poi/java/awt/List;)Lorg/apache/poi/java/awt/peer/ListPeer;
.end method

.method public abstract createMenu(Lorg/apache/poi/java/awt/Menu;)Lorg/apache/poi/java/awt/peer/MenuPeer;
.end method

.method public abstract createMenuBar(Lorg/apache/poi/java/awt/MenuBar;)Lorg/apache/poi/java/awt/peer/MenuBarPeer;
.end method

.method public abstract createMenuItem(Lorg/apache/poi/java/awt/MenuItem;)Lorg/apache/poi/java/awt/peer/MenuItemPeer;
.end method

.method public abstract createPanel(Lorg/apache/poi/java/awt/Panel;)Lorg/apache/poi/java/awt/peer/PanelPeer;
.end method

.method public abstract createPopupMenu(Lorg/apache/poi/java/awt/PopupMenu;)Lorg/apache/poi/java/awt/peer/PopupMenuPeer;
.end method

.method public abstract createScrollPane(Lorg/apache/poi/java/awt/ScrollPane;)Lorg/apache/poi/java/awt/peer/ScrollPanePeer;
.end method

.method public abstract createScrollbar(Lorg/apache/poi/java/awt/Scrollbar;)Lorg/apache/poi/java/awt/peer/ScrollbarPeer;
.end method

.method public abstract createTextArea(Lorg/apache/poi/java/awt/TextArea;)Lorg/apache/poi/java/awt/peer/TextAreaPeer;
.end method

.method public abstract createTextField(Lorg/apache/poi/java/awt/TextField;)Lorg/apache/poi/java/awt/peer/TextFieldPeer;
.end method

.method public abstract createWindow(Lorg/apache/poi/java/awt/Window;)Lorg/apache/poi/java/awt/peer/WindowPeer;
.end method

.method public getAWTEventListeners()[Lorg/apache/poi/java/awt/event/AWTEventListener;
    .locals 8

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lorg/apache/poi/sun/security/util/SecurityConstants$AWT;->ALL_AWT_EVENTS_PERMISSION:Ljava/security/Permission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/Toolkit;->eventListener:Lorg/apache/poi/java/awt/event/AWTEventListener;

    const-class v1, Lorg/apache/poi/java/awt/event/AWTEventListener;

    invoke-static {v0, v1}, Lorg/apache/poi/java/awt/Toolkit$ToolkitEventMulticaster;->getListeners(Ljava/util/EventListener;Ljava/lang/Class;)[Ljava/util/EventListener;

    move-result-object v0

    array-length v1, v0

    new-array v1, v1, [Lorg/apache/poi/java/awt/event/AWTEventListener;

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    aget-object v3, v0, v2

    check-cast v3, Lorg/apache/poi/java/awt/Toolkit$SelectiveAWTEventListener;

    invoke-virtual {v3}, Lorg/apache/poi/java/awt/Toolkit$SelectiveAWTEventListener;->getListener()Lorg/apache/poi/java/awt/event/AWTEventListener;

    move-result-object v4

    new-instance v5, Lorg/apache/poi/java/awt/event/AWTEventListenerProxy;

    invoke-virtual {v3}, Lorg/apache/poi/java/awt/Toolkit$SelectiveAWTEventListener;->getEventMask()J

    move-result-wide v6

    invoke-direct {v5, v6, v7, v4}, Lorg/apache/poi/java/awt/event/AWTEventListenerProxy;-><init>(JLorg/apache/poi/java/awt/event/AWTEventListener;)V

    aput-object v5, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAWTEventListeners(J)[Lorg/apache/poi/java/awt/event/AWTEventListener;
    .locals 8

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lorg/apache/poi/sun/security/util/SecurityConstants$AWT;->ALL_AWT_EVENTS_PERMISSION:Ljava/security/Permission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/Toolkit;->eventListener:Lorg/apache/poi/java/awt/event/AWTEventListener;

    const-class v1, Lorg/apache/poi/java/awt/event/AWTEventListener;

    invoke-static {v0, v1}, Lorg/apache/poi/java/awt/Toolkit$ToolkitEventMulticaster;->getListeners(Ljava/util/EventListener;Ljava/lang/Class;)[Ljava/util/EventListener;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_2

    aget-object v4, v0, v3

    check-cast v4, Lorg/apache/poi/java/awt/Toolkit$SelectiveAWTEventListener;

    invoke-virtual {v4}, Lorg/apache/poi/java/awt/Toolkit$SelectiveAWTEventListener;->getEventMask()J

    move-result-wide v5

    and-long/2addr v5, p1

    cmp-long v5, v5, p1

    if-nez v5, :cond_1

    new-instance v5, Lorg/apache/poi/java/awt/event/AWTEventListenerProxy;

    invoke-virtual {v4}, Lorg/apache/poi/java/awt/Toolkit$SelectiveAWTEventListener;->getEventMask()J

    move-result-wide v6

    invoke-virtual {v4}, Lorg/apache/poi/java/awt/Toolkit$SelectiveAWTEventListener;->getListener()Lorg/apache/poi/java/awt/event/AWTEventListener;

    move-result-object v4

    invoke-direct {v5, v6, v7, v4}, Lorg/apache/poi/java/awt/event/AWTEventListenerProxy;-><init>(JLorg/apache/poi/java/awt/event/AWTEventListener;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    new-array p1, v2, [Lorg/apache/poi/java/awt/event/AWTEventListener;

    invoke-interface {v1, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/poi/java/awt/event/AWTEventListener;

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getBestCursorSize(II)Lorg/apache/poi/java/awt/Dimension;
    .locals 1

    invoke-static {}, Lorg/apache/poi/java/awt/GraphicsEnvironment;->checkHeadless()V

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->getDefaultToolkit()Lorg/apache/poi/java/awt/Toolkit;

    move-result-object v0

    if-eq p0, v0, :cond_0

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->getDefaultToolkit()Lorg/apache/poi/java/awt/Toolkit;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/java/awt/Toolkit;->getBestCursorSize(II)Lorg/apache/poi/java/awt/Dimension;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Lorg/apache/poi/java/awt/Dimension;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2}, Lorg/apache/poi/java/awt/Dimension;-><init>(II)V

    return-object p1
.end method

.method public abstract getColorModel()Lorg/apache/poi/java/awt/image/ColorModel;
.end method

.method public final declared-synchronized getDesktopProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    monitor-enter p0

    :try_start_0
    instance-of v0, p0, Lorg/apache/poi/sun/awt/HeadlessToolkit;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lorg/apache/poi/sun/awt/HeadlessToolkit;

    invoke-virtual {v0}, Lorg/apache/poi/sun/awt/HeadlessToolkit;->getUnderlyingToolkit()Lorg/apache/poi/java/awt/Toolkit;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/java/awt/Toolkit;->getDesktopProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/apache/poi/java/awt/Toolkit;->desktopProperties:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Toolkit;->initializeDesktopProperties()V

    :cond_1
    const-string v0, "awt.dynamicLayoutSupported"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->getDefaultToolkit()Lorg/apache/poi/java/awt/Toolkit;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/java/awt/Toolkit;->lazilyLoadDesktopProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_2
    :try_start_2
    iget-object v0, p0, Lorg/apache/poi/java/awt/Toolkit;->desktopProperties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/Toolkit;->lazilyLoadDesktopProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/java/awt/Toolkit;->setDesktopProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    instance-of p1, v0, Lorg/apache/poi/java/awt/RenderingHints;

    if-eqz p1, :cond_4

    check-cast v0, Lorg/apache/poi/java/awt/RenderingHints;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/RenderingHints;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public abstract getFontList()[Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getFontMetrics(Lorg/apache/poi/java/awt/Font;)Lorg/apache/poi/java/awt/FontMetrics;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getFontPeer(Ljava/lang/String;I)Lorg/apache/poi/java/awt/peer/FontPeer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getImage(Ljava/lang/String;)Lorg/apache/poi/java/awt/Image;
.end method

.method public abstract getImage(Ljava/net/URL;)Lorg/apache/poi/java/awt/Image;
.end method

.method public getLockingKeyState(I)Z
    .locals 1

    invoke-static {}, Lorg/apache/poi/java/awt/GraphicsEnvironment;->checkHeadless()V

    const/16 v0, 0x14

    if-eq p1, v0, :cond_0

    const/16 v0, 0x90

    if-eq p1, v0, :cond_0

    const/16 v0, 0x91

    if-eq p1, v0, :cond_0

    const/16 v0, 0x106

    if-eq p1, v0, :cond_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid key for Toolkit.getLockingKeyState"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Toolkit.getLockingKeyState"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getMaximumCursorColors()I
    .locals 1

    invoke-static {}, Lorg/apache/poi/java/awt/GraphicsEnvironment;->checkHeadless()V

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->getDefaultToolkit()Lorg/apache/poi/java/awt/Toolkit;

    move-result-object v0

    if-eq p0, v0, :cond_0

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->getDefaultToolkit()Lorg/apache/poi/java/awt/Toolkit;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Toolkit;->getMaximumCursorColors()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getMenuShortcutKeyMask()I
    .locals 1

    invoke-static {}, Lorg/apache/poi/java/awt/GraphicsEnvironment;->checkHeadless()V

    const/4 v0, 0x2

    return v0
.end method

.method public getMouseInfoPeer()Lorg/apache/poi/java/awt/peer/MouseInfoPeer;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract getPrintJob(Lorg/apache/poi/java/awt/Frame;Ljava/lang/String;Ljava/util/Properties;)Lorg/apache/poi/java/awt/PrintJob;
.end method

.method public getPrintJob(Lorg/apache/poi/java/awt/Frame;Ljava/lang/String;Lorg/apache/poi/java/awt/JobAttributes;Lorg/apache/poi/java/awt/PageAttributes;)Lorg/apache/poi/java/awt/PrintJob;
    .locals 1

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->getDefaultToolkit()Lorg/apache/poi/java/awt/Toolkit;

    move-result-object v0

    if-eq p0, v0, :cond_0

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->getDefaultToolkit()Lorg/apache/poi/java/awt/Toolkit;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/poi/java/awt/Toolkit;->getPrintJob(Lorg/apache/poi/java/awt/Frame;Ljava/lang/String;Lorg/apache/poi/java/awt/JobAttributes;Lorg/apache/poi/java/awt/PageAttributes;)Lorg/apache/poi/java/awt/PrintJob;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/poi/java/awt/Toolkit;->getPrintJob(Lorg/apache/poi/java/awt/Frame;Ljava/lang/String;Ljava/util/Properties;)Lorg/apache/poi/java/awt/PrintJob;

    move-result-object p1

    return-object p1
.end method

.method public getPropertyChangeListeners()[Ljava/beans/PropertyChangeListener;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Toolkit;->desktopPropsSupport:Ljava/beans/PropertyChangeSupport;

    invoke-virtual {v0}, Ljava/beans/PropertyChangeSupport;->getPropertyChangeListeners()[Ljava/beans/PropertyChangeListener;

    move-result-object v0

    return-object v0
.end method

.method public getPropertyChangeListeners(Ljava/lang/String;)[Ljava/beans/PropertyChangeListener;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Toolkit;->desktopPropsSupport:Ljava/beans/PropertyChangeSupport;

    invoke-virtual {v0, p1}, Ljava/beans/PropertyChangeSupport;->getPropertyChangeListeners(Ljava/lang/String;)[Ljava/beans/PropertyChangeListener;

    move-result-object p1

    return-object p1
.end method

.method public getScreenInsets(Lorg/apache/poi/java/awt/GraphicsConfiguration;)Lorg/apache/poi/java/awt/Insets;
    .locals 1

    invoke-static {}, Lorg/apache/poi/java/awt/GraphicsEnvironment;->checkHeadless()V

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->getDefaultToolkit()Lorg/apache/poi/java/awt/Toolkit;

    move-result-object v0

    if-eq p0, v0, :cond_0

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->getDefaultToolkit()Lorg/apache/poi/java/awt/Toolkit;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/java/awt/Toolkit;->getScreenInsets(Lorg/apache/poi/java/awt/GraphicsConfiguration;)Lorg/apache/poi/java/awt/Insets;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Lorg/apache/poi/java/awt/Insets;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0, v0, v0}, Lorg/apache/poi/java/awt/Insets;-><init>(IIII)V

    return-object p1
.end method

.method public abstract getScreenResolution()I
.end method

.method public abstract getScreenSize()Lorg/apache/poi/java/awt/Dimension;
.end method

.method public abstract getSystemClipboard()Lorg/apache/poi/java/awt/datatransfer/Clipboard;
.end method

.method public final getSystemEventQueue()Lorg/apache/poi/java/awt/EventQueue;
    .locals 2

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lorg/apache/poi/sun/security/util/SecurityConstants$AWT;->CHECK_AWT_EVENTQUEUE_PERMISSION:Ljava/security/Permission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Toolkit;->getSystemEventQueueImpl()Lorg/apache/poi/java/awt/EventQueue;

    move-result-object v0

    return-object v0
.end method

.method public abstract getSystemEventQueueImpl()Lorg/apache/poi/java/awt/EventQueue;
.end method

.method public getSystemSelection()Lorg/apache/poi/java/awt/datatransfer/Clipboard;
    .locals 1

    invoke-static {}, Lorg/apache/poi/java/awt/GraphicsEnvironment;->checkHeadless()V

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->getDefaultToolkit()Lorg/apache/poi/java/awt/Toolkit;

    move-result-object v0

    if-eq p0, v0, :cond_0

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->getDefaultToolkit()Lorg/apache/poi/java/awt/Toolkit;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Toolkit;->getSystemSelection()Lorg/apache/poi/java/awt/datatransfer/Clipboard;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Lorg/apache/poi/java/awt/GraphicsEnvironment;->checkHeadless()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public initializeDesktopProperties()V
    .locals 0

    return-void
.end method

.method public isAlwaysOnTopSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isDynamicLayoutActive()Z
    .locals 1

    invoke-static {}, Lorg/apache/poi/java/awt/GraphicsEnvironment;->checkHeadless()V

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->getDefaultToolkit()Lorg/apache/poi/java/awt/Toolkit;

    move-result-object v0

    if-eq p0, v0, :cond_0

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->getDefaultToolkit()Lorg/apache/poi/java/awt/Toolkit;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Toolkit;->isDynamicLayoutActive()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isDynamicLayoutSet()Z
    .locals 1

    invoke-static {}, Lorg/apache/poi/java/awt/GraphicsEnvironment;->checkHeadless()V

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->getDefaultToolkit()Lorg/apache/poi/java/awt/Toolkit;

    move-result-object v0

    if-eq p0, v0, :cond_0

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->getDefaultToolkit()Lorg/apache/poi/java/awt/Toolkit;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Toolkit;->isDynamicLayoutSet()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isFrameStateSupported(I)Z
    .locals 1

    invoke-static {}, Lorg/apache/poi/java/awt/GraphicsEnvironment;->checkHeadless()V

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->getDefaultToolkit()Lorg/apache/poi/java/awt/Toolkit;

    move-result-object v0

    if-eq p0, v0, :cond_0

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->getDefaultToolkit()Lorg/apache/poi/java/awt/Toolkit;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/java/awt/Toolkit;->isFrameStateSupported(I)Z

    move-result p1

    return p1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public abstract isModalExclusionTypeSupported(Lorg/apache/poi/java/awt/Dialog$ModalExclusionType;)Z
.end method

.method public abstract isModalityTypeSupported(Lorg/apache/poi/java/awt/Dialog$ModalityType;)Z
.end method

.method public lazilyLoadDesktopProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public loadSystemColors([I)V
    .locals 0

    invoke-static {}, Lorg/apache/poi/java/awt/GraphicsEnvironment;->checkHeadless()V

    return-void
.end method

.method public abstract mapInputMethodHighlight(Lorg/apache/poi/java/awt/im/InputMethodHighlight;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/java/awt/im/InputMethodHighlight;",
            ")",
            "Ljava/util/Map<",
            "Lorg/apache/poi/java/awt/font/TextAttribute;",
            "*>;"
        }
    .end annotation
.end method

.method public notifyAWTEventListeners(Lorg/apache/poi/java/awt/AWTEvent;)V
    .locals 1

    instance-of v0, p0, Lorg/apache/poi/sun/awt/HeadlessToolkit;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lorg/apache/poi/sun/awt/HeadlessToolkit;

    invoke-virtual {v0}, Lorg/apache/poi/sun/awt/HeadlessToolkit;->getUnderlyingToolkit()Lorg/apache/poi/java/awt/Toolkit;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/java/awt/Toolkit;->notifyAWTEventListeners(Lorg/apache/poi/java/awt/AWTEvent;)V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/Toolkit;->eventListener:Lorg/apache/poi/java/awt/event/AWTEventListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/AWTEventListener;->eventDispatched(Lorg/apache/poi/java/awt/AWTEvent;)V

    :cond_1
    return-void
.end method

.method public abstract prepareImage(Lorg/apache/poi/java/awt/Image;IILorg/apache/poi/java/awt/image/ImageObserver;)Z
.end method

.method public removeAWTEventListener(Lorg/apache/poi/java/awt/event/AWTEventListener;)V
    .locals 7

    invoke-static {p1}, Lorg/apache/poi/java/awt/Toolkit;->deProxyAWTEventListener(Lorg/apache/poi/java/awt/event/AWTEventListener;)Lorg/apache/poi/java/awt/event/AWTEventListener;

    move-result-object v0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object p1

    if-eqz p1, :cond_1

    sget-object v1, Lorg/apache/poi/sun/security/util/SecurityConstants$AWT;->ALL_AWT_EVENTS_PERMISSION:Ljava/security/Permission;

    invoke-virtual {p1, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    :cond_1
    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lorg/apache/poi/java/awt/Toolkit;->listener2SelectiveListener:Ljava/util/WeakHashMap;

    invoke-virtual {p1, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/java/awt/Toolkit$SelectiveAWTEventListener;

    if-eqz p1, :cond_3

    iget-object v1, p0, Lorg/apache/poi/java/awt/Toolkit;->listener2SelectiveListener:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Toolkit$SelectiveAWTEventListener;->getCalls()[I

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x40

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Lorg/apache/poi/java/awt/Toolkit;->calls:[I

    aget v4, v3, v2

    aget v5, v1, v2

    sub-int/2addr v4, v5

    aput v4, v3, v2

    aget v3, v3, v2

    if-nez v3, :cond_2

    sget-wide v3, Lorg/apache/poi/java/awt/Toolkit;->enabledOnToolkitMask:J

    const-wide/16 v5, 0x1

    shl-long/2addr v5, v2

    not-long v5, v5

    and-long/2addr v3, v5

    sput-wide v3, Lorg/apache/poi/java/awt/Toolkit;->enabledOnToolkitMask:J

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lorg/apache/poi/java/awt/Toolkit;->eventListener:Lorg/apache/poi/java/awt/event/AWTEventListener;

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    move-object v0, p1

    :goto_1
    invoke-static {v1, v0}, Lorg/apache/poi/java/awt/Toolkit$ToolkitEventMulticaster;->remove(Lorg/apache/poi/java/awt/event/AWTEventListener;Lorg/apache/poi/java/awt/event/AWTEventListener;)Lorg/apache/poi/java/awt/event/AWTEventListener;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/java/awt/Toolkit;->eventListener:Lorg/apache/poi/java/awt/event/AWTEventListener;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removePropertyChangeListener(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Toolkit;->desktopPropsSupport:Ljava/beans/PropertyChangeSupport;

    invoke-virtual {v0, p1, p2}, Ljava/beans/PropertyChangeSupport;->removePropertyChangeListener(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)V

    return-void
.end method

.method public final setDesktopProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    instance-of v0, p0, Lorg/apache/poi/sun/awt/HeadlessToolkit;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lorg/apache/poi/sun/awt/HeadlessToolkit;

    invoke-virtual {v0}, Lorg/apache/poi/sun/awt/HeadlessToolkit;->getUnderlyingToolkit()Lorg/apache/poi/java/awt/Toolkit;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/java/awt/Toolkit;->setDesktopProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/Toolkit;->desktopProperties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/java/awt/Toolkit;->desktopProperties:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    if-eqz p2, :cond_2

    :cond_1
    iget-object v1, p0, Lorg/apache/poi/java/awt/Toolkit;->desktopPropsSupport:Ljava/beans/PropertyChangeSupport;

    invoke-virtual {v1, p1, v0, p2}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setDynamicLayout(Z)V
    .locals 1

    invoke-static {}, Lorg/apache/poi/java/awt/GraphicsEnvironment;->checkHeadless()V

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->getDefaultToolkit()Lorg/apache/poi/java/awt/Toolkit;

    move-result-object v0

    if-eq p0, v0, :cond_0

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->getDefaultToolkit()Lorg/apache/poi/java/awt/Toolkit;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/java/awt/Toolkit;->setDynamicLayout(Z)V

    :cond_0
    return-void
.end method

.method public setLockingKeyState(IZ)V
    .locals 0

    invoke-static {}, Lorg/apache/poi/java/awt/GraphicsEnvironment;->checkHeadless()V

    const/16 p2, 0x14

    if-eq p1, p2, :cond_0

    const/16 p2, 0x90

    if-eq p1, p2, :cond_0

    const/16 p2, 0x91

    if-eq p1, p2, :cond_0

    const/16 p2, 0x106

    if-eq p1, p2, :cond_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid key for Toolkit.setLockingKeyState"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Toolkit.setLockingKeyState"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract sync()V
.end method
