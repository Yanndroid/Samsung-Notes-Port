.class Lorg/apache/poi/java/awt/SequencedEvent;
.super Lorg/apache/poi/java/awt/AWTEvent;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/java/awt/ActiveEvent;


# static fields
.field private static final ID:I = 0x3ee

.field private static final list:Ljava/util/LinkedList;

.field private static final serialVersionUID:J = 0x799f90be83eff2bL


# instance fields
.field private appContext:Lorg/apache/poi/sun/awt/AppContext;

.field private disposed:Z

.field private final nested:Lorg/apache/poi/java/awt/AWTEvent;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lorg/apache/poi/java/awt/SequencedEvent;->list:Ljava/util/LinkedList;

    new-instance v0, Lorg/apache/poi/java/awt/SequencedEvent$1;

    invoke-direct {v0}, Lorg/apache/poi/java/awt/SequencedEvent$1;-><init>()V

    invoke-static {v0}, Lorg/apache/poi/sun/awt/AWTAccessor;->setSequencedEventAccessor(Lorg/apache/poi/sun/awt/AWTAccessor$SequencedEventAccessor;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/java/awt/AWTEvent;)V
    .locals 2

    invoke-virtual {p1}, Ljava/util/EventObject;->getSource()Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x3ee

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/java/awt/AWTEvent;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Lorg/apache/poi/java/awt/SequencedEvent;->nested:Lorg/apache/poi/java/awt/AWTEvent;

    invoke-static {p1}, Lorg/apache/poi/sun/awt/SunToolkit;->setSystemGenerated(Lorg/apache/poi/java/awt/AWTEvent;)V

    const-class p1, Lorg/apache/poi/java/awt/SequencedEvent;

    monitor-enter p1

    :try_start_0
    sget-object v0, Lorg/apache/poi/java/awt/SequencedEvent;->list:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static synthetic access$000(Lorg/apache/poi/java/awt/SequencedEvent;)Lorg/apache/poi/java/awt/AWTEvent;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/java/awt/SequencedEvent;->nested:Lorg/apache/poi/java/awt/AWTEvent;

    return-object p0
.end method

