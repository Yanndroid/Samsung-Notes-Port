.class public Lorg/apache/poi/java/awt/PopupMenu;
.super Lorg/apache/poi/java/awt/Menu;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/java/awt/PopupMenu$AccessibleAWTPopupMenu;
    }
.end annotation


# static fields
.field private static final base:Ljava/lang/String; = "popup"

.field public static nameCounter:I = 0x0

.field private static final serialVersionUID:J = -0x401f25195a2d817cL


# instance fields
.field public transient isTrayIconPopup:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/poi/java/awt/PopupMenu$1;

    invoke-direct {v0}, Lorg/apache/poi/java/awt/PopupMenu$1;-><init>()V

    invoke-static {v0}, Lorg/apache/poi/sun/awt/AWTAccessor;->setPopupMenuAccessor(Lorg/apache/poi/sun/awt/AWTAccessor$PopupMenuAccessor;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, ""

    invoke-direct {p0, v0}, Lorg/apache/poi/java/awt/PopupMenu;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/java/awt/Menu;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/poi/java/awt/PopupMenu;->isTrayIconPopup:Z

    return-void
.end method


# virtual methods
.method public addNotify()V
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/MenuComponent;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/MenuComponent;->parent:Lorg/apache/poi/java/awt/MenuContainer;

    if-eqz v1, :cond_0

    instance-of v1, v1, Lorg/apache/poi/java/awt/Component;

    if-nez v1, :cond_0

    invoke-super {p0}, Lorg/apache/poi/java/awt/Menu;->addNotify()V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/MenuComponent;->peer:Lorg/apache/poi/java/awt/peer/MenuComponentPeer;

    if-nez v1, :cond_1

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->getDefaultToolkit()Lorg/apache/poi/java/awt/Toolkit;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/apache/poi/java/awt/Toolkit;->createPopupMenu(Lorg/apache/poi/java/awt/PopupMenu;)Lorg/apache/poi/java/awt/peer/PopupMenuPeer;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/java/awt/MenuComponent;->peer:Lorg/apache/poi/java/awt/peer/MenuComponentPeer;

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Menu;->getItemCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {p0, v2}, Lorg/apache/poi/java/awt/Menu;->getItem(I)Lorg/apache/poi/java/awt/MenuItem;

    move-result-object v3

    iput-object p0, v3, Lorg/apache/poi/java/awt/MenuComponent;->parent:Lorg/apache/poi/java/awt/MenuContainer;

    invoke-virtual {v3}, Lorg/apache/poi/java/awt/MenuItem;->addNotify()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
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

    const-class v0, Lorg/apache/poi/java/awt/PopupMenu;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "popup"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lorg/apache/poi/java/awt/PopupMenu;->nameCounter:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lorg/apache/poi/java/awt/PopupMenu;->nameCounter:I

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

.method public getAccessibleContext()Ljavax/accessibility/AccessibleContext;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/MenuComponent;->accessibleContext:Ljavax/accessibility/AccessibleContext;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/poi/java/awt/PopupMenu$AccessibleAWTPopupMenu;

    invoke-direct {v0, p0}, Lorg/apache/poi/java/awt/PopupMenu$AccessibleAWTPopupMenu;-><init>(Lorg/apache/poi/java/awt/PopupMenu;)V

    iput-object v0, p0, Lorg/apache/poi/java/awt/MenuComponent;->accessibleContext:Ljavax/accessibility/AccessibleContext;

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/MenuComponent;->accessibleContext:Ljavax/accessibility/AccessibleContext;

    return-object v0
.end method

.method public getParent()Lorg/apache/poi/java/awt/MenuContainer;
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/PopupMenu;->isTrayIconPopup:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-super {p0}, Lorg/apache/poi/java/awt/MenuComponent;->getParent()Lorg/apache/poi/java/awt/MenuContainer;

    move-result-object v0

    return-object v0
.end method

.method public show(Lorg/apache/poi/java/awt/Component;II)V
    .locals 12

    iget-object v0, p0, Lorg/apache/poi/java/awt/MenuComponent;->parent:Lorg/apache/poi/java/awt/MenuContainer;

    const-string v1, "parent is null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    instance-of v1, v0, Lorg/apache/poi/java/awt/Component;

    if-eqz v1, :cond_6

    check-cast v0, Lorg/apache/poi/java/awt/Component;

    if-eq v0, p1, :cond_2

    instance-of v1, v0, Lorg/apache/poi/java/awt/Container;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lorg/apache/poi/java/awt/Container;

    invoke-virtual {v1, p1}, Lorg/apache/poi/java/awt/Container;->isAncestorOf(Lorg/apache/poi/java/awt/Component;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "origin not in parent\'s hierarchy"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "origin not in parent\'s hierarchy"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Component;->getPeer()Lorg/apache/poi/java/awt/peer/ComponentPeer;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Component;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/apache/poi/java/awt/MenuComponent;->peer:Lorg/apache/poi/java/awt/peer/MenuComponentPeer;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/PopupMenu;->addNotify()V

    :cond_3
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/MenuComponent;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/MenuComponent;->peer:Lorg/apache/poi/java/awt/peer/MenuComponentPeer;

    if-eqz v1, :cond_4

    check-cast v1, Lorg/apache/poi/java/awt/peer/PopupMenuPeer;

    new-instance v11, Lorg/apache/poi/java/awt/Event;

    const-wide/16 v4, 0x0

    const/16 v6, 0x1f5

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, v11

    move-object v3, p1

    move v7, p2

    move v8, p3

    invoke-direct/range {v2 .. v10}, Lorg/apache/poi/java/awt/Event;-><init>(Ljava/lang/Object;JIIIII)V

    invoke-interface {v1, v11}, Lorg/apache/poi/java/awt/peer/PopupMenuPeer;->show(Lorg/apache/poi/java/awt/Event;)V

    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "parent not showing on screen"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "PopupMenus with non-Component parents cannot be shown"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
