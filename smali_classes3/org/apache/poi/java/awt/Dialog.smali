.class public Lorg/apache/poi/java/awt/Dialog;
.super Lorg/apache/poi/java/awt/Window;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/java/awt/Dialog$AccessibleAWTDialog;,
        Lorg/apache/poi/java/awt/Dialog$ModalExclusionType;,
        Lorg/apache/poi/java/awt/Dialog$ModalityType;
    }
.end annotation


# static fields
.field public static final DEFAULT_MODALITY_TYPE:Lorg/apache/poi/java/awt/Dialog$ModalityType;

.field private static final base:Ljava/lang/String; = "dialog"

.field public static transient modalDialogs:Lorg/apache/poi/sun/awt/util/IdentityArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/poi/sun/awt/util/IdentityArrayList<",
            "Lorg/apache/poi/java/awt/Dialog;",
            ">;"
        }
    .end annotation
.end field

.field private static nameCounter:I = 0x0

.field private static final serialVersionUID:J = 0x522b5ba60a3fb00dL


# instance fields
.field public transient blockedWindows:Lorg/apache/poi/sun/awt/util/IdentityArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/poi/sun/awt/util/IdentityArrayList<",
            "Lorg/apache/poi/java/awt/Window;",
            ">;"
        }
    .end annotation
.end field

.field private transient initialized:Z

.field public volatile transient isInDispose:Z

.field public volatile transient isInHide:Z

.field public modal:Z

.field private transient modalFilter:Lorg/apache/poi/java/awt/ModalEventFilter;

.field public modalityType:Lorg/apache/poi/java/awt/Dialog$ModalityType;

.field public resizable:Z

.field private volatile transient secondaryLoop:Lorg/apache/poi/java/awt/SecondaryLoop;

.field public title:Ljava/lang/String;

