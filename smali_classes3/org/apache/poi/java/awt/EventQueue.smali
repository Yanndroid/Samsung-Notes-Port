.class public Lorg/apache/poi/java/awt/EventQueue;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CACHE_LENGTH:I = 0x5

.field private static final DRAG:I = 0x3

.field private static final HIGH_PRIORITY:I = 0x2

.field private static final LOW_PRIORITY:I = 0x0

.field private static final MOVE:I = 0x2

.field private static final NORM_PRIORITY:I = 0x1

.field private static final NUM_PRIORITIES:I = 0x4

.field private static final PAINT:I = 0x0

.field private static final PEER:I = 0x4

.field private static final ULTIMATE_PRIORITY:I = 0x3

.field private static final UPDATE:I = 0x1

.field private static final dummyRunnable:Ljava/lang/Runnable;

.field private static volatile eventLog:Lorg/apache/poi/sun/util/logging/PlatformLogger;

.field private static final javaSecurityAccess:Lorg/apache/poi/sun/misc/JavaSecurityAccess;

.field private static final threadInitNumber:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final appContext:Lorg/apache/poi/sun/awt/AppContext;

.field private final classLoader:Ljava/lang/ClassLoader;

.field private currentEvent:Ljava/lang/ref/WeakReference;

.field private dispatchThread:Lorg/apache/poi/java/awt/EventDispatchThread;

.field private mostRecentEventTime:J

.field private final name:Ljava/lang/String;

.field private nextQueue:Lorg/apache/poi/java/awt/EventQueue;

.field private previousQueue:Lorg/apache/poi/java/awt/EventQueue;

.field private final pushPopCond:Ljava/util/concurrent/locks/Condition;

.field private final pushPopLock:Ljava/util/concurrent/locks/Lock;

