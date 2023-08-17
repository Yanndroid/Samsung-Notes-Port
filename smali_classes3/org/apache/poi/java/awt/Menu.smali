.class public Lorg/apache/poi/java/awt/Menu;
.super Lorg/apache/poi/java/awt/MenuItem;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/java/awt/MenuContainer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/java/awt/Menu$AccessibleAWTMenu;
    }
.end annotation


# static fields
.field private static final base:Ljava/lang/String; = "menu"

.field private static nameCounter:I = 0x0

.field private static final serialVersionUID:J = -0x7a41ee1f131d8688L


# instance fields
.field public isHelpMenu:Z

.field public items:Ljava/util/Vector;

.field private menuSerializedDataVersion:I

.field public tearOff:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->loadLibraries()V

    invoke-static {}, Lorg/apache/poi/java/awt/GraphicsEnvironment;->isHeadless()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/apache/poi/java/awt/Menu;->initIDs()V

    :cond_0
    new-instance v0, Lorg/apache/poi/java/awt/Menu$1;

    invoke-direct {v0}, Lorg/apache/poi/java/awt/Menu$1;-><init>()V

    invoke-static {v0}, Lorg/apache/poi/sun/awt/AWTAccessor;->setMenuAccessor(Lorg/apache/poi/sun/awt/AWTAccessor$MenuAccessor;)V

    const/4 v0, 0x0

    sput v0, Lorg/apache/poi/java/awt/Menu;->nameCounter:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/java/awt/Menu;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/java/awt/Menu;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/java/awt/MenuItem;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/java/awt/Menu;->items:Ljava/util/Vector;

    const/4 p1, 0x1

    iput p1, p0, Lorg/apache/poi/java/awt/Menu;->menuSerializedDataVersion:I

    iput-boolean p2, p0, Lorg/apache/poi/java/awt/Menu;->tearOff:Z

    return-void
.end method

