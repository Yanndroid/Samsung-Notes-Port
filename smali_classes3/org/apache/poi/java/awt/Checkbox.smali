.class public Lorg/apache/poi/java/awt/Checkbox;
.super Lorg/apache/poi/java/awt/Component;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/java/awt/ItemSelectable;
.implements Ljavax/accessibility/Accessible;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/java/awt/Checkbox$AccessibleAWTCheckbox;
    }
.end annotation


# static fields
.field private static final base:Ljava/lang/String; = "checkbox"

.field private static nameCounter:I = 0x0

.field private static final serialVersionUID:J = 0x64e6c4265b00c083L


# instance fields
.field private checkboxSerializedDataVersion:I

.field public group:Lorg/apache/poi/java/awt/CheckboxGroup;

.field public transient itemListener:Lorg/apache/poi/java/awt/event/ItemListener;

.field public label:Ljava/lang/String;

.field public state:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->loadLibraries()V

    invoke-static {}, Lorg/apache/poi/java/awt/GraphicsEnvironment;->isHeadless()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/apache/poi/java/awt/Checkbox;->initIDs()V

    :cond_0
    const/4 v0, 0x0

    sput v0, Lorg/apache/poi/java/awt/Checkbox;->nameCounter:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const-string v0, ""

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/poi/java/awt/Checkbox;-><init>(Ljava/lang/String;ZLorg/apache/poi/java/awt/CheckboxGroup;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/poi/java/awt/Checkbox;-><init>(Ljava/lang/String;ZLorg/apache/poi/java/awt/CheckboxGroup;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/poi/java/awt/CheckboxGroup;Z)V
    .locals 0

    invoke-direct {p0, p1, p3, p2}, Lorg/apache/poi/java/awt/Checkbox;-><init>(Ljava/lang/String;ZLorg/apache/poi/java/awt/CheckboxGroup;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/java/awt/Checkbox;-><init>(Ljava/lang/String;ZLorg/apache/poi/java/awt/CheckboxGroup;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLorg/apache/poi/java/awt/CheckboxGroup;)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/java/awt/Component;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/poi/java/awt/Checkbox;->checkboxSerializedDataVersion:I

    invoke-static {}, Lorg/apache/poi/java/awt/GraphicsEnvironment;->checkHeadless()V

    iput-object p1, p0, Lorg/apache/poi/java/awt/Checkbox;->label:Ljava/lang/String;

    iput-boolean p2, p0, Lorg/apache/poi/java/awt/Checkbox;->state:Z

    iput-object p3, p0, Lorg/apache/poi/java/awt/Checkbox;->group:Lorg/apache/poi/java/awt/CheckboxGroup;

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3, p0}, Lorg/apache/poi/java/awt/CheckboxGroup;->setSelectedCheckbox(Lorg/apache/poi/java/awt/Checkbox;)V

    :cond_0
    return-void
.end method

.method private static native initIDs()V
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2

    invoke-static {}, Lorg/apache/poi/java/awt/GraphicsEnvironment;->checkHeadless()V

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

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/Checkbox;->addItemListener(Lorg/apache/poi/java/awt/event/ItemListener;)V

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

    iget-object v0, p0, Lorg/apache/poi/java/awt/Checkbox;->itemListener:Lorg/apache/poi/java/awt/event/ItemListener;

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
    iget-object v0, p0, Lorg/apache/poi/java/awt/Checkbox;->itemListener:Lorg/apache/poi/java/awt/event/ItemListener;

    invoke-static {v0, p1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->add(Lorg/apache/poi/java/awt/event/ItemListener;Lorg/apache/poi/java/awt/event/ItemListener;)Lorg/apache/poi/java/awt/event/ItemListener;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/java/awt/Checkbox;->itemListener:Lorg/apache/poi/java/awt/event/ItemListener;

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

    invoke-virtual {v1, p0}, Lorg/apache/poi/java/awt/Toolkit;->createCheckbox(Lorg/apache/poi/java/awt/Checkbox;)Lorg/apache/poi/java/awt/peer/CheckboxPeer;

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

.method public constructComponentName()Ljava/lang/String;
    .locals 4

    const-class v0, Lorg/apache/poi/java/awt/Checkbox;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkbox"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lorg/apache/poi/java/awt/Checkbox;->nameCounter:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lorg/apache/poi/java/awt/Checkbox;->nameCounter:I

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

.method public eventEnabled(Lorg/apache/poi/java/awt/AWTEvent;)Z
    .locals 4

    iget v0, p1, Lorg/apache/poi/java/awt/AWTEvent;->id:I

    const/16 v1, 0x2bd

    if-ne v0, v1, :cond_2

    iget-wide v0, p0, Lorg/apache/poi/java/awt/Component;->eventMask:J

    const-wide/16 v2, 0x200

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/apache/poi/java/awt/Checkbox;->itemListener:Lorg/apache/poi/java/awt/event/ItemListener;

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
    invoke-super {p0, p1}, Lorg/apache/poi/java/awt/Component;->eventEnabled(Lorg/apache/poi/java/awt/AWTEvent;)Z

    move-result p1

    return p1
.end method

.method public getAccessibleContext()Ljavax/accessibility/AccessibleContext;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->accessibleContext:Ljavax/accessibility/AccessibleContext;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/poi/java/awt/Checkbox$AccessibleAWTCheckbox;

    invoke-direct {v0, p0}, Lorg/apache/poi/java/awt/Checkbox$AccessibleAWTCheckbox;-><init>(Lorg/apache/poi/java/awt/Checkbox;)V

    iput-object v0, p0, Lorg/apache/poi/java/awt/Component;->accessibleContext:Ljavax/accessibility/AccessibleContext;

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->accessibleContext:Ljavax/accessibility/AccessibleContext;

    return-object v0
.end method

.method public getCheckboxGroup()Lorg/apache/poi/java/awt/CheckboxGroup;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Checkbox;->group:Lorg/apache/poi/java/awt/CheckboxGroup;

    return-object v0
.end method

.method public declared-synchronized getItemListeners()[Lorg/apache/poi/java/awt/event/ItemListener;
    .locals 1

    monitor-enter p0

    :try_start_0
    const-class v0, Lorg/apache/poi/java/awt/event/ItemListener;

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/Checkbox;->getListeners(Ljava/lang/Class;)[Ljava/util/EventListener;

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

.method public getLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Checkbox;->label:Ljava/lang/String;

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

    const-class v0, Lorg/apache/poi/java/awt/event/ItemListener;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/java/awt/Checkbox;->itemListener:Lorg/apache/poi/java/awt/event/ItemListener;

    invoke-static {v0, p1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->getListeners(Ljava/util/EventListener;Ljava/lang/Class;)[Ljava/util/EventListener;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lorg/apache/poi/java/awt/Component;->getListeners(Ljava/lang/Class;)[Ljava/util/EventListener;

    move-result-object p1

    return-object p1
.end method

.method public getSelectedObjects()[Ljava/lang/Object;
    .locals 3

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/Checkbox;->state:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/poi/java/awt/Checkbox;->label:Ljava/lang/String;

    aput-object v2, v0, v1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getState()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/Checkbox;->state:Z

    return v0
.end method

.method public paramString()Ljava/lang/String;
    .locals 3

    invoke-super {p0}, Lorg/apache/poi/java/awt/Component;->paramString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/java/awt/Checkbox;->label:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",label="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",state="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/Checkbox;->state:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public processEvent(Lorg/apache/poi/java/awt/AWTEvent;)V
    .locals 1

    instance-of v0, p1, Lorg/apache/poi/java/awt/event/ItemEvent;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/apache/poi/java/awt/event/ItemEvent;

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/Checkbox;->processItemEvent(Lorg/apache/poi/java/awt/event/ItemEvent;)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Lorg/apache/poi/java/awt/Component;->processEvent(Lorg/apache/poi/java/awt/AWTEvent;)V

    return-void
.end method

.method public processItemEvent(Lorg/apache/poi/java/awt/event/ItemEvent;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Checkbox;->itemListener:Lorg/apache/poi/java/awt/event/ItemListener;

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
    iget-object v0, p0, Lorg/apache/poi/java/awt/Checkbox;->itemListener:Lorg/apache/poi/java/awt/event/ItemListener;

    invoke-static {v0, p1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->remove(Lorg/apache/poi/java/awt/event/ItemListener;Lorg/apache/poi/java/awt/event/ItemListener;)Lorg/apache/poi/java/awt/event/ItemListener;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/java/awt/Checkbox;->itemListener:Lorg/apache/poi/java/awt/event/ItemListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setCheckboxGroup(Lorg/apache/poi/java/awt/CheckboxGroup;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/java/awt/Checkbox;->group:Lorg/apache/poi/java/awt/CheckboxGroup;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/Checkbox;->group:Lorg/apache/poi/java/awt/CheckboxGroup;

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Checkbox;->getState()Z

    move-result v1

    iput-object p1, p0, Lorg/apache/poi/java/awt/Checkbox;->group:Lorg/apache/poi/java/awt/CheckboxGroup;

    iget-object v2, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    check-cast v2, Lorg/apache/poi/java/awt/peer/CheckboxPeer;

    if-eqz v2, :cond_1

    invoke-interface {v2, p1}, Lorg/apache/poi/java/awt/peer/CheckboxPeer;->setCheckboxGroup(Lorg/apache/poi/java/awt/CheckboxGroup;)V

    :cond_1
    iget-object p1, p0, Lorg/apache/poi/java/awt/Checkbox;->group:Lorg/apache/poi/java/awt/CheckboxGroup;

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Checkbox;->getState()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/apache/poi/java/awt/Checkbox;->group:Lorg/apache/poi/java/awt/CheckboxGroup;

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/CheckboxGroup;->getSelectedCheckbox()Lorg/apache/poi/java/awt/Checkbox;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/Checkbox;->setState(Z)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lorg/apache/poi/java/awt/Checkbox;->group:Lorg/apache/poi/java/awt/CheckboxGroup;

    invoke-virtual {p1, p0}, Lorg/apache/poi/java/awt/CheckboxGroup;->setSelectedCheckbox(Lorg/apache/poi/java/awt/Checkbox;)V

    :cond_3
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lorg/apache/poi/java/awt/CheckboxGroup;->setSelectedCheckbox(Lorg/apache/poi/java/awt/Checkbox;)V

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/Checkbox;->label:Ljava/lang/String;

    if-eq p1, v0, :cond_2

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iput-object p1, p0, Lorg/apache/poi/java/awt/Checkbox;->label:Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    check-cast v0, Lorg/apache/poi/java/awt/peer/CheckboxPeer;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/peer/CheckboxPeer;->setLabel(Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->invalidateIfValid()V

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setState(Z)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Checkbox;->group:Lorg/apache/poi/java/awt/CheckboxGroup;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {v0, p0}, Lorg/apache/poi/java/awt/CheckboxGroup;->setSelectedCheckbox(Lorg/apache/poi/java/awt/Checkbox;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/java/awt/CheckboxGroup;->getSelectedCheckbox()Lorg/apache/poi/java/awt/Checkbox;

    move-result-object v0

    if-ne v0, p0, :cond_1

    const/4 p1, 0x1

    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/Checkbox;->setStateInternal(Z)V

    return-void
.end method

.method public setStateInternal(Z)V
    .locals 1

    iput-boolean p1, p0, Lorg/apache/poi/java/awt/Checkbox;->state:Z

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    check-cast v0, Lorg/apache/poi/java/awt/peer/CheckboxPeer;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/peer/CheckboxPeer;->setState(Z)V

    :cond_0
    return-void
.end method
