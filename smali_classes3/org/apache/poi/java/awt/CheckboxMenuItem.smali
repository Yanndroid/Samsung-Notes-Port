.class public Lorg/apache/poi/java/awt/CheckboxMenuItem;
.super Lorg/apache/poi/java/awt/MenuItem;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/java/awt/ItemSelectable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/java/awt/CheckboxMenuItem$AccessibleAWTCheckboxMenuItem;
    }
.end annotation


# static fields
.field private static final base:Ljava/lang/String; = "chkmenuitem"

.field private static nameCounter:I = 0x0

.field private static final serialVersionUID:J = 0x55e98118f4af22dbL


# instance fields
.field private checkboxMenuItemSerializedDataVersion:I

.field public transient itemListener:Lorg/apache/poi/java/awt/event/ItemListener;

.field public state:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->loadLibraries()V

    invoke-static {}, Lorg/apache/poi/java/awt/GraphicsEnvironment;->isHeadless()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/apache/poi/java/awt/CheckboxMenuItem;->initIDs()V

    :cond_0
    new-instance v0, Lorg/apache/poi/java/awt/CheckboxMenuItem$1;

    invoke-direct {v0}, Lorg/apache/poi/java/awt/CheckboxMenuItem$1;-><init>()V

    invoke-static {v0}, Lorg/apache/poi/sun/awt/AWTAccessor;->setCheckboxMenuItemAccessor(Lorg/apache/poi/sun/awt/AWTAccessor$CheckboxMenuItemAccessor;)V

    const/4 v0, 0x0

    sput v0, Lorg/apache/poi/java/awt/CheckboxMenuItem;->nameCounter:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/java/awt/CheckboxMenuItem;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/java/awt/CheckboxMenuItem;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/java/awt/MenuItem;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    iput p1, p0, Lorg/apache/poi/java/awt/CheckboxMenuItem;->checkboxMenuItemSerializedDataVersion:I

    iput-boolean p2, p0, Lorg/apache/poi/java/awt/CheckboxMenuItem;->state:Z

    return-void
.end method