.method private static native initIDs()V
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/Menu;->items:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/java/awt/Menu;->items:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/java/awt/MenuItem;

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
.method public add(Lorg/apache/poi/java/awt/MenuItem;)Lorg/apache/poi/java/awt/MenuItem;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/MenuComponent;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p1, Lorg/apache/poi/java/awt/MenuComponent;->parent:Lorg/apache/poi/java/awt/MenuContainer;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lorg/apache/poi/java/awt/MenuContainer;->remove(Lorg/apache/poi/java/awt/MenuComponent;)V

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/Menu;->items:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iput-object p0, p1, Lorg/apache/poi/java/awt/MenuComponent;->parent:Lorg/apache/poi/java/awt/MenuContainer;

    iget-object v1, p0, Lorg/apache/poi/java/awt/MenuComponent;->peer:Lorg/apache/poi/java/awt/peer/MenuComponentPeer;

    check-cast v1, Lorg/apache/poi/java/awt/peer/MenuPeer;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/MenuItem;->addNotify()V

    invoke-interface {v1, p1}, Lorg/apache/poi/java/awt/peer/MenuPeer;->addItem(Lorg/apache/poi/java/awt/MenuItem;)V

    :cond_1
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public add(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lorg/apache/poi/java/awt/MenuItem;

    invoke-direct {v0, p1}, Lorg/apache/poi/java/awt/MenuItem;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/Menu;->add(Lorg/apache/poi/java/awt/MenuItem;)Lorg/apache/poi/java/awt/MenuItem;

    return-void
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

    invoke-virtual {v1, p0}, Lorg/apache/poi/java/awt/Toolkit;->createMenu(Lorg/apache/poi/java/awt/Menu;)Lorg/apache/poi/java/awt/peer/MenuPeer;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/java/awt/MenuComponent;->peer:Lorg/apache/poi/java/awt/peer/MenuComponentPeer;

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Menu;->getItemCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Lorg/apache/poi/java/awt/Menu;->getItem(I)Lorg/apache/poi/java/awt/MenuItem;

    move-result-object v3

    iput-object p0, v3, Lorg/apache/poi/java/awt/MenuComponent;->parent:Lorg/apache/poi/java/awt/MenuContainer;

    invoke-virtual {v3}, Lorg/apache/poi/java/awt/MenuItem;->addNotify()V

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

.method public addSeparator()V
    .locals 1

    const-string v0, "-"

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/Menu;->add(Ljava/lang/String;)V

    return-void
.end method

.method public constructComponentName()Ljava/lang/String;
    .locals 4

    const-class v0, Lorg/apache/poi/java/awt/Menu;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "menu"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lorg/apache/poi/java/awt/Menu;->nameCounter:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lorg/apache/poi/java/awt/Menu;->nameCounter:I

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

.method public countItems()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Menu;->countItemsImpl()I

    move-result v0

    return v0
.end method

.method public final countItemsImpl()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Menu;->items:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public deleteShortcut(Lorg/apache/poi/java/awt/MenuShortcut;)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Menu;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lorg/apache/poi/java/awt/Menu;->getItem(I)Lorg/apache/poi/java/awt/MenuItem;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/apache/poi/java/awt/MenuItem;->deleteShortcut(Lorg/apache/poi/java/awt/MenuShortcut;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getAccessibleChildIndex(Lorg/apache/poi/java/awt/MenuComponent;)I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Menu;->items:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getAccessibleContext()Ljavax/accessibility/AccessibleContext;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/MenuComponent;->accessibleContext:Ljavax/accessibility/AccessibleContext;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/poi/java/awt/Menu$AccessibleAWTMenu;

    invoke-direct {v0, p0}, Lorg/apache/poi/java/awt/Menu$AccessibleAWTMenu;-><init>(Lorg/apache/poi/java/awt/Menu;)V

    iput-object v0, p0, Lorg/apache/poi/java/awt/MenuComponent;->accessibleContext:Ljavax/accessibility/AccessibleContext;

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/MenuComponent;->accessibleContext:Ljavax/accessibility/AccessibleContext;

    return-object v0
.end method

.method public getItem(I)Lorg/apache/poi/java/awt/MenuItem;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/Menu;->getItemImpl(I)Lorg/apache/poi/java/awt/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Menu;->countItems()I

    move-result v0

    return v0
.end method

.method public final getItemImpl(I)Lorg/apache/poi/java/awt/MenuItem;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Menu;->items:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/java/awt/MenuItem;

    return-object p1
.end method

.method public getShortcutMenuItem(Lorg/apache/poi/java/awt/MenuShortcut;)Lorg/apache/poi/java/awt/MenuItem;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Menu;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lorg/apache/poi/java/awt/Menu;->getItem(I)Lorg/apache/poi/java/awt/MenuItem;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/apache/poi/java/awt/MenuItem;->getShortcutMenuItem(Lorg/apache/poi/java/awt/MenuShortcut;)Lorg/apache/poi/java/awt/MenuItem;

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

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Menu;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Lorg/apache/poi/java/awt/Menu;->getItem(I)Lorg/apache/poi/java/awt/MenuItem;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/apache/poi/java/awt/MenuItem;->handleShortcut(Lorg/apache/poi/java/awt/event/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public insert(Ljava/lang/String;I)V
    .locals 1

    new-instance v0, Lorg/apache/poi/java/awt/MenuItem;

    invoke-direct {v0, p1}, Lorg/apache/poi/java/awt/MenuItem;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lorg/apache/poi/java/awt/Menu;->insert(Lorg/apache/poi/java/awt/MenuItem;I)V

    return-void
.end method

.method public insert(Lorg/apache/poi/java/awt/MenuItem;I)V
    .locals 5

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/MenuComponent;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    if-ltz p2, :cond_2

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Menu;->getItemCount()I

    move-result v1

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    move v3, p2

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-virtual {p0, p2}, Lorg/apache/poi/java/awt/Menu;->getItem(I)Lorg/apache/poi/java/awt/MenuItem;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Lorg/apache/poi/java/awt/Menu;->remove(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/Menu;->add(Lorg/apache/poi/java/awt/MenuItem;)Lorg/apache/poi/java/awt/MenuItem;

    const/4 p1, 0x0

    :goto_1
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result p2

    if-ge p1, p2, :cond_1

    invoke-virtual {v2, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/poi/java/awt/MenuItem;

    invoke-virtual {p0, p2}, Lorg/apache/poi/java/awt/Menu;->add(Lorg/apache/poi/java/awt/MenuItem;)Lorg/apache/poi/java/awt/MenuItem;

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "index less than zero."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public insertSeparator(I)V
    .locals 5

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/MenuComponent;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    if-ltz p1, :cond_2

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Menu;->getItemCount()I

    move-result v1

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    move v3, p1

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/Menu;->getItem(I)Lorg/apache/poi/java/awt/MenuItem;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/Menu;->remove(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Menu;->addSeparator()V

    const/4 p1, 0x0

    :goto_1
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    invoke-virtual {v2, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/java/awt/MenuItem;

    invoke-virtual {p0, v1}, Lorg/apache/poi/java/awt/Menu;->add(Lorg/apache/poi/java/awt/MenuItem;)Lorg/apache/poi/java/awt/MenuItem;

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v1, "index less than zero."

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public isTearOff()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/Menu;->tearOff:Z

    return v0
.end method

.method public paramString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ",tearOff="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/apache/poi/java/awt/Menu;->tearOff:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",isHelpMenu="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/apache/poi/java/awt/Menu;->isHelpMenu:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lorg/apache/poi/java/awt/MenuItem;->paramString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public remove(I)V
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/MenuComponent;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/Menu;->getItem(I)Lorg/apache/poi/java/awt/MenuItem;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/java/awt/Menu;->items:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->removeElementAt(I)V

    iget-object v2, p0, Lorg/apache/poi/java/awt/MenuComponent;->peer:Lorg/apache/poi/java/awt/peer/MenuComponentPeer;

    check-cast v2, Lorg/apache/poi/java/awt/peer/MenuPeer;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/MenuComponent;->removeNotify()V

    const/4 v3, 0x0

    iput-object v3, v1, Lorg/apache/poi/java/awt/MenuComponent;->parent:Lorg/apache/poi/java/awt/MenuContainer;

    invoke-interface {v2, p1}, Lorg/apache/poi/java/awt/peer/MenuPeer;->delItem(I)V

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
    iget-object v1, p0, Lorg/apache/poi/java/awt/Menu;->items:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/Menu;->remove(I)V

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

.method public removeAll()V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/MenuComponent;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Menu;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    invoke-virtual {p0, v1}, Lorg/apache/poi/java/awt/Menu;->remove(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

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

.method public removeNotify()V
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/MenuComponent;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Menu;->getItemCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p0, v2}, Lorg/apache/poi/java/awt/Menu;->getItem(I)Lorg/apache/poi/java/awt/MenuItem;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/java/awt/MenuComponent;->removeNotify()V

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

.method public declared-synchronized shortcuts()Ljava/util/Enumeration;
    .locals 5

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Menu;->getItemCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {p0, v2}, Lorg/apache/poi/java/awt/Menu;->getItem(I)Lorg/apache/poi/java/awt/MenuItem;

    move-result-object v3

    instance-of v4, v3, Lorg/apache/poi/java/awt/Menu;

    if-eqz v4, :cond_0

    check-cast v3, Lorg/apache/poi/java/awt/Menu;

    invoke-virtual {v3}, Lorg/apache/poi/java/awt/Menu;->shortcuts()Ljava/util/Enumeration;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Lorg/apache/poi/java/awt/MenuItem;->getShortcut()Lorg/apache/poi/java/awt/MenuShortcut;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
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
