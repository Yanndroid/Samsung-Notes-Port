.class public Lorg/apache/poi/java/awt/TextField;
.super Lorg/apache/poi/java/awt/TextComponent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/java/awt/TextField$AccessibleAWTTextField;
    }
.end annotation


# static fields
.field private static final base:Ljava/lang/String; = "textfield"

.field private static nameCounter:I = 0x0

.field private static final serialVersionUID:J = -0x292a5feef14ebefdL


# instance fields
.field public transient actionListener:Lorg/apache/poi/java/awt/event/ActionListener;

.field public columns:I

.field public echoChar:C

.field private textFieldSerializedDataVersion:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->loadLibraries()V

    invoke-static {}, Lorg/apache/poi/java/awt/GraphicsEnvironment;->isHeadless()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/apache/poi/java/awt/TextField;->initIDs()V

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/java/awt/TextField;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const-string v0, ""

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/java/awt/TextField;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Lorg/apache/poi/java/awt/TextField;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/java/awt/TextComponent;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    iput p1, p0, Lorg/apache/poi/java/awt/TextField;->textFieldSerializedDataVersion:I

    if-ltz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput p2, p0, Lorg/apache/poi/java/awt/TextField;->columns:I

    return-void
.end method

.method private static native initIDs()V
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    iget v0, p0, Lorg/apache/poi/java/awt/TextField;->columns:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/java/awt/TextField;->columns:I

    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    const-string v1, "actionL"

    if-ne v1, v0, :cond_1

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/java/awt/event/ActionListener;

    move-object v1, v0

    check-cast v1, Lorg/apache/poi/java/awt/event/ActionListener;

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/TextField;->addActionListener(Lorg/apache/poi/java/awt/event/ActionListener;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    iget-object v0, p0, Lorg/apache/poi/java/awt/TextField;->actionListener:Lorg/apache/poi/java/awt/event/ActionListener;

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
    iget-object v0, p0, Lorg/apache/poi/java/awt/TextField;->actionListener:Lorg/apache/poi/java/awt/event/ActionListener;

    invoke-static {v0, p1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->add(Lorg/apache/poi/java/awt/event/ActionListener;Lorg/apache/poi/java/awt/event/ActionListener;)Lorg/apache/poi/java/awt/event/ActionListener;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/java/awt/TextField;->actionListener:Lorg/apache/poi/java/awt/event/ActionListener;

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

    invoke-virtual {v1, p0}, Lorg/apache/poi/java/awt/Toolkit;->createTextField(Lorg/apache/poi/java/awt/TextField;)Lorg/apache/poi/java/awt/peer/TextFieldPeer;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    :cond_0
    invoke-super {p0}, Lorg/apache/poi/java/awt/TextComponent;->addNotify()V

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

    const-class v0, Lorg/apache/poi/java/awt/TextField;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "textfield"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lorg/apache/poi/java/awt/TextField;->nameCounter:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lorg/apache/poi/java/awt/TextField;->nameCounter:I

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

.method public echoCharIsSet()Z
    .locals 1

    iget-char v0, p0, Lorg/apache/poi/java/awt/TextField;->echoChar:C

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
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

    iget-object p1, p0, Lorg/apache/poi/java/awt/TextField;->actionListener:Lorg/apache/poi/java/awt/event/ActionListener;

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
    invoke-super {p0, p1}, Lorg/apache/poi/java/awt/TextComponent;->eventEnabled(Lorg/apache/poi/java/awt/AWTEvent;)Z

    move-result p1

    return p1
.end method

.method public getAccessibleContext()Ljavax/accessibility/AccessibleContext;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->accessibleContext:Ljavax/accessibility/AccessibleContext;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/poi/java/awt/TextField$AccessibleAWTTextField;

    invoke-direct {v0, p0}, Lorg/apache/poi/java/awt/TextField$AccessibleAWTTextField;-><init>(Lorg/apache/poi/java/awt/TextField;)V

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

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/TextField;->getListeners(Ljava/lang/Class;)[Ljava/util/EventListener;

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

.method public getColumns()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/java/awt/TextField;->columns:I

    return v0
.end method

.method public getEchoChar()C
    .locals 1

    iget-char v0, p0, Lorg/apache/poi/java/awt/TextField;->echoChar:C

    return v0
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

    iget-object v0, p0, Lorg/apache/poi/java/awt/TextField;->actionListener:Lorg/apache/poi/java/awt/event/ActionListener;

    invoke-static {v0, p1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->getListeners(Ljava/util/EventListener;Ljava/lang/Class;)[Ljava/util/EventListener;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lorg/apache/poi/java/awt/TextComponent;->getListeners(Ljava/lang/Class;)[Ljava/util/EventListener;

    move-result-object p1

    return-object p1
.end method

.method public getMinimumSize()Lorg/apache/poi/java/awt/Dimension;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/TextField;->minimumSize()Lorg/apache/poi/java/awt/Dimension;

    move-result-object v0

    return-object v0
.end method

.method public getMinimumSize(I)Lorg/apache/poi/java/awt/Dimension;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/TextField;->minimumSize(I)Lorg/apache/poi/java/awt/Dimension;

    move-result-object p1

    return-object p1
.end method

.method public getPreferredSize()Lorg/apache/poi/java/awt/Dimension;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/TextField;->preferredSize()Lorg/apache/poi/java/awt/Dimension;

    move-result-object v0

    return-object v0
.end method

.method public getPreferredSize(I)Lorg/apache/poi/java/awt/Dimension;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/TextField;->preferredSize(I)Lorg/apache/poi/java/awt/Dimension;

    move-result-object p1

    return-object p1
.end method

.method public minimumSize()Lorg/apache/poi/java/awt/Dimension;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lorg/apache/poi/java/awt/TextField;->columns:I

    if-lez v1, :cond_0

    invoke-virtual {p0, v1}, Lorg/apache/poi/java/awt/TextField;->minimumSize(I)Lorg/apache/poi/java/awt/Dimension;

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

    check-cast v1, Lorg/apache/poi/java/awt/peer/TextFieldPeer;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lorg/apache/poi/java/awt/peer/TextFieldPeer;->getMinimumSize(I)Lorg/apache/poi/java/awt/Dimension;

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

    invoke-super {p0}, Lorg/apache/poi/java/awt/TextComponent;->paramString()Ljava/lang/String;

    move-result-object v0

    iget-char v1, p0, Lorg/apache/poi/java/awt/TextField;->echoChar:C

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",echo="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v0, p0, Lorg/apache/poi/java/awt/TextField;->echoChar:C

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
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
    iget v1, p0, Lorg/apache/poi/java/awt/TextField;->columns:I

    if-lez v1, :cond_0

    invoke-virtual {p0, v1}, Lorg/apache/poi/java/awt/TextField;->preferredSize(I)Lorg/apache/poi/java/awt/Dimension;

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

    check-cast v1, Lorg/apache/poi/java/awt/peer/TextFieldPeer;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lorg/apache/poi/java/awt/peer/TextFieldPeer;->getPreferredSize(I)Lorg/apache/poi/java/awt/Dimension;

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

    iget-object v0, p0, Lorg/apache/poi/java/awt/TextField;->actionListener:Lorg/apache/poi/java/awt/event/ActionListener;

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

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/TextField;->processActionEvent(Lorg/apache/poi/java/awt/event/ActionEvent;)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Lorg/apache/poi/java/awt/TextComponent;->processEvent(Lorg/apache/poi/java/awt/AWTEvent;)V

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
    iget-object v0, p0, Lorg/apache/poi/java/awt/TextField;->actionListener:Lorg/apache/poi/java/awt/event/ActionListener;

    invoke-static {v0, p1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->remove(Lorg/apache/poi/java/awt/event/ActionListener;Lorg/apache/poi/java/awt/event/ActionListener;)Lorg/apache/poi/java/awt/event/ActionListener;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/java/awt/TextField;->actionListener:Lorg/apache/poi/java/awt/event/ActionListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setColumns(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/apache/poi/java/awt/TextField;->columns:I

    if-ltz p1, :cond_2

    if-eq p1, v0, :cond_0

    iput p1, p0, Lorg/apache/poi/java/awt/TextField;->columns:I

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq p1, v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->invalidate()V

    :cond_1
    return-void

    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "columns less than zero."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setEchoChar(C)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/TextField;->setEchoCharacter(C)V

    return-void
.end method

.method public declared-synchronized setEchoCharacter(C)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-char v0, p0, Lorg/apache/poi/java/awt/TextField;->echoChar:C

    if-eq v0, p1, :cond_0

    iput-char p1, p0, Lorg/apache/poi/java/awt/TextField;->echoChar:C

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    check-cast v0, Lorg/apache/poi/java/awt/peer/TextFieldPeer;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/peer/TextFieldPeer;->setEchoChar(C)V
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

.method public setText(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/poi/java/awt/TextComponent;->setText(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->invalidateIfValid()V

    return-void
.end method
