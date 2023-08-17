.class public Lorg/apache/poi/java/awt/List;
.super Lorg/apache/poi/java/awt/Component;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/java/awt/ItemSelectable;
.implements Ljavax/accessibility/Accessible;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/java/awt/List$AccessibleAWTList;
    }
.end annotation


# static fields
.field public static final DEFAULT_VISIBLE_ROWS:I = 0x4

.field private static final base:Ljava/lang/String; = "list"

.field private static nameCounter:I = 0x0

.field private static final serialVersionUID:J = -0x2ddb46a19ed28675L


# instance fields
.field public transient actionListener:Lorg/apache/poi/java/awt/event/ActionListener;

.field public transient itemListener:Lorg/apache/poi/java/awt/event/ItemListener;

.field public items:Ljava/util/Vector;

.field private listSerializedDataVersion:I

.field public multipleMode:Z

.field public rows:I

.field public selected:[I

.field public visibleIndex:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lorg/apache/poi/java/awt/List;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/java/awt/List;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/java/awt/Component;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/java/awt/List;->items:Ljava/util/Vector;

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/java/awt/List;->rows:I

    iput-boolean v0, p0, Lorg/apache/poi/java/awt/List;->multipleMode:Z

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/poi/java/awt/List;->selected:[I

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/poi/java/awt/List;->visibleIndex:I

    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/poi/java/awt/List;->listSerializedDataVersion:I

    invoke-static {}, Lorg/apache/poi/java/awt/GraphicsEnvironment;->checkHeadless()V

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    iput p1, p0, Lorg/apache/poi/java/awt/List;->rows:I

    iput-boolean p2, p0, Lorg/apache/poi/java/awt/List;->multipleMode:Z

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2

    invoke-static {}, Lorg/apache/poi/java/awt/GraphicsEnvironment;->checkHeadless()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    :goto_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    const-string v1, "itemL"

    if-ne v1, v0, :cond_0

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/java/awt/event/ItemListener;

    move-object v1, v0

    check-cast v1, Lorg/apache/poi/java/awt/event/ItemListener;

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/List;->addItemListener(Lorg/apache/poi/java/awt/event/ItemListener;)V

    goto :goto_0

    :cond_0
    const-string v1, "actionL"

    if-ne v1, v0, :cond_1

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/java/awt/event/ActionListener;

    move-object v1, v0

    check-cast v1, Lorg/apache/poi/java/awt/event/ActionListener;

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/List;->addActionListener(Lorg/apache/poi/java/awt/event/ActionListener;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    check-cast v0, Lorg/apache/poi/java/awt/peer/ListPeer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/poi/java/awt/peer/ListPeer;->getSelectedIndexes()[I

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/java/awt/List;->selected:[I

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    const-string v0, "itemL"

    iget-object v1, p0, Lorg/apache/poi/java/awt/List;->itemListener:Lorg/apache/poi/java/awt/event/ItemListener;

    invoke-static {p1, v0, v1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->save(Ljava/io/ObjectOutputStream;Ljava/lang/String;Ljava/util/EventListener;)V

    const-string v0, "actionL"

    iget-object v1, p0, Lorg/apache/poi/java/awt/List;->actionListener:Lorg/apache/poi/java/awt/event/ActionListener;

    invoke-static {p1, v0, v1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->save(Ljava/io/ObjectOutputStream;Ljava/lang/String;Ljava/util/EventListener;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/List;->addItem(Ljava/lang/String;)V

    return-void
.end method

.method public add(Ljava/lang/String;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/java/awt/List;->addItem(Ljava/lang/String;I)V

    return-void
.end method

.method public declared-synchronized addActionListener(Lorg/apache/poi/java/awt/event/ActionListener;)V
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/List;->actionListener:Lorg/apache/poi/java/awt/event/ActionListener;

    invoke-static {v0, p1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->add(Lorg/apache/poi/java/awt/event/ActionListener;Lorg/apache/poi/java/awt/event/ActionListener;)Lorg/apache/poi/java/awt/event/ActionListener;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/java/awt/List;->actionListener:Lorg/apache/poi/java/awt/event/ActionListener;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/poi/java/awt/Component;->newEventsOnly:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public addItem(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/java/awt/List;->addItem(Ljava/lang/String;I)V

    return-void
.end method

.method public declared-synchronized addItem(Ljava/lang/String;I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    const/4 v0, -0x1

    if-lt p2, v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/List;->items:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt p2, v1, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    move p2, v0

    :cond_1
    if-nez p1, :cond_2

    const-string p1, ""

    :cond_2
    if-ne p2, v0, :cond_3

    iget-object v0, p0, Lorg/apache/poi/java/awt/List;->items:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/apache/poi/java/awt/List;->items:Ljava/util/Vector;

    invoke-virtual {v0, p1, p2}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    :goto_1
    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    check-cast v0, Lorg/apache/poi/java/awt/peer/ListPeer;

    if-eqz v0, :cond_4

    invoke-interface {v0, p1, p2}, Lorg/apache/poi/java/awt/peer/ListPeer;->add(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addItemListener(Lorg/apache/poi/java/awt/event/ItemListener;)V
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/List;->itemListener:Lorg/apache/poi/java/awt/event/ItemListener;

    invoke-static {v0, p1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->add(Lorg/apache/poi/java/awt/event/ItemListener;Lorg/apache/poi/java/awt/event/ItemListener;)Lorg/apache/poi/java/awt/event/ItemListener;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/java/awt/List;->itemListener:Lorg/apache/poi/java/awt/event/ItemListener;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/poi/java/awt/Component;->newEventsOnly:Z
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

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getToolkit()Lorg/apache/poi/java/awt/Toolkit;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/apache/poi/java/awt/Toolkit;->createList(Lorg/apache/poi/java/awt/List;)Lorg/apache/poi/java/awt/peer/ListPeer;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    :cond_0
    invoke-super {p0}, Lorg/apache/poi/java/awt/Component;->addNotify()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public allowsMultipleSelections()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/List;->multipleMode:Z

    return v0
.end method

.method public declared-synchronized clear()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    check-cast v0, Lorg/apache/poi/java/awt/peer/ListPeer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/poi/java/awt/peer/ListPeer;->removeAll()V

    :cond_0
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/java/awt/List;->items:Ljava/util/Vector;

    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/poi/java/awt/List;->selected:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public constructComponentName()Ljava/lang/String;
    .locals 4

    const-class v0, Lorg/apache/poi/java/awt/List;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "list"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lorg/apache/poi/java/awt/List;->nameCounter:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lorg/apache/poi/java/awt/List;->nameCounter:I

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

    iget-object v0, p0, Lorg/apache/poi/java/awt/List;->items:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public delItem(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1, p1}, Lorg/apache/poi/java/awt/List;->delItems(II)V

    return-void
.end method

.method public declared-synchronized delItems(II)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    move v0, p2

    :goto_0
    if-lt v0, p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/List;->items:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->removeElementAt(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    check-cast v0, Lorg/apache/poi/java/awt/peer/ListPeer;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Lorg/apache/poi/java/awt/peer/ListPeer;->delItems(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized deselect(I)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    check-cast v0, Lorg/apache/poi/java/awt/peer/ListPeer;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/List;->isMultipleMode()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/List;->getSelectedIndex()I

    move-result v1

    if-ne v1, p1, :cond_1

    :cond_0
    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/peer/ListPeer;->deselect(I)V

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lorg/apache/poi/java/awt/List;->selected:[I

    array-length v3, v2

    if-ge v1, v3, :cond_3

    aget v3, v2, v1

    if-ne v3, p1, :cond_2

    array-length p1, v2

    add-int/lit8 p1, p1, -0x1

    new-array p1, p1, [I

    invoke-static {v2, v0, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/apache/poi/java/awt/List;->selected:[I

    add-int/lit8 v2, v1, 0x1

    array-length v3, v0

    sub-int/2addr v3, v2

    invoke-static {v0, v2, p1, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Lorg/apache/poi/java/awt/List;->selected:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public eventEnabled(Lorg/apache/poi/java/awt/AWTEvent;)Z
    .locals 8

    iget v0, p1, Lorg/apache/poi/java/awt/AWTEvent;->id:I

    const/16 v1, 0x2bd

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    if-eq v0, v1, :cond_3

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Lorg/apache/poi/java/awt/Component;->eventEnabled(Lorg/apache/poi/java/awt/AWTEvent;)Z

    move-result p1

    return p1

    :cond_0
    iget-wide v0, p0, Lorg/apache/poi/java/awt/Component;->eventMask:J

    const-wide/16 v6, 0x80

    and-long/2addr v0, v6

    cmp-long p1, v0, v4

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/apache/poi/java/awt/List;->actionListener:Lorg/apache/poi/java/awt/event/ActionListener;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    :goto_0
    return v3

    :cond_3
    iget-wide v0, p0, Lorg/apache/poi/java/awt/Component;->eventMask:J

    const-wide/16 v6, 0x200

    and-long/2addr v0, v6

    cmp-long p1, v0, v4

    if-nez p1, :cond_5

    iget-object p1, p0, Lorg/apache/poi/java/awt/List;->itemListener:Lorg/apache/poi/java/awt/event/ItemListener;

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    return v2

    :cond_5
    :goto_1
    return v3
.end method

.method public getAccessibleContext()Ljavax/accessibility/AccessibleContext;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->accessibleContext:Ljavax/accessibility/AccessibleContext;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/poi/java/awt/List$AccessibleAWTList;

    invoke-direct {v0, p0}, Lorg/apache/poi/java/awt/List$AccessibleAWTList;-><init>(Lorg/apache/poi/java/awt/List;)V

    iput-object v0, p0, Lorg/apache/poi/java/awt/Component;->accessibleContext:Ljavax/accessibility/AccessibleContext;

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->accessibleContext:Ljavax/accessibility/AccessibleContext;

    return-object v0
.end method

.method public declared-synchronized getActionListeners()[Lorg/apache/poi/java/awt/event/ActionListener;
    .locals 1

    monitor-enter p0

    :try_start_0
    const-class v0, Lorg/apache/poi/java/awt/event/ActionListener;

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/List;->getListeners(Ljava/lang/Class;)[Ljava/util/EventListener;

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

.method public getItem(I)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/List;->getItemImpl(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/List;->countItems()I

    move-result v0

    return v0
.end method

.method public final getItemImpl(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/List;->items:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public declared-synchronized getItemListeners()[Lorg/apache/poi/java/awt/event/ItemListener;
    .locals 1

    monitor-enter p0

    :try_start_0
    const-class v0, Lorg/apache/poi/java/awt/event/ItemListener;

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/List;->getListeners(Ljava/lang/Class;)[Ljava/util/EventListener;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/java/awt/event/ItemListener;

    check-cast v0, [Lorg/apache/poi/java/awt/event/ItemListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getItems()[Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/List;->items:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/poi/java/awt/List;->items:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
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

    iget-object v0, p0, Lorg/apache/poi/java/awt/List;->actionListener:Lorg/apache/poi/java/awt/event/ActionListener;

    goto :goto_0

    :cond_0
    const-class v0, Lorg/apache/poi/java/awt/event/ItemListener;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/java/awt/List;->itemListener:Lorg/apache/poi/java/awt/event/ItemListener;

    :goto_0
    invoke-static {v0, p1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->getListeners(Ljava/util/EventListener;Ljava/lang/Class;)[Ljava/util/EventListener;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-super {p0, p1}, Lorg/apache/poi/java/awt/Component;->getListeners(Ljava/lang/Class;)[Ljava/util/EventListener;

    move-result-object p1

    return-object p1
.end method

.method public getMinimumSize()Lorg/apache/poi/java/awt/Dimension;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/List;->minimumSize()Lorg/apache/poi/java/awt/Dimension;

    move-result-object v0

    return-object v0
.end method

.method public getMinimumSize(I)Lorg/apache/poi/java/awt/Dimension;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/List;->minimumSize(I)Lorg/apache/poi/java/awt/Dimension;

    move-result-object p1

    return-object p1
.end method

.method public getPreferredSize()Lorg/apache/poi/java/awt/Dimension;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/List;->preferredSize()Lorg/apache/poi/java/awt/Dimension;

    move-result-object v0

    return-object v0
.end method

.method public getPreferredSize(I)Lorg/apache/poi/java/awt/Dimension;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/List;->preferredSize(I)Lorg/apache/poi/java/awt/Dimension;

    move-result-object p1

    return-object p1
.end method

.method public getRows()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/java/awt/List;->rows:I

    return v0
.end method

.method public declared-synchronized getSelectedIndex()I
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/List;->getSelectedIndexes()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    aget v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSelectedIndexes()[I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    check-cast v0, Lorg/apache/poi/java/awt/peer/ListPeer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/poi/java/awt/peer/ListPeer;->getSelectedIndexes()[I

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/java/awt/List;->selected:[I

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/List;->selected:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSelectedItem()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/List;->getSelectedIndex()I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/List;->getItem(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSelectedItems()[Ljava/lang/String;
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/List;->getSelectedIndexes()[I

    move-result-object v0

    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    aget v3, v0, v2

    invoke-virtual {p0, v3}, Lorg/apache/poi/java/awt/List;->getItem(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSelectedObjects()[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/List;->getSelectedItems()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVisibleIndex()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/java/awt/List;->visibleIndex:I

    return v0
.end method

.method public isIndexSelected(I)Z
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/List;->isSelected(I)Z

    move-result p1

    return p1
.end method

.method public isMultipleMode()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/List;->allowsMultipleSelections()Z

    move-result v0

    return v0
.end method

.method public isSelected(I)Z
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/List;->getSelectedIndexes()[I

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    aget v3, v0, v2

    if-ne v3, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public declared-synchronized makeVisible(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lorg/apache/poi/java/awt/List;->visibleIndex:I

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    check-cast v0, Lorg/apache/poi/java/awt/peer/ListPeer;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/peer/ListPeer;->makeVisible(I)V
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

.method public minimumSize()Lorg/apache/poi/java/awt/Dimension;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lorg/apache/poi/java/awt/List;->rows:I

    if-lez v1, :cond_0

    invoke-virtual {p0, v1}, Lorg/apache/poi/java/awt/List;->minimumSize(I)Lorg/apache/poi/java/awt/Dimension;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lorg/apache/poi/java/awt/Component;->minimumSize()Lorg/apache/poi/java/awt/Dimension;

    move-result-object v1

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

.method public minimumSize(I)Lorg/apache/poi/java/awt/Dimension;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    check-cast v1, Lorg/apache/poi/java/awt/peer/ListPeer;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lorg/apache/poi/java/awt/peer/ListPeer;->getMinimumSize(I)Lorg/apache/poi/java/awt/Dimension;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lorg/apache/poi/java/awt/Component;->minimumSize()Lorg/apache/poi/java/awt/Dimension;

    move-result-object p1

    :goto_0
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public paramString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lorg/apache/poi/java/awt/Component;->paramString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",selected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/List;->getSelectedItem()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public preferredSize()Lorg/apache/poi/java/awt/Dimension;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lorg/apache/poi/java/awt/List;->rows:I

    if-lez v1, :cond_0

    invoke-virtual {p0, v1}, Lorg/apache/poi/java/awt/List;->preferredSize(I)Lorg/apache/poi/java/awt/Dimension;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lorg/apache/poi/java/awt/Component;->preferredSize()Lorg/apache/poi/java/awt/Dimension;

    move-result-object v1

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

.method public preferredSize(I)Lorg/apache/poi/java/awt/Dimension;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    check-cast v1, Lorg/apache/poi/java/awt/peer/ListPeer;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lorg/apache/poi/java/awt/peer/ListPeer;->getPreferredSize(I)Lorg/apache/poi/java/awt/Dimension;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lorg/apache/poi/java/awt/Component;->preferredSize()Lorg/apache/poi/java/awt/Dimension;

    move-result-object p1

    :goto_0
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public processActionEvent(Lorg/apache/poi/java/awt/event/ActionEvent;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/List;->actionListener:Lorg/apache/poi/java/awt/event/ActionListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/ActionListener;->actionPerformed(Lorg/apache/poi/java/awt/event/ActionEvent;)V

    :cond_0
    return-void
.end method

.method public processEvent(Lorg/apache/poi/java/awt/AWTEvent;)V
    .locals 1

    instance-of v0, p1, Lorg/apache/poi/java/awt/event/ItemEvent;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/apache/poi/java/awt/event/ItemEvent;

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/List;->processItemEvent(Lorg/apache/poi/java/awt/event/ItemEvent;)V

    return-void

    :cond_0
    instance-of v0, p1, Lorg/apache/poi/java/awt/event/ActionEvent;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/apache/poi/java/awt/event/ActionEvent;

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/List;->processActionEvent(Lorg/apache/poi/java/awt/event/ActionEvent;)V

    return-void

    :cond_1
    invoke-super {p0, p1}, Lorg/apache/poi/java/awt/Component;->processEvent(Lorg/apache/poi/java/awt/AWTEvent;)V

    return-void
.end method

.method public processItemEvent(Lorg/apache/poi/java/awt/event/ItemEvent;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/List;->itemListener:Lorg/apache/poi/java/awt/event/ItemListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/ItemListener;->itemStateChanged(Lorg/apache/poi/java/awt/event/ItemEvent;)V

    :cond_0
    return-void
.end method

.method public remove(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/List;->delItem(I)V

    return-void
.end method

.method public declared-synchronized remove(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/List;->items:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/List;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "item "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found in list"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeActionListener(Lorg/apache/poi/java/awt/event/ActionListener;)V
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/List;->actionListener:Lorg/apache/poi/java/awt/event/ActionListener;

    invoke-static {v0, p1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->remove(Lorg/apache/poi/java/awt/event/ActionListener;Lorg/apache/poi/java/awt/event/ActionListener;)Lorg/apache/poi/java/awt/event/ActionListener;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/java/awt/List;->actionListener:Lorg/apache/poi/java/awt/event/ActionListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public removeAll()V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/List;->clear()V

    return-void
.end method

.method public declared-synchronized removeItemListener(Lorg/apache/poi/java/awt/event/ItemListener;)V
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/List;->itemListener:Lorg/apache/poi/java/awt/event/ItemListener;

    invoke-static {v0, p1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->remove(Lorg/apache/poi/java/awt/event/ItemListener;Lorg/apache/poi/java/awt/event/ItemListener;)Lorg/apache/poi/java/awt/event/ItemListener;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/java/awt/List;->itemListener:Lorg/apache/poi/java/awt/event/ItemListener;
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

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    check-cast v1, Lorg/apache/poi/java/awt/peer/ListPeer;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/apache/poi/java/awt/peer/ListPeer;->getSelectedIndexes()[I

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/java/awt/List;->selected:[I

    :cond_0
    invoke-super {p0}, Lorg/apache/poi/java/awt/Component;->removeNotify()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public declared-synchronized replaceItem(Ljava/lang/String;I)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p2}, Lorg/apache/poi/java/awt/List;->remove(I)V

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/java/awt/List;->add(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public select(I)V
    .locals 6

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    check-cast v0, Lorg/apache/poi/java/awt/peer/ListPeer;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/peer/ListPeer;->select(I)V

    return-void

    :cond_1
    monitor-enter p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    :try_start_0
    iget-object v3, p0, Lorg/apache/poi/java/awt/List;->selected:[I

    array-length v4, v3

    const/4 v5, 0x1

    if-ge v2, v4, :cond_3

    aget v4, v3, v2

    if-ne v4, p1, :cond_2

    move v2, v5

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_1
    if-nez v2, :cond_5

    iget-boolean v2, p0, Lorg/apache/poi/java/awt/List;->multipleMode:Z

    if-nez v2, :cond_4

    new-array v2, v5, [I

    iput-object v2, p0, Lorg/apache/poi/java/awt/List;->selected:[I

    aput p1, v2, v1

    goto :goto_2

    :cond_4
    array-length v2, v3

    add-int/2addr v2, v5

    new-array v2, v2, [I

    array-length v4, v3

    invoke-static {v3, v1, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/apache/poi/java/awt/List;->selected:[I

    array-length v1, v1

    aput p1, v2, v1

    iput-object v2, p0, Lorg/apache/poi/java/awt/List;->selected:[I

    :cond_5
    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    if-ne v0, v1, :cond_0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setMultipleMode(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/List;->setMultipleSelections(Z)V

    return-void
.end method

.method public declared-synchronized setMultipleSelections(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/apache/poi/java/awt/List;->multipleMode:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lorg/apache/poi/java/awt/List;->multipleMode:Z

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    check-cast v0, Lorg/apache/poi/java/awt/peer/ListPeer;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/peer/ListPeer;->setMultipleMode(Z)V
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
