.class public Lorg/apache/poi/java/awt/MenuItem;
.super Lorg/apache/poi/java/awt/MenuComponent;
.source "SourceFile"

# interfaces
.implements Ljavax/accessibility/Accessible;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/java/awt/MenuItem$AccessibleAWTMenuItem;
    }
.end annotation


# static fields
.field private static final base:Ljava/lang/String; = "menuitem"

.field private static nameCounter:I = 0x0

.field private static final serialVersionUID:J = -0x4d4c2e65962a7aL


# instance fields
.field public actionCommand:Ljava/lang/String;

.field public transient actionListener:Lorg/apache/poi/java/awt/event/ActionListener;

.field public enabled:Z

.field public eventMask:J

.field public label:Ljava/lang/String;

.field private menuItemSerializedDataVersion:I

.field private shortcut:Lorg/apache/poi/java/awt/MenuShortcut;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->loadLibraries()V

    invoke-static {}, Lorg/apache/poi/java/awt/GraphicsEnvironment;->isHeadless()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/apache/poi/java/awt/MenuItem;->initIDs()V

    :cond_0
    new-instance v0, Lorg/apache/poi/java/awt/MenuItem$1;

    invoke-direct {v0}, Lorg/apache/poi/java/awt/MenuItem$1;-><init>()V

    invoke-static {v0}, Lorg/apache/poi/sun/awt/AWTAccessor;->setMenuItemAccessor(Lorg/apache/poi/sun/awt/AWTAccessor$MenuItemAccessor;)V

    const/4 v0, 0x0

    sput v0, Lorg/apache/poi/java/awt/MenuItem;->nameCounter:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/java/awt/MenuItem;-><init>(Ljava/lang/String;Lorg/apache/poi/java/awt/MenuShortcut;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/java/awt/MenuItem;-><init>(Ljava/lang/String;Lorg/apache/poi/java/awt/MenuShortcut;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/poi/java/awt/MenuShortcut;)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/java/awt/MenuComponent;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/java/awt/MenuItem;->enabled:Z

    iput v0, p0, Lorg/apache/poi/java/awt/MenuItem;->menuItemSerializedDataVersion:I

    iput-object p1, p0, Lorg/apache/poi/java/awt/MenuItem;->label:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/poi/java/awt/MenuItem;->shortcut:Lorg/apache/poi/java/awt/MenuShortcut;

    return-void
.end method

.method public static synthetic access$000(Lorg/apache/poi/java/awt/MenuItem;)Lorg/apache/poi/java/awt/MenuShortcut;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/java/awt/MenuItem;->shortcut:Lorg/apache/poi/java/awt/MenuShortcut;

    return-object p0
.end method

.method public static synthetic access$100(Lorg/apache/poi/java/awt/MenuItem;)Z
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/java/awt/MenuItem;->isItemEnabled()Z

    move-result p0

    return p0
.end method

.method private static native initIDs()V
.end method

.method private final isItemEnabled()Z
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/MenuItem;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/MenuComponent;->getParent_NoClientCode()Lorg/apache/poi/java/awt/MenuContainer;

    move-result-object v0

    :cond_1
    instance-of v2, v0, Lorg/apache/poi/java/awt/Menu;

    const/4 v3, 0x1

    if-nez v2, :cond_2

    return v3

    :cond_2
    check-cast v0, Lorg/apache/poi/java/awt/Menu;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/MenuItem;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    invoke-virtual {v0}, Lorg/apache/poi/java/awt/MenuComponent;->getParent_NoClientCode()Lorg/apache/poi/java/awt/MenuContainer;

    move-result-object v0

    if-nez v0, :cond_1

    return v3
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    :goto_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    const-string v1, "actionL"

    if-ne v1, v0, :cond_0

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/java/awt/event/ActionListener;

    move-object v1, v0

    check-cast v1, Lorg/apache/poi/java/awt/event/ActionListener;

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/MenuItem;->addActionListener(Lorg/apache/poi/java/awt/event/ActionListener;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    iget-object v0, p0, Lorg/apache/poi/java/awt/MenuItem;->actionListener:Lorg/apache/poi/java/awt/event/ActionListener;

    const-string v1, "actionL"

    invoke-static {p1, v1, v0}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->save(Ljava/io/ObjectOutputStream;Ljava/lang/String;Ljava/util/EventListener;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
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
    iget-object v0, p0, Lorg/apache/poi/java/awt/MenuItem;->actionListener:Lorg/apache/poi/java/awt/event/ActionListener;

    invoke-static {v0, p1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->add(Lorg/apache/poi/java/awt/event/ActionListener;Lorg/apache/poi/java/awt/event/ActionListener;)Lorg/apache/poi/java/awt/event/ActionListener;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/java/awt/MenuItem;->actionListener:Lorg/apache/poi/java/awt/event/ActionListener;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/poi/java/awt/MenuComponent;->newEventsOnly:Z
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

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/MenuComponent;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/MenuComponent;->peer:Lorg/apache/poi/java/awt/peer/MenuComponentPeer;

    if-nez v1, :cond_0

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->getDefaultToolkit()Lorg/apache/poi/java/awt/Toolkit;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/apache/poi/java/awt/Toolkit;->createMenuItem(Lorg/apache/poi/java/awt/MenuItem;)Lorg/apache/poi/java/awt/peer/MenuItemPeer;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/java/awt/MenuComponent;->peer:Lorg/apache/poi/java/awt/peer/MenuComponentPeer;

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

.method public constructComponentName()Ljava/lang/String;
    .locals 4

    const-class v0, Lorg/apache/poi/java/awt/MenuItem;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "menuitem"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lorg/apache/poi/java/awt/MenuItem;->nameCounter:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lorg/apache/poi/java/awt/MenuItem;->nameCounter:I

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

.method public deleteShortcut()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/java/awt/MenuItem;->shortcut:Lorg/apache/poi/java/awt/MenuShortcut;

    iget-object v0, p0, Lorg/apache/poi/java/awt/MenuComponent;->peer:Lorg/apache/poi/java/awt/peer/MenuComponentPeer;

    check-cast v0, Lorg/apache/poi/java/awt/peer/MenuItemPeer;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/apache/poi/java/awt/MenuItem;->label:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/apache/poi/java/awt/peer/MenuItemPeer;->setLabel(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public deleteShortcut(Lorg/apache/poi/java/awt/MenuShortcut;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/MenuItem;->shortcut:Lorg/apache/poi/java/awt/MenuShortcut;

    invoke-virtual {p1, v0}, Lorg/apache/poi/java/awt/MenuShortcut;->equals(Lorg/apache/poi/java/awt/MenuShortcut;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/poi/java/awt/MenuItem;->shortcut:Lorg/apache/poi/java/awt/MenuShortcut;

    iget-object p1, p0, Lorg/apache/poi/java/awt/MenuComponent;->peer:Lorg/apache/poi/java/awt/peer/MenuComponentPeer;

    check-cast p1, Lorg/apache/poi/java/awt/peer/MenuItemPeer;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/java/awt/MenuItem;->label:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/apache/poi/java/awt/peer/MenuItemPeer;->setLabel(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized disable()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lorg/apache/poi/java/awt/MenuItem;->enabled:Z

    iget-object v1, p0, Lorg/apache/poi/java/awt/MenuComponent;->peer:Lorg/apache/poi/java/awt/peer/MenuComponentPeer;

    check-cast v1, Lorg/apache/poi/java/awt/peer/MenuItemPeer;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lorg/apache/poi/java/awt/peer/MenuItemPeer;->setEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final disableEvents(J)V
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/java/awt/MenuItem;->eventMask:J

    not-long p1, p1

    and-long/2addr p1, v0

    iput-wide p1, p0, Lorg/apache/poi/java/awt/MenuItem;->eventMask:J

    return-void
.end method

.method public doMenuEvent(JI)V
    .locals 9

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->getEventQueue()Lorg/apache/poi/java/awt/EventQueue;

    move-result-object v0

    new-instance v8, Lorg/apache/poi/java/awt/event/ActionEvent;

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/MenuItem;->getActionCommand()Ljava/lang/String;

    move-result-object v4

    const/16 v3, 0x3e9

    move-object v1, v8

    move-object v2, p0

    move-wide v5, p1

    move v7, p3

    invoke-direct/range {v1 .. v7}, Lorg/apache/poi/java/awt/event/ActionEvent;-><init>(Ljava/lang/Object;ILjava/lang/String;JI)V

    invoke-virtual {v0, v8}, Lorg/apache/poi/java/awt/EventQueue;->postEvent(Lorg/apache/poi/java/awt/AWTEvent;)V

    return-void
.end method

.method public declared-synchronized enable()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/apache/poi/java/awt/MenuItem;->enabled:Z

    iget-object v1, p0, Lorg/apache/poi/java/awt/MenuComponent;->peer:Lorg/apache/poi/java/awt/peer/MenuComponentPeer;

    check-cast v1, Lorg/apache/poi/java/awt/peer/MenuItemPeer;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lorg/apache/poi/java/awt/peer/MenuItemPeer;->setEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public enable(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/MenuItem;->enable()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/MenuItem;->disable()V

    :goto_0
    return-void
.end method

.method public final enableEvents(J)V
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/java/awt/MenuItem;->eventMask:J

    or-long/2addr p1, v0

    iput-wide p1, p0, Lorg/apache/poi/java/awt/MenuItem;->eventMask:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/poi/java/awt/MenuComponent;->newEventsOnly:Z

    return-void
.end method

.method public eventEnabled(Lorg/apache/poi/java/awt/AWTEvent;)Z
    .locals 4

    iget v0, p1, Lorg/apache/poi/java/awt/AWTEvent;->id:I

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_2

    iget-wide v0, p0, Lorg/apache/poi/java/awt/MenuItem;->eventMask:J

    const-wide/16 v2, 0x80

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/apache/poi/java/awt/MenuItem;->actionListener:Lorg/apache/poi/java/awt/event/ActionListener;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    invoke-super {p0, p1}, Lorg/apache/poi/java/awt/MenuComponent;->eventEnabled(Lorg/apache/poi/java/awt/AWTEvent;)Z

    move-result p1

    return p1
.end method

.method public getAccessibleContext()Ljavax/accessibility/AccessibleContext;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/MenuComponent;->accessibleContext:Ljavax/accessibility/AccessibleContext;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/poi/java/awt/MenuItem$AccessibleAWTMenuItem;

    invoke-direct {v0, p0}, Lorg/apache/poi/java/awt/MenuItem$AccessibleAWTMenuItem;-><init>(Lorg/apache/poi/java/awt/MenuItem;)V

    iput-object v0, p0, Lorg/apache/poi/java/awt/MenuComponent;->accessibleContext:Ljavax/accessibility/AccessibleContext;

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/MenuComponent;->accessibleContext:Ljavax/accessibility/AccessibleContext;

    return-object v0
.end method

.method public getActionCommand()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/MenuItem;->getActionCommandImpl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getActionCommandImpl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/MenuItem;->actionCommand:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/java/awt/MenuItem;->label:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public declared-synchronized getActionListeners()[Lorg/apache/poi/java/awt/event/ActionListener;
    .locals 1

    monitor-enter p0

    :try_start_0
    const-class v0, Lorg/apache/poi/java/awt/event/ActionListener;

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/MenuItem;->getListeners(Ljava/lang/Class;)[Ljava/util/EventListener;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/java/awt/event/ActionListener;

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

.method public getLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/MenuItem;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getListeners(Ljava/lang/Class;)[Ljava/util/EventListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/EventListener;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    const-class v0, Lorg/apache/poi/java/awt/event/ActionListener;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/java/awt/MenuItem;->actionListener:Lorg/apache/poi/java/awt/event/ActionListener;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0, p1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->getListeners(Ljava/util/EventListener;Ljava/lang/Class;)[Ljava/util/EventListener;

    move-result-object p1

    return-object p1
.end method

.method public getShortcut()Lorg/apache/poi/java/awt/MenuShortcut;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/MenuItem;->shortcut:Lorg/apache/poi/java/awt/MenuShortcut;

    return-object v0
.end method

.method public getShortcutMenuItem(Lorg/apache/poi/java/awt/MenuShortcut;)Lorg/apache/poi/java/awt/MenuItem;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/MenuItem;->shortcut:Lorg/apache/poi/java/awt/MenuShortcut;

    invoke-virtual {p1, v0}, Lorg/apache/poi/java/awt/MenuShortcut;->equals(Lorg/apache/poi/java/awt/MenuShortcut;)Z

    move-result p1

    if-eqz p1, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public handleShortcut(Lorg/apache/poi/java/awt/event/KeyEvent;)Z
    .locals 6

    new-instance v0, Lorg/apache/poi/java/awt/MenuShortcut;

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/event/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/event/KeyEvent;->getModifiers()I

    move-result v2

    const/4 v3, 0x1

    and-int/2addr v2, v3

    const/4 v4, 0x0

    if-lez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    invoke-direct {v0, v1, v2}, Lorg/apache/poi/java/awt/MenuShortcut;-><init>(IZ)V

    new-instance v1, Lorg/apache/poi/java/awt/MenuShortcut;

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/event/KeyEvent;->getExtendedKeyCode()I

    move-result v2

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/event/KeyEvent;->getModifiers()I

    move-result v5

    and-int/2addr v5, v3

    if-lez v5, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    move v5, v4

    :goto_1
    invoke-direct {v1, v2, v5}, Lorg/apache/poi/java/awt/MenuShortcut;-><init>(IZ)V

    iget-object v2, p0, Lorg/apache/poi/java/awt/MenuItem;->shortcut:Lorg/apache/poi/java/awt/MenuShortcut;

    invoke-virtual {v0, v2}, Lorg/apache/poi/java/awt/MenuShortcut;->equals(Lorg/apache/poi/java/awt/MenuShortcut;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/poi/java/awt/MenuItem;->shortcut:Lorg/apache/poi/java/awt/MenuShortcut;

    invoke-virtual {v1, v0}, Lorg/apache/poi/java/awt/MenuShortcut;->equals(Lorg/apache/poi/java/awt/MenuShortcut;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    invoke-direct {p0}, Lorg/apache/poi/java/awt/MenuItem;->isItemEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/event/KeyEvent;->getID()I

    move-result v0

    const/16 v1, 0x191

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/event/KeyEvent;->getWhen()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/event/KeyEvent;->getModifiers()I

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/poi/java/awt/MenuItem;->doMenuEvent(JI)V

    :cond_3
    return v3

    :cond_4
    return v4
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/MenuItem;->enabled:Z

    return v0
.end method

.method public paramString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ",label="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/poi/java/awt/MenuItem;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/java/awt/MenuItem;->shortcut:Lorg/apache/poi/java/awt/MenuShortcut;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",shortcut="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/poi/java/awt/MenuItem;->shortcut:Lorg/apache/poi/java/awt/MenuShortcut;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lorg/apache/poi/java/awt/MenuComponent;->paramString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public processActionEvent(Lorg/apache/poi/java/awt/event/ActionEvent;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/MenuItem;->actionListener:Lorg/apache/poi/java/awt/event/ActionListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/ActionListener;->actionPerformed(Lorg/apache/poi/java/awt/event/ActionEvent;)V

    :cond_0
    return-void
.end method

.method public processEvent(Lorg/apache/poi/java/awt/AWTEvent;)V
    .locals 1

    instance-of v0, p1, Lorg/apache/poi/java/awt/event/ActionEvent;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/apache/poi/java/awt/event/ActionEvent;

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/MenuItem;->processActionEvent(Lorg/apache/poi/java/awt/event/ActionEvent;)V

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
    iget-object v0, p0, Lorg/apache/poi/java/awt/MenuItem;->actionListener:Lorg/apache/poi/java/awt/event/ActionListener;

    invoke-static {v0, p1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->remove(Lorg/apache/poi/java/awt/event/ActionListener;Lorg/apache/poi/java/awt/event/ActionListener;)Lorg/apache/poi/java/awt/event/ActionListener;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/java/awt/MenuItem;->actionListener:Lorg/apache/poi/java/awt/event/ActionListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setActionCommand(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/java/awt/MenuItem;->actionCommand:Ljava/lang/String;

    return-void
.end method

.method public declared-synchronized setEnabled(Z)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/MenuItem;->enable(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setLabel(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/apache/poi/java/awt/MenuItem;->label:Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/poi/java/awt/MenuComponent;->peer:Lorg/apache/poi/java/awt/peer/MenuComponentPeer;

    check-cast v0, Lorg/apache/poi/java/awt/peer/MenuItemPeer;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/peer/MenuItemPeer;->setLabel(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setShortcut(Lorg/apache/poi/java/awt/MenuShortcut;)V
    .locals 1

    iput-object p1, p0, Lorg/apache/poi/java/awt/MenuItem;->shortcut:Lorg/apache/poi/java/awt/MenuShortcut;

    iget-object p1, p0, Lorg/apache/poi/java/awt/MenuComponent;->peer:Lorg/apache/poi/java/awt/peer/MenuComponentPeer;

    check-cast p1, Lorg/apache/poi/java/awt/peer/MenuItemPeer;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/java/awt/MenuItem;->label:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/apache/poi/java/awt/peer/MenuItemPeer;->setLabel(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
