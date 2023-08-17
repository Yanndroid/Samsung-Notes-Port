.class Lorg/apache/poi/java/awt/EventDispatchThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/java/awt/EventDispatchThread$HierarchyEventFilter;
    }
.end annotation


# static fields
.field private static final ANY_EVENT:I = -0x1

.field private static final eventLog:Lorg/apache/poi/sun/util/logging/PlatformLogger;


# instance fields
.field private volatile doDispatch:Z

.field private eventFilters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/apache/poi/java/awt/EventFilter;",
            ">;"
        }
    .end annotation
.end field

.field private theQueue:Lorg/apache/poi/java/awt/EventQueue;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "org.apache.poi.java.awt.event.EventDispatchThread"

    invoke-static {v0}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->getLogger(Ljava/lang/String;)Lorg/apache/poi/sun/util/logging/PlatformLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/java/awt/EventDispatchThread;->eventLog:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/ThreadGroup;Ljava/lang/String;Lorg/apache/poi/java/awt/EventQueue;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/poi/java/awt/EventDispatchThread;->doDispatch:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/java/awt/EventDispatchThread;->eventFilters:Ljava/util/ArrayList;

    invoke-virtual {p0, p3}, Lorg/apache/poi/java/awt/EventDispatchThread;->setEventQueue(Lorg/apache/poi/java/awt/EventQueue;)V

    return-void
.end method