.field private queues:[Lorg/apache/poi/java/awt/Queue;

.field private final threadGroup:Ljava/lang/ThreadGroup;

.field private volatile waitForID:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lorg/apache/poi/java/awt/EventQueue;->threadInitNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Lorg/apache/poi/java/awt/EventQueue$1;

    invoke-direct {v0}, Lorg/apache/poi/java/awt/EventQueue$1;-><init>()V

    sput-object v0, Lorg/apache/poi/java/awt/EventQueue;->dummyRunnable:Ljava/lang/Runnable;

    new-instance v0, Lorg/apache/poi/java/awt/EventQueue$2;

    invoke-direct {v0}, Lorg/apache/poi/java/awt/EventQueue$2;-><init>()V

    invoke-static {v0}, Lorg/apache/poi/sun/awt/AWTAccessor;->setEventQueueAccessor(Lorg/apache/poi/sun/awt/AWTAccessor$EventQueueAccessor;)V

    invoke-static {}, Lorg/apache/poi/sun/misc/SharedSecrets;->getJavaSecurityAccess()Lorg/apache/poi/sun/misc/JavaSecurityAccess;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/java/awt/EventQueue;->javaSecurityAccess:Lorg/apache/poi/sun/misc/JavaSecurityAccess;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [Lorg/apache/poi/java/awt/Queue;

    iput-object v1, p0, Lorg/apache/poi/java/awt/EventQueue;->queues:[Lorg/apache/poi/java/awt/Queue;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/java/awt/EventQueue;->threadGroup:Ljava/lang/ThreadGroup;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/java/awt/EventQueue;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/apache/poi/java/awt/EventQueue;->mostRecentEventTime:J

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AWT-EventQueue-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lorg/apache/poi/java/awt/EventQueue;->threadInitNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/java/awt/EventQueue;->name:Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lorg/apache/poi/java/awt/EventQueue;->queues:[Lorg/apache/poi/java/awt/Queue;

    new-instance v3, Lorg/apache/poi/java/awt/Queue;

    invoke-direct {v3}, Lorg/apache/poi/java/awt/Queue;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/apache/poi/sun/awt/AppContext;->getAppContext()Lorg/apache/poi/sun/awt/AppContext;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/java/awt/EventQueue;->appContext:Lorg/apache/poi/sun/awt/AppContext;

    sget-object v1, Lorg/apache/poi/sun/awt/AppContext;->EVENT_QUEUE_LOCK_KEY:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/apache/poi/sun/awt/AppContext;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/locks/Lock;

    iput-object v1, p0, Lorg/apache/poi/java/awt/EventQueue;->pushPopLock:Ljava/util/concurrent/locks/Lock;

    sget-object v1, Lorg/apache/poi/sun/awt/AppContext;->EVENT_QUEUE_COND_KEY:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/apache/poi/sun/awt/AppContext;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/locks/Condition;

    iput-object v0, p0, Lorg/apache/poi/java/awt/EventQueue;->pushPopCond:Ljava/util/concurrent/locks/Condition;

    return-void
.end method

.method public static synthetic access$000(Lorg/apache/poi/java/awt/EventQueue;)Z
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/java/awt/EventQueue;->noEvents()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$100(Lorg/apache/poi/java/awt/EventQueue;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/java/awt/EventQueue;->wakeup(Z)V

    return-void
.end method

.method public static synthetic access$200(Lorg/apache/poi/java/awt/EventQueue;)J
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/java/awt/EventQueue;->getMostRecentEventTimeImpl()J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic access$300(Lorg/apache/poi/java/awt/EventQueue;Lorg/apache/poi/java/awt/AWTEvent;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/java/awt/EventQueue;->dispatchEventImpl(Lorg/apache/poi/java/awt/AWTEvent;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic access$400()Lorg/apache/poi/sun/misc/JavaSecurityAccess;
    .locals 1

    sget-object v0, Lorg/apache/poi/java/awt/EventQueue;->javaSecurityAccess:Lorg/apache/poi/sun/misc/JavaSecurityAccess;

    return-object v0
.end method

.method public static synthetic access$500(Lorg/apache/poi/java/awt/EventQueue;)Ljava/lang/ThreadGroup;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/java/awt/EventQueue;->threadGroup:Ljava/lang/ThreadGroup;

    return-object p0
.end method

.method public static synthetic access$600(Lorg/apache/poi/java/awt/EventQueue;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/java/awt/EventQueue;->name:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$700(Lorg/apache/poi/java/awt/EventQueue;)Ljava/lang/ClassLoader;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/java/awt/EventQueue;->classLoader:Ljava/lang/ClassLoader;

    return-object p0
.end method

.method private cacheEQItem(Lorg/apache/poi/sun/awt/EventQueueItem;)V
    .locals 3

    iget-object v0, p1, Lorg/apache/poi/sun/awt/EventQueueItem;->event:Lorg/apache/poi/java/awt/AWTEvent;

    instance-of v0, v0, Lorg/apache/poi/sun/awt/dnd/SunDropTargetEvent;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lorg/apache/poi/sun/awt/EventQueueItem;->event:Lorg/apache/poi/java/awt/AWTEvent;

    invoke-static {v0}, Lorg/apache/poi/java/awt/EventQueue;->eventToCacheIndex(Lorg/apache/poi/java/awt/AWTEvent;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget-object v1, p1, Lorg/apache/poi/sun/awt/EventQueueItem;->event:Lorg/apache/poi/java/awt/AWTEvent;

    invoke-virtual {v1}, Ljava/util/EventObject;->getSource()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lorg/apache/poi/java/awt/Component;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lorg/apache/poi/sun/awt/EventQueueItem;->event:Lorg/apache/poi/java/awt/AWTEvent;

    invoke-virtual {v1}, Ljava/util/EventObject;->getSource()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/java/awt/Component;

    iget-object v2, v1, Lorg/apache/poi/java/awt/Component;->eventCache:[Lorg/apache/poi/sun/awt/EventQueueItem;

    if-nez v2, :cond_1

    const/4 v2, 0x5

    new-array v2, v2, [Lorg/apache/poi/sun/awt/EventQueueItem;

    iput-object v2, v1, Lorg/apache/poi/java/awt/Component;->eventCache:[Lorg/apache/poi/sun/awt/EventQueueItem;

    :cond_1
    iget-object v1, v1, Lorg/apache/poi/java/awt/Component;->eventCache:[Lorg/apache/poi/sun/awt/EventQueueItem;

    aput-object p1, v1, v0

    :cond_2
    return-void
.end method

.method private coalesceEvent(Lorg/apache/poi/java/awt/AWTEvent;I)Z
    .locals 2

    invoke-virtual {p1}, Ljava/util/EventObject;->getSource()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/apache/poi/java/awt/Component;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v0, p1, Lorg/apache/poi/sun/awt/PeerEvent;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/apache/poi/sun/awt/PeerEvent;

    invoke-direct {p0, p1}, Lorg/apache/poi/java/awt/EventQueue;->coalescePeerEvent(Lorg/apache/poi/sun/awt/PeerEvent;)Z

    move-result p1

    return p1

    :cond_1
    invoke-virtual {p1}, Ljava/util/EventObject;->getSource()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/java/awt/Component;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Component;->isCoalescingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/java/awt/EventQueue;->coalesceOtherEvent(Lorg/apache/poi/java/awt/AWTEvent;I)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    instance-of p2, p1, Lorg/apache/poi/java/awt/event/PaintEvent;

    if-eqz p2, :cond_3

    check-cast p1, Lorg/apache/poi/java/awt/event/PaintEvent;

    invoke-direct {p0, p1}, Lorg/apache/poi/java/awt/EventQueue;->coalescePaintEvent(Lorg/apache/poi/java/awt/event/PaintEvent;)Z

    move-result p1

    return p1

    :cond_3
    instance-of p2, p1, Lorg/apache/poi/java/awt/event/MouseEvent;

    if-eqz p2, :cond_4

    check-cast p1, Lorg/apache/poi/java/awt/event/MouseEvent;

    invoke-direct {p0, p1}, Lorg/apache/poi/java/awt/EventQueue;->coalesceMouseEvent(Lorg/apache/poi/java/awt/event/MouseEvent;)Z

    move-result p1

    return p1

    :cond_4
    return v1
.end method

.method private coalesceMouseEvent(Lorg/apache/poi/java/awt/event/MouseEvent;)Z
    .locals 4

    instance-of v0, p1, Lorg/apache/poi/sun/awt/dnd/SunDropTargetEvent;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/java/awt/event/MouseEvent;->getSource()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/java/awt/Component;

    iget-object v0, v0, Lorg/apache/poi/java/awt/Component;->eventCache:[Lorg/apache/poi/sun/awt/EventQueueItem;

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-static {p1}, Lorg/apache/poi/java/awt/EventQueue;->eventToCacheIndex(Lorg/apache/poi/java/awt/AWTEvent;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    aget-object v3, v0, v2

    if-eqz v3, :cond_2

    aget-object v0, v0, v2

    iput-object p1, v0, Lorg/apache/poi/sun/awt/EventQueueItem;->event:Lorg/apache/poi/java/awt/AWTEvent;

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method private coalesceOtherEvent(Lorg/apache/poi/java/awt/AWTEvent;I)Z
    .locals 3

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/AWTEvent;->getID()I

    move-result v0

    invoke-virtual {p1}, Ljava/util/EventObject;->getSource()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/java/awt/Component;

    iget-object v2, p0, Lorg/apache/poi/java/awt/EventQueue;->queues:[Lorg/apache/poi/java/awt/Queue;

    aget-object p2, v2, p2

    iget-object p2, p2, Lorg/apache/poi/java/awt/Queue;->head:Lorg/apache/poi/sun/awt/EventQueueItem;

    :goto_0
    if-eqz p2, :cond_1

    iget-object v2, p2, Lorg/apache/poi/sun/awt/EventQueueItem;->event:Lorg/apache/poi/java/awt/AWTEvent;

    invoke-virtual {v2}, Ljava/util/EventObject;->getSource()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_0

    iget-object v2, p2, Lorg/apache/poi/sun/awt/EventQueueItem;->event:Lorg/apache/poi/java/awt/AWTEvent;

    invoke-virtual {v2}, Lorg/apache/poi/java/awt/AWTEvent;->getID()I

    move-result v2

    if-ne v2, v0, :cond_0

    iget-object v2, p2, Lorg/apache/poi/sun/awt/EventQueueItem;->event:Lorg/apache/poi/java/awt/AWTEvent;

    invoke-virtual {v1, v2, p1}, Lorg/apache/poi/java/awt/Component;->coalesceEvents(Lorg/apache/poi/java/awt/AWTEvent;Lorg/apache/poi/java/awt/AWTEvent;)Lorg/apache/poi/java/awt/AWTEvent;

    move-result-object v2

    if-eqz v2, :cond_0

    iput-object v2, p2, Lorg/apache/poi/sun/awt/EventQueueItem;->event:Lorg/apache/poi/java/awt/AWTEvent;

    const/4 p1, 0x1

    return p1

    :cond_0
    iget-object p2, p2, Lorg/apache/poi/sun/awt/EventQueueItem;->next:Lorg/apache/poi/sun/awt/EventQueueItem;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private coalescePaintEvent(Lorg/apache/poi/java/awt/event/PaintEvent;)Z
    .locals 4

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/event/PaintEvent;->getSource()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/java/awt/Component;

    iget-object v0, v0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/peer/ComponentPeer;->coalescePaintEvent(Lorg/apache/poi/java/awt/event/PaintEvent;)V

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/java/awt/event/PaintEvent;->getSource()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/java/awt/Component;

    iget-object v0, v0, Lorg/apache/poi/java/awt/Component;->eventCache:[Lorg/apache/poi/sun/awt/EventQueueItem;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-static {p1}, Lorg/apache/poi/java/awt/EventQueue;->eventToCacheIndex(Lorg/apache/poi/java/awt/AWTEvent;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    aget-object v3, v0, v2

    if-eqz v3, :cond_2

    aget-object v3, v0, v2

    iget-object v3, v3, Lorg/apache/poi/sun/awt/EventQueueItem;->event:Lorg/apache/poi/java/awt/AWTEvent;

    check-cast v3, Lorg/apache/poi/java/awt/event/PaintEvent;

    invoke-direct {p0, p1, v3}, Lorg/apache/poi/java/awt/EventQueue;->mergePaintEvents(Lorg/apache/poi/java/awt/event/PaintEvent;Lorg/apache/poi/java/awt/event/PaintEvent;)Lorg/apache/poi/java/awt/event/PaintEvent;

    move-result-object p1

    if-eqz p1, :cond_2

    aget-object v0, v0, v2

    iput-object p1, v0, Lorg/apache/poi/sun/awt/EventQueueItem;->event:Lorg/apache/poi/java/awt/AWTEvent;

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method private coalescePeerEvent(Lorg/apache/poi/sun/awt/PeerEvent;)Z
    .locals 4

    invoke-virtual {p1}, Lorg/apache/poi/sun/awt/PeerEvent;->getSource()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/java/awt/Component;

    iget-object v0, v0, Lorg/apache/poi/java/awt/Component;->eventCache:[Lorg/apache/poi/sun/awt/EventQueueItem;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {p1}, Lorg/apache/poi/java/awt/EventQueue;->eventToCacheIndex(Lorg/apache/poi/java/awt/AWTEvent;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    aget-object v3, v0, v2

    if-eqz v3, :cond_2

    aget-object v3, v0, v2

    iget-object v3, v3, Lorg/apache/poi/sun/awt/EventQueueItem;->event:Lorg/apache/poi/java/awt/AWTEvent;

    check-cast v3, Lorg/apache/poi/sun/awt/PeerEvent;

    invoke-virtual {p1, v3}, Lorg/apache/poi/sun/awt/PeerEvent;->coalesceEvents(Lorg/apache/poi/sun/awt/PeerEvent;)Lorg/apache/poi/sun/awt/PeerEvent;

    move-result-object p1

    if-eqz p1, :cond_1

    aget-object v0, v0, v2

    iput-object p1, v0, Lorg/apache/poi/sun/awt/EventQueueItem;->event:Lorg/apache/poi/java/awt/AWTEvent;

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    aput-object p1, v0, v2

    :cond_2
    return v1
.end method

.method private dispatchEventImpl(Lorg/apache/poi/java/awt/AWTEvent;Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p1, Lorg/apache/poi/java/awt/AWTEvent;->isPosted:Z

    instance-of v0, p1, Lorg/apache/poi/java/awt/ActiveEvent;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lorg/apache/poi/java/awt/EventQueue;->setCurrentEventAndMostRecentTimeImpl(Lorg/apache/poi/java/awt/AWTEvent;)V

    check-cast p1, Lorg/apache/poi/java/awt/ActiveEvent;

    invoke-interface {p1}, Lorg/apache/poi/java/awt/ActiveEvent;->dispatch()V

    goto :goto_0

    :cond_0
    instance-of v0, p2, Lorg/apache/poi/java/awt/Component;

    if-eqz v0, :cond_1

    check-cast p2, Lorg/apache/poi/java/awt/Component;

    invoke-virtual {p2, p1}, Lorg/apache/poi/java/awt/Component;->dispatchEvent(Lorg/apache/poi/java/awt/AWTEvent;)V

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/AWTEvent;->dispatched()V

    goto :goto_0

    :cond_1
    instance-of v0, p2, Lorg/apache/poi/java/awt/MenuComponent;

    if-eqz v0, :cond_2

    check-cast p2, Lorg/apache/poi/java/awt/MenuComponent;

    invoke-virtual {p2, p1}, Lorg/apache/poi/java/awt/MenuComponent;->dispatchEvent(Lorg/apache/poi/java/awt/AWTEvent;)V

    goto :goto_0

    :cond_2
    instance-of v0, p2, Lorg/apache/poi/java/awt/TrayIcon;

    if-eqz v0, :cond_3

    check-cast p2, Lorg/apache/poi/java/awt/TrayIcon;

    invoke-virtual {p2, p1}, Lorg/apache/poi/java/awt/TrayIcon;->dispatchEvent(Lorg/apache/poi/java/awt/AWTEvent;)V

    goto :goto_0

    :cond_3
    instance-of p2, p2, Lorg/apache/poi/sun/awt/AWTAutoShutdown;

    if-eqz p2, :cond_4

    invoke-direct {p0}, Lorg/apache/poi/java/awt/EventQueue;->noEvents()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lorg/apache/poi/java/awt/EventQueue;->dispatchThread:Lorg/apache/poi/java/awt/EventDispatchThread;

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/EventDispatchThread;->stopDispatching()V

    goto :goto_0

    :cond_4
    invoke-static {}, Lorg/apache/poi/java/awt/EventQueue;->getEventLog()Lorg/apache/poi/sun/util/logging/PlatformLogger;

    move-result-object p2

    const/16 v0, 0x1f4

    invoke-virtual {p2, v0}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-static {}, Lorg/apache/poi/java/awt/EventQueue;->getEventLog()Lorg/apache/poi/sun/util/logging/PlatformLogger;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to dispatch event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method

.method private static eventToCacheIndex(Lorg/apache/poi/java/awt/AWTEvent;)I
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/AWTEvent;->getID()I

    move-result v0

    const/16 v1, 0x1f7

    if-eq v0, v1, :cond_4

    const/16 v1, 0x1fa

    if-eq v0, v1, :cond_3

    const/16 v1, 0x320

    if-eq v0, v1, :cond_2

    const/16 v1, 0x321

    if-eq v0, v1, :cond_1

    instance-of p0, p0, Lorg/apache/poi/sun/awt/PeerEvent;

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    const/4 p0, 0x3

    return p0

    :cond_4
    const/4 p0, 0x2

    return p0
.end method

.method private static getAccessControlContextFrom(Ljava/lang/Object;)Ljava/security/AccessControlContext;
    .locals 1

    instance-of v0, p0, Lorg/apache/poi/java/awt/Component;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/apache/poi/java/awt/Component;

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getAccessControlContext()Ljava/security/AccessControlContext;

    move-result-object p0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lorg/apache/poi/java/awt/MenuComponent;

    if-eqz v0, :cond_1

    check-cast p0, Lorg/apache/poi/java/awt/MenuComponent;

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/MenuComponent;->getAccessControlContext()Ljava/security/AccessControlContext;

    move-result-object p0

    goto :goto_0

    :cond_1
    instance-of v0, p0, Lorg/apache/poi/java/awt/TrayIcon;

    if-eqz v0, :cond_2

    check-cast p0, Lorg/apache/poi/java/awt/TrayIcon;

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/TrayIcon;->getAccessControlContext()Ljava/security/AccessControlContext;

    move-result-object p0

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getCurrentEvent()Lorg/apache/poi/java/awt/AWTEvent;
    .locals 1

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->getEventQueue()Lorg/apache/poi/java/awt/EventQueue;

    move-result-object v0

    invoke-direct {v0}, Lorg/apache/poi/java/awt/EventQueue;->getCurrentEventImpl()Lorg/apache/poi/java/awt/AWTEvent;

    move-result-object v0

    return-object v0
.end method

.method private getCurrentEventImpl()Lorg/apache/poi/java/awt/AWTEvent;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/EventQueue;->pushPopLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/java/awt/EventQueue;->dispatchThread:Lorg/apache/poi/java/awt/EventDispatchThread;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/java/awt/EventQueue;->currentEvent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/java/awt/AWTEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/EventQueue;->pushPopLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/poi/java/awt/EventQueue;->pushPopLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private static final getEventLog()Lorg/apache/poi/sun/util/logging/PlatformLogger;
    .locals 1

    sget-object v0, Lorg/apache/poi/java/awt/EventQueue;->eventLog:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    if-nez v0, :cond_0

    const-string v0, "org.apache.poi.java.awt.event.EventQueue"

    invoke-static {v0}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->getLogger(Ljava/lang/String;)Lorg/apache/poi/sun/util/logging/PlatformLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/java/awt/EventQueue;->eventLog:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    :cond_0
    sget-object v0, Lorg/apache/poi/java/awt/EventQueue;->eventLog:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    return-object v0
.end method

.method public static getMostRecentEventTime()J
    .locals 2

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->getEventQueue()Lorg/apache/poi/java/awt/EventQueue;

    move-result-object v0

    invoke-direct {v0}, Lorg/apache/poi/java/awt/EventQueue;->getMostRecentEventTimeImpl()J

    move-result-wide v0

    return-wide v0
.end method

.method private getMostRecentEventTimeImpl()J
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/java/awt/EventQueue;->pushPopLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/java/awt/EventQueue;->dispatchThread:Lorg/apache/poi/java/awt/EventDispatchThread;

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lorg/apache/poi/java/awt/EventQueue;->mostRecentEventTime:J

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object v2, p0, Lorg/apache/poi/java/awt/EventQueue;->pushPopLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-wide v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/poi/java/awt/EventQueue;->pushPopLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private static getPriority(Lorg/apache/poi/java/awt/AWTEvent;)I
    .locals 8

    instance-of v0, p0, Lorg/apache/poi/sun/awt/PeerEvent;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Lorg/apache/poi/sun/awt/PeerEvent;

    invoke-virtual {v0}, Lorg/apache/poi/sun/awt/PeerEvent;->getFlags()J

    move-result-wide v2

    const-wide/16 v4, 0x2

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/sun/awt/PeerEvent;->getFlags()J

    move-result-wide v2

    const-wide/16 v6, 0x1

    and-long/2addr v2, v6

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    invoke-virtual {v0}, Lorg/apache/poi/sun/awt/PeerEvent;->getFlags()J

    move-result-wide v2

    const-wide/16 v6, 0x4

    and-long/2addr v2, v6

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/AWTEvent;->getID()I

    move-result p0

    const/16 v0, 0x320

    if-lt p0, v0, :cond_3

    const/16 v0, 0x321

    if-gt p0, v0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public static invokeAndWait(Ljava/lang/Object;Ljava/lang/Runnable;)V
    .locals 3

    invoke-static {}, Lorg/apache/poi/java/awt/EventQueue;->isDispatchThread()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lorg/apache/poi/java/awt/EventQueue$1AWTInvocationLock;

    invoke-direct {v0}, Lorg/apache/poi/java/awt/EventQueue$1AWTInvocationLock;-><init>()V

    new-instance v1, Lorg/apache/poi/java/awt/event/InvocationEvent;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v0, v2}, Lorg/apache/poi/java/awt/event/InvocationEvent;-><init>(Ljava/lang/Object;Ljava/lang/Runnable;Ljava/lang/Object;Z)V

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->getEventQueue()Lorg/apache/poi/java/awt/EventQueue;

    move-result-object p0

    invoke-virtual {p0, v1}, Lorg/apache/poi/java/awt/EventQueue;->postEvent(Lorg/apache/poi/java/awt/AWTEvent;)V

    :goto_0
    invoke-virtual {v1}, Lorg/apache/poi/java/awt/event/InvocationEvent;->isDispatched()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/event/InvocationEvent;->getThrowable()Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    new-instance p1, Ljava/lang/reflect/InvocationTargetException;

    invoke-direct {p1, p0}, Ljava/lang/reflect/InvocationTargetException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/Error;

    const-string p1, "Cannot call invokeAndWait from the event dispatcher thread"

    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static invokeAndWait(Ljava/lang/Runnable;)V
    .locals 1

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->getDefaultToolkit()Lorg/apache/poi/java/awt/Toolkit;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/apache/poi/java/awt/EventQueue;->invokeAndWait(Ljava/lang/Object;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static invokeLater(Ljava/lang/Runnable;)V
    .locals 3

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->getEventQueue()Lorg/apache/poi/java/awt/EventQueue;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/java/awt/event/InvocationEvent;

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->getDefaultToolkit()Lorg/apache/poi/java/awt/Toolkit;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lorg/apache/poi/java/awt/event/InvocationEvent;-><init>(Ljava/lang/Object;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/java/awt/EventQueue;->postEvent(Lorg/apache/poi/java/awt/AWTEvent;)V

    return-void
.end method

.method public static isDispatchThread()Z
    .locals 1

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->getEventQueue()Lorg/apache/poi/java/awt/EventQueue;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/EventQueue;->isDispatchThreadImpl()Z

    move-result v0

    return v0
.end method

.method private mergePaintEvents(Lorg/apache/poi/java/awt/event/PaintEvent;Lorg/apache/poi/java/awt/event/PaintEvent;)Lorg/apache/poi/java/awt/event/PaintEvent;
    .locals 3

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/event/PaintEvent;->getUpdateRect()Lorg/apache/poi/java/awt/Rectangle;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/poi/java/awt/event/PaintEvent;->getUpdateRect()Lorg/apache/poi/java/awt/Rectangle;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/poi/java/awt/Rectangle;->contains(Lorg/apache/poi/java/awt/Rectangle;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object p2

    :cond_0
    invoke-virtual {v0, v1}, Lorg/apache/poi/java/awt/Rectangle;->contains(Lorg/apache/poi/java/awt/Rectangle;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private noEvents()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/apache/poi/java/awt/EventQueue;->queues:[Lorg/apache/poi/java/awt/Queue;

    aget-object v2, v2, v1

    iget-object v2, v2, Lorg/apache/poi/java/awt/Queue;->head:Lorg/apache/poi/sun/awt/EventQueueItem;

    if-eqz v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private postEvent(Lorg/apache/poi/java/awt/AWTEvent;I)V
    .locals 5

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/java/awt/EventQueue;->coalesceEvent(Lorg/apache/poi/java/awt/AWTEvent;I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/apache/poi/sun/awt/EventQueueItem;

    invoke-direct {v0, p1}, Lorg/apache/poi/sun/awt/EventQueueItem;-><init>(Lorg/apache/poi/java/awt/AWTEvent;)V

    invoke-direct {p0, v0}, Lorg/apache/poi/java/awt/EventQueue;->cacheEQItem(Lorg/apache/poi/sun/awt/EventQueueItem;)V

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/AWTEvent;->getID()I

    move-result v1

    iget v2, p0, Lorg/apache/poi/java/awt/EventQueue;->waitForID:I

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/apache/poi/java/awt/EventQueue;->queues:[Lorg/apache/poi/java/awt/Queue;

    aget-object v3, v2, p2

    iget-object v3, v3, Lorg/apache/poi/java/awt/Queue;->head:Lorg/apache/poi/sun/awt/EventQueueItem;

    if-nez v3, :cond_3

    invoke-direct {p0}, Lorg/apache/poi/java/awt/EventQueue;->noEvents()Z

    move-result v2

    iget-object v3, p0, Lorg/apache/poi/java/awt/EventQueue;->queues:[Lorg/apache/poi/java/awt/Queue;

    aget-object v4, v3, p2

    aget-object p2, v3, p2

    iput-object v0, p2, Lorg/apache/poi/java/awt/Queue;->tail:Lorg/apache/poi/sun/awt/EventQueueItem;

    iput-object v0, v4, Lorg/apache/poi/java/awt/Queue;->head:Lorg/apache/poi/sun/awt/EventQueueItem;

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Ljava/util/EventObject;->getSource()Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lorg/apache/poi/sun/awt/AWTAutoShutdown;->getInstance()Lorg/apache/poi/sun/awt/AWTAutoShutdown;

    move-result-object p2

    if-eq p1, p2, :cond_4

    invoke-static {}, Lorg/apache/poi/sun/awt/AWTAutoShutdown;->getInstance()Lorg/apache/poi/sun/awt/AWTAutoShutdown;

    move-result-object p1

    iget-object p2, p0, Lorg/apache/poi/java/awt/EventQueue;->dispatchThread:Lorg/apache/poi/java/awt/EventDispatchThread;

    invoke-virtual {p1, p2}, Lorg/apache/poi/sun/awt/AWTAutoShutdown;->notifyThreadBusy(Ljava/lang/Thread;)V

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_5

    goto :goto_1

    :cond_3
    aget-object p1, v2, p2

    iget-object p1, p1, Lorg/apache/poi/java/awt/Queue;->tail:Lorg/apache/poi/sun/awt/EventQueueItem;

    iput-object v0, p1, Lorg/apache/poi/sun/awt/EventQueueItem;->next:Lorg/apache/poi/sun/awt/EventQueueItem;

    iget-object p1, p0, Lorg/apache/poi/java/awt/EventQueue;->queues:[Lorg/apache/poi/java/awt/Queue;

    aget-object p1, p1, p2

    iput-object v0, p1, Lorg/apache/poi/java/awt/Queue;->tail:Lorg/apache/poi/sun/awt/EventQueueItem;

    if-eqz v1, :cond_5

    :cond_4
    :goto_1
    iget-object p1, p0, Lorg/apache/poi/java/awt/EventQueue;->pushPopCond:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    :cond_5
    return-void
.end method

.method private final postEventPrivate(Lorg/apache/poi/java/awt/AWTEvent;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p1, Lorg/apache/poi/java/awt/AWTEvent;->isPosted:Z

    iget-object v0, p0, Lorg/apache/poi/java/awt/EventQueue;->pushPopLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/EventQueue;->nextQueue:Lorg/apache/poi/java/awt/EventQueue;

    if-eqz v0, :cond_0

    invoke-direct {v0, p1}, Lorg/apache/poi/java/awt/EventQueue;->postEventPrivate(Lorg/apache/poi/java/awt/AWTEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object p1, p0, Lorg/apache/poi/java/awt/EventQueue;->pushPopLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/apache/poi/java/awt/EventQueue;->dispatchThread:Lorg/apache/poi/java/awt/EventDispatchThread;

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/util/EventObject;->getSource()Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lorg/apache/poi/sun/awt/AWTAutoShutdown;->getInstance()Lorg/apache/poi/sun/awt/AWTAutoShutdown;

    move-result-object v1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/EventQueue;->initDispatchThread()V

    :cond_2
    invoke-static {p1}, Lorg/apache/poi/java/awt/EventQueue;->getPriority(Lorg/apache/poi/java/awt/AWTEvent;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/java/awt/EventQueue;->postEvent(Lorg/apache/poi/java/awt/AWTEvent;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p1, p0, Lorg/apache/poi/java/awt/EventQueue;->pushPopLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/apache/poi/java/awt/EventQueue;->pushPopLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public static setCurrentEventAndMostRecentTime(Lorg/apache/poi/java/awt/AWTEvent;)V
    .locals 1

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->getEventQueue()Lorg/apache/poi/java/awt/EventQueue;

    move-result-object v0

    invoke-direct {v0, p0}, Lorg/apache/poi/java/awt/EventQueue;->setCurrentEventAndMostRecentTimeImpl(Lorg/apache/poi/java/awt/AWTEvent;)V

    return-void
.end method

.method private setCurrentEventAndMostRecentTimeImpl(Lorg/apache/poi/java/awt/AWTEvent;)V
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/java/awt/EventQueue;->pushPopLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/java/awt/EventQueue;->dispatchThread:Lorg/apache/poi/java/awt/EventDispatchThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/java/awt/EventQueue;->pushPopLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/poi/java/awt/EventQueue;->currentEvent:Ljava/lang/ref/WeakReference;

    const-wide/high16 v0, -0x8000000000000000L

    instance-of v2, p1, Lorg/apache/poi/java/awt/event/InputEvent;

    if-eqz v2, :cond_1

    check-cast p1, Lorg/apache/poi/java/awt/event/InputEvent;

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/event/InputEvent;->getWhen()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    instance-of v2, p1, Lorg/apache/poi/java/awt/event/InputMethodEvent;

    if-eqz v2, :cond_2

    check-cast p1, Lorg/apache/poi/java/awt/event/InputMethodEvent;

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/event/InputMethodEvent;->getWhen()J

    move-result-wide v0

    goto :goto_0

    :cond_2
    instance-of v2, p1, Lorg/apache/poi/java/awt/event/ActionEvent;

    if-eqz v2, :cond_3

    check-cast p1, Lorg/apache/poi/java/awt/event/ActionEvent;

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/event/ActionEvent;->getWhen()J

    move-result-wide v0

    goto :goto_0

    :cond_3
    instance-of v2, p1, Lorg/apache/poi/java/awt/event/InvocationEvent;

    if-eqz v2, :cond_4

    check-cast p1, Lorg/apache/poi/java/awt/event/InvocationEvent;

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/event/InvocationEvent;->getWhen()J

    move-result-wide v0

    :cond_4
    :goto_0
    iget-wide v2, p0, Lorg/apache/poi/java/awt/EventQueue;->mostRecentEventTime:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/poi/java/awt/EventQueue;->mostRecentEventTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p1, p0, Lorg/apache/poi/java/awt/EventQueue;->pushPopLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/apache/poi/java/awt/EventQueue;->pushPopLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method private uncacheEQItem(Lorg/apache/poi/sun/awt/EventQueueItem;)V
    .locals 2

    iget-object v0, p1, Lorg/apache/poi/sun/awt/EventQueueItem;->event:Lorg/apache/poi/java/awt/AWTEvent;

    invoke-static {v0}, Lorg/apache/poi/java/awt/EventQueue;->eventToCacheIndex(Lorg/apache/poi/java/awt/AWTEvent;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p1, Lorg/apache/poi/sun/awt/EventQueueItem;->event:Lorg/apache/poi/java/awt/AWTEvent;

    invoke-virtual {v1}, Ljava/util/EventObject;->getSource()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lorg/apache/poi/java/awt/Component;

    if-eqz v1, :cond_1

    iget-object p1, p1, Lorg/apache/poi/sun/awt/EventQueueItem;->event:Lorg/apache/poi/java/awt/AWTEvent;

    invoke-virtual {p1}, Ljava/util/EventObject;->getSource()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/java/awt/Component;

    iget-object p1, p1, Lorg/apache/poi/java/awt/Component;->eventCache:[Lorg/apache/poi/sun/awt/EventQueueItem;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    aput-object v1, p1, v0

    :cond_1
    return-void
.end method

.method private wakeup(Z)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/EventQueue;->pushPopLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/EventQueue;->nextQueue:Lorg/apache/poi/java/awt/EventQueue;

    if-eqz v0, :cond_0

    invoke-direct {v0, p1}, Lorg/apache/poi/java/awt/EventQueue;->wakeup(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/EventQueue;->dispatchThread:Lorg/apache/poi/java/awt/EventDispatchThread;

    if-eqz v0, :cond_1

    iget-object p1, p0, Lorg/apache/poi/java/awt/EventQueue;->pushPopCond:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/EventQueue;->initDispatchThread()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    iget-object p1, p0, Lorg/apache/poi/java/awt/EventQueue;->pushPopLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/apache/poi/java/awt/EventQueue;->pushPopLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method


# virtual methods
.method public createSecondaryLoop()Lorg/apache/poi/java/awt/SecondaryLoop;
    .locals 3

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v0, v1, v2}, Lorg/apache/poi/java/awt/EventQueue;->createSecondaryLoop(Lorg/apache/poi/java/awt/Conditional;Lorg/apache/poi/java/awt/EventFilter;J)Lorg/apache/poi/java/awt/SecondaryLoop;

    move-result-object v0

    return-object v0
.end method

.method public createSecondaryLoop(Lorg/apache/poi/java/awt/Conditional;Lorg/apache/poi/java/awt/EventFilter;J)Lorg/apache/poi/java/awt/SecondaryLoop;
    .locals 7

    iget-object v0, p0, Lorg/apache/poi/java/awt/EventQueue;->pushPopLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/EventQueue;->nextQueue:Lorg/apache/poi/java/awt/EventQueue;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/poi/java/awt/EventQueue;->createSecondaryLoop(Lorg/apache/poi/java/awt/Conditional;Lorg/apache/poi/java/awt/EventFilter;J)Lorg/apache/poi/java/awt/SecondaryLoop;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p2, p0, Lorg/apache/poi/java/awt/EventQueue;->pushPopLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/apache/poi/java/awt/EventQueue;->dispatchThread:Lorg/apache/poi/java/awt/EventDispatchThread;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/EventQueue;->initDispatchThread()V

    :cond_1
    new-instance v6, Lorg/apache/poi/java/awt/WaitDispatchSupport;

    iget-object v1, p0, Lorg/apache/poi/java/awt/EventQueue;->dispatchThread:Lorg/apache/poi/java/awt/EventDispatchThread;

    move-object v0, v6

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/java/awt/WaitDispatchSupport;-><init>(Lorg/apache/poi/java/awt/EventDispatchThread;Lorg/apache/poi/java/awt/Conditional;Lorg/apache/poi/java/awt/EventFilter;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p1, p0, Lorg/apache/poi/java/awt/EventQueue;->pushPopLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v6

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/apache/poi/java/awt/EventQueue;->pushPopLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public final detachDispatchThread(Lorg/apache/poi/java/awt/EventDispatchThread;Z)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/EventQueue;->pushPopLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/EventQueue;->dispatchThread:Lorg/apache/poi/java/awt/EventDispatchThread;

    if-ne p1, v0, :cond_3

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/EventQueue;->peekEvent()Lorg/apache/poi/java/awt/AWTEvent;

    move-result-object p2

    if-nez p2, :cond_1

    :cond_0
    invoke-static {}, Lorg/apache/poi/sun/awt/SunToolkit;->isPostEventQueueEmpty()Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_2

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget-object p2, p0, Lorg/apache/poi/java/awt/EventQueue;->pushPopLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return p1

    :cond_2
    const/4 p2, 0x0

    :try_start_1
    iput-object p2, p0, Lorg/apache/poi/java/awt/EventQueue;->dispatchThread:Lorg/apache/poi/java/awt/EventDispatchThread;

    :cond_3
    invoke-static {}, Lorg/apache/poi/sun/awt/AWTAutoShutdown;->getInstance()Lorg/apache/poi/sun/awt/AWTAutoShutdown;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/apache/poi/sun/awt/AWTAutoShutdown;->notifyThreadFree(Ljava/lang/Thread;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/apache/poi/java/awt/EventQueue;->pushPopLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public dispatchEvent(Lorg/apache/poi/java/awt/AWTEvent;)V
    .locals 5

    invoke-virtual {p1}, Ljava/util/EventObject;->getSource()Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/java/awt/EventQueue$3;

    invoke-direct {v1, p0, p1, v0}, Lorg/apache/poi/java/awt/EventQueue$3;-><init>(Lorg/apache/poi/java/awt/EventQueue;Lorg/apache/poi/java/awt/AWTEvent;Ljava/lang/Object;)V

    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v2

    invoke-static {v0}, Lorg/apache/poi/java/awt/EventQueue;->getAccessControlContextFrom(Ljava/lang/Object;)Ljava/security/AccessControlContext;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/AWTEvent;->getAccessControlContext()Ljava/security/AccessControlContext;

    move-result-object p1

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/poi/java/awt/EventQueue;->javaSecurityAccess:Lorg/apache/poi/sun/misc/JavaSecurityAccess;

    invoke-interface {v0, v1, v2, p1}, Lorg/apache/poi/sun/misc/JavaSecurityAccess;->doIntersectionPrivilege(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    sget-object v3, Lorg/apache/poi/java/awt/EventQueue;->javaSecurityAccess:Lorg/apache/poi/sun/misc/JavaSecurityAccess;

    new-instance v4, Lorg/apache/poi/java/awt/EventQueue$4;

    invoke-direct {v4, p0, v1, p1}, Lorg/apache/poi/java/awt/EventQueue$4;-><init>(Lorg/apache/poi/java/awt/EventQueue;Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)V

    invoke-interface {v3, v4, v2, v0}, Lorg/apache/poi/sun/misc/JavaSecurityAccess;->doIntersectionPrivilege(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public final getDispatchThread()Lorg/apache/poi/java/awt/EventDispatchThread;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/EventQueue;->pushPopLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/EventQueue;->dispatchThread:Lorg/apache/poi/java/awt/EventDispatchThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lorg/apache/poi/java/awt/EventQueue;->pushPopLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/poi/java/awt/EventQueue;->pushPopLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public getMostRecentEventTimeEx()J
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/java/awt/EventQueue;->pushPopLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-wide v0, p0, Lorg/apache/poi/java/awt/EventQueue;->mostRecentEventTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lorg/apache/poi/java/awt/EventQueue;->pushPopLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-wide v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/poi/java/awt/EventQueue;->pushPopLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public getNextEvent()Lorg/apache/poi/java/awt/AWTEvent;
    .locals 2

    :goto_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/EventQueue;->appContext:Lorg/apache/poi/sun/awt/AppContext;

    invoke-static {v0}, Lorg/apache/poi/sun/awt/SunToolkit;->flushPendingEvents(Lorg/apache/poi/sun/awt/AppContext;)V

    iget-object v0, p0, Lorg/apache/poi/java/awt/EventQueue;->pushPopLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/EventQueue;->getNextEventPrivate()Lorg/apache/poi/java/awt/AWTEvent;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/apache/poi/java/awt/EventQueue;->pushPopLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :cond_0
    :try_start_1
    invoke-static {}, Lorg/apache/poi/sun/awt/AWTAutoShutdown;->getInstance()Lorg/apache/poi/sun/awt/AWTAutoShutdown;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/java/awt/EventQueue;->dispatchThread:Lorg/apache/poi/java/awt/EventDispatchThread;

    invoke-virtual {v0, v1}, Lorg/apache/poi/sun/awt/AWTAutoShutdown;->notifyThreadFree(Ljava/lang/Thread;)V

    iget-object v0, p0, Lorg/apache/poi/java/awt/EventQueue;->pushPopCond:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lorg/apache/poi/java/awt/EventQueue;->pushPopLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/poi/java/awt/EventQueue;->pushPopLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public getNextEvent(I)Lorg/apache/poi/java/awt/AWTEvent;
    .locals 6

    :goto_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/EventQueue;->appContext:Lorg/apache/poi/sun/awt/AppContext;

    invoke-static {v0}, Lorg/apache/poi/sun/awt/SunToolkit;->flushPendingEvents(Lorg/apache/poi/sun/awt/AppContext;)V

    iget-object v0, p0, Lorg/apache/poi/java/awt/EventQueue;->pushPopLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    const/4 v2, 0x4

    if-ge v1, v2, :cond_4

    :try_start_0
    iget-object v2, p0, Lorg/apache/poi/java/awt/EventQueue;->queues:[Lorg/apache/poi/java/awt/Queue;

    aget-object v2, v2, v1

    iget-object v2, v2, Lorg/apache/poi/java/awt/Queue;->head:Lorg/apache/poi/sun/awt/EventQueueItem;

    const/4 v3, 0x0

    :goto_2
    if-eqz v2, :cond_3

    iget-object v4, v2, Lorg/apache/poi/sun/awt/EventQueueItem;->event:Lorg/apache/poi/java/awt/AWTEvent;

    invoke-virtual {v4}, Lorg/apache/poi/java/awt/AWTEvent;->getID()I

    move-result v4

    if-ne v4, p1, :cond_2

    if-nez v3, :cond_0

    iget-object p1, p0, Lorg/apache/poi/java/awt/EventQueue;->queues:[Lorg/apache/poi/java/awt/Queue;

    aget-object p1, p1, v1

    iget-object v0, v2, Lorg/apache/poi/sun/awt/EventQueueItem;->next:Lorg/apache/poi/sun/awt/EventQueueItem;

    iput-object v0, p1, Lorg/apache/poi/java/awt/Queue;->head:Lorg/apache/poi/sun/awt/EventQueueItem;

    goto :goto_3

    :cond_0
    iget-object p1, v2, Lorg/apache/poi/sun/awt/EventQueueItem;->next:Lorg/apache/poi/sun/awt/EventQueueItem;

    iput-object p1, v3, Lorg/apache/poi/sun/awt/EventQueueItem;->next:Lorg/apache/poi/sun/awt/EventQueueItem;

    :goto_3
    iget-object p1, p0, Lorg/apache/poi/java/awt/EventQueue;->queues:[Lorg/apache/poi/java/awt/Queue;

    aget-object v0, p1, v1

    iget-object v0, v0, Lorg/apache/poi/java/awt/Queue;->tail:Lorg/apache/poi/sun/awt/EventQueueItem;

    if-ne v0, v2, :cond_1

    aget-object p1, p1, v1

    iput-object v3, p1, Lorg/apache/poi/java/awt/Queue;->tail:Lorg/apache/poi/sun/awt/EventQueueItem;

    :cond_1
    invoke-direct {p0, v2}, Lorg/apache/poi/java/awt/EventQueue;->uncacheEQItem(Lorg/apache/poi/sun/awt/EventQueueItem;)V

    iget-object p1, v2, Lorg/apache/poi/sun/awt/EventQueueItem;->event:Lorg/apache/poi/java/awt/AWTEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lorg/apache/poi/java/awt/EventQueue;->pushPopLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :cond_2
    :try_start_1
    iget-object v3, v2, Lorg/apache/poi/sun/awt/EventQueueItem;->next:Lorg/apache/poi/sun/awt/EventQueueItem;

    move-object v5, v3

    move-object v3, v2

    move-object v2, v5

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iput p1, p0, Lorg/apache/poi/java/awt/EventQueue;->waitForID:I

    iget-object v1, p0, Lorg/apache/poi/java/awt/EventQueue;->pushPopCond:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->await()V

    iput v0, p0, Lorg/apache/poi/java/awt/EventQueue;->waitForID:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lorg/apache/poi/java/awt/EventQueue;->pushPopLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/apache/poi/java/awt/EventQueue;->pushPopLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public getNextEventPrivate()Lorg/apache/poi/java/awt/AWTEvent;
    .locals 5

    const/4 v0, 0x3

    :goto_0
    const/4 v1, 0x0

    if-ltz v0, :cond_2

    iget-object v2, p0, Lorg/apache/poi/java/awt/EventQueue;->queues:[Lorg/apache/poi/java/awt/Queue;

    aget-object v3, v2, v0

    iget-object v3, v3, Lorg/apache/poi/java/awt/Queue;->head:Lorg/apache/poi/sun/awt/EventQueueItem;

    if-eqz v3, :cond_1

    aget-object v3, v2, v0

    iget-object v3, v3, Lorg/apache/poi/java/awt/Queue;->head:Lorg/apache/poi/sun/awt/EventQueueItem;

    aget-object v2, v2, v0

    iget-object v4, v3, Lorg/apache/poi/sun/awt/EventQueueItem;->next:Lorg/apache/poi/sun/awt/EventQueueItem;

    iput-object v4, v2, Lorg/apache/poi/java/awt/Queue;->head:Lorg/apache/poi/sun/awt/EventQueueItem;

    iget-object v2, v3, Lorg/apache/poi/sun/awt/EventQueueItem;->next:Lorg/apache/poi/sun/awt/EventQueueItem;

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/apache/poi/java/awt/EventQueue;->queues:[Lorg/apache/poi/java/awt/Queue;

    aget-object v0, v2, v0

    iput-object v1, v0, Lorg/apache/poi/java/awt/Queue;->tail:Lorg/apache/poi/sun/awt/EventQueueItem;

    :cond_0
    invoke-direct {p0, v3}, Lorg/apache/poi/java/awt/EventQueue;->uncacheEQItem(Lorg/apache/poi/sun/awt/EventQueueItem;)V

    iget-object v0, v3, Lorg/apache/poi/sun/awt/EventQueueItem;->event:Lorg/apache/poi/java/awt/AWTEvent;

    return-object v0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public final initDispatchThread()V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/EventQueue;->pushPopLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/EventQueue;->dispatchThread:Lorg/apache/poi/java/awt/EventDispatchThread;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/java/awt/EventQueue;->threadGroup:Ljava/lang/ThreadGroup;

    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/java/awt/EventQueue;->appContext:Lorg/apache/poi/sun/awt/AppContext;

    invoke-virtual {v0}, Lorg/apache/poi/sun/awt/AppContext;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/poi/java/awt/EventQueue$5;

    invoke-direct {v0, p0}, Lorg/apache/poi/java/awt/EventQueue$5;-><init>(Lorg/apache/poi/java/awt/EventQueue;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/java/awt/EventDispatchThread;

    iput-object v0, p0, Lorg/apache/poi/java/awt/EventQueue;->dispatchThread:Lorg/apache/poi/java/awt/EventDispatchThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/EventQueue;->pushPopLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/poi/java/awt/EventQueue;->pushPopLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final isDispatchThreadImpl()Z
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/java/awt/EventQueue;->pushPopLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/EventQueue;->nextQueue:Lorg/apache/poi/java/awt/EventQueue;

    move-object v1, p0

    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, v0, Lorg/apache/poi/java/awt/EventQueue;->nextQueue:Lorg/apache/poi/java/awt/EventQueue;

    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, v1, Lorg/apache/poi/java/awt/EventQueue;->dispatchThread:Lorg/apache/poi/java/awt/EventDispatchThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lorg/apache/poi/java/awt/EventQueue;->pushPopLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/poi/java/awt/EventQueue;->pushPopLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public peekEvent()Lorg/apache/poi/java/awt/AWTEvent;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/java/awt/EventQueue;->pushPopLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x3

    :goto_0
    if-ltz v0, :cond_1

    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/EventQueue;->queues:[Lorg/apache/poi/java/awt/Queue;

    aget-object v2, v1, v0

    iget-object v2, v2, Lorg/apache/poi/java/awt/Queue;->head:Lorg/apache/poi/sun/awt/EventQueueItem;

    if-eqz v2, :cond_0

    aget-object v0, v1, v0

    iget-object v0, v0, Lorg/apache/poi/java/awt/Queue;->head:Lorg/apache/poi/sun/awt/EventQueueItem;

    iget-object v0, v0, Lorg/apache/poi/sun/awt/EventQueueItem;->event:Lorg/apache/poi/java/awt/AWTEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lorg/apache/poi/java/awt/EventQueue;->pushPopLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/poi/java/awt/EventQueue;->pushPopLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/java/awt/EventQueue;->pushPopLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public peekEvent(I)Lorg/apache/poi/java/awt/AWTEvent;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/java/awt/EventQueue;->pushPopLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x3

    :goto_0
    if-ltz v0, :cond_2

    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/EventQueue;->queues:[Lorg/apache/poi/java/awt/Queue;

    aget-object v1, v1, v0

    iget-object v1, v1, Lorg/apache/poi/java/awt/Queue;->head:Lorg/apache/poi/sun/awt/EventQueueItem;

    :goto_1
    if-eqz v1, :cond_1

    iget-object v2, v1, Lorg/apache/poi/sun/awt/EventQueueItem;->event:Lorg/apache/poi/java/awt/AWTEvent;

    invoke-virtual {v2}, Lorg/apache/poi/java/awt/AWTEvent;->getID()I

    move-result v2

    if-ne v2, p1, :cond_0

    iget-object p1, v1, Lorg/apache/poi/sun/awt/EventQueueItem;->event:Lorg/apache/poi/java/awt/AWTEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lorg/apache/poi/java/awt/EventQueue;->pushPopLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :cond_0
    :try_start_1
    iget-object v1, v1, Lorg/apache/poi/sun/awt/EventQueueItem;->next:Lorg/apache/poi/sun/awt/EventQueueItem;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/apache/poi/java/awt/EventQueue;->pushPopLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    :cond_2
    iget-object p1, p0, Lorg/apache/poi/java/awt/EventQueue;->pushPopLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public pop()V
    .locals 6

    invoke-static {}, Lorg/apache/poi/java/awt/EventQueue;->getEventLog()Lorg/apache/poi/sun/util/logging/PlatformLogger;

    move-result-object v0

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/apache/poi/java/awt/EventQueue;->getEventLog()Lorg/apache/poi/sun/util/logging/PlatformLogger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EventQueue.pop("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/EventQueue;->pushPopLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    move-object v0, p0

    :goto_0
    :try_start_0
    iget-object v2, v0, Lorg/apache/poi/java/awt/EventQueue;->nextQueue:Lorg/apache/poi/java/awt/EventQueue;

    if-eqz v2, :cond_1

    move-object v0, v2

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lorg/apache/poi/java/awt/EventQueue;->previousQueue:Lorg/apache/poi/java/awt/EventQueue;

    if-eqz v2, :cond_6

    const/4 v3, 0x0

    iput-object v3, v0, Lorg/apache/poi/java/awt/EventQueue;->previousQueue:Lorg/apache/poi/java/awt/EventQueue;

    iput-object v3, v2, Lorg/apache/poi/java/awt/EventQueue;->nextQueue:Lorg/apache/poi/java/awt/EventQueue;

    :cond_2
    :goto_1
    invoke-virtual {v0}, Lorg/apache/poi/java/awt/EventQueue;->peekEvent()Lorg/apache/poi/java/awt/AWTEvent;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_3

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/poi/java/awt/EventQueue;->getNextEventPrivate()Lorg/apache/poi/java/awt/AWTEvent;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/poi/java/awt/EventQueue;->postEventPrivate(Lorg/apache/poi/java/awt/AWTEvent;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_2
    invoke-static {}, Lorg/apache/poi/java/awt/EventQueue;->getEventLog()Lorg/apache/poi/sun/util/logging/PlatformLogger;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lorg/apache/poi/java/awt/EventQueue;->getEventLog()Lorg/apache/poi/sun/util/logging/PlatformLogger;

    move-result-object v4

    const-string v5, "Interrupted pop"

    invoke-virtual {v4, v5, v3}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->fine(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    iget-object v1, v0, Lorg/apache/poi/java/awt/EventQueue;->dispatchThread:Lorg/apache/poi/java/awt/EventDispatchThread;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/EventDispatchThread;->getEventQueue()Lorg/apache/poi/java/awt/EventQueue;

    move-result-object v1

    if-ne v1, p0, :cond_4

    iget-object v1, v0, Lorg/apache/poi/java/awt/EventQueue;->dispatchThread:Lorg/apache/poi/java/awt/EventDispatchThread;

    iput-object v1, v2, Lorg/apache/poi/java/awt/EventQueue;->dispatchThread:Lorg/apache/poi/java/awt/EventDispatchThread;

    iget-object v1, v0, Lorg/apache/poi/java/awt/EventQueue;->dispatchThread:Lorg/apache/poi/java/awt/EventDispatchThread;

    invoke-virtual {v1, v2}, Lorg/apache/poi/java/awt/EventDispatchThread;->setEventQueue(Lorg/apache/poi/java/awt/EventQueue;)V

    :cond_4
    iget-object v1, p0, Lorg/apache/poi/java/awt/EventQueue;->appContext:Lorg/apache/poi/sun/awt/AppContext;

    sget-object v3, Lorg/apache/poi/sun/awt/AppContext;->EVENT_QUEUE_KEY:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lorg/apache/poi/sun/awt/AppContext;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p0, :cond_5

    iget-object v1, p0, Lorg/apache/poi/java/awt/EventQueue;->appContext:Lorg/apache/poi/sun/awt/AppContext;

    invoke-virtual {v1, v3, v2}, Lorg/apache/poi/sun/awt/AppContext;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    new-instance v1, Lorg/apache/poi/java/awt/event/InvocationEvent;

    sget-object v2, Lorg/apache/poi/java/awt/EventQueue;->dummyRunnable:Ljava/lang/Runnable;

    invoke-direct {v1, v0, v2}, Lorg/apache/poi/java/awt/event/InvocationEvent;-><init>(Ljava/lang/Object;Ljava/lang/Runnable;)V

    invoke-direct {v0, v1}, Lorg/apache/poi/java/awt/EventQueue;->postEventPrivate(Lorg/apache/poi/java/awt/AWTEvent;)V

    iget-object v0, p0, Lorg/apache/poi/java/awt/EventQueue;->pushPopCond:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lorg/apache/poi/java/awt/EventQueue;->pushPopLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_6
    :try_start_3
    new-instance v0, Ljava/util/EmptyStackException;

    invoke-direct {v0}, Ljava/util/EmptyStackException;-><init>()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/poi/java/awt/EventQueue;->pushPopLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public postEvent(Lorg/apache/poi/java/awt/AWTEvent;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/EventQueue;->appContext:Lorg/apache/poi/sun/awt/AppContext;

    invoke-static {v0}, Lorg/apache/poi/sun/awt/SunToolkit;->flushPendingEvents(Lorg/apache/poi/sun/awt/AppContext;)V

    invoke-direct {p0, p1}, Lorg/apache/poi/java/awt/EventQueue;->postEventPrivate(Lorg/apache/poi/java/awt/AWTEvent;)V

    return-void
.end method

.method public push(Lorg/apache/poi/java/awt/EventQueue;)V
    .locals 5

    invoke-static {}, Lorg/apache/poi/java/awt/EventQueue;->getEventLog()Lorg/apache/poi/sun/util/logging/PlatformLogger;

    move-result-object v0

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/apache/poi/java/awt/EventQueue;->getEventLog()Lorg/apache/poi/sun/util/logging/PlatformLogger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EventQueue.push("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/EventQueue;->pushPopLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    move-object v0, p0

    :goto_0
    :try_start_0
    iget-object v2, v0, Lorg/apache/poi/java/awt/EventQueue;->nextQueue:Lorg/apache/poi/java/awt/EventQueue;

    if-eqz v2, :cond_1

    move-object v0, v2

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lorg/apache/poi/java/awt/EventQueue;->dispatchThread:Lorg/apache/poi/java/awt/EventDispatchThread;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/apache/poi/java/awt/EventDispatchThread;->getEventQueue()Lorg/apache/poi/java/awt/EventQueue;

    move-result-object v2

    if-ne v2, p0, :cond_2

    iget-object v2, v0, Lorg/apache/poi/java/awt/EventQueue;->dispatchThread:Lorg/apache/poi/java/awt/EventDispatchThread;

    iput-object v2, p1, Lorg/apache/poi/java/awt/EventQueue;->dispatchThread:Lorg/apache/poi/java/awt/EventDispatchThread;

    iget-object v2, v0, Lorg/apache/poi/java/awt/EventQueue;->dispatchThread:Lorg/apache/poi/java/awt/EventDispatchThread;

    invoke-virtual {v2, p1}, Lorg/apache/poi/java/awt/EventDispatchThread;->setEventQueue(Lorg/apache/poi/java/awt/EventQueue;)V

    :cond_2
    :goto_1
    invoke-virtual {v0}, Lorg/apache/poi/java/awt/EventQueue;->peekEvent()Lorg/apache/poi/java/awt/AWTEvent;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_3

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/poi/java/awt/EventQueue;->getNextEventPrivate()Lorg/apache/poi/java/awt/AWTEvent;

    move-result-object v2

    invoke-direct {p1, v2}, Lorg/apache/poi/java/awt/EventQueue;->postEventPrivate(Lorg/apache/poi/java/awt/AWTEvent;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_2
    invoke-static {}, Lorg/apache/poi/java/awt/EventQueue;->getEventLog()Lorg/apache/poi/sun/util/logging/PlatformLogger;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lorg/apache/poi/java/awt/EventQueue;->getEventLog()Lorg/apache/poi/sun/util/logging/PlatformLogger;

    move-result-object v3

    const-string v4, "Interrupted push"

    invoke-virtual {v3, v4, v2}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->fine(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    new-instance v1, Lorg/apache/poi/java/awt/event/InvocationEvent;

    sget-object v2, Lorg/apache/poi/java/awt/EventQueue;->dummyRunnable:Ljava/lang/Runnable;

    invoke-direct {v1, v0, v2}, Lorg/apache/poi/java/awt/event/InvocationEvent;-><init>(Ljava/lang/Object;Ljava/lang/Runnable;)V

    invoke-direct {v0, v1}, Lorg/apache/poi/java/awt/EventQueue;->postEventPrivate(Lorg/apache/poi/java/awt/AWTEvent;)V

    iput-object v0, p1, Lorg/apache/poi/java/awt/EventQueue;->previousQueue:Lorg/apache/poi/java/awt/EventQueue;

    iput-object p1, v0, Lorg/apache/poi/java/awt/EventQueue;->nextQueue:Lorg/apache/poi/java/awt/EventQueue;

    iget-object v1, p0, Lorg/apache/poi/java/awt/EventQueue;->appContext:Lorg/apache/poi/sun/awt/AppContext;

    sget-object v2, Lorg/apache/poi/sun/awt/AppContext;->EVENT_QUEUE_KEY:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/apache/poi/sun/awt/AppContext;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_4

    iget-object v0, p0, Lorg/apache/poi/java/awt/EventQueue;->appContext:Lorg/apache/poi/sun/awt/AppContext;

    invoke-virtual {v0, v2, p1}, Lorg/apache/poi/sun/awt/AppContext;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object p1, p0, Lorg/apache/poi/java/awt/EventQueue;->pushPopCond:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p1, p0, Lorg/apache/poi/java/awt/EventQueue;->pushPopLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/apache/poi/java/awt/EventQueue;->pushPopLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public final removeSourceEvents(Ljava/lang/Object;Z)V
    .locals 5

    iget-object v0, p0, Lorg/apache/poi/java/awt/EventQueue;->appContext:Lorg/apache/poi/sun/awt/AppContext;

    invoke-static {v0}, Lorg/apache/poi/sun/awt/SunToolkit;->flushPendingEvents(Lorg/apache/poi/sun/awt/AppContext;)V

    iget-object v0, p0, Lorg/apache/poi/java/awt/EventQueue;->pushPopLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_7

    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/EventQueue;->queues:[Lorg/apache/poi/java/awt/Queue;

    aget-object v1, v1, v0

    iget-object v1, v1, Lorg/apache/poi/java/awt/Queue;->head:Lorg/apache/poi/sun/awt/EventQueueItem;

    const/4 v2, 0x0

    :goto_1
    if-eqz v1, :cond_6

    iget-object v3, v1, Lorg/apache/poi/sun/awt/EventQueueItem;->event:Lorg/apache/poi/java/awt/AWTEvent;

    invoke-virtual {v3}, Ljava/util/EventObject;->getSource()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_5

    if-nez p2, :cond_0

    iget-object v3, v1, Lorg/apache/poi/sun/awt/EventQueueItem;->event:Lorg/apache/poi/java/awt/AWTEvent;

    instance-of v3, v3, Lorg/apache/poi/java/awt/SequencedEvent;

    if-nez v3, :cond_5

    iget-object v3, v1, Lorg/apache/poi/sun/awt/EventQueueItem;->event:Lorg/apache/poi/java/awt/AWTEvent;

    instance-of v3, v3, Lorg/apache/poi/java/awt/SentEvent;

    if-nez v3, :cond_5

    iget-object v3, v1, Lorg/apache/poi/sun/awt/EventQueueItem;->event:Lorg/apache/poi/java/awt/AWTEvent;

    instance-of v3, v3, Lorg/apache/poi/java/awt/event/FocusEvent;

    if-nez v3, :cond_5

    iget-object v3, v1, Lorg/apache/poi/sun/awt/EventQueueItem;->event:Lorg/apache/poi/java/awt/AWTEvent;

    instance-of v3, v3, Lorg/apache/poi/java/awt/event/WindowEvent;

    if-nez v3, :cond_5

    iget-object v3, v1, Lorg/apache/poi/sun/awt/EventQueueItem;->event:Lorg/apache/poi/java/awt/AWTEvent;

    instance-of v3, v3, Lorg/apache/poi/java/awt/event/KeyEvent;

    if-nez v3, :cond_5

    iget-object v3, v1, Lorg/apache/poi/sun/awt/EventQueueItem;->event:Lorg/apache/poi/java/awt/AWTEvent;

    instance-of v3, v3, Lorg/apache/poi/java/awt/event/InputMethodEvent;

    if-nez v3, :cond_5

    :cond_0
    iget-object v3, v1, Lorg/apache/poi/sun/awt/EventQueueItem;->event:Lorg/apache/poi/java/awt/AWTEvent;

    instance-of v3, v3, Lorg/apache/poi/java/awt/SequencedEvent;

    if-eqz v3, :cond_1

    iget-object v3, v1, Lorg/apache/poi/sun/awt/EventQueueItem;->event:Lorg/apache/poi/java/awt/AWTEvent;

    check-cast v3, Lorg/apache/poi/java/awt/SequencedEvent;

    invoke-virtual {v3}, Lorg/apache/poi/java/awt/SequencedEvent;->dispose()V

    :cond_1
    iget-object v3, v1, Lorg/apache/poi/sun/awt/EventQueueItem;->event:Lorg/apache/poi/java/awt/AWTEvent;

    instance-of v3, v3, Lorg/apache/poi/java/awt/SentEvent;

    if-eqz v3, :cond_2

    iget-object v3, v1, Lorg/apache/poi/sun/awt/EventQueueItem;->event:Lorg/apache/poi/java/awt/AWTEvent;

    check-cast v3, Lorg/apache/poi/java/awt/SentEvent;

    invoke-virtual {v3}, Lorg/apache/poi/java/awt/SentEvent;->dispose()V

    :cond_2
    iget-object v3, v1, Lorg/apache/poi/sun/awt/EventQueueItem;->event:Lorg/apache/poi/java/awt/AWTEvent;

    instance-of v3, v3, Lorg/apache/poi/java/awt/event/InvocationEvent;

    if-eqz v3, :cond_3

    invoke-static {}, Lorg/apache/poi/sun/awt/AWTAccessor;->getInvocationEventAccessor()Lorg/apache/poi/sun/awt/AWTAccessor$InvocationEventAccessor;

    move-result-object v3

    iget-object v4, v1, Lorg/apache/poi/sun/awt/EventQueueItem;->event:Lorg/apache/poi/java/awt/AWTEvent;

    check-cast v4, Lorg/apache/poi/java/awt/event/InvocationEvent;

    invoke-interface {v3, v4}, Lorg/apache/poi/sun/awt/AWTAccessor$InvocationEventAccessor;->dispose(Lorg/apache/poi/java/awt/event/InvocationEvent;)V

    :cond_3
    if-nez v2, :cond_4

    iget-object v3, p0, Lorg/apache/poi/java/awt/EventQueue;->queues:[Lorg/apache/poi/java/awt/Queue;

    aget-object v3, v3, v0

    iget-object v4, v1, Lorg/apache/poi/sun/awt/EventQueueItem;->next:Lorg/apache/poi/sun/awt/EventQueueItem;

    iput-object v4, v3, Lorg/apache/poi/java/awt/Queue;->head:Lorg/apache/poi/sun/awt/EventQueueItem;

    goto :goto_2

    :cond_4
    iget-object v3, v1, Lorg/apache/poi/sun/awt/EventQueueItem;->next:Lorg/apache/poi/sun/awt/EventQueueItem;

    iput-object v3, v2, Lorg/apache/poi/sun/awt/EventQueueItem;->next:Lorg/apache/poi/sun/awt/EventQueueItem;

    :goto_2
    invoke-direct {p0, v1}, Lorg/apache/poi/java/awt/EventQueue;->uncacheEQItem(Lorg/apache/poi/sun/awt/EventQueueItem;)V

    goto :goto_3

    :cond_5
    move-object v2, v1

    :goto_3
    iget-object v1, v1, Lorg/apache/poi/sun/awt/EventQueueItem;->next:Lorg/apache/poi/sun/awt/EventQueueItem;

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lorg/apache/poi/java/awt/EventQueue;->queues:[Lorg/apache/poi/java/awt/Queue;

    aget-object v1, v1, v0

    iput-object v2, v1, Lorg/apache/poi/java/awt/Queue;->tail:Lorg/apache/poi/sun/awt/EventQueueItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/apache/poi/java/awt/EventQueue;->pushPopLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    :cond_7
    iget-object p1, p0, Lorg/apache/poi/java/awt/EventQueue;->pushPopLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method
