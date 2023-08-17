.class public Lorg/apache/poi/java/awt/TrayIcon;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/java/awt/TrayIcon$MessageType;
    }
.end annotation


# instance fields
.field private final acc:Ljava/security/AccessControlContext;

.field private actionCommand:Ljava/lang/String;

.field public transient actionListener:Lorg/apache/poi/java/awt/event/ActionListener;

.field private autosize:Z

.field private id:I

.field private image:Lorg/apache/poi/java/awt/Image;

.field public transient mouseListener:Lorg/apache/poi/java/awt/event/MouseListener;

.field public transient mouseMotionListener:Lorg/apache/poi/java/awt/event/MouseMotionListener;

.field private transient peer:Lorg/apache/poi/java/awt/peer/TrayIconPeer;

.field private popup:Lorg/apache/poi/java/awt/PopupMenu;

.field private tooltip:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->loadLibraries()V

    invoke-static {}, Lorg/apache/poi/java/awt/GraphicsEnvironment;->isHeadless()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/apache/poi/java/awt/TrayIcon;->initIDs()V

    :cond_0
    new-instance v0, Lorg/apache/poi/java/awt/TrayIcon$1;

    invoke-direct {v0}, Lorg/apache/poi/java/awt/TrayIcon$1;-><init>()V

    invoke-static {v0}, Lorg/apache/poi/sun/awt/AWTAccessor;->setTrayIconAccessor(Lorg/apache/poi/sun/awt/AWTAccessor$TrayIconAccessor;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/java/awt/TrayIcon;->acc:Ljava/security/AccessControlContext;

    invoke-static {}, Lorg/apache/poi/java/awt/SystemTray;->checkSystemTrayAllowed()V

    invoke-static {}, Lorg/apache/poi/java/awt/GraphicsEnvironment;->isHeadless()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lorg/apache/poi/java/awt/SystemTray;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/apache/poi/sun/awt/AppContext;->getAppContext()Lorg/apache/poi/sun/awt/AppContext;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/poi/sun/awt/SunToolkit;->insertTargetMapping(Ljava/lang/Object;Lorg/apache/poi/sun/awt/AppContext;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Lorg/apache/poi/java/awt/HeadlessException;

    invoke-direct {v0}, Lorg/apache/poi/java/awt/HeadlessException;-><init>()V

    throw v0
.end method

.method public constructor <init>(Lorg/apache/poi/java/awt/Image;)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/java/awt/TrayIcon;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/TrayIcon;->setImage(Lorg/apache/poi/java/awt/Image;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "creating TrayIcon with null Image"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/apache/poi/java/awt/Image;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/java/awt/TrayIcon;-><init>(Lorg/apache/poi/java/awt/Image;)V

    invoke-virtual {p0, p2}, Lorg/apache/poi/java/awt/TrayIcon;->setToolTip(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/java/awt/Image;Ljava/lang/String;Lorg/apache/poi/java/awt/PopupMenu;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/java/awt/TrayIcon;-><init>(Lorg/apache/poi/java/awt/Image;Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lorg/apache/poi/java/awt/TrayIcon;->setPopupMenu(Lorg/apache/poi/java/awt/PopupMenu;)V

    return-void
.end method

.method private static native initIDs()V
.end method


# virtual methods
.method public declared-synchronized addActionListener(Lorg/apache/poi/java/awt/event/ActionListener;)V
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/TrayIcon;->actionListener:Lorg/apache/poi/java/awt/event/ActionListener;

    invoke-static {v0, p1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->add(Lorg/apache/poi/java/awt/event/ActionListener;Lorg/apache/poi/java/awt/event/ActionListener;)Lorg/apache/poi/java/awt/event/ActionListener;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/java/awt/TrayIcon;->actionListener:Lorg/apache/poi/java/awt/event/ActionListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addMouseListener(Lorg/apache/poi/java/awt/event/MouseListener;)V
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/TrayIcon;->mouseListener:Lorg/apache/poi/java/awt/event/MouseListener;

    invoke-static {v0, p1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->add(Lorg/apache/poi/java/awt/event/MouseListener;Lorg/apache/poi/java/awt/event/MouseListener;)Lorg/apache/poi/java/awt/event/MouseListener;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/java/awt/TrayIcon;->mouseListener:Lorg/apache/poi/java/awt/event/MouseListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addMouseMotionListener(Lorg/apache/poi/java/awt/event/MouseMotionListener;)V
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/TrayIcon;->mouseMotionListener:Lorg/apache/poi/java/awt/event/MouseMotionListener;

    invoke-static {v0, p1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->add(Lorg/apache/poi/java/awt/event/MouseMotionListener;Lorg/apache/poi/java/awt/event/MouseMotionListener;)Lorg/apache/poi/java/awt/event/MouseMotionListener;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/java/awt/TrayIcon;->mouseMotionListener:Lorg/apache/poi/java/awt/event/MouseMotionListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public addNotify()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/TrayIcon;->peer:Lorg/apache/poi/java/awt/peer/TrayIconPeer;

    if-nez v0, :cond_1

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->getDefaultToolkit()Lorg/apache/poi/java/awt/Toolkit;

    move-result-object v0

    instance-of v1, v0, Lorg/apache/poi/sun/awt/SunToolkit;

    if-eqz v1, :cond_0

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->getDefaultToolkit()Lorg/apache/poi/java/awt/Toolkit;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/sun/awt/SunToolkit;

    invoke-virtual {v0, p0}, Lorg/apache/poi/sun/awt/SunToolkit;->createTrayIcon(Lorg/apache/poi/java/awt/TrayIcon;)Lorg/apache/poi/java/awt/peer/TrayIconPeer;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/apache/poi/java/awt/TrayIcon;->peer:Lorg/apache/poi/java/awt/peer/TrayIconPeer;

    goto :goto_1

    :cond_0
    instance-of v0, v0, Lorg/apache/poi/sun/awt/HeadlessToolkit;

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->getDefaultToolkit()Lorg/apache/poi/java/awt/Toolkit;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/sun/awt/HeadlessToolkit;

    invoke-virtual {v0, p0}, Lorg/apache/poi/sun/awt/HeadlessToolkit;->createTrayIcon(Lorg/apache/poi/java/awt/TrayIcon;)Lorg/apache/poi/java/awt/peer/TrayIconPeer;

    move-result-object v0

    goto :goto_0

    :cond_1
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lorg/apache/poi/java/awt/TrayIcon;->peer:Lorg/apache/poi/java/awt/peer/TrayIconPeer;

    iget-object v1, p0, Lorg/apache/poi/java/awt/TrayIcon;->tooltip:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/apache/poi/java/awt/peer/TrayIconPeer;->setToolTip(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public dispatchEvent(Lorg/apache/poi/java/awt/AWTEvent;)V
    .locals 1

    invoke-static {p1}, Lorg/apache/poi/java/awt/EventQueue;->setCurrentEventAndMostRecentTime(Lorg/apache/poi/java/awt/AWTEvent;)V

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->getDefaultToolkit()Lorg/apache/poi/java/awt/Toolkit;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/java/awt/Toolkit;->notifyAWTEventListeners(Lorg/apache/poi/java/awt/AWTEvent;)V

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/TrayIcon;->processEvent(Lorg/apache/poi/java/awt/AWTEvent;)V

    return-void
.end method

.method public displayMessage(Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/java/awt/TrayIcon$MessageType;)V
    .locals 1

    if-nez p1, :cond_0

    const-string v0, "displaying the message with both caption and text being null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/TrayIcon;->peer:Lorg/apache/poi/java/awt/peer/TrayIconPeer;

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/poi/java/awt/peer/TrayIconPeer;->displayMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final getAccessControlContext()Ljava/security/AccessControlContext;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/TrayIcon;->acc:Ljava/security/AccessControlContext;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "TrayIcon is missing AccessControlContext"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getActionCommand()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/TrayIcon;->actionCommand:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getActionListeners()[Lorg/apache/poi/java/awt/event/ActionListener;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/TrayIcon;->actionListener:Lorg/apache/poi/java/awt/event/ActionListener;

    const-class v1, Lorg/apache/poi/java/awt/event/ActionListener;

    invoke-static {v0, v1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->getListeners(Ljava/util/EventListener;Ljava/lang/Class;)[Ljava/util/EventListener;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/java/awt/event/ActionListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getID()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/java/awt/TrayIcon;->id:I

    return v0
.end method

.method public getImage()Lorg/apache/poi/java/awt/Image;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/TrayIcon;->image:Lorg/apache/poi/java/awt/Image;

    return-object v0
.end method

.method public declared-synchronized getMouseListeners()[Lorg/apache/poi/java/awt/event/MouseListener;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/TrayIcon;->mouseListener:Lorg/apache/poi/java/awt/event/MouseListener;

    const-class v1, Lorg/apache/poi/java/awt/event/MouseListener;

    invoke-static {v0, v1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->getListeners(Ljava/util/EventListener;Ljava/lang/Class;)[Ljava/util/EventListener;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/java/awt/event/MouseListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMouseMotionListeners()[Lorg/apache/poi/java/awt/event/MouseMotionListener;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/TrayIcon;->mouseMotionListener:Lorg/apache/poi/java/awt/event/MouseMotionListener;

    const-class v1, Lorg/apache/poi/java/awt/event/MouseMotionListener;

    invoke-static {v0, v1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->getListeners(Ljava/util/EventListener;Ljava/lang/Class;)[Ljava/util/EventListener;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/java/awt/event/MouseMotionListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPopupMenu()Lorg/apache/poi/java/awt/PopupMenu;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/TrayIcon;->popup:Lorg/apache/poi/java/awt/PopupMenu;

    return-object v0
.end method

.method public getSize()Lorg/apache/poi/java/awt/Dimension;
    .locals 1

    invoke-static {}, Lorg/apache/poi/java/awt/SystemTray;->getSystemTray()Lorg/apache/poi/java/awt/SystemTray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/SystemTray;->getTrayIconSize()Lorg/apache/poi/java/awt/Dimension;

    move-result-object v0

    return-object v0
.end method

.method public getToolTip()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/TrayIcon;->tooltip:Ljava/lang/String;

    return-object v0
.end method

.method public isImageAutoSize()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/TrayIcon;->autosize:Z

    return v0
.end method

.method public processActionEvent(Lorg/apache/poi/java/awt/event/ActionEvent;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/TrayIcon;->actionListener:Lorg/apache/poi/java/awt/event/ActionListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/ActionListener;->actionPerformed(Lorg/apache/poi/java/awt/event/ActionEvent;)V

    :cond_0
    return-void
.end method

.method public processEvent(Lorg/apache/poi/java/awt/AWTEvent;)V
    .locals 1

    instance-of v0, p1, Lorg/apache/poi/java/awt/event/MouseEvent;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/AWTEvent;->getID()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    check-cast p1, Lorg/apache/poi/java/awt/event/MouseEvent;

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/TrayIcon;->processMouseMotionEvent(Lorg/apache/poi/java/awt/event/MouseEvent;)V

    goto :goto_0

    :pswitch_1
    check-cast p1, Lorg/apache/poi/java/awt/event/MouseEvent;

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/TrayIcon;->processMouseEvent(Lorg/apache/poi/java/awt/event/MouseEvent;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lorg/apache/poi/java/awt/event/ActionEvent;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/apache/poi/java/awt/event/ActionEvent;

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/TrayIcon;->processActionEvent(Lorg/apache/poi/java/awt/event/ActionEvent;)V

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1f4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public processMouseEvent(Lorg/apache/poi/java/awt/event/MouseEvent;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/TrayIcon;->mouseListener:Lorg/apache/poi/java/awt/event/MouseListener;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/event/MouseEvent;->getID()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    return-void

    :pswitch_0
    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/MouseListener;->mouseReleased(Lorg/apache/poi/java/awt/event/MouseEvent;)V

    goto :goto_0

    :pswitch_1
    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/MouseListener;->mousePressed(Lorg/apache/poi/java/awt/event/MouseEvent;)V

    goto :goto_0

    :pswitch_2
    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/MouseListener;->mouseClicked(Lorg/apache/poi/java/awt/event/MouseEvent;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1f4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public processMouseMotionEvent(Lorg/apache/poi/java/awt/event/MouseEvent;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/java/awt/TrayIcon;->mouseMotionListener:Lorg/apache/poi/java/awt/event/MouseMotionListener;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/event/MouseEvent;->getID()I

    move-result v1

    const/16 v2, 0x1f7

    if-ne v1, v2, :cond_0

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/MouseMotionListener;->mouseMoved(Lorg/apache/poi/java/awt/event/MouseEvent;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized removeActionListener(Lorg/apache/poi/java/awt/event/ActionListener;)V
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/TrayIcon;->actionListener:Lorg/apache/poi/java/awt/event/ActionListener;

    invoke-static {v0, p1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->remove(Lorg/apache/poi/java/awt/event/ActionListener;Lorg/apache/poi/java/awt/event/ActionListener;)Lorg/apache/poi/java/awt/event/ActionListener;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/java/awt/TrayIcon;->actionListener:Lorg/apache/poi/java/awt/event/ActionListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeMouseListener(Lorg/apache/poi/java/awt/event/MouseListener;)V
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/TrayIcon;->mouseListener:Lorg/apache/poi/java/awt/event/MouseListener;

    invoke-static {v0, p1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->remove(Lorg/apache/poi/java/awt/event/MouseListener;Lorg/apache/poi/java/awt/event/MouseListener;)Lorg/apache/poi/java/awt/event/MouseListener;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/java/awt/TrayIcon;->mouseListener:Lorg/apache/poi/java/awt/event/MouseListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeMouseMotionListener(Lorg/apache/poi/java/awt/event/MouseMotionListener;)V
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/TrayIcon;->mouseMotionListener:Lorg/apache/poi/java/awt/event/MouseMotionListener;

    invoke-static {v0, p1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->remove(Lorg/apache/poi/java/awt/event/MouseMotionListener;Lorg/apache/poi/java/awt/event/MouseMotionListener;)Lorg/apache/poi/java/awt/event/MouseMotionListener;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/java/awt/TrayIcon;->mouseMotionListener:Lorg/apache/poi/java/awt/event/MouseMotionListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public removeNotify()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/TrayIcon;->peer:Lorg/apache/poi/java/awt/peer/TrayIconPeer;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/poi/java/awt/TrayIcon;->peer:Lorg/apache/poi/java/awt/peer/TrayIconPeer;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/poi/java/awt/peer/TrayIconPeer;->dispose()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setActionCommand(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/java/awt/TrayIcon;->actionCommand:Ljava/lang/String;

    return-void
.end method

.method public setID(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/java/awt/TrayIcon;->id:I

    return-void
.end method

.method public setImage(Lorg/apache/poi/java/awt/Image;)V
    .locals 1

    const-string/jumbo v0, "setting null Image"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lorg/apache/poi/java/awt/TrayIcon;->image:Lorg/apache/poi/java/awt/Image;

    iget-object p1, p0, Lorg/apache/poi/java/awt/TrayIcon;->peer:Lorg/apache/poi/java/awt/peer/TrayIconPeer;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/apache/poi/java/awt/peer/TrayIconPeer;->updateImage()V

    :cond_0
    return-void
.end method

.method public setImageAutoSize(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/java/awt/TrayIcon;->autosize:Z

    iget-object p1, p0, Lorg/apache/poi/java/awt/TrayIcon;->peer:Lorg/apache/poi/java/awt/peer/TrayIconPeer;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/apache/poi/java/awt/peer/TrayIconPeer;->updateImage()V

    :cond_0
    return-void
.end method

.method public setPopupMenu(Lorg/apache/poi/java/awt/PopupMenu;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/java/awt/TrayIcon;->popup:Lorg/apache/poi/java/awt/PopupMenu;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const-class v0, Lorg/apache/poi/java/awt/TrayIcon;

    monitor-enter v0

    if-eqz p1, :cond_2

    :try_start_0
    iget-boolean v1, p1, Lorg/apache/poi/java/awt/PopupMenu;->isTrayIconPopup:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p1, Lorg/apache/poi/java/awt/PopupMenu;->isTrayIconPopup:Z

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "the PopupMenu is already set for another TrayIcon"

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/TrayIcon;->popup:Lorg/apache/poi/java/awt/PopupMenu;

    if-eqz v1, :cond_3

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/apache/poi/java/awt/PopupMenu;->isTrayIconPopup:Z

    :cond_3
    iput-object p1, p0, Lorg/apache/poi/java/awt/TrayIcon;->popup:Lorg/apache/poi/java/awt/PopupMenu;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setToolTip(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lorg/apache/poi/java/awt/TrayIcon;->tooltip:Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/poi/java/awt/TrayIcon;->peer:Lorg/apache/poi/java/awt/peer/TrayIconPeer;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/peer/TrayIconPeer;->setToolTip(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
