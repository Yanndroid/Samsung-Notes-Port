.class public Lorg/apache/poi/java/awt/MenuBar;
.super Lorg/apache/poi/java/awt/MenuComponent;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/java/awt/MenuContainer;
.implements Ljavax/accessibility/Accessible;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/java/awt/MenuBar$AccessibleAWTMenuBar;
    }
.end annotation


# static fields
.field private static final base:Ljava/lang/String; = "menubar"

.field private static nameCounter:I = 0x0

.field private static final serialVersionUID:J = -0x446c0b1ee55e82dcL


# instance fields
.field public helpMenu:Lorg/apache/poi/java/awt/Menu;

.field private menuBarSerializedDataVersion:I

.field public menus:Ljava/util/Vector;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->loadLibraries()V

    invoke-static {}, Lorg/apache/poi/java/awt/GraphicsEnvironment;->isHeadless()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/apache/poi/java/awt/MenuBar;->initIDs()V

    :cond_0
    new-instance v0, Lorg/apache/poi/java/awt/MenuBar$1;

    invoke-direct {v0}, Lorg/apache/poi/java/awt/MenuBar$1;-><init>()V

    invoke-static {v0}, Lorg/apache/poi/sun/awt/AWTAccessor;->setMenuBarAccessor(Lorg/apache/poi/sun/awt/AWTAccessor$MenuBarAccessor;)V

    const/4 v0, 0x0

    sput v0, Lorg/apache/poi/java/awt/MenuBar;->nameCounter:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/java/awt/MenuComponent;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/java/awt/MenuBar;->menus:Ljava/util/Vector;

    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/poi/java/awt/MenuBar;->menuBarSerializedDataVersion:I

    return-void
.end method

.method private static native initIDs()V
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/MenuBar;->menus:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/java/awt/MenuBar;->menus:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/java/awt/Menu;

    iput-object p0, v0, Lorg/apache/poi/java/awt/MenuComponent;->parent:Lorg/apache/poi/java/awt/MenuContainer;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    return-void
.end method


# virtual methods
.method public add(Lorg/apache/poi/java/awt/Menu;)Lorg/apache/poi/java/awt/Menu;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/MenuComponent;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p1, Lorg/apache/poi/java/awt/MenuComponent;->parent:Lorg/apache/poi/java/awt/MenuContainer;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lorg/apache/poi/java/awt/MenuContainer;->remove(Lorg/apache/poi/java/awt/MenuComponent;)V

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/MenuBar;->menus:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iput-object p0, p1, Lorg/apache/poi/java/awt/MenuComponent;->parent:Lorg/apache/poi/java/awt/MenuContainer;

    iget-object v1, p0, Lorg/apache/poi/java/awt/MenuComponent;->peer:Lorg/apache/poi/java/awt/peer/MenuComponentPeer;

    check-cast v1, Lorg/apache/poi/java/awt/peer/MenuBarPeer;

    if-eqz v1, :cond_2

    iget-object v2, p1, Lorg/apache/poi/java/awt/MenuComponent;->peer:Lorg/apache/poi/java/awt/peer/MenuComponentPeer;

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Menu;->addNotify()V

    :cond_1
    invoke-interface {v1, p1}, Lorg/apache/poi/java/awt/peer/MenuBarPeer;->addMenu(Lorg/apache/poi/java/awt/Menu;)V

    :cond_2
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public addNotify()V
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/MenuComponent;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/MenuComponent;->peer:Lorg/apache/poi/java/awt/peer/MenuComponentPeer;

    if-nez v1, :cond_0

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->getDefaultToolkit()Lorg/apache/poi/java/awt/Toolkit;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/apache/poi/java/awt/Toolkit;->createMenuBar(Lorg/apache/poi/java/awt/MenuBar;)Lorg/apache/poi/java/awt/peer/MenuBarPeer;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/java/awt/MenuComponent;->peer:Lorg/apache/poi/java/awt/peer/MenuComponentPeer;

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/MenuBar;->getMenuCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Lorg/apache/poi/java/awt/MenuBar;->getMenu(I)Lorg/apache/poi/java/awt/Menu;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/java/awt/Menu;->addNotify()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

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

.method public constructComponentName()Ljava/lang/String;
    .locals 4

    const-class v0, Lorg/apache/poi/java/awt/MenuBar;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "menubar"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lorg/apache/poi/java/awt/MenuBar;->nameCounter:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lorg/apache/poi/java/awt/MenuBar;->nameCounter:I

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

.method public countMenus()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/MenuBar;->getMenuCountImpl()I

    move-result v0

    return v0
.end method