.method private static native initIDs()V
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

    const-string v1, "itemL"

    if-ne v1, v0, :cond_0

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/java/awt/event/ItemListener;

    move-object v1, v0

    check-cast v1, Lorg/apache/poi/java/awt/event/ItemListener;

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/CheckboxMenuItem;->addItemListener(Lorg/apache/poi/java/awt/event/ItemListener;)V

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

    iget-object v0, p0, Lorg/apache/poi/java/awt/CheckboxMenuItem;->itemListener:Lorg/apache/poi/java/awt/event/ItemListener;

    const-string v1, "itemL"

    invoke-static {p1, v1, v0}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->save(Ljava/io/ObjectOutputStream;Ljava/lang/String;Ljava/util/EventListener;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized addItemListener(Lorg/apache/poi/java/awt/event/ItemListener;)V
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/CheckboxMenuItem;->itemListener:Lorg/apache/poi/java/awt/event/ItemListener;

    invoke-static {v0, p1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->add(Lorg/apache/poi/java/awt/event/ItemListener;Lorg/apache/poi/java/awt/event/ItemListener;)Lorg/apache/poi/java/awt/event/ItemListener;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/java/awt/CheckboxMenuItem;->itemListener:Lorg/apache/poi/java/awt/event/ItemListener;

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

    invoke-virtual {v1, p0}, Lorg/apache/poi/java/awt/Toolkit;->createCheckboxMenuItem(Lorg/apache/poi/java/awt/CheckboxMenuItem;)Lorg/apache/poi/java/awt/peer/CheckboxMenuItemPeer;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/java/awt/MenuComponent;->peer:Lorg/apache/poi/java/awt/peer/MenuComponentPeer;

    :cond_0
    invoke-super {p0}, Lorg/apache/poi/java/awt/MenuItem;->addNotify()V

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

    const-class v0, Lorg/apache/poi/java/awt/CheckboxMenuItem;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "chkmenuitem"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lorg/apache/poi/java/awt/CheckboxMenuItem;->nameCounter:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lorg/apache/poi/java/awt/CheckboxMenuItem;->nameCounter:I

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

.method public doMenuEvent(JI)V
    .locals 3

    iget-boolean p1, p0, Lorg/apache/poi/java/awt/CheckboxMenuItem;->state:Z

    const/4 p2, 0x1

    xor-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/CheckboxMenuItem;->setState(Z)V

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->getEventQueue()Lorg/apache/poi/java/awt/EventQueue;

    move-result-object p1

    new-instance p3, Lorg/apache/poi/java/awt/event/ItemEvent;

    const/16 v0, 0x2bd

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/MenuItem;->getLabel()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lorg/apache/poi/java/awt/CheckboxMenuItem;->state:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    :goto_0
    invoke-direct {p3, p0, v0, v1, p2}, Lorg/apache/poi/java/awt/event/ItemEvent;-><init>(Lorg/apache/poi/java/awt/ItemSelectable;ILjava/lang/Object;I)V

    invoke-virtual {p1, p3}, Lorg/apache/poi/java/awt/EventQueue;->postEvent(Lorg/apache/poi/java/awt/AWTEvent;)V

    return-void
.end method

.method public eventEnabled(Lorg/apache/poi/java/awt/AWTEvent;)Z
    .locals 4

    iget v0, p1, Lorg/apache/poi/java/awt/AWTEvent;->id:I

    const/16 v1, 0x2bd

    if-ne v0, v1, :cond_2

    iget-wide v0, p0, Lorg/apache/poi/java/awt/MenuItem;->eventMask:J

    const-wide/16 v2, 0x200

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/apache/poi/java/awt/CheckboxMenuItem;->itemListener:Lorg/apache/poi/java/awt/event/ItemListener;

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
    invoke-super {p0, p1}, Lorg/apache/poi/java/awt/MenuItem;->eventEnabled(Lorg/apache/poi/java/awt/AWTEvent;)Z

    move-result p1

    return p1
.end method

.method public getAccessibleContext()Ljavax/accessibility/AccessibleContext;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/MenuComponent;->accessibleContext:Ljavax/accessibility/AccessibleContext;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/poi/java/awt/CheckboxMenuItem$AccessibleAWTCheckboxMenuItem;

    invoke-direct {v0, p0}, Lorg/apache/poi/java/awt/CheckboxMenuItem$AccessibleAWTCheckboxMenuItem;-><init>(Lorg/apache/poi/java/awt/CheckboxMenuItem;)V

    iput-object v0, p0, Lorg/apache/poi/java/awt/MenuComponent;->accessibleContext:Ljavax/accessibility/AccessibleContext;

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/MenuComponent;->accessibleContext:Ljavax/accessibility/AccessibleContext;

    return-object v0
.end method

.method public declared-synchronized getItemListeners()[Lorg/apache/poi/java/awt/event/ItemListener;
    .locals 1

    monitor-enter p0

    :try_start_0
    const-class v0, Lorg/apache/poi/java/awt/event/ItemListener;

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/CheckboxMenuItem;->getListeners(Ljava/lang/Class;)[Ljava/util/EventListener;

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

    const-class v0, Lorg/apache/poi/java/awt/event/ItemListener;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/java/awt/CheckboxMenuItem;->itemListener:Lorg/apache/poi/java/awt/event/ItemListener;

    invoke-static {v0, p1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->getListeners(Ljava/util/EventListener;Ljava/lang/Class;)[Ljava/util/EventListener;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lorg/apache/poi/java/awt/MenuItem;->getListeners(Ljava/lang/Class;)[Ljava/util/EventListener;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized getSelectedObjects()[Ljava/lang/Object;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/apache/poi/java/awt/CheckboxMenuItem;->state:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/poi/java/awt/MenuItem;->label:Ljava/lang/String;

    aput-object v2, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getState()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/CheckboxMenuItem;->state:Z

    return v0
.end method

.method public paramString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lorg/apache/poi/java/awt/MenuItem;->paramString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/apache/poi/java/awt/CheckboxMenuItem;->state:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public processEvent(Lorg/apache/poi/java/awt/AWTEvent;)V
    .locals 1

    instance-of v0, p1, Lorg/apache/poi/java/awt/event/ItemEvent;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/apache/poi/java/awt/event/ItemEvent;

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/CheckboxMenuItem;->processItemEvent(Lorg/apache/poi/java/awt/event/ItemEvent;)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Lorg/apache/poi/java/awt/MenuItem;->processEvent(Lorg/apache/poi/java/awt/AWTEvent;)V

    return-void
.end method

.method public processItemEvent(Lorg/apache/poi/java/awt/event/ItemEvent;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/CheckboxMenuItem;->itemListener:Lorg/apache/poi/java/awt/event/ItemListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/ItemListener;->itemStateChanged(Lorg/apache/poi/java/awt/event/ItemEvent;)V

    :cond_0
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
    iget-object v0, p0, Lorg/apache/poi/java/awt/CheckboxMenuItem;->itemListener:Lorg/apache/poi/java/awt/event/ItemListener;

    invoke-static {v0, p1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->remove(Lorg/apache/poi/java/awt/event/ItemListener;Lorg/apache/poi/java/awt/event/ItemListener;)Lorg/apache/poi/java/awt/event/ItemListener;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/java/awt/CheckboxMenuItem;->itemListener:Lorg/apache/poi/java/awt/event/ItemListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setState(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lorg/apache/poi/java/awt/CheckboxMenuItem;->state:Z

    iget-object v0, p0, Lorg/apache/poi/java/awt/MenuComponent;->peer:Lorg/apache/poi/java/awt/peer/MenuComponentPeer;

    check-cast v0, Lorg/apache/poi/java/awt/peer/CheckboxMenuItemPeer;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/peer/CheckboxMenuItemPeer;->setState(Z)V
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
