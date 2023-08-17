.class Lorg/apache/poi/sun/awt/PostEventQueue;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final eventQueue:Lorg/apache/poi/java/awt/EventQueue;

.field private flushThread:Ljava/lang/Thread;

.field private queueHead:Lorg/apache/poi/sun/awt/EventQueueItem;

.field private queueTail:Lorg/apache/poi/sun/awt/EventQueueItem;


# direct methods
.method public constructor <init>(Lorg/apache/poi/java/awt/EventQueue;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/sun/awt/PostEventQueue;->queueHead:Lorg/apache/poi/sun/awt/EventQueueItem;

    iput-object v0, p0, Lorg/apache/poi/sun/awt/PostEventQueue;->queueTail:Lorg/apache/poi/sun/awt/EventQueueItem;

    iput-object v0, p0, Lorg/apache/poi/sun/awt/PostEventQueue;->flushThread:Ljava/lang/Thread;

    iput-object p1, p0, Lorg/apache/poi/sun/awt/PostEventQueue;->eventQueue:Lorg/apache/poi/java/awt/EventQueue;

    return-void
.end method


# virtual methods
.method public flush()V
    .locals 5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lorg/apache/poi/sun/awt/PostEventQueue;->flushThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/apache/poi/sun/awt/PostEventQueue;->flushThread:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/apache/poi/sun/awt/PostEventQueue;->queueHead:Lorg/apache/poi/sun/awt/EventQueueItem;

    if-nez v1, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    iput-object v0, p0, Lorg/apache/poi/sun/awt/PostEventQueue;->flushThread:Ljava/lang/Thread;

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/apache/poi/sun/awt/PostEventQueue;->queueTail:Lorg/apache/poi/sun/awt/EventQueueItem;

    iput-object v2, p0, Lorg/apache/poi/sun/awt/PostEventQueue;->queueHead:Lorg/apache/poi/sun/awt/EventQueueItem;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :goto_1
    if-eqz v1, :cond_3

    :try_start_2
    iget-object v3, p0, Lorg/apache/poi/sun/awt/PostEventQueue;->eventQueue:Lorg/apache/poi/java/awt/EventQueue;

    iget-object v4, v1, Lorg/apache/poi/sun/awt/EventQueueItem;->event:Lorg/apache/poi/java/awt/AWTEvent;

    invoke-virtual {v3, v4}, Lorg/apache/poi/java/awt/EventQueue;->postEvent(Lorg/apache/poi/java/awt/AWTEvent;)V

    iget-object v1, v1, Lorg/apache/poi/sun/awt/EventQueueItem;->next:Lorg/apache/poi/sun/awt/EventQueueItem;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-enter p0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    iput-object v2, p0, Lorg/apache/poi/sun/awt/PostEventQueue;->flushThread:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v1
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0

    :catchall_1
    move-exception v1

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v1

    :cond_3
    monitor-enter p0
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_0

    :try_start_8
    iput-object v2, p0, Lorg/apache/poi/sun/awt/PostEventQueue;->flushThread:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    goto :goto_2

    :catchall_2
    move-exception v1

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v1
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_0

    :catchall_3
    move-exception v1

    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    throw v1
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_0

    :catch_0
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :goto_2
    return-void
.end method

.method public postEvent(Lorg/apache/poi/java/awt/AWTEvent;)V
    .locals 2

    new-instance v0, Lorg/apache/poi/sun/awt/EventQueueItem;

    invoke-direct {v0, p1}, Lorg/apache/poi/sun/awt/EventQueueItem;-><init>(Lorg/apache/poi/java/awt/AWTEvent;)V

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/sun/awt/PostEventQueue;->queueHead:Lorg/apache/poi/sun/awt/EventQueueItem;

    if-nez v1, :cond_0

    iput-object v0, p0, Lorg/apache/poi/sun/awt/PostEventQueue;->queueTail:Lorg/apache/poi/sun/awt/EventQueueItem;

    iput-object v0, p0, Lorg/apache/poi/sun/awt/PostEventQueue;->queueHead:Lorg/apache/poi/sun/awt/EventQueueItem;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/sun/awt/PostEventQueue;->queueTail:Lorg/apache/poi/sun/awt/EventQueueItem;

    iput-object v0, v1, Lorg/apache/poi/sun/awt/EventQueueItem;->next:Lorg/apache/poi/sun/awt/EventQueueItem;

    iput-object v0, p0, Lorg/apache/poi/sun/awt/PostEventQueue;->queueTail:Lorg/apache/poi/sun/awt/EventQueueItem;

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lorg/apache/poi/sun/awt/PostEventQueue;->eventQueue:Lorg/apache/poi/java/awt/EventQueue;

    invoke-virtual {p1}, Ljava/util/EventObject;->getSource()Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lorg/apache/poi/sun/awt/AWTAutoShutdown;->getInstance()Lorg/apache/poi/sun/awt/AWTAutoShutdown;

    move-result-object v1

    if-ne p1, v1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-static {v0, p1}, Lorg/apache/poi/sun/awt/SunToolkit;->wakeupEventQueue(Lorg/apache/poi/java/awt/EventQueue;Z)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
