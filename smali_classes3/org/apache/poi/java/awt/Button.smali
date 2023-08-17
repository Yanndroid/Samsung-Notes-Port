.class public Lorg/apache/poi/java/awt/Button;
.super Lorg/apache/poi/java/awt/Component;
.source "SourceFile"

# interfaces
.implements Ljavax/accessibility/Accessible;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/java/awt/Button$AccessibleAWTButton;
    }
.end annotation


# static fields
.field private static final base:Ljava/lang/String; = "button"

.field private static nameCounter:I = 0x0

.field private static final serialVersionUID:J = -0x79c5f059873dac62L


# instance fields
.field public actionCommand:Ljava/lang/String;

.field public transient actionListener:Lorg/apache/poi/java/awt/event/ActionListener;

.field private buttonSerializedDataVersion:I

.field public label:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->loadLibraries()V

    invoke-static {}, Lorg/apache/poi/java/awt/GraphicsEnvironment;->isHeadless()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/apache/poi/java/awt/Button;->initIDs()V

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, ""

    invoke-direct {p0, v0}, Lorg/apache/poi/java/awt/Button;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/java/awt/Component;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/poi/java/awt/Button;->buttonSerializedDataVersion:I

    invoke-static {}, Lorg/apache/poi/java/awt/GraphicsEnvironment;->checkHeadless()V

    iput-object p1, p0, Lorg/apache/poi/java/awt/Button;->label:Ljava/lang/String;

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

    const-string v1, "actionL"

    if-ne v1, v0, :cond_0

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/java/awt/event/ActionListener;

    move-object v1, v0

    check-cast v1, Lorg/apache/poi/java/awt/event/ActionListener;

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/Button;->addActionListener(Lorg/apache/poi/java/awt/event/ActionListener;)V

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

    iget-object v0, p0, Lorg/apache/poi/java/awt/Button;->actionListener:Lorg/apache/poi/java/awt/event/ActionListener;

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
    iget-object v0, p0, Lorg/apache/poi/java/awt/Button;->actionListener:Lorg/apache/poi/java/awt/event/ActionListener;

    invoke-static {v0, p1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->add(Lorg/apache/poi/java/awt/event/ActionListener;Lorg/apache/poi/java/awt/event/ActionListener;)Lorg/apache/poi/java/awt/event/ActionListener;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/java/awt/Button;->actionListener:Lorg/apache/poi/java/awt/event/ActionListener;

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

    invoke-virtual {v1, p0}, Lorg/apache/poi/java/awt/Toolkit;->createButton(Lorg/apache/poi/java/awt/Button;)Lorg/apache/poi/java/awt/peer/ButtonPeer;

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

    const-class v0, Lorg/apache/poi/java/awt/Button;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "button"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lorg/apache/poi/java/awt/Button;->nameCounter:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lorg/apache/poi/java/awt/Button;->nameCounter:I

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

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_2

    iget-wide v0, p0, Lorg/apache/poi/java/awt/Component;->eventMask:J

    const-wide/16 v2, 0x80

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/apache/poi/java/awt/Button;->actionListener:Lorg/apache/poi/java/awt/event/ActionListener;

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

    new-instance v0, Lorg/apache/poi/java/awt/Button$AccessibleAWTButton;

    invoke-direct {v0, p0}, Lorg/apache/poi/java/awt/Button$AccessibleAWTButton;-><init>(Lorg/apache/poi/java/awt/Button;)V

    iput-object v0, p0, Lorg/apache/poi/java/awt/Component;->accessibleContext:Ljavax/accessibility/AccessibleContext;

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->accessibleContext:Ljavax/accessibility/AccessibleContext;

    return-object v0
.end method

.method public getActionCommand()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Button;->actionCommand:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/java/awt/Button;->label:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public declared-synchronized getActionListeners()[Lorg/apache/poi/java/awt/event/ActionListener;
    .locals 1

    monitor-enter p0

    :try_start_0
    const-class v0, Lorg/apache/poi/java/awt/event/ActionListener;

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/Button;->getListeners(Ljava/lang/Class;)[Ljava/util/EventListener;

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

    iget-object v0, p0, Lorg/apache/poi/java/awt/Button;->label:Ljava/lang/String;

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

    iget-object v0, p0, Lorg/apache/poi/java/awt/Button;->actionListener:Lorg/apache/poi/java/awt/event/ActionListener;

    invoke-static {v0, p1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->getListeners(Ljava/util/EventListener;Ljava/lang/Class;)[Ljava/util/EventListener;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lorg/apache/poi/java/awt/Component;->getListeners(Ljava/lang/Class;)[Ljava/util/EventListener;

    move-result-object p1

    return-object p1
.end method

.method public paramString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lorg/apache/poi/java/awt/Component;->paramString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",label="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/poi/java/awt/Button;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public processActionEvent(Lorg/apache/poi/java/awt/event/ActionEvent;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Button;->actionListener:Lorg/apache/poi/java/awt/event/ActionListener;

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

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/Button;->processActionEvent(Lorg/apache/poi/java/awt/event/ActionEvent;)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Lorg/apache/poi/java/awt/Component;->processEvent(Lorg/apache/poi/java/awt/AWTEvent;)V

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
    iget-object v0, p0, Lorg/apache/poi/java/awt/Button;->actionListener:Lorg/apache/poi/java/awt/event/ActionListener;

    invoke-static {v0, p1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->remove(Lorg/apache/poi/java/awt/event/ActionListener;Lorg/apache/poi/java/awt/event/ActionListener;)Lorg/apache/poi/java/awt/event/ActionListener;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/java/awt/Button;->actionListener:Lorg/apache/poi/java/awt/event/ActionListener;
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

    iput-object p1, p0, Lorg/apache/poi/java/awt/Button;->actionCommand:Ljava/lang/String;

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/Button;->label:Ljava/lang/String;

    if-eq p1, v0, :cond_2

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iput-object p1, p0, Lorg/apache/poi/java/awt/Button;->label:Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    check-cast v0, Lorg/apache/poi/java/awt/peer/ButtonPeer;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/peer/ButtonPeer;->setLabel(Ljava/lang/String;)V

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
