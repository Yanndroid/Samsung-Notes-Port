.class public Lorg/apache/poi/java/awt/SystemTray;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final EMPTY_TRAY_ARRAY:[Lorg/apache/poi/java/awt/TrayIcon;

.field private static systemTray:Lorg/apache/poi/java/awt/SystemTray;


# instance fields
.field private currentIconID:I

.field private transient peer:Lorg/apache/poi/java/awt/peer/SystemTrayPeer;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/poi/java/awt/TrayIcon;

    sput-object v0, Lorg/apache/poi/java/awt/SystemTray;->EMPTY_TRAY_ARRAY:[Lorg/apache/poi/java/awt/TrayIcon;

    new-instance v0, Lorg/apache/poi/java/awt/SystemTray$1;

    invoke-direct {v0}, Lorg/apache/poi/java/awt/SystemTray$1;-><init>()V

    invoke-static {v0}, Lorg/apache/poi/sun/awt/AWTAccessor;->setSystemTrayAccessor(Lorg/apache/poi/sun/awt/AWTAccessor$SystemTrayAccessor;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/java/awt/SystemTray;->currentIconID:I

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/SystemTray;->addNotify()V

    return-void
.end method

.method public static synthetic access$000(Lorg/apache/poi/java/awt/SystemTray;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/java/awt/SystemTray;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static checkSystemTrayAllowed()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lorg/apache/poi/sun/security/util/SecurityConstants$AWT;->ACCESS_SYSTEM_TRAY_PERMISSION:Ljava/security/Permission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    :cond_0
    return-void
.end method

.method private firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lorg/apache/poi/java/awt/SystemTray;->getCurrentChangeSupport()Ljava/beans/PropertyChangeSupport;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private declared-synchronized getCurrentChangeSupport()Ljava/beans/PropertyChangeSupport;
    .locals 3

    const-class v0, Lorg/apache/poi/java/awt/SystemTray;

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lorg/apache/poi/sun/awt/AppContext;->getAppContext()Lorg/apache/poi/sun/awt/AppContext;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/poi/sun/awt/AppContext;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/beans/PropertyChangeSupport;

    if-nez v1, :cond_0

    new-instance v1, Ljava/beans/PropertyChangeSupport;

    invoke-direct {v1, p0}, Ljava/beans/PropertyChangeSupport;-><init>(Ljava/lang/Object;)V

    invoke-static {}, Lorg/apache/poi/sun/awt/AppContext;->getAppContext()Lorg/apache/poi/sun/awt/AppContext;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lorg/apache/poi/sun/awt/AppContext;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static getSystemTray()Lorg/apache/poi/java/awt/SystemTray;
    .locals 2

    invoke-static {}, Lorg/apache/poi/java/awt/SystemTray;->checkSystemTrayAllowed()V

    invoke-static {}, Lorg/apache/poi/java/awt/GraphicsEnvironment;->isHeadless()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lorg/apache/poi/java/awt/SystemTray;->initializeSystemTrayIfNeeded()V

    invoke-static {}, Lorg/apache/poi/java/awt/SystemTray;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/poi/java/awt/SystemTray;->systemTray:Lorg/apache/poi/java/awt/SystemTray;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "The system tray is not supported on the current platform."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lorg/apache/poi/java/awt/HeadlessException;

    invoke-direct {v0}, Lorg/apache/poi/java/awt/HeadlessException;-><init>()V

    throw v0
.end method

.method private static initializeSystemTrayIfNeeded()V
    .locals 2

    const-class v0, Lorg/apache/poi/java/awt/SystemTray;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/apache/poi/java/awt/SystemTray;->systemTray:Lorg/apache/poi/java/awt/SystemTray;

    if-nez v1, :cond_0

    new-instance v1, Lorg/apache/poi/java/awt/SystemTray;

    invoke-direct {v1}, Lorg/apache/poi/java/awt/SystemTray;-><init>()V

    sput-object v1, Lorg/apache/poi/java/awt/SystemTray;->systemTray:Lorg/apache/poi/java/awt/SystemTray;

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static isSupported()Z
    .locals 2

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->getDefaultToolkit()Lorg/apache/poi/java/awt/Toolkit;

    move-result-object v0

    instance-of v1, v0, Lorg/apache/poi/sun/awt/SunToolkit;

    if-eqz v1, :cond_0

    invoke-static {}, Lorg/apache/poi/java/awt/SystemTray;->initializeSystemTrayIfNeeded()V

    check-cast v0, Lorg/apache/poi/sun/awt/SunToolkit;

    invoke-virtual {v0}, Lorg/apache/poi/sun/awt/SunToolkit;->isTraySupported()Z

    move-result v0

    return v0

    :cond_0
    instance-of v1, v0, Lorg/apache/poi/sun/awt/HeadlessToolkit;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/apache/poi/sun/awt/HeadlessToolkit;

    invoke-virtual {v0}, Lorg/apache/poi/sun/awt/HeadlessToolkit;->isTraySupported()Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public add(Lorg/apache/poi/java/awt/TrayIcon;)V
    .locals 4

    const-class v0, Lorg/apache/poi/java/awt/TrayIcon;

    const-string v1, "adding null TrayIcon"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    sget-object v1, Lorg/apache/poi/java/awt/SystemTray;->systemTray:Lorg/apache/poi/java/awt/SystemTray;

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/SystemTray;->getTrayIcons()[Lorg/apache/poi/java/awt/TrayIcon;

    move-result-object v1

    invoke-static {}, Lorg/apache/poi/sun/awt/AppContext;->getAppContext()Lorg/apache/poi/sun/awt/AppContext;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/apache/poi/sun/awt/AppContext;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Vector;

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/Vector;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Ljava/util/Vector;-><init>(I)V

    invoke-static {}, Lorg/apache/poi/sun/awt/AppContext;->getAppContext()Lorg/apache/poi/sun/awt/AppContext;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lorg/apache/poi/sun/awt/AppContext;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {v2, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    invoke-virtual {v2, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/apache/poi/java/awt/SystemTray;->systemTray:Lorg/apache/poi/java/awt/SystemTray;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/SystemTray;->getTrayIcons()[Lorg/apache/poi/java/awt/TrayIcon;

    move-result-object v0

    iget v3, p0, Lorg/apache/poi/java/awt/SystemTray;->currentIconID:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/poi/java/awt/SystemTray;->currentIconID:I

    invoke-virtual {p1, v3}, Lorg/apache/poi/java/awt/TrayIcon;->setID(I)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p1}, Lorg/apache/poi/java/awt/TrayIcon;->addNotify()V
    :try_end_1
    .catch Lorg/apache/poi/java/awt/AWTException; {:try_start_1 .. :try_end_1} :catch_0

    const-string/jumbo p1, "trayIcons"

    invoke-direct {p0, p1, v1, v0}, Lorg/apache/poi/java/awt/SystemTray;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v2, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    throw v0

    :cond_1
    :try_start_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "adding TrayIcon that is already added"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized addNotify()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/SystemTray;->peer:Lorg/apache/poi/java/awt/peer/SystemTrayPeer;

    if-nez v0, :cond_1

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->getDefaultToolkit()Lorg/apache/poi/java/awt/Toolkit;

    move-result-object v0

    instance-of v1, v0, Lorg/apache/poi/sun/awt/SunToolkit;

    if-eqz v1, :cond_0

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->getDefaultToolkit()Lorg/apache/poi/java/awt/Toolkit;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/sun/awt/SunToolkit;

    invoke-virtual {v0, p0}, Lorg/apache/poi/sun/awt/SunToolkit;->createSystemTray(Lorg/apache/poi/java/awt/SystemTray;)Lorg/apache/poi/java/awt/peer/SystemTrayPeer;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/apache/poi/java/awt/SystemTray;->peer:Lorg/apache/poi/java/awt/peer/SystemTrayPeer;

    goto :goto_1

    :cond_0
    instance-of v0, v0, Lorg/apache/poi/sun/awt/HeadlessToolkit;

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->getDefaultToolkit()Lorg/apache/poi/java/awt/Toolkit;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/sun/awt/HeadlessToolkit;

    invoke-virtual {v0, p0}, Lorg/apache/poi/sun/awt/HeadlessToolkit;->createSystemTray(Lorg/apache/poi/java/awt/SystemTray;)Lorg/apache/poi/java/awt/peer/SystemTrayPeer;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addPropertyChangeListener(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)V
    .locals 1

    monitor-enter p0

    if-nez p2, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lorg/apache/poi/java/awt/SystemTray;->getCurrentChangeSupport()Ljava/beans/PropertyChangeSupport;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/beans/PropertyChangeSupport;->addPropertyChangeListener(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getPropertyChangeListeners(Ljava/lang/String;)[Ljava/beans/PropertyChangeListener;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lorg/apache/poi/java/awt/SystemTray;->getCurrentChangeSupport()Ljava/beans/PropertyChangeSupport;

    move-result-object v0

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

.method public getTrayIconSize()Lorg/apache/poi/java/awt/Dimension;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/SystemTray;->peer:Lorg/apache/poi/java/awt/peer/SystemTrayPeer;

    invoke-interface {v0}, Lorg/apache/poi/java/awt/peer/SystemTrayPeer;->getTrayIconSize()Lorg/apache/poi/java/awt/Dimension;

    move-result-object v0

    return-object v0
.end method

.method public getTrayIcons()[Lorg/apache/poi/java/awt/TrayIcon;
    .locals 2

    invoke-static {}, Lorg/apache/poi/sun/awt/AppContext;->getAppContext()Lorg/apache/poi/sun/awt/AppContext;

    move-result-object v0

    const-class v1, Lorg/apache/poi/java/awt/TrayIcon;

    invoke-virtual {v0, v1}, Lorg/apache/poi/sun/awt/AppContext;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Lorg/apache/poi/java/awt/TrayIcon;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/java/awt/TrayIcon;

    return-object v0

    :cond_0
    sget-object v0, Lorg/apache/poi/java/awt/SystemTray;->EMPTY_TRAY_ARRAY:[Lorg/apache/poi/java/awt/TrayIcon;

    return-object v0
.end method

.method public remove(Lorg/apache/poi/java/awt/TrayIcon;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    sget-object v0, Lorg/apache/poi/java/awt/SystemTray;->systemTray:Lorg/apache/poi/java/awt/SystemTray;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/SystemTray;->getTrayIcons()[Lorg/apache/poi/java/awt/TrayIcon;

    move-result-object v0

    invoke-static {}, Lorg/apache/poi/sun/awt/AppContext;->getAppContext()Lorg/apache/poi/sun/awt/AppContext;

    move-result-object v1

    const-class v2, Lorg/apache/poi/java/awt/TrayIcon;

    invoke-virtual {v1, v2}, Lorg/apache/poi/sun/awt/AppContext;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Vector;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/java/awt/TrayIcon;->removeNotify()V

    sget-object p1, Lorg/apache/poi/java/awt/SystemTray;->systemTray:Lorg/apache/poi/java/awt/SystemTray;

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/SystemTray;->getTrayIcons()[Lorg/apache/poi/java/awt/TrayIcon;

    move-result-object p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string/jumbo v1, "trayIcons"

    invoke-direct {p0, v1, v0, p1}, Lorg/apache/poi/java/awt/SystemTray;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_2
    :goto_0
    :try_start_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized removePropertyChangeListener(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)V
    .locals 1

    monitor-enter p0

    if-nez p2, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lorg/apache/poi/java/awt/SystemTray;->getCurrentChangeSupport()Ljava/beans/PropertyChangeSupport;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/beans/PropertyChangeSupport;->removePropertyChangeListener(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