.method private static final declared-synchronized getFirst()Lorg/apache/poi/java/awt/SequencedEvent;
    .locals 2

    const-class v0, Lorg/apache/poi/java/awt/SequencedEvent;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/apache/poi/java/awt/SequencedEvent;->list:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/java/awt/SequencedEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static final getFirstWithContext()Lorg/apache/poi/java/awt/SequencedEvent;
    .locals 2

    :goto_0
    invoke-static {}, Lorg/apache/poi/java/awt/SequencedEvent;->getFirst()Lorg/apache/poi/java/awt/SequencedEvent;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/java/awt/SequencedEvent;->isOwnerAppContextDisposed(Lorg/apache/poi/java/awt/SequencedEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/SequencedEvent;->dispose()V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static final isOwnerAppContextDisposed(Lorg/apache/poi/java/awt/SequencedEvent;)Z
    .locals 1

    if-eqz p0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/java/awt/SequencedEvent;->nested:Lorg/apache/poi/java/awt/AWTEvent;

    invoke-virtual {p0}, Ljava/util/EventObject;->getSource()Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Lorg/apache/poi/java/awt/Component;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/apache/poi/java/awt/Component;

    iget-object p0, p0, Lorg/apache/poi/java/awt/Component;->appContext:Lorg/apache/poi/sun/awt/AppContext;

    invoke-virtual {p0}, Lorg/apache/poi/sun/awt/AppContext;->isDisposed()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final dispatch()V
    .locals 4

    :try_start_0
    invoke-static {}, Lorg/apache/poi/sun/awt/AppContext;->getAppContext()Lorg/apache/poi/sun/awt/AppContext;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/java/awt/SequencedEvent;->appContext:Lorg/apache/poi/sun/awt/AppContext;

    invoke-static {}, Lorg/apache/poi/java/awt/SequencedEvent;->getFirst()Lorg/apache/poi/java/awt/SequencedEvent;

    move-result-object v0

    if-eq v0, p0, :cond_1

    invoke-static {}, Lorg/apache/poi/java/awt/EventQueue;->isDispatchThread()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/java/awt/EventDispatchThread;

    const/16 v1, 0x3ef

    new-instance v2, Lorg/apache/poi/java/awt/SequencedEvent$2;

    invoke-direct {v2, p0}, Lorg/apache/poi/java/awt/SequencedEvent$2;-><init>(Lorg/apache/poi/java/awt/SequencedEvent;)V

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/java/awt/EventDispatchThread;->pumpEvents(ILorg/apache/poi/java/awt/Conditional;)V

    goto :goto_2

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/SequencedEvent;->isFirstOrDisposed()Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lorg/apache/poi/java/awt/SequencedEvent;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-class v1, Lorg/apache/poi/java/awt/SequencedEvent;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1

    :cond_1
    :goto_2
    iget-boolean v0, p0, Lorg/apache/poi/java/awt/SequencedEvent;->disposed:Z

    if-nez v0, :cond_2

    invoke-static {}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getCurrentKeyboardFocusManager()Lorg/apache/poi/java/awt/KeyboardFocusManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->setCurrentSequencedEvent(Lorg/apache/poi/java/awt/SequencedEvent;)V

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->getEventQueue()Lorg/apache/poi/java/awt/EventQueue;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/java/awt/SequencedEvent;->nested:Lorg/apache/poi/java/awt/AWTEvent;

    invoke-virtual {v0, v1}, Lorg/apache/poi/java/awt/EventQueue;->dispatchEvent(Lorg/apache/poi/java/awt/AWTEvent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_2
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/SequencedEvent;->dispose()V

    return-void

    :catchall_1
    move-exception v0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/SequencedEvent;->dispose()V

    throw v0
.end method

.method public final dispose()V
    .locals 4

    const-class v0, Lorg/apache/poi/java/awt/SequencedEvent;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lorg/apache/poi/java/awt/SequencedEvent;->disposed:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    invoke-static {}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getCurrentKeyboardFocusManager()Lorg/apache/poi/java/awt/KeyboardFocusManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getCurrentSequencedEvent()Lorg/apache/poi/java/awt/SequencedEvent;

    move-result-object v1

    const/4 v2, 0x0

    if-ne v1, p0, :cond_1

    invoke-static {}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getCurrentKeyboardFocusManager()Lorg/apache/poi/java/awt/KeyboardFocusManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->setCurrentSequencedEvent(Lorg/apache/poi/java/awt/SequencedEvent;)V

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/poi/java/awt/SequencedEvent;->disposed:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Lorg/apache/poi/java/awt/SequencedEvent;->appContext:Lorg/apache/poi/sun/awt/AppContext;

    if-eqz v0, :cond_2

    new-instance v1, Lorg/apache/poi/java/awt/SentEvent;

    invoke-direct {v1}, Lorg/apache/poi/java/awt/SentEvent;-><init>()V

    invoke-static {v0, v1}, Lorg/apache/poi/sun/awt/SunToolkit;->postEvent(Lorg/apache/poi/sun/awt/AppContext;Lorg/apache/poi/java/awt/AWTEvent;)V

    :cond_2
    const-class v1, Lorg/apache/poi/java/awt/SequencedEvent;

    monitor-enter v1

    :try_start_1
    const-class v0, Lorg/apache/poi/java/awt/SequencedEvent;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    sget-object v0, Lorg/apache/poi/java/awt/SequencedEvent;->list:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p0, :cond_3

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lorg/apache/poi/java/awt/SequencedEvent;

    goto :goto_0

    :cond_3
    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    :cond_4
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_5

    iget-object v0, v2, Lorg/apache/poi/java/awt/SequencedEvent;->appContext:Lorg/apache/poi/sun/awt/AppContext;

    if-eqz v0, :cond_5

    new-instance v1, Lorg/apache/poi/java/awt/SentEvent;

    invoke-direct {v1}, Lorg/apache/poi/java/awt/SentEvent;-><init>()V

    invoke-static {v0, v1}, Lorg/apache/poi/sun/awt/SunToolkit;->postEvent(Lorg/apache/poi/sun/awt/AppContext;Lorg/apache/poi/java/awt/AWTEvent;)V

    :cond_5
    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public final isFirstOrDisposed()Z
    .locals 2

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/SequencedEvent;->disposed:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lorg/apache/poi/java/awt/SequencedEvent;->getFirstWithContext()Lorg/apache/poi/java/awt/SequencedEvent;

    move-result-object v0

    if-eq p0, v0, :cond_2

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/SequencedEvent;->disposed:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method
