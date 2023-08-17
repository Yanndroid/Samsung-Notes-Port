.class Lorg/apache/poi/java/awt/WaitDispatchSupport;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/java/awt/SecondaryLoop;


# static fields
.field private static final log:Lorg/apache/poi/sun/util/logging/PlatformLogger;

.field private static timer:Ljava/util/Timer;


# instance fields
.field private volatile condition:Lorg/apache/poi/java/awt/Conditional;

.field private dispatchThread:Lorg/apache/poi/java/awt/EventDispatchThread;

.field private volatile extCondition:Lorg/apache/poi/java/awt/Conditional;

.field private filter:Lorg/apache/poi/java/awt/EventFilter;

.field private interval:J

.field private keepBlockingCT:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private keepBlockingEDT:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private timerTask:Ljava/util/TimerTask;

.field private final wakingRunnable:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "org.apache.poi.java.awt.event.WaitDispatchSupport"

    invoke-static {v0}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->getLogger(Ljava/lang/String;)Lorg/apache/poi/sun/util/logging/PlatformLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/java/awt/WaitDispatchSupport;->log:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/java/awt/EventDispatchThread;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/java/awt/WaitDispatchSupport;-><init>(Lorg/apache/poi/java/awt/EventDispatchThread;Lorg/apache/poi/java/awt/Conditional;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/java/awt/EventDispatchThread;Lorg/apache/poi/java/awt/Conditional;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/poi/java/awt/WaitDispatchSupport;->keepBlockingEDT:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/poi/java/awt/WaitDispatchSupport;->keepBlockingCT:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lorg/apache/poi/java/awt/WaitDispatchSupport$5;

    invoke-direct {v0, p0}, Lorg/apache/poi/java/awt/WaitDispatchSupport$5;-><init>(Lorg/apache/poi/java/awt/WaitDispatchSupport;)V

    iput-object v0, p0, Lorg/apache/poi/java/awt/WaitDispatchSupport;->wakingRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/apache/poi/java/awt/WaitDispatchSupport;->dispatchThread:Lorg/apache/poi/java/awt/EventDispatchThread;

    iput-object p2, p0, Lorg/apache/poi/java/awt/WaitDispatchSupport;->extCondition:Lorg/apache/poi/java/awt/Conditional;

    new-instance p1, Lorg/apache/poi/java/awt/WaitDispatchSupport$1;

    invoke-direct {p1, p0}, Lorg/apache/poi/java/awt/WaitDispatchSupport$1;-><init>(Lorg/apache/poi/java/awt/WaitDispatchSupport;)V

    iput-object p1, p0, Lorg/apache/poi/java/awt/WaitDispatchSupport;->condition:Lorg/apache/poi/java/awt/Conditional;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The dispatchThread can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/apache/poi/java/awt/EventDispatchThread;Lorg/apache/poi/java/awt/Conditional;Lorg/apache/poi/java/awt/EventFilter;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/java/awt/WaitDispatchSupport;-><init>(Lorg/apache/poi/java/awt/EventDispatchThread;Lorg/apache/poi/java/awt/Conditional;)V

    iput-object p3, p0, Lorg/apache/poi/java/awt/WaitDispatchSupport;->filter:Lorg/apache/poi/java/awt/EventFilter;

    const-wide/16 p1, 0x0

    cmp-long p1, p4, p1

    if-ltz p1, :cond_1

    iput-wide p4, p0, Lorg/apache/poi/java/awt/WaitDispatchSupport;->interval:J

    if-eqz p1, :cond_0

    invoke-static {}, Lorg/apache/poi/java/awt/WaitDispatchSupport;->initializeTimer()V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The interval value must be >= 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic access$000()Lorg/apache/poi/sun/util/logging/PlatformLogger;
    .locals 1

    sget-object v0, Lorg/apache/poi/java/awt/WaitDispatchSupport;->log:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    return-object v0
.end method

.method public static synthetic access$100(Lorg/apache/poi/java/awt/WaitDispatchSupport;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/java/awt/WaitDispatchSupport;->keepBlockingEDT:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic access$200(Lorg/apache/poi/java/awt/WaitDispatchSupport;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/java/awt/WaitDispatchSupport;->keepBlockingCT:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic access$300(Lorg/apache/poi/java/awt/WaitDispatchSupport;)Lorg/apache/poi/java/awt/Conditional;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/java/awt/WaitDispatchSupport;->extCondition:Lorg/apache/poi/java/awt/Conditional;

    return-object p0
.end method

.method public static synthetic access$400(Lorg/apache/poi/java/awt/WaitDispatchSupport;)Ljava/util/TimerTask;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/java/awt/WaitDispatchSupport;->timerTask:Ljava/util/TimerTask;

    return-object p0
.end method

.method public static synthetic access$402(Lorg/apache/poi/java/awt/WaitDispatchSupport;Ljava/util/TimerTask;)Ljava/util/TimerTask;
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/java/awt/WaitDispatchSupport;->timerTask:Ljava/util/TimerTask;

    return-object p1
.end method

.method public static synthetic access$500(Lorg/apache/poi/java/awt/WaitDispatchSupport;)Lorg/apache/poi/java/awt/EventFilter;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/java/awt/WaitDispatchSupport;->filter:Lorg/apache/poi/java/awt/EventFilter;

    return-object p0
.end method

.method public static synthetic access$600(Lorg/apache/poi/java/awt/WaitDispatchSupport;)Lorg/apache/poi/java/awt/Conditional;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/java/awt/WaitDispatchSupport;->condition:Lorg/apache/poi/java/awt/Conditional;

    return-object p0
.end method

.method public static synthetic access$700(Lorg/apache/poi/java/awt/WaitDispatchSupport;)Lorg/apache/poi/java/awt/EventDispatchThread;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/java/awt/WaitDispatchSupport;->dispatchThread:Lorg/apache/poi/java/awt/EventDispatchThread;

    return-object p0
.end method

.method public static synthetic access$800(Lorg/apache/poi/java/awt/WaitDispatchSupport;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/java/awt/WaitDispatchSupport;->wakeupEDT()V

    return-void
.end method

.method public static synthetic access$900()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lorg/apache/poi/java/awt/WaitDispatchSupport;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static final getTreeLock()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lorg/apache/poi/java/awt/Component;->LOCK:Ljava/lang/Object;

    return-object v0
.end method

.method private static declared-synchronized initializeTimer()V
    .locals 4

    const-class v0, Lorg/apache/poi/java/awt/WaitDispatchSupport;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/apache/poi/java/awt/WaitDispatchSupport;->timer:Ljava/util/Timer;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/Timer;

    const-string v2, "AWT-WaitDispatchSupport-Timer"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    sput-object v1, Lorg/apache/poi/java/awt/WaitDispatchSupport;->timer:Ljava/util/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private wakeupEDT()V
    .locals 5

    sget-object v0, Lorg/apache/poi/java/awt/WaitDispatchSupport;->log:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wakeupEDT(): EDT == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/poi/java/awt/WaitDispatchSupport;->dispatchThread:Lorg/apache/poi/java/awt/EventDispatchThread;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->finest(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/poi/java/awt/WaitDispatchSupport;->dispatchThread:Lorg/apache/poi/java/awt/EventDispatchThread;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/EventDispatchThread;->getEventQueue()Lorg/apache/poi/java/awt/EventQueue;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/sun/awt/PeerEvent;

    iget-object v2, p0, Lorg/apache/poi/java/awt/WaitDispatchSupport;->wakingRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x1

    invoke-direct {v1, p0, v2, v3, v4}, Lorg/apache/poi/sun/awt/PeerEvent;-><init>(Ljava/lang/Object;Ljava/lang/Runnable;J)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/java/awt/EventQueue;->postEvent(Lorg/apache/poi/java/awt/AWTEvent;)V

    return-void
.end method


# virtual methods
.method public enter()Z
    .locals 10

    sget-object v0, Lorg/apache/poi/java/awt/WaitDispatchSupport;->log:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enter(): blockingEDT="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/poi/java/awt/WaitDispatchSupport;->keepBlockingEDT:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", blockingCT="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/poi/java/awt/WaitDispatchSupport;->keepBlockingCT:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/poi/java/awt/WaitDispatchSupport;->keepBlockingEDT:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "The secondary loop is already running, aborting"

    invoke-virtual {v0, v1}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    return v2

    :cond_0
    new-instance v1, Lorg/apache/poi/java/awt/WaitDispatchSupport$2;

    invoke-direct {v1, p0}, Lorg/apache/poi/java/awt/WaitDispatchSupport$2;-><init>(Lorg/apache/poi/java/awt/WaitDispatchSupport;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/poi/java/awt/WaitDispatchSupport;->dispatchThread:Lorg/apache/poi/java/awt/EventDispatchThread;

    const-wide/16 v6, 0x0

    if-ne v4, v5, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "On dispatch thread: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/apache/poi/java/awt/WaitDispatchSupport;->dispatchThread:Lorg/apache/poi/java/awt/EventDispatchThread;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->finest(Ljava/lang/String;)V

    iget-wide v4, p0, Lorg/apache/poi/java/awt/WaitDispatchSupport;->interval:J

    cmp-long v2, v4, v6

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "scheduling the timer for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lorg/apache/poi/java/awt/WaitDispatchSupport;->interval:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ms"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->finest(Ljava/lang/String;)V

    sget-object v2, Lorg/apache/poi/java/awt/WaitDispatchSupport;->timer:Ljava/util/Timer;

    new-instance v4, Lorg/apache/poi/java/awt/WaitDispatchSupport$3;

    invoke-direct {v4, p0}, Lorg/apache/poi/java/awt/WaitDispatchSupport$3;-><init>(Lorg/apache/poi/java/awt/WaitDispatchSupport;)V

    iput-object v4, p0, Lorg/apache/poi/java/awt/WaitDispatchSupport;->timerTask:Ljava/util/TimerTask;

    iget-wide v5, p0, Lorg/apache/poi/java/awt/WaitDispatchSupport;->interval:J

    invoke-virtual {v2, v4, v5, v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_1
    invoke-static {}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getCurrentKeyboardFocusManager()Lorg/apache/poi/java/awt/KeyboardFocusManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getCurrentSequencedEvent()Lorg/apache/poi/java/awt/SequencedEvent;

    move-result-object v2

    if-eqz v2, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dispose current SequencedEvent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/apache/poi/java/awt/SequencedEvent;->dispose()V

    :cond_2
    new-instance v0, Lorg/apache/poi/java/awt/WaitDispatchSupport$4;

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/java/awt/WaitDispatchSupport$4;-><init>(Lorg/apache/poi/java/awt/WaitDispatchSupport;Ljava/lang/Runnable;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    goto/16 :goto_4

    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "On non-dispatch thread: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->finest(Ljava/lang/String;)V

    invoke-static {}, Lorg/apache/poi/java/awt/WaitDispatchSupport;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v4, p0, Lorg/apache/poi/java/awt/WaitDispatchSupport;->filter:Lorg/apache/poi/java/awt/EventFilter;

    if-eqz v4, :cond_4

    iget-object v5, p0, Lorg/apache/poi/java/awt/WaitDispatchSupport;->dispatchThread:Lorg/apache/poi/java/awt/EventDispatchThread;

    invoke-virtual {v5, v4}, Lorg/apache/poi/java/awt/EventDispatchThread;->addEventFilter(Lorg/apache/poi/java/awt/EventFilter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_4
    :try_start_1
    iget-object v4, p0, Lorg/apache/poi/java/awt/WaitDispatchSupport;->dispatchThread:Lorg/apache/poi/java/awt/EventDispatchThread;

    invoke-virtual {v4}, Lorg/apache/poi/java/awt/EventDispatchThread;->getEventQueue()Lorg/apache/poi/java/awt/EventQueue;

    move-result-object v4

    new-instance v5, Lorg/apache/poi/sun/awt/PeerEvent;

    const-wide/16 v8, 0x1

    invoke-direct {v5, p0, v1, v8, v9}, Lorg/apache/poi/sun/awt/PeerEvent;-><init>(Ljava/lang/Object;Ljava/lang/Runnable;J)V

    invoke-virtual {v4, v5}, Lorg/apache/poi/java/awt/EventQueue;->postEvent(Lorg/apache/poi/java/awt/AWTEvent;)V

    iget-object v1, p0, Lorg/apache/poi/java/awt/WaitDispatchSupport;->keepBlockingCT:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-wide v4, p0, Lorg/apache/poi/java/awt/WaitDispatchSupport;->interval:J

    cmp-long v1, v4, v6

    if-lez v1, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    :goto_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/WaitDispatchSupport;->keepBlockingCT:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lorg/apache/poi/java/awt/WaitDispatchSupport;->extCondition:Lorg/apache/poi/java/awt/Conditional;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/apache/poi/java/awt/WaitDispatchSupport;->extCondition:Lorg/apache/poi/java/awt/Conditional;

    invoke-interface {v1}, Lorg/apache/poi/java/awt/Conditional;->evaluate()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_5
    iget-wide v6, p0, Lorg/apache/poi/java/awt/WaitDispatchSupport;->interval:J

    add-long/2addr v6, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v1, v6, v8

    if-lez v1, :cond_8

    invoke-static {}, Lorg/apache/poi/java/awt/WaitDispatchSupport;->getTreeLock()Ljava/lang/Object;

    move-result-object v1

    iget-wide v6, p0, Lorg/apache/poi/java/awt/WaitDispatchSupport;->interval:J

    invoke-virtual {v1, v6, v7}, Ljava/lang/Object;->wait(J)V

    goto :goto_0

    :cond_6
    :goto_1
    iget-object v1, p0, Lorg/apache/poi/java/awt/WaitDispatchSupport;->keepBlockingCT:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lorg/apache/poi/java/awt/WaitDispatchSupport;->extCondition:Lorg/apache/poi/java/awt/Conditional;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lorg/apache/poi/java/awt/WaitDispatchSupport;->extCondition:Lorg/apache/poi/java/awt/Conditional;

    invoke-interface {v1}, Lorg/apache/poi/java/awt/Conditional;->evaluate()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    invoke-static {}, Lorg/apache/poi/java/awt/WaitDispatchSupport;->getTreeLock()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_1

    :cond_8
    sget-object v1, Lorg/apache/poi/java/awt/WaitDispatchSupport;->log:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "waitDone "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/apache/poi/java/awt/WaitDispatchSupport;->keepBlockingEDT:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/apache/poi/java/awt/WaitDispatchSupport;->keepBlockingCT:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Lorg/apache/poi/java/awt/WaitDispatchSupport;->filter:Lorg/apache/poi/java/awt/EventFilter;

    if-eqz v1, :cond_9

    iget-object v4, p0, Lorg/apache/poi/java/awt/WaitDispatchSupport;->dispatchThread:Lorg/apache/poi/java/awt/EventDispatchThread;

    :goto_2
    invoke-virtual {v4, v1}, Lorg/apache/poi/java/awt/EventDispatchThread;->removeEventFilter(Lorg/apache/poi/java/awt/EventFilter;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_0
    move-exception v1

    goto :goto_5

    :catch_0
    move-exception v1

    :try_start_3
    sget-object v4, Lorg/apache/poi/java/awt/WaitDispatchSupport;->log:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception caught while waiting: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v1, p0, Lorg/apache/poi/java/awt/WaitDispatchSupport;->filter:Lorg/apache/poi/java/awt/EventFilter;

    if-eqz v1, :cond_9

    iget-object v4, p0, Lorg/apache/poi/java/awt/WaitDispatchSupport;->dispatchThread:Lorg/apache/poi/java/awt/EventDispatchThread;

    goto :goto_2

    :cond_9
    :goto_3
    iget-object v1, p0, Lorg/apache/poi/java/awt/WaitDispatchSupport;->keepBlockingEDT:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, p0, Lorg/apache/poi/java/awt/WaitDispatchSupport;->keepBlockingCT:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    monitor-exit v0

    :goto_4
    return v3

    :goto_5
    iget-object v2, p0, Lorg/apache/poi/java/awt/WaitDispatchSupport;->filter:Lorg/apache/poi/java/awt/EventFilter;

    if-eqz v2, :cond_a

    iget-object v3, p0, Lorg/apache/poi/java/awt/WaitDispatchSupport;->dispatchThread:Lorg/apache/poi/java/awt/EventDispatchThread;

    invoke-virtual {v3, v2}, Lorg/apache/poi/java/awt/EventDispatchThread;->removeEventFilter(Lorg/apache/poi/java/awt/EventFilter;)V

    :cond_a
    throw v1

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public exit()Z
    .locals 3

    sget-object v0, Lorg/apache/poi/java/awt/WaitDispatchSupport;->log:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exit(): blockingEDT="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/poi/java/awt/WaitDispatchSupport;->keepBlockingEDT:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", blockingCT="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/poi/java/awt/WaitDispatchSupport;->keepBlockingCT:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/poi/java/awt/WaitDispatchSupport;->keepBlockingEDT:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/java/awt/WaitDispatchSupport;->wakeupEDT()V

    return v1

    :cond_0
    return v2
.end method