.method private _macosxGetConditional(Ljava/lang/Object;)Lorg/apache/poi/java/awt/Conditional;
    .locals 1

    :try_start_0
    new-instance v0, Lorg/apache/poi/java/awt/EventDispatchThread$2;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/java/awt/EventDispatchThread$2;-><init>(Lorg/apache/poi/java/awt/EventDispatchThread;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance p1, Lorg/apache/poi/java/awt/EventDispatchThread$3;

    invoke-direct {p1, p0}, Lorg/apache/poi/java/awt/EventDispatchThread$3;-><init>(Lorg/apache/poi/java/awt/EventDispatchThread;)V

    return-object p1
.end method

.method private processException(Ljava/lang/Throwable;)V
    .locals 3

    sget-object v0, Lorg/apache/poi/java/awt/EventDispatchThread;->eventLog:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Processing exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public addEventFilter(Lorg/apache/poi/java/awt/EventFilter;)V
    .locals 5

    sget-object v0, Lorg/apache/poi/java/awt/EventDispatchThread;->eventLog:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adding the event filter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->finest(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/poi/java/awt/EventDispatchThread;->eventFilters:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/EventDispatchThread;->eventFilters:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    instance-of v1, p1, Lorg/apache/poi/java/awt/ModalEventFilter;

    if-eqz v1, :cond_2

    move-object v1, p1

    check-cast v1, Lorg/apache/poi/java/awt/ModalEventFilter;

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lorg/apache/poi/java/awt/EventDispatchThread;->eventFilters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lorg/apache/poi/java/awt/EventDispatchThread;->eventFilters:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/java/awt/EventFilter;

    instance-of v4, v3, Lorg/apache/poi/java/awt/ModalEventFilter;

    if-eqz v4, :cond_0

    check-cast v3, Lorg/apache/poi/java/awt/ModalEventFilter;

    invoke-virtual {v3, v1}, Lorg/apache/poi/java/awt/ModalEventFilter;->compareTo(Lorg/apache/poi/java/awt/ModalEventFilter;)I

    move-result v3

    if-lez v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v1, p0, Lorg/apache/poi/java/awt/EventDispatchThread;->eventFilters:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lorg/apache/poi/java/awt/EventDispatchThread;->eventFilters:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public declared-synchronized getEventQueue()Lorg/apache/poi/java/awt/EventQueue;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/EventDispatchThread;->theQueue:Lorg/apache/poi/java/awt/EventQueue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public pumpEvents(ILorg/apache/poi/java/awt/Conditional;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/poi/java/awt/EventDispatchThread;->pumpEventsForHierarchy(ILorg/apache/poi/java/awt/Conditional;Lorg/apache/poi/java/awt/Component;)V

    return-void
.end method

.method public pumpEvents(Lorg/apache/poi/java/awt/Conditional;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/java/awt/EventDispatchThread;->pumpEvents(ILorg/apache/poi/java/awt/Conditional;)V

    return-void
.end method

.method public pumpEventsForFilter(ILorg/apache/poi/java/awt/Conditional;Lorg/apache/poi/java/awt/EventFilter;)V
    .locals 1

    invoke-virtual {p0, p3}, Lorg/apache/poi/java/awt/EventDispatchThread;->addEventFilter(Lorg/apache/poi/java/awt/EventFilter;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/java/awt/EventDispatchThread;->doDispatch:Z

    :goto_0
    iget-boolean v0, p0, Lorg/apache/poi/java/awt/EventDispatchThread;->doDispatch:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2}, Lorg/apache/poi/java/awt/Conditional;->evaluate()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/EventDispatchThread;->pumpOneEventForFilters(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p3}, Lorg/apache/poi/java/awt/EventDispatchThread;->removeEventFilter(Lorg/apache/poi/java/awt/EventFilter;)V

    return-void
.end method

.method public pumpEventsForFilter(Lorg/apache/poi/java/awt/Conditional;Lorg/apache/poi/java/awt/EventFilter;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/poi/java/awt/EventDispatchThread;->pumpEventsForFilter(ILorg/apache/poi/java/awt/Conditional;Lorg/apache/poi/java/awt/EventFilter;)V

    return-void
.end method

.method public pumpEventsForHierarchy(ILorg/apache/poi/java/awt/Conditional;Lorg/apache/poi/java/awt/Component;)V
    .locals 1

    new-instance v0, Lorg/apache/poi/java/awt/EventDispatchThread$HierarchyEventFilter;

    invoke-direct {v0, p3}, Lorg/apache/poi/java/awt/EventDispatchThread$HierarchyEventFilter;-><init>(Lorg/apache/poi/java/awt/Component;)V

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/poi/java/awt/EventDispatchThread;->pumpEventsForFilter(ILorg/apache/poi/java/awt/Conditional;Lorg/apache/poi/java/awt/EventFilter;)V

    return-void
.end method

.method public pumpEventsForHierarchy(Lorg/apache/poi/java/awt/Conditional;Lorg/apache/poi/java/awt/Component;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/poi/java/awt/EventDispatchThread;->pumpEventsForHierarchy(ILorg/apache/poi/java/awt/Conditional;Lorg/apache/poi/java/awt/Component;)V

    return-void
.end method

.method public pumpOneEventForFilters(I)V
    .locals 9

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/EventDispatchThread;->getEventQueue()Lorg/apache/poi/java/awt/EventQueue;

    move-result-object v1

    invoke-static {}, Lorg/apache/poi/sun/awt/EventQueueDelegate;->getDelegate()Lorg/apache/poi/sun/awt/EventQueueDelegate$Delegate;

    move-result-object v2

    const/4 v3, -0x1

    if-eqz v2, :cond_1

    if-ne p1, v3, :cond_1

    invoke-interface {v2, v1}, Lorg/apache/poi/sun/awt/EventQueueDelegate$Delegate;->getNextEvent(Lorg/apache/poi/java/awt/EventQueue;)Lorg/apache/poi/java/awt/AWTEvent;

    move-result-object v3

    goto :goto_0

    :cond_1
    if-ne p1, v3, :cond_2

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/EventQueue;->getNextEvent()Lorg/apache/poi/java/awt/AWTEvent;

    move-result-object v3

    goto :goto_0

    :cond_2
    invoke-virtual {v1, p1}, Lorg/apache/poi/java/awt/EventQueue;->getNextEvent(I)Lorg/apache/poi/java/awt/AWTEvent;

    move-result-object v3

    :goto_0
    iget-object v4, p0, Lorg/apache/poi/java/awt/EventDispatchThread;->eventFilters:Ljava/util/ArrayList;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v5, p0, Lorg/apache/poi/java/awt/EventDispatchThread;->eventFilters:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    :goto_1
    if-ltz v5, :cond_5

    iget-object v7, p0, Lorg/apache/poi/java/awt/EventDispatchThread;->eventFilters:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/poi/java/awt/EventFilter;

    invoke-interface {v7, v3}, Lorg/apache/poi/java/awt/EventFilter;->acceptEvent(Lorg/apache/poi/java/awt/AWTEvent;)Lorg/apache/poi/java/awt/EventFilter$FilterAction;

    move-result-object v7

    sget-object v8, Lorg/apache/poi/java/awt/EventFilter$FilterAction;->REJECT:Lorg/apache/poi/java/awt/EventFilter$FilterAction;

    if-ne v7, v8, :cond_3

    move v5, v0

    goto :goto_3

    :cond_3
    sget-object v8, Lorg/apache/poi/java/awt/EventFilter$FilterAction;->ACCEPT_IMMEDIATELY:Lorg/apache/poi/java/awt/EventFilter$FilterAction;

    if-ne v7, v8, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_5
    :goto_2
    move v5, v6

    :goto_3
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_6

    :try_start_2
    invoke-static {v3}, Lorg/apache/poi/sun/awt/dnd/SunDragSourceContextPeer;->checkEvent(Lorg/apache/poi/java/awt/AWTEvent;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_4

    :cond_6
    move v6, v0

    :goto_4
    if-nez v6, :cond_7

    invoke-virtual {v3}, Lorg/apache/poi/java/awt/AWTEvent;->consume()V

    :cond_7
    if-eqz v6, :cond_0

    sget-object p1, Lorg/apache/poi/java/awt/EventDispatchThread;->eventLog:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    const/16 v4, 0x12c

    invoke-virtual {p1, v4}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v4

    if-eqz v4, :cond_8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dispatching: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->finest(Ljava/lang/String;)V

    :cond_8
    const/4 p1, 0x0

    if-eqz v2, :cond_9

    invoke-interface {v2, v3}, Lorg/apache/poi/sun/awt/EventQueueDelegate$Delegate;->beforeDispatch(Lorg/apache/poi/java/awt/AWTEvent;)Ljava/lang/Object;

    move-result-object p1

    :cond_9
    invoke-virtual {v1, v3}, Lorg/apache/poi/java/awt/EventQueue;->dispatchEvent(Lorg/apache/poi/java/awt/AWTEvent;)V

    if-eqz v2, :cond_a

    invoke-interface {v2, v3, p1}, Lorg/apache/poi/sun/awt/EventQueueDelegate$Delegate;->afterDispatch(Lorg/apache/poi/java/awt/AWTEvent;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/ThreadDeath; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_5

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catch Ljava/lang/ThreadDeath; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    invoke-direct {p0, p1}, Lorg/apache/poi/java/awt/EventDispatchThread;->processException(Ljava/lang/Throwable;)V

    goto :goto_5

    :catch_0
    iput-boolean v0, p0, Lorg/apache/poi/java/awt/EventDispatchThread;->doDispatch:Z

    :cond_a
    :goto_5
    return-void

    :catch_1
    move-exception p1

    iput-boolean v0, p0, Lorg/apache/poi/java/awt/EventDispatchThread;->doDispatch:Z

    throw p1
.end method

.method public removeEventFilter(Lorg/apache/poi/java/awt/EventFilter;)V
    .locals 3

    sget-object v0, Lorg/apache/poi/java/awt/EventDispatchThread;->eventLog:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removing the event filter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->finest(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/poi/java/awt/EventDispatchThread;->eventFilters:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/EventDispatchThread;->eventFilters:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public run()V
    .locals 5

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    new-instance v2, Lorg/apache/poi/java/awt/EventDispatchThread$1;

    invoke-direct {v2, p0}, Lorg/apache/poi/java/awt/EventDispatchThread$1;-><init>(Lorg/apache/poi/java/awt/EventDispatchThread;)V

    invoke-virtual {p0, v2}, Lorg/apache/poi/java/awt/EventDispatchThread;->pumpEvents(Lorg/apache/poi/java/awt/Conditional;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/EventDispatchThread;->getEventQueue()Lorg/apache/poi/java/awt/EventQueue;

    move-result-object v2

    iget-boolean v3, p0, Lorg/apache/poi/java/awt/EventDispatchThread;->doDispatch:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    invoke-virtual {v2, p0, v0}, Lorg/apache/poi/java/awt/EventQueue;->detachDispatchThread(Lorg/apache/poi/java/awt/EventDispatchThread;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/EventDispatchThread;->getEventQueue()Lorg/apache/poi/java/awt/EventQueue;

    move-result-object v3

    iget-boolean v4, p0, Lorg/apache/poi/java/awt/EventDispatchThread;->doDispatch:Z

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    move v0, v1

    :cond_4
    invoke-virtual {v3, p0, v0}, Lorg/apache/poi/java/awt/EventQueue;->detachDispatchThread(Lorg/apache/poi/java/awt/EventDispatchThread;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    :goto_0
    return-void

    :cond_5
    throw v2
.end method

.method public declared-synchronized setEventQueue(Lorg/apache/poi/java/awt/EventQueue;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/apache/poi/java/awt/EventDispatchThread;->theQueue:Lorg/apache/poi/java/awt/EventQueue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public stopDispatching()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/java/awt/EventDispatchThread;->doDispatch:Z

    return-void
.end method