.method public deleteShortcut(Lorg/apache/poi/java/awt/MenuShortcut;)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/MenuBar;->getMenuCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lorg/apache/poi/java/awt/MenuBar;->getMenu(I)Lorg/apache/poi/java/awt/Menu;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/apache/poi/java/awt/Menu;->deleteShortcut(Lorg/apache/poi/java/awt/MenuShortcut;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getAccessibleChildIndex(Lorg/apache/poi/java/awt/MenuComponent;)I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/MenuBar;->menus:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getAccessibleContext()Ljavax/accessibility/AccessibleContext;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/MenuComponent;->accessibleContext:Ljavax/accessibility/AccessibleContext;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/poi/java/awt/MenuBar$AccessibleAWTMenuBar;

    invoke-direct {v0, p0}, Lorg/apache/poi/java/awt/MenuBar$AccessibleAWTMenuBar;-><init>(Lorg/apache/poi/java/awt/MenuBar;)V

    iput-object v0, p0, Lorg/apache/poi/java/awt/MenuComponent;->accessibleContext:Ljavax/accessibility/AccessibleContext;

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/MenuComponent;->accessibleContext:Ljavax/accessibility/AccessibleContext;

    return-object v0
.end method

.method public getHelpMenu()Lorg/apache/poi/java/awt/Menu;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/MenuBar;->helpMenu:Lorg/apache/poi/java/awt/Menu;

    return-object v0
.end method

.method public getMenu(I)Lorg/apache/poi/java/awt/Menu;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/MenuBar;->getMenuImpl(I)Lorg/apache/poi/java/awt/Menu;

    move-result-object p1

    return-object p1
.end method

.method public getMenuCount()I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/MenuBar;->countMenus()I

    move-result v0

    return v0
.end method

.method public final getMenuCountImpl()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/MenuBar;->menus:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public final getMenuImpl(I)Lorg/apache/poi/java/awt/Menu;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/MenuBar;->menus:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/java/awt/Menu;

    return-object p1
.end method

.method public getShortcutMenuItem(Lorg/apache/poi/java/awt/MenuShortcut;)Lorg/apache/poi/java/awt/MenuItem;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/MenuBar;->getMenuCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lorg/apache/poi/java/awt/MenuBar;->getMenu(I)Lorg/apache/poi/java/awt/Menu;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/apache/poi/java/awt/Menu;->getShortcutMenuItem(Lorg/apache/poi/java/awt/MenuShortcut;)Lorg/apache/poi/java/awt/MenuItem;

    move-result-object v2

    if-eqz v2, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public handleShortcut(Lorg/apache/poi/java/awt/event/KeyEvent;)Z
    .locals 4

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/event/KeyEvent;->getID()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x191

    if-eq v0, v2, :cond_0

    const/16 v2, 0x192

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->getDefaultToolkit()Lorg/apache/poi/java/awt/Toolkit;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Toolkit;->getMenuShortcutKeyMask()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/event/KeyEvent;->getModifiers()I

    move-result v2

    and-int/2addr v0, v2

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/MenuBar;->getMenuCount()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    invoke-virtual {p0, v2}, Lorg/apache/poi/java/awt/MenuBar;->getMenu(I)Lorg/apache/poi/java/awt/Menu;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/apache/poi/java/awt/Menu;->handleShortcut(Lorg/apache/poi/java/awt/event/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public remove(I)V
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/MenuComponent;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/MenuBar;->getMenu(I)Lorg/apache/poi/java/awt/Menu;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/java/awt/MenuBar;->menus:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->removeElementAt(I)V

    iget-object v2, p0, Lorg/apache/poi/java/awt/MenuComponent;->peer:Lorg/apache/poi/java/awt/peer/MenuComponentPeer;

    check-cast v2, Lorg/apache/poi/java/awt/peer/MenuBarPeer;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/Menu;->removeNotify()V

    const/4 v3, 0x0

    iput-object v3, v1, Lorg/apache/poi/java/awt/MenuComponent;->parent:Lorg/apache/poi/java/awt/MenuContainer;

    invoke-interface {v2, p1}, Lorg/apache/poi/java/awt/peer/MenuBarPeer;->delMenu(I)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public remove(Lorg/apache/poi/java/awt/MenuComponent;)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/MenuComponent;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/MenuBar;->menus:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/MenuBar;->remove(I)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeNotify()V
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/MenuComponent;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/MenuBar;->getMenuCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p0, v2}, Lorg/apache/poi/java/awt/MenuBar;->getMenu(I)Lorg/apache/poi/java/awt/Menu;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/java/awt/Menu;->removeNotify()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lorg/apache/poi/java/awt/MenuComponent;->removeNotify()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setHelpMenu(Lorg/apache/poi/java/awt/Menu;)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/MenuComponent;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/MenuBar;->helpMenu:Lorg/apache/poi/java/awt/Menu;

    if-ne v1, p1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Lorg/apache/poi/java/awt/MenuBar;->remove(Lorg/apache/poi/java/awt/MenuComponent;)V

    :cond_1
    iget-object v1, p1, Lorg/apache/poi/java/awt/MenuComponent;->parent:Lorg/apache/poi/java/awt/MenuContainer;

    if-eq v1, p0, :cond_2

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/MenuBar;->add(Lorg/apache/poi/java/awt/Menu;)Lorg/apache/poi/java/awt/Menu;

    :cond_2
    iput-object p1, p0, Lorg/apache/poi/java/awt/MenuBar;->helpMenu:Lorg/apache/poi/java/awt/Menu;

    const/4 v1, 0x1

    iput-boolean v1, p1, Lorg/apache/poi/java/awt/Menu;->isHelpMenu:Z

    iput-object p0, p1, Lorg/apache/poi/java/awt/MenuComponent;->parent:Lorg/apache/poi/java/awt/MenuContainer;

    iget-object v1, p0, Lorg/apache/poi/java/awt/MenuComponent;->peer:Lorg/apache/poi/java/awt/peer/MenuComponentPeer;

    check-cast v1, Lorg/apache/poi/java/awt/peer/MenuBarPeer;

    if-eqz v1, :cond_4

    iget-object v2, p1, Lorg/apache/poi/java/awt/MenuComponent;->peer:Lorg/apache/poi/java/awt/peer/MenuComponentPeer;

    if-nez v2, :cond_3

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Menu;->addNotify()V

    :cond_3
    invoke-interface {v1, p1}, Lorg/apache/poi/java/awt/peer/MenuBarPeer;->addHelpMenu(Lorg/apache/poi/java/awt/Menu;)V

    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public declared-synchronized shortcuts()Ljava/util/Enumeration;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Lorg/apache/poi/java/awt/MenuShortcut;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/MenuBar;->getMenuCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Lorg/apache/poi/java/awt/MenuBar;->getMenu(I)Lorg/apache/poi/java/awt/Menu;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/java/awt/Menu;->shortcuts()Ljava/util/Enumeration;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

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