.field public undecorated:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->loadLibraries()V

    invoke-static {}, Lorg/apache/poi/java/awt/GraphicsEnvironment;->isHeadless()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/apache/poi/java/awt/Dialog;->initIDs()V

    :cond_0
    sget-object v0, Lorg/apache/poi/java/awt/Dialog$ModalityType;->APPLICATION_MODAL:Lorg/apache/poi/java/awt/Dialog$ModalityType;

    sput-object v0, Lorg/apache/poi/java/awt/Dialog;->DEFAULT_MODALITY_TYPE:Lorg/apache/poi/java/awt/Dialog$ModalityType;

    new-instance v0, Lorg/apache/poi/sun/awt/util/IdentityArrayList;

    invoke-direct {v0}, Lorg/apache/poi/sun/awt/util/IdentityArrayList;-><init>()V

    sput-object v0, Lorg/apache/poi/java/awt/Dialog;->modalDialogs:Lorg/apache/poi/sun/awt/util/IdentityArrayList;

    const/4 v0, 0x0

    sput v0, Lorg/apache/poi/java/awt/Dialog;->nameCounter:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/java/awt/Dialog;)V
    .locals 2

    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/poi/java/awt/Dialog;-><init>(Lorg/apache/poi/java/awt/Dialog;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/java/awt/Dialog;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/java/awt/Dialog;-><init>(Lorg/apache/poi/java/awt/Dialog;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/java/awt/Dialog;Ljava/lang/String;Z)V
    .locals 0

    if-eqz p3, :cond_0

    sget-object p3, Lorg/apache/poi/java/awt/Dialog;->DEFAULT_MODALITY_TYPE:Lorg/apache/poi/java/awt/Dialog$ModalityType;

    goto :goto_0

    :cond_0
    sget-object p3, Lorg/apache/poi/java/awt/Dialog$ModalityType;->MODELESS:Lorg/apache/poi/java/awt/Dialog$ModalityType;

    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/java/awt/Dialog;-><init>(Lorg/apache/poi/java/awt/Window;Ljava/lang/String;Lorg/apache/poi/java/awt/Dialog$ModalityType;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/java/awt/Dialog;Ljava/lang/String;ZLorg/apache/poi/java/awt/GraphicsConfiguration;)V
    .locals 0

    if-eqz p3, :cond_0

    sget-object p3, Lorg/apache/poi/java/awt/Dialog;->DEFAULT_MODALITY_TYPE:Lorg/apache/poi/java/awt/Dialog$ModalityType;

    goto :goto_0

    :cond_0
    sget-object p3, Lorg/apache/poi/java/awt/Dialog$ModalityType;->MODELESS:Lorg/apache/poi/java/awt/Dialog$ModalityType;

    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/poi/java/awt/Dialog;-><init>(Lorg/apache/poi/java/awt/Window;Ljava/lang/String;Lorg/apache/poi/java/awt/Dialog$ModalityType;Lorg/apache/poi/java/awt/GraphicsConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/java/awt/Frame;)V
    .locals 2

    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/poi/java/awt/Dialog;-><init>(Lorg/apache/poi/java/awt/Frame;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/java/awt/Frame;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/java/awt/Dialog;-><init>(Lorg/apache/poi/java/awt/Frame;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/java/awt/Frame;Ljava/lang/String;Z)V
    .locals 0

    if-eqz p3, :cond_0

    sget-object p3, Lorg/apache/poi/java/awt/Dialog;->DEFAULT_MODALITY_TYPE:Lorg/apache/poi/java/awt/Dialog$ModalityType;

    goto :goto_0

    :cond_0
    sget-object p3, Lorg/apache/poi/java/awt/Dialog$ModalityType;->MODELESS:Lorg/apache/poi/java/awt/Dialog$ModalityType;

    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/java/awt/Dialog;-><init>(Lorg/apache/poi/java/awt/Window;Ljava/lang/String;Lorg/apache/poi/java/awt/Dialog$ModalityType;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/java/awt/Frame;Ljava/lang/String;ZLorg/apache/poi/java/awt/GraphicsConfiguration;)V
    .locals 0

    if-eqz p3, :cond_0

    sget-object p3, Lorg/apache/poi/java/awt/Dialog;->DEFAULT_MODALITY_TYPE:Lorg/apache/poi/java/awt/Dialog$ModalityType;

    goto :goto_0

    :cond_0
    sget-object p3, Lorg/apache/poi/java/awt/Dialog$ModalityType;->MODELESS:Lorg/apache/poi/java/awt/Dialog$ModalityType;

    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/poi/java/awt/Dialog;-><init>(Lorg/apache/poi/java/awt/Window;Ljava/lang/String;Lorg/apache/poi/java/awt/Dialog$ModalityType;Lorg/apache/poi/java/awt/GraphicsConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/java/awt/Frame;Z)V
    .locals 1

    const-string v0, ""

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/poi/java/awt/Dialog;-><init>(Lorg/apache/poi/java/awt/Frame;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/java/awt/Window;)V
    .locals 2

    sget-object v0, Lorg/apache/poi/java/awt/Dialog$ModalityType;->MODELESS:Lorg/apache/poi/java/awt/Dialog$ModalityType;

    const-string v1, ""

    invoke-direct {p0, p1, v1, v0}, Lorg/apache/poi/java/awt/Dialog;-><init>(Lorg/apache/poi/java/awt/Window;Ljava/lang/String;Lorg/apache/poi/java/awt/Dialog$ModalityType;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/java/awt/Window;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lorg/apache/poi/java/awt/Dialog$ModalityType;->MODELESS:Lorg/apache/poi/java/awt/Dialog$ModalityType;

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/java/awt/Dialog;-><init>(Lorg/apache/poi/java/awt/Window;Ljava/lang/String;Lorg/apache/poi/java/awt/Dialog$ModalityType;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/java/awt/Window;Ljava/lang/String;Lorg/apache/poi/java/awt/Dialog$ModalityType;)V
    .locals 3

    invoke-direct {p0, p1}, Lorg/apache/poi/java/awt/Window;-><init>(Lorg/apache/poi/java/awt/Window;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/java/awt/Dialog;->resizable:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/poi/java/awt/Dialog;->undecorated:Z

    iput-boolean v1, p0, Lorg/apache/poi/java/awt/Dialog;->initialized:Z

    new-instance v2, Lorg/apache/poi/sun/awt/util/IdentityArrayList;

    invoke-direct {v2}, Lorg/apache/poi/sun/awt/util/IdentityArrayList;-><init>()V

    iput-object v2, p0, Lorg/apache/poi/java/awt/Dialog;->blockedWindows:Lorg/apache/poi/sun/awt/util/IdentityArrayList;

    iput-boolean v1, p0, Lorg/apache/poi/java/awt/Dialog;->isInHide:Z

    iput-boolean v1, p0, Lorg/apache/poi/java/awt/Dialog;->isInDispose:Z

    if-eqz p1, :cond_1

    instance-of v1, p1, Lorg/apache/poi/java/awt/Frame;

    if-nez v1, :cond_1

    instance-of p1, p1, Lorg/apache/poi/java/awt/Dialog;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Wrong parent window"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput-object p2, p0, Lorg/apache/poi/java/awt/Dialog;->title:Ljava/lang/String;

    invoke-virtual {p0, p3}, Lorg/apache/poi/java/awt/Dialog;->setModalityType(Lorg/apache/poi/java/awt/Dialog$ModalityType;)V

    invoke-static {p0}, Lorg/apache/poi/sun/awt/SunToolkit;->checkAndSetPolicy(Lorg/apache/poi/java/awt/Container;)V

    iput-boolean v0, p0, Lorg/apache/poi/java/awt/Dialog;->initialized:Z

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/java/awt/Window;Ljava/lang/String;Lorg/apache/poi/java/awt/Dialog$ModalityType;Lorg/apache/poi/java/awt/GraphicsConfiguration;)V
    .locals 2

    invoke-direct {p0, p1, p4}, Lorg/apache/poi/java/awt/Window;-><init>(Lorg/apache/poi/java/awt/Window;Lorg/apache/poi/java/awt/GraphicsConfiguration;)V

    const/4 p4, 0x1

    iput-boolean p4, p0, Lorg/apache/poi/java/awt/Dialog;->resizable:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/java/awt/Dialog;->undecorated:Z

    iput-boolean v0, p0, Lorg/apache/poi/java/awt/Dialog;->initialized:Z

    new-instance v1, Lorg/apache/poi/sun/awt/util/IdentityArrayList;

    invoke-direct {v1}, Lorg/apache/poi/sun/awt/util/IdentityArrayList;-><init>()V

    iput-object v1, p0, Lorg/apache/poi/java/awt/Dialog;->blockedWindows:Lorg/apache/poi/sun/awt/util/IdentityArrayList;

    iput-boolean v0, p0, Lorg/apache/poi/java/awt/Dialog;->isInHide:Z

    iput-boolean v0, p0, Lorg/apache/poi/java/awt/Dialog;->isInDispose:Z

    if-eqz p1, :cond_1

    instance-of v0, p1, Lorg/apache/poi/java/awt/Frame;

    if-nez v0, :cond_1

    instance-of p1, p1, Lorg/apache/poi/java/awt/Dialog;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "wrong owner window"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput-object p2, p0, Lorg/apache/poi/java/awt/Dialog;->title:Ljava/lang/String;

    invoke-virtual {p0, p3}, Lorg/apache/poi/java/awt/Dialog;->setModalityType(Lorg/apache/poi/java/awt/Dialog$ModalityType;)V

    invoke-static {p0}, Lorg/apache/poi/sun/awt/SunToolkit;->checkAndSetPolicy(Lorg/apache/poi/java/awt/Container;)V

    iput-boolean p4, p0, Lorg/apache/poi/java/awt/Dialog;->initialized:Z

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/java/awt/Window;Lorg/apache/poi/java/awt/Dialog$ModalityType;)V
    .locals 1

    const-string v0, ""

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/poi/java/awt/Dialog;-><init>(Lorg/apache/poi/java/awt/Window;Ljava/lang/String;Lorg/apache/poi/java/awt/Dialog$ModalityType;)V

    return-void
.end method

.method private checkModalityPermission(Lorg/apache/poi/java/awt/Dialog$ModalityType;)V
    .locals 1

    sget-object v0, Lorg/apache/poi/java/awt/Dialog$ModalityType;->TOOLKIT_MODAL:Lorg/apache/poi/java/awt/Dialog$ModalityType;

    if-ne p1, v0, :cond_0

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object v0, Lorg/apache/poi/sun/security/util/SecurityConstants$AWT;->TOOLKIT_MODALITY_PERMISSION:Ljava/security/Permission;

    invoke-virtual {p1, v0}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    :cond_0
    return-void
.end method

.method public static checkShouldBeBlocked(Lorg/apache/poi/java/awt/Window;)V
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    sget-object v2, Lorg/apache/poi/java/awt/Dialog;->modalDialogs:Lorg/apache/poi/sun/awt/util/IdentityArrayList;

    invoke-virtual {v2}, Lorg/apache/poi/sun/awt/util/IdentityArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    sget-object v2, Lorg/apache/poi/java/awt/Dialog;->modalDialogs:Lorg/apache/poi/sun/awt/util/IdentityArrayList;

    invoke-virtual {v2, v1}, Lorg/apache/poi/sun/awt/util/IdentityArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/java/awt/Dialog;

    invoke-virtual {v2, p0}, Lorg/apache/poi/java/awt/Dialog;->shouldBlock(Lorg/apache/poi/java/awt/Window;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, p0}, Lorg/apache/poi/java/awt/Dialog;->blockWindow(Lorg/apache/poi/java/awt/Window;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private conditionalShow(Lorg/apache/poi/java/awt/Component;Ljava/util/concurrent/atomic/AtomicLong;)Z
    .locals 11

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Window;->closeSplashScreen()V

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Dialog;->addNotify()V

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Container;->validateUnconditionally()V

    iget-boolean v1, p0, Lorg/apache/poi/java/awt/Component;->visible:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Window;->toFront()V

    goto/16 :goto_2

    :cond_1
    iput-boolean v3, p0, Lorg/apache/poi/java/awt/Component;->visible:Z

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Dialog;->isModal()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0}, Lorg/apache/poi/java/awt/Dialog;->checkShouldBeBlocked(Lorg/apache/poi/java/awt/Window;)V

    goto :goto_0

    :cond_2
    sget-object v1, Lorg/apache/poi/java/awt/Dialog;->modalDialogs:Lorg/apache/poi/sun/awt/util/IdentityArrayList;

    invoke-virtual {v1, p0}, Lorg/apache/poi/sun/awt/util/IdentityArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Dialog;->modalShow()V

    :goto_0
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->isFocusable()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Window;->isModalBlocked()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->getEventQueue()Lorg/apache/poi/java/awt/EventQueue;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/EventQueue;->getMostRecentEventTimeEx()J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    invoke-static {}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getCurrentKeyboardFocusManager()Lorg/apache/poi/java/awt/KeyboardFocusManager;

    move-result-object v1

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5, p1}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->enqueueKeyEvents(JLorg/apache/poi/java/awt/Component;)V

    :cond_3
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Container;->mixOnShowing()V

    iget-object p1, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    invoke-interface {p1, v3}, Lorg/apache/poi/java/awt/peer/ComponentPeer;->setVisible(Z)V

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Window;->isModalBlocked()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/apache/poi/java/awt/Window;->modalBlocker:Lorg/apache/poi/java/awt/Dialog;

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Window;->toFront()V

    :cond_4
    invoke-virtual {p0, v2}, Lorg/apache/poi/java/awt/Window;->setLocationByPlatform(Z)V

    move p1, v2

    :goto_1
    iget-object p2, p0, Lorg/apache/poi/java/awt/Window;->ownedWindowList:Ljava/util/Vector;

    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result p2

    if-ge p1, p2, :cond_6

    iget-object p2, p0, Lorg/apache/poi/java/awt/Window;->ownedWindowList:Ljava/util/Vector;

    invoke-virtual {p2, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/poi/java/awt/Window;

    if-eqz p2, :cond_5

    iget-boolean v1, p2, Lorg/apache/poi/java/awt/Window;->showWithParent:Z

    if-eqz v1, :cond_5

    invoke-virtual {p2}, Lorg/apache/poi/java/awt/Window;->show()V

    iput-boolean v2, p2, Lorg/apache/poi/java/awt/Window;->showWithParent:Z

    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_6
    invoke-static {p0}, Lorg/apache/poi/java/awt/Window;->updateChildFocusableWindowState(Lorg/apache/poi/java/awt/Window;)V

    const/16 v5, 0x578

    iget-object v7, p0, Lorg/apache/poi/java/awt/Component;->parent:Lorg/apache/poi/java/awt/Container;

    const-wide/16 v8, 0x4

    const-wide/32 p1, 0x8000

    invoke-static {p1, p2}, Lorg/apache/poi/java/awt/Toolkit;->enabledOnToolkit(J)Z

    move-result v10

    move-object v4, p0

    move-object v6, p0

    invoke-virtual/range {v4 .. v10}, Lorg/apache/poi/java/awt/Container;->createHierarchyEvents(ILorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/Container;JZ)I

    iget-object p1, p0, Lorg/apache/poi/java/awt/Component;->componentListener:Lorg/apache/poi/java/awt/event/ComponentListener;

    if-nez p1, :cond_7

    iget-wide p1, p0, Lorg/apache/poi/java/awt/Component;->eventMask:J

    const-wide/16 v1, 0x1

    and-long/2addr p1, v1

    const-wide/16 v4, 0x0

    cmp-long p1, p1, v4

    if-nez p1, :cond_7

    invoke-static {v1, v2}, Lorg/apache/poi/java/awt/Toolkit;->enabledOnToolkit(J)Z

    move-result p1

    if-eqz p1, :cond_8

    :cond_7
    new-instance p1, Lorg/apache/poi/java/awt/event/ComponentEvent;

    const/16 p2, 0x66

    invoke-direct {p1, p0, p2}, Lorg/apache/poi/java/awt/event/ComponentEvent;-><init>(Lorg/apache/poi/java/awt/Component;I)V

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->getEventQueue()Lorg/apache/poi/java/awt/EventQueue;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/apache/poi/java/awt/EventQueue;->postEvent(Lorg/apache/poi/java/awt/AWTEvent;)V

    :cond_8
    move v2, v3

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_9

    iget p1, p0, Lorg/apache/poi/java/awt/Window;->state:I

    and-int/2addr p1, v3

    if-nez p1, :cond_9

    const/16 p1, 0xc8

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/Window;->postWindowEvent(I)V

    iget p1, p0, Lorg/apache/poi/java/awt/Window;->state:I

    or-int/2addr p1, v3

    iput p1, p0, Lorg/apache/poi/java/awt/Window;->state:I

    :cond_9
    return v2

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private hideAndDisposeHandler()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Dialog;->secondaryLoop:Lorg/apache/poi/java/awt/SecondaryLoop;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/java/awt/Dialog;->secondaryLoop:Lorg/apache/poi/java/awt/SecondaryLoop;

    invoke-interface {v0}, Lorg/apache/poi/java/awt/SecondaryLoop;->exit()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/java/awt/Dialog;->secondaryLoop:Lorg/apache/poi/java/awt/SecondaryLoop;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/java/awt/Dialog;->isInHide:Z

    return-void
.end method

.method private hideAndDisposePreHandler()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/java/awt/Dialog;->isInHide:Z

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/Dialog;->secondaryLoop:Lorg/apache/poi/java/awt/SecondaryLoop;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Dialog;->modalHide()V

    iget-object v1, p0, Lorg/apache/poi/java/awt/Dialog;->modalFilter:Lorg/apache/poi/java/awt/ModalEventFilter;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/ModalEventFilter;->disable()V

    :cond_0
    sget-object v1, Lorg/apache/poi/java/awt/Dialog;->modalDialogs:Lorg/apache/poi/sun/awt/util/IdentityArrayList;

    invoke-virtual {v1, p0}, Lorg/apache/poi/sun/awt/util/IdentityArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static native initIDs()V
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3

    invoke-static {}, Lorg/apache/poi/java/awt/GraphicsEnvironment;->checkHeadless()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object p1

    const-string v0, "modalityType"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/java/awt/Dialog$ModalityType;

    :try_start_0
    invoke-direct {p0, v0}, Lorg/apache/poi/java/awt/Dialog;->checkModalityPermission(Lorg/apache/poi/java/awt/Dialog$ModalityType;)V
    :try_end_0
    .catch Ljava/security/AccessControlException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Lorg/apache/poi/java/awt/Dialog;->DEFAULT_MODALITY_TYPE:Lorg/apache/poi/java/awt/Dialog$ModalityType;

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "modal"

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/poi/java/awt/Dialog;->modal:Z

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/Dialog;->setModal(Z)V

    goto :goto_1

    :cond_0
    iput-object v0, p0, Lorg/apache/poi/java/awt/Dialog;->modalityType:Lorg/apache/poi/java/awt/Dialog$ModalityType;

    :goto_1
    const-string v0, "resizable"

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/poi/java/awt/Dialog;->resizable:Z

    const-string/jumbo v0, "undecorated"

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/poi/java/awt/Dialog;->undecorated:Z

    const-string/jumbo v0, "title"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/poi/java/awt/Dialog;->title:Ljava/lang/String;

    new-instance p1, Lorg/apache/poi/sun/awt/util/IdentityArrayList;

    invoke-direct {p1}, Lorg/apache/poi/sun/awt/util/IdentityArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/java/awt/Dialog;->blockedWindows:Lorg/apache/poi/sun/awt/util/IdentityArrayList;

    invoke-static {p0}, Lorg/apache/poi/sun/awt/SunToolkit;->checkAndSetPolicy(Lorg/apache/poi/java/awt/Container;)V

    iput-boolean v2, p0, Lorg/apache/poi/java/awt/Dialog;->initialized:Z

    return-void
.end method


# virtual methods
.method public addNotify()V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/Component;->parent:Lorg/apache/poi/java/awt/Container;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/Component;->getPeer()Lorg/apache/poi/java/awt/peer/ComponentPeer;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/poi/java/awt/Component;->parent:Lorg/apache/poi/java/awt/Container;

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/Container;->addNotify()V

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Window;->getToolkit()Lorg/apache/poi/java/awt/Toolkit;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/apache/poi/java/awt/Toolkit;->createDialog(Lorg/apache/poi/java/awt/Dialog;)Lorg/apache/poi/java/awt/peer/DialogPeer;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    :cond_1
    invoke-super {p0}, Lorg/apache/poi/java/awt/Window;->addNotify()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blockWindow(Lorg/apache/poi/java/awt/Window;)V
    .locals 1

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Window;->isModalBlocked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0, v0}, Lorg/apache/poi/java/awt/Window;->setModalBlocked(Lorg/apache/poi/java/awt/Dialog;ZZ)V

    iget-object v0, p0, Lorg/apache/poi/java/awt/Dialog;->blockedWindows:Lorg/apache/poi/sun/awt/util/IdentityArrayList;

    invoke-virtual {v0, p1}, Lorg/apache/poi/sun/awt/util/IdentityArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public blockWindows(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/java/awt/Window;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    check-cast v0, Lorg/apache/poi/java/awt/peer/DialogPeer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/java/awt/Window;

    invoke-virtual {v2}, Lorg/apache/poi/java/awt/Window;->isModalBlocked()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, p0, v3, v4}, Lorg/apache/poi/java/awt/Window;->setModalBlocked(Lorg/apache/poi/java/awt/Dialog;ZZ)V

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/peer/DialogPeer;->blockWindows(Ljava/util/List;)V

    iget-object v0, p0, Lorg/apache/poi/java/awt/Dialog;->blockedWindows:Lorg/apache/poi/sun/awt/util/IdentityArrayList;

    invoke-virtual {v0, p1}, Lorg/apache/poi/sun/awt/util/IdentityArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public constructComponentName()Ljava/lang/String;
    .locals 4

    const-class v0, Lorg/apache/poi/java/awt/Dialog;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dialog"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lorg/apache/poi/java/awt/Dialog;->nameCounter:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lorg/apache/poi/java/awt/Dialog;->nameCounter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public doDispose()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/java/awt/Dialog;->isInDispose:Z

    invoke-super {p0}, Lorg/apache/poi/java/awt/Window;->doDispose()V

    invoke-direct {p0}, Lorg/apache/poi/java/awt/Dialog;->hideAndDisposeHandler()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/java/awt/Dialog;->isInDispose:Z

    return-void
.end method

.method public getAccessibleContext()Ljavax/accessibility/AccessibleContext;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->accessibleContext:Ljavax/accessibility/AccessibleContext;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/poi/java/awt/Dialog$AccessibleAWTDialog;

    invoke-direct {v0, p0}, Lorg/apache/poi/java/awt/Dialog$AccessibleAWTDialog;-><init>(Lorg/apache/poi/java/awt/Dialog;)V

    iput-object v0, p0, Lorg/apache/poi/java/awt/Component;->accessibleContext:Ljavax/accessibility/AccessibleContext;

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->accessibleContext:Ljavax/accessibility/AccessibleContext;

    return-object v0
.end method

.method public getModalityType()Lorg/apache/poi/java/awt/Dialog$ModalityType;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Dialog;->modalityType:Lorg/apache/poi/java/awt/Dialog$ModalityType;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Dialog;->title:Ljava/lang/String;

    return-object v0
.end method

.method public hide()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lorg/apache/poi/java/awt/Dialog;->hideAndDisposePreHandler()V

    invoke-super {p0}, Lorg/apache/poi/java/awt/Window;->hide()V

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/Dialog;->isInDispose:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/java/awt/Dialog;->hideAndDisposeHandler()V

    :cond_0
    return-void
.end method

.method public interruptBlocking()V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Dialog;->isModal()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Window;->disposeImpl()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->windowClosingException:Ljava/lang/RuntimeException;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->windowClosingException:Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/java/awt/Component;->windowClosingException:Ljava/lang/RuntimeException;

    :cond_1
    :goto_0
    return-void
.end method

.method public isModal()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Dialog;->isModal_NoClientCode()Z

    move-result v0

    return v0
.end method

.method public final isModal_NoClientCode()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/Dialog;->modalityType:Lorg/apache/poi/java/awt/Dialog$ModalityType;

    sget-object v1, Lorg/apache/poi/java/awt/Dialog$ModalityType;->MODELESS:Lorg/apache/poi/java/awt/Dialog$ModalityType;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isResizable()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/Dialog;->resizable:Z

    return v0
.end method

.method public isUndecorated()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/Dialog;->undecorated:Z

    return v0
.end method

.method public modalHide()V
    .locals 6

    new-instance v0, Lorg/apache/poi/sun/awt/util/IdentityArrayList;

    invoke-direct {v0}, Lorg/apache/poi/sun/awt/util/IdentityArrayList;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/java/awt/Dialog;->blockedWindows:Lorg/apache/poi/sun/awt/util/IdentityArrayList;

    invoke-virtual {v1}, Lorg/apache/poi/sun/awt/util/IdentityArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    iget-object v4, p0, Lorg/apache/poi/java/awt/Dialog;->blockedWindows:Lorg/apache/poi/sun/awt/util/IdentityArrayList;

    invoke-virtual {v4, v2}, Lorg/apache/poi/sun/awt/util/IdentityArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/java/awt/Window;

    invoke-virtual {v0, v4}, Lorg/apache/poi/sun/awt/util/IdentityArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v4}, Lorg/apache/poi/java/awt/Dialog;->unblockWindow(Lorg/apache/poi/java/awt/Window;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v2, v1, :cond_2

    invoke-virtual {v0, v2}, Lorg/apache/poi/sun/awt/util/IdentityArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/java/awt/Window;

    instance-of v4, v3, Lorg/apache/poi/java/awt/Dialog;

    if-eqz v4, :cond_1

    move-object v4, v3

    check-cast v4, Lorg/apache/poi/java/awt/Dialog;

    invoke-virtual {v4}, Lorg/apache/poi/java/awt/Dialog;->isModal_NoClientCode()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lorg/apache/poi/java/awt/Dialog;->modalShow()V

    goto :goto_2

    :cond_1
    invoke-static {v3}, Lorg/apache/poi/java/awt/Dialog;->checkShouldBeBlocked(Lorg/apache/poi/java/awt/Window;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public modalShow()V
    .locals 7

    new-instance v0, Lorg/apache/poi/sun/awt/util/IdentityArrayList;

    invoke-direct {v0}, Lorg/apache/poi/sun/awt/util/IdentityArrayList;-><init>()V

    sget-object v1, Lorg/apache/poi/java/awt/Dialog;->modalDialogs:Lorg/apache/poi/sun/awt/util/IdentityArrayList;

    invoke-virtual {v1}, Lorg/apache/poi/sun/awt/util/IdentityArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/java/awt/Dialog;

    invoke-virtual {v2, p0}, Lorg/apache/poi/java/awt/Dialog;->shouldBlock(Lorg/apache/poi/java/awt/Window;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v2

    :goto_1
    if-eqz v3, :cond_1

    if-eq v3, p0, :cond_1

    invoke-virtual {v3}, Lorg/apache/poi/java/awt/Window;->getOwner_NoClientCode()Lorg/apache/poi/java/awt/Window;

    move-result-object v3

    goto :goto_1

    :cond_1
    if-eq v3, p0, :cond_2

    invoke-virtual {p0, v2}, Lorg/apache/poi/java/awt/Dialog;->shouldBlock(Lorg/apache/poi/java/awt/Window;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/apache/poi/java/awt/Dialog;->modalityType:Lorg/apache/poi/java/awt/Dialog$ModalityType;

    invoke-virtual {v2}, Lorg/apache/poi/java/awt/Dialog;->getModalityType()Lorg/apache/poi/java/awt/Dialog$ModalityType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-gez v3, :cond_0

    :cond_2
    invoke-virtual {v0, v2}, Lorg/apache/poi/sun/awt/util/IdentityArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    move v2, v1

    :goto_2
    invoke-virtual {v0}, Lorg/apache/poi/sun/awt/util/IdentityArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    invoke-virtual {v0, v2}, Lorg/apache/poi/sun/awt/util/IdentityArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/java/awt/Dialog;

    invoke-virtual {v3}, Lorg/apache/poi/java/awt/Window;->isModalBlocked()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Lorg/apache/poi/java/awt/Window;->getModalBlocker()Lorg/apache/poi/java/awt/Dialog;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/poi/sun/awt/util/IdentityArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v0, v4, v3}, Lorg/apache/poi/sun/awt/util/IdentityArrayList;->add(ILjava/lang/Object;)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Lorg/apache/poi/sun/awt/util/IdentityArrayList;->size()I

    move-result v2

    if-lez v2, :cond_6

    invoke-virtual {v0, v1}, Lorg/apache/poi/sun/awt/util/IdentityArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/java/awt/Dialog;

    invoke-virtual {v2, p0}, Lorg/apache/poi/java/awt/Dialog;->blockWindow(Lorg/apache/poi/java/awt/Window;)V

    :cond_6
    new-instance v2, Lorg/apache/poi/sun/awt/util/IdentityArrayList;

    invoke-direct {v2, v0}, Lorg/apache/poi/sun/awt/util/IdentityArrayList;-><init>(Ljava/util/Collection;)V

    move v0, v1

    :goto_3
    invoke-virtual {v2}, Lorg/apache/poi/sun/awt/util/IdentityArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_8

    invoke-virtual {v2, v0}, Lorg/apache/poi/sun/awt/util/IdentityArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/java/awt/Window;

    invoke-virtual {v3}, Lorg/apache/poi/java/awt/Window;->getOwnedWindows_NoClientCode()[Lorg/apache/poi/java/awt/Window;

    move-result-object v3

    array-length v4, v3

    move v5, v1

    :goto_4
    if-ge v5, v4, :cond_7

    aget-object v6, v3, v5

    invoke-virtual {v2, v6}, Lorg/apache/poi/sun/awt/util/IdentityArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_8
    new-instance v0, Lorg/apache/poi/sun/awt/util/IdentityLinkedList;

    invoke-direct {v0}, Lorg/apache/poi/sun/awt/util/IdentityLinkedList;-><init>()V

    invoke-static {}, Lorg/apache/poi/java/awt/Window;->getAllUnblockedWindows()Lorg/apache/poi/sun/awt/util/IdentityArrayList;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/sun/awt/util/IdentityArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/java/awt/Window;

    invoke-virtual {p0, v3}, Lorg/apache/poi/java/awt/Dialog;->shouldBlock(Lorg/apache/poi/java/awt/Window;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v2, v3}, Lorg/apache/poi/sun/awt/util/IdentityArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    instance-of v4, v3, Lorg/apache/poi/java/awt/Dialog;

    if-eqz v4, :cond_a

    move-object v4, v3

    check-cast v4, Lorg/apache/poi/java/awt/Dialog;

    invoke-virtual {v4}, Lorg/apache/poi/java/awt/Dialog;->isModal_NoClientCode()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v4, p0}, Lorg/apache/poi/java/awt/Dialog;->shouldBlock(Lorg/apache/poi/java/awt/Window;)Z

    move-result v5

    if-eqz v5, :cond_a

    sget-object v5, Lorg/apache/poi/java/awt/Dialog;->modalDialogs:Lorg/apache/poi/sun/awt/util/IdentityArrayList;

    invoke-virtual {v5, v4}, Lorg/apache/poi/sun/awt/util/IdentityArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    sget-object v5, Lorg/apache/poi/java/awt/Dialog;->modalDialogs:Lorg/apache/poi/sun/awt/util/IdentityArrayList;

    invoke-virtual {v5, p0}, Lorg/apache/poi/sun/awt/util/IdentityArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    if-le v4, v5, :cond_a

    goto :goto_5

    :cond_a
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_b
    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/Dialog;->blockWindows(Ljava/util/List;)V

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Window;->isModalBlocked()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Window;->updateChildrenBlocking()V

    :cond_c
    return-void
.end method

.method public final modalityPopped()V
    .locals 2

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->getDefaultToolkit()Lorg/apache/poi/java/awt/Toolkit;

    move-result-object v0

    instance-of v1, v0, Lorg/apache/poi/sun/awt/SunToolkit;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/apache/poi/sun/awt/SunToolkit;

    invoke-virtual {v0, p0}, Lorg/apache/poi/sun/awt/SunToolkit;->notifyModalityPopped(Lorg/apache/poi/java/awt/Dialog;)V

    :cond_0
    return-void
.end method

.method public final modalityPushed()V
    .locals 2

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->getDefaultToolkit()Lorg/apache/poi/java/awt/Toolkit;

    move-result-object v0

    instance-of v1, v0, Lorg/apache/poi/sun/awt/SunToolkit;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/apache/poi/sun/awt/SunToolkit;

    invoke-virtual {v0, p0}, Lorg/apache/poi/sun/awt/SunToolkit;->notifyModalityPushed(Lorg/apache/poi/java/awt/Dialog;)V

    :cond_0
    return-void
.end method

.method public paramString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lorg/apache/poi/java/awt/Container;->paramString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/poi/java/awt/Dialog;->modalityType:Lorg/apache/poi/java/awt/Dialog$ModalityType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/java/awt/Dialog;->title:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",title="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/poi/java/awt/Dialog;->title:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public setBackground(Lorg/apache/poi/java/awt/Color;)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Color;->getAlpha()I

    move-result v1

    const/16 v2, 0xff

    if-ge v1, v2, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Dialog;->isUndecorated()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/apache/poi/java/awt/IllegalComponentStateException;

    const-string v1, "The dialog is decorated"

    invoke-direct {p1, v1}, Lorg/apache/poi/java/awt/IllegalComponentStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lorg/apache/poi/java/awt/Window;->setBackground(Lorg/apache/poi/java/awt/Color;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setModal(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/java/awt/Dialog;->modal:Z

    if-eqz p1, :cond_0

    sget-object p1, Lorg/apache/poi/java/awt/Dialog;->DEFAULT_MODALITY_TYPE:Lorg/apache/poi/java/awt/Dialog$ModalityType;

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/apache/poi/java/awt/Dialog$ModalityType;->MODELESS:Lorg/apache/poi/java/awt/Dialog$ModalityType;

    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/Dialog;->setModalityType(Lorg/apache/poi/java/awt/Dialog$ModalityType;)V

    return-void
.end method

.method public setModalityType(Lorg/apache/poi/java/awt/Dialog$ModalityType;)V
    .locals 1

    if-nez p1, :cond_0

    sget-object p1, Lorg/apache/poi/java/awt/Dialog$ModalityType;->MODELESS:Lorg/apache/poi/java/awt/Dialog$ModalityType;

    :cond_0
    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->getDefaultToolkit()Lorg/apache/poi/java/awt/Toolkit;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/java/awt/Toolkit;->isModalityTypeSupported(Lorg/apache/poi/java/awt/Dialog$ModalityType;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Lorg/apache/poi/java/awt/Dialog$ModalityType;->MODELESS:Lorg/apache/poi/java/awt/Dialog$ModalityType;

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/java/awt/Dialog;->modalityType:Lorg/apache/poi/java/awt/Dialog$ModalityType;

    if-ne v0, p1, :cond_2

    return-void

    :cond_2
    invoke-direct {p0, p1}, Lorg/apache/poi/java/awt/Dialog;->checkModalityPermission(Lorg/apache/poi/java/awt/Dialog$ModalityType;)V

    iput-object p1, p0, Lorg/apache/poi/java/awt/Dialog;->modalityType:Lorg/apache/poi/java/awt/Dialog$ModalityType;

    sget-object v0, Lorg/apache/poi/java/awt/Dialog$ModalityType;->MODELESS:Lorg/apache/poi/java/awt/Dialog$ModalityType;

    if-eq p1, v0, :cond_3

    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lorg/apache/poi/java/awt/Dialog;->modal:Z

    return-void
.end method

.method public setOpacity(F)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, p1, v1

    if-gez v1, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Dialog;->isUndecorated()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/apache/poi/java/awt/IllegalComponentStateException;

    const-string v1, "The dialog is decorated"

    invoke-direct {p1, v1}, Lorg/apache/poi/java/awt/IllegalComponentStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lorg/apache/poi/java/awt/Window;->setOpacity(F)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setResizable(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lorg/apache/poi/java/awt/Dialog;->resizable:Z

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    check-cast v0, Lorg/apache/poi/java/awt/peer/DialogPeer;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/peer/DialogPeer;->setResizable(Z)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->invalidateIfValid()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setShape(Lorg/apache/poi/java/awt/Shape;)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Dialog;->isUndecorated()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/apache/poi/java/awt/IllegalComponentStateException;

    const-string v1, "The dialog is decorated"

    invoke-direct {p1, v1}, Lorg/apache/poi/java/awt/IllegalComponentStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lorg/apache/poi/java/awt/Window;->setShape(Lorg/apache/poi/java/awt/Shape;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/Dialog;->title:Ljava/lang/String;

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/apache/poi/java/awt/Dialog;->title:Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    check-cast v1, Lorg/apache/poi/java/awt/peer/DialogPeer;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lorg/apache/poi/java/awt/peer/DialogPeer;->setTitle(Ljava/lang/String;)V

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string/jumbo v1, "title"

    invoke-virtual {p0, v1, v0, p1}, Lorg/apache/poi/java/awt/Component;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setUndecorated(Z)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->isDisplayable()Z

    move-result v1

    if-nez v1, :cond_4

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Window;->getOpacity()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_2

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Window;->getShape()Lorg/apache/poi/java/awt/Shape;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Window;->getBackground()Lorg/apache/poi/java/awt/Color;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/Color;->getAlpha()I

    move-result v1

    const/16 v2, 0xff

    if-lt v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/apache/poi/java/awt/IllegalComponentStateException;

    const-string v1, "The dialog background color is not opaque"

    invoke-direct {p1, v1}, Lorg/apache/poi/java/awt/IllegalComponentStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lorg/apache/poi/java/awt/IllegalComponentStateException;

    const-string v1, "The dialog does not have a default shape"

    invoke-direct {p1, v1}, Lorg/apache/poi/java/awt/IllegalComponentStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lorg/apache/poi/java/awt/IllegalComponentStateException;

    const-string v1, "The dialog is not opaque"

    invoke-direct {p1, v1}, Lorg/apache/poi/java/awt/IllegalComponentStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    iput-boolean p1, p0, Lorg/apache/poi/java/awt/Dialog;->undecorated:Z

    monitor-exit v0

    return-void

    :cond_4
    new-instance p1, Lorg/apache/poi/java/awt/IllegalComponentStateException;

    const-string v1, "The dialog is displayable."

    invoke-direct {p1, v1}, Lorg/apache/poi/java/awt/IllegalComponentStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setVisible(Z)V
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/poi/java/awt/Window;->setVisible(Z)V

    return-void
.end method

.method public shouldBlock(Lorg/apache/poi/java/awt/Window;)Z
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->isVisible_NoClientCode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->isVisible_NoClientCode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lorg/apache/poi/java/awt/Window;->isInShow:Z

    if-eqz v0, :cond_d

    :cond_0
    iget-boolean v0, p0, Lorg/apache/poi/java/awt/Dialog;->isInHide:Z

    if-nez v0, :cond_d

    if-eq p1, p0, :cond_d

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Dialog;->isModal_NoClientCode()Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_3

    :cond_1
    instance-of v0, p1, Lorg/apache/poi/java/awt/Dialog;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lorg/apache/poi/java/awt/Dialog;

    iget-boolean v0, v0, Lorg/apache/poi/java/awt/Dialog;->isInHide:Z

    if-eqz v0, :cond_2

    return v1

    :cond_2
    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_5

    move-object v2, p1

    :goto_1
    if-eqz v2, :cond_3

    if-eq v2, v0, :cond_3

    invoke-virtual {v2}, Lorg/apache/poi/java/awt/Component;->getParent_NoClientCode()Lorg/apache/poi/java/awt/Container;

    move-result-object v2

    goto :goto_1

    :cond_3
    if-ne v2, v0, :cond_4

    return v1

    :cond_4
    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Window;->getModalBlocker()Lorg/apache/poi/java/awt/Dialog;

    move-result-object v0

    goto :goto_0

    :cond_5
    sget-object v0, Lorg/apache/poi/java/awt/Dialog$4;->$SwitchMap$java$awt$Dialog$ModalityType:[I

    iget-object v2, p0, Lorg/apache/poi/java/awt/Dialog;->modalityType:Lorg/apache/poi/java/awt/Dialog$ModalityType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v2, :cond_9

    const/4 v2, 0x3

    if-eq v0, v2, :cond_7

    const/4 v2, 0x4

    if-eq v0, v2, :cond_6

    return v1

    :cond_6
    sget-object v0, Lorg/apache/poi/java/awt/Dialog$ModalExclusionType;->TOOLKIT_EXCLUDE:Lorg/apache/poi/java/awt/Dialog$ModalExclusionType;

    invoke-virtual {p1, v0}, Lorg/apache/poi/java/awt/Window;->isModalExcluded(Lorg/apache/poi/java/awt/Dialog$ModalExclusionType;)Z

    move-result p1

    xor-int/2addr p1, v3

    return p1

    :cond_7
    sget-object v0, Lorg/apache/poi/java/awt/Dialog$ModalExclusionType;->APPLICATION_EXCLUDE:Lorg/apache/poi/java/awt/Dialog$ModalExclusionType;

    invoke-virtual {p1, v0}, Lorg/apache/poi/java/awt/Window;->isModalExcluded(Lorg/apache/poi/java/awt/Dialog$ModalExclusionType;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->appContext:Lorg/apache/poi/sun/awt/AppContext;

    iget-object p1, p1, Lorg/apache/poi/java/awt/Component;->appContext:Lorg/apache/poi/sun/awt/AppContext;

    if-ne v0, p1, :cond_8

    move v1, v3

    :cond_8
    return v1

    :cond_9
    sget-object v0, Lorg/apache/poi/java/awt/Dialog$ModalExclusionType;->APPLICATION_EXCLUDE:Lorg/apache/poi/java/awt/Dialog$ModalExclusionType;

    invoke-virtual {p1, v0}, Lorg/apache/poi/java/awt/Window;->isModalExcluded(Lorg/apache/poi/java/awt/Dialog$ModalExclusionType;)Z

    move-result v0

    if-eqz v0, :cond_c

    move-object v0, p0

    :goto_2
    if-eqz v0, :cond_a

    if-eq v0, p1, :cond_a

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Component;->getParent_NoClientCode()Lorg/apache/poi/java/awt/Container;

    move-result-object v0

    goto :goto_2

    :cond_a
    if-ne v0, p1, :cond_b

    move v1, v3

    :cond_b
    return v1

    :cond_c
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Window;->getDocumentRoot()Lorg/apache/poi/java/awt/Window;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Window;->getDocumentRoot()Lorg/apache/poi/java/awt/Window;

    move-result-object p1

    if-ne v0, p1, :cond_d

    move v1, v3

    :cond_d
    :goto_3
    return v1
.end method

.method public show()V
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/Dialog;->initialized:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/java/awt/Window;->beforeFirstShow:Z

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Dialog;->isModal()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-direct {p0, v1, v1}, Lorg/apache/poi/java/awt/Dialog;->conditionalShow(Lorg/apache/poi/java/awt/Component;Ljava/util/concurrent/atomic/AtomicLong;)Z

    goto/16 :goto_3

    :cond_0
    invoke-static {}, Lorg/apache/poi/sun/awt/AppContext;->getAppContext()Lorg/apache/poi/sun/awt/AppContext;

    move-result-object v0

    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Window;->getMostRecentFocusOwner()Lorg/apache/poi/java/awt/Component;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-direct {p0, v3, v2}, Lorg/apache/poi/java/awt/Dialog;->conditionalShow(Lorg/apache/poi/java/awt/Component;Ljava/util/concurrent/atomic/AtomicLong;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {p0}, Lorg/apache/poi/java/awt/ModalEventFilter;->createFilterForDialog(Lorg/apache/poi/java/awt/Dialog;)Lorg/apache/poi/java/awt/ModalEventFilter;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/poi/java/awt/Dialog;->modalFilter:Lorg/apache/poi/java/awt/ModalEventFilter;

    new-instance v4, Lorg/apache/poi/java/awt/Dialog$1;

    invoke-direct {v4, p0}, Lorg/apache/poi/java/awt/Dialog$1;-><init>(Lorg/apache/poi/java/awt/Dialog;)V

    iget-object v5, p0, Lorg/apache/poi/java/awt/Dialog;->modalityType:Lorg/apache/poi/java/awt/Dialog$ModalityType;

    sget-object v6, Lorg/apache/poi/java/awt/Dialog$ModalityType;->TOOLKIT_MODAL:Lorg/apache/poi/java/awt/Dialog$ModalityType;

    if-ne v5, v6, :cond_2

    invoke-static {}, Lorg/apache/poi/sun/awt/AppContext;->getAppContexts()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/poi/sun/awt/AppContext;

    if-ne v6, v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v7, Lorg/apache/poi/sun/awt/AppContext;->EVENT_QUEUE_KEY:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Lorg/apache/poi/sun/awt/AppContext;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/poi/java/awt/EventQueue;

    new-instance v7, Lorg/apache/poi/java/awt/Dialog$2;

    invoke-direct {v7, p0}, Lorg/apache/poi/java/awt/Dialog$2;-><init>(Lorg/apache/poi/java/awt/Dialog;)V

    new-instance v8, Lorg/apache/poi/java/awt/event/InvocationEvent;

    invoke-direct {v8, p0, v7}, Lorg/apache/poi/java/awt/event/InvocationEvent;-><init>(Ljava/lang/Object;Ljava/lang/Runnable;)V

    invoke-virtual {v6, v8}, Lorg/apache/poi/java/awt/EventQueue;->postEvent(Lorg/apache/poi/java/awt/AWTEvent;)V

    invoke-virtual {v6}, Lorg/apache/poi/java/awt/EventQueue;->getDispatchThread()Lorg/apache/poi/java/awt/EventDispatchThread;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/poi/java/awt/Dialog;->modalFilter:Lorg/apache/poi/java/awt/ModalEventFilter;

    invoke-virtual {v6, v7}, Lorg/apache/poi/java/awt/EventDispatchThread;->addEventFilter(Lorg/apache/poi/java/awt/EventFilter;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Dialog;->modalityPushed()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance v5, Lorg/apache/poi/java/awt/Dialog$3;

    invoke-direct {v5, p0}, Lorg/apache/poi/java/awt/Dialog$3;-><init>(Lorg/apache/poi/java/awt/Dialog;)V

    invoke-static {v5}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/java/awt/EventQueue;

    iget-object v6, p0, Lorg/apache/poi/java/awt/Dialog;->modalFilter:Lorg/apache/poi/java/awt/ModalEventFilter;

    const-wide/16 v7, 0x0

    invoke-virtual {v5, v4, v6, v7, v8}, Lorg/apache/poi/java/awt/EventQueue;->createSecondaryLoop(Lorg/apache/poi/java/awt/Conditional;Lorg/apache/poi/java/awt/EventFilter;J)Lorg/apache/poi/java/awt/SecondaryLoop;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/poi/java/awt/Dialog;->secondaryLoop:Lorg/apache/poi/java/awt/SecondaryLoop;

    iget-object v4, p0, Lorg/apache/poi/java/awt/Dialog;->secondaryLoop:Lorg/apache/poi/java/awt/SecondaryLoop;

    invoke-interface {v4}, Lorg/apache/poi/java/awt/SecondaryLoop;->enter()Z

    move-result v4

    if-nez v4, :cond_3

    iput-object v1, p0, Lorg/apache/poi/java/awt/Dialog;->secondaryLoop:Lorg/apache/poi/java/awt/SecondaryLoop;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    :try_start_3
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Dialog;->modalityPopped()V

    iget-object v1, p0, Lorg/apache/poi/java/awt/Dialog;->modalityType:Lorg/apache/poi/java/awt/Dialog$ModalityType;

    sget-object v4, Lorg/apache/poi/java/awt/Dialog$ModalityType;->TOOLKIT_MODAL:Lorg/apache/poi/java/awt/Dialog$ModalityType;

    if-ne v1, v4, :cond_5

    invoke-static {}, Lorg/apache/poi/sun/awt/AppContext;->getAppContexts()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/sun/awt/AppContext;

    if-ne v4, v0, :cond_4

    goto :goto_1

    :cond_4
    sget-object v5, Lorg/apache/poi/sun/awt/AppContext;->EVENT_QUEUE_KEY:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Lorg/apache/poi/sun/awt/AppContext;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/java/awt/EventQueue;

    invoke-virtual {v4}, Lorg/apache/poi/java/awt/EventQueue;->getDispatchThread()Lorg/apache/poi/java/awt/EventDispatchThread;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/poi/java/awt/Dialog;->modalFilter:Lorg/apache/poi/java/awt/ModalEventFilter;

    invoke-virtual {v4, v5}, Lorg/apache/poi/java/awt/EventDispatchThread;->removeEventFilter(Lorg/apache/poi/java/awt/EventFilter;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->windowClosingException:Ljava/lang/RuntimeException;

    if-nez v0, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->windowClosingException:Ljava/lang/RuntimeException;

    throw v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Dialog;->modalityPopped()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_7
    :goto_2
    if-eqz v3, :cond_8

    invoke-static {}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getCurrentKeyboardFocusManager()Lorg/apache/poi/java/awt/KeyboardFocusManager;

    move-result-object v0

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->dequeueKeyEvents(JLorg/apache/poi/java/awt/Component;)V

    :cond_8
    :goto_3
    return-void

    :catchall_1
    move-exception v0

    move-object v1, v3

    goto :goto_4

    :catchall_2
    move-exception v0

    :goto_4
    if-eqz v1, :cond_9

    invoke-static {}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getCurrentKeyboardFocusManager()Lorg/apache/poi/java/awt/KeyboardFocusManager;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5, v1}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->dequeueKeyEvents(JLorg/apache/poi/java/awt/Component;)V

    :cond_9
    throw v0

    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The dialog component has not been initialized properly"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toBack()V
    .locals 3

    invoke-super {p0}, Lorg/apache/poi/java/awt/Window;->toBack()V

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/Component;->visible:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/Dialog;->blockedWindows:Lorg/apache/poi/sun/awt/util/IdentityArrayList;

    invoke-virtual {v1}, Lorg/apache/poi/sun/awt/util/IdentityArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/java/awt/Window;

    invoke-virtual {v2}, Lorg/apache/poi/java/awt/Window;->toBack_NoClientCode()V

    goto :goto_0

    :cond_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_1
    return-void
.end method

.method public unblockWindow(Lorg/apache/poi/java/awt/Window;)V
    .locals 2

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Window;->isModalBlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/java/awt/Dialog;->blockedWindows:Lorg/apache/poi/sun/awt/util/IdentityArrayList;

    invoke-virtual {v0, p1}, Lorg/apache/poi/sun/awt/util/IdentityArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/java/awt/Dialog;->blockedWindows:Lorg/apache/poi/sun/awt/util/IdentityArrayList;

    invoke-virtual {v0, p1}, Lorg/apache/poi/sun/awt/util/IdentityArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, p0, v0, v1}, Lorg/apache/poi/java/awt/Window;->setModalBlocked(Lorg/apache/poi/java/awt/Dialog;ZZ)V

    :cond_0
    return-void
.end method
