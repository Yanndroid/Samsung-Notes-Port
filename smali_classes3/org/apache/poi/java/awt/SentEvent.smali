.class Lorg/apache/poi/java/awt/SentEvent;
.super Lorg/apache/poi/java/awt/AWTEvent;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/java/awt/ActiveEvent;


# static fields
.field public static final ID:I = 0x3ef

.field private static final serialVersionUID:J = -0x552e008e193bb03L


# instance fields
.field public dispatched:Z

.field private nested:Lorg/apache/poi/java/awt/AWTEvent;

.field private toNotify:Lorg/apache/poi/sun/awt/AppContext;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/java/awt/SentEvent;-><init>(Lorg/apache/poi/java/awt/AWTEvent;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/java/awt/AWTEvent;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/java/awt/SentEvent;-><init>(Lorg/apache/poi/java/awt/AWTEvent;Lorg/apache/poi/sun/awt/AppContext;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/java/awt/AWTEvent;Lorg/apache/poi/sun/awt/AppContext;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/EventObject;->getSource()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->getDefaultToolkit()Lorg/apache/poi/java/awt/Toolkit;

    move-result-object v0

    :goto_0
    const/16 v1, 0x3ef

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/java/awt/AWTEvent;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Lorg/apache/poi/java/awt/SentEvent;->nested:Lorg/apache/poi/java/awt/AWTEvent;

    iput-object p2, p0, Lorg/apache/poi/java/awt/SentEvent;->toNotify:Lorg/apache/poi/sun/awt/AppContext;

    return-void
.end method


# virtual methods
.method public dispatch()V
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/SentEvent;->nested:Lorg/apache/poi/java/awt/AWTEvent;

    if-eqz v1, :cond_0

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->getEventQueue()Lorg/apache/poi/java/awt/EventQueue;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/java/awt/SentEvent;->nested:Lorg/apache/poi/java/awt/AWTEvent;

    invoke-virtual {v1, v2}, Lorg/apache/poi/java/awt/EventQueue;->dispatchEvent(Lorg/apache/poi/java/awt/AWTEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    iput-boolean v0, p0, Lorg/apache/poi/java/awt/SentEvent;->dispatched:Z

    iget-object v0, p0, Lorg/apache/poi/java/awt/SentEvent;->toNotify:Lorg/apache/poi/sun/awt/AppContext;

    if-eqz v0, :cond_1

    new-instance v1, Lorg/apache/poi/java/awt/SentEvent;

    invoke-direct {v1}, Lorg/apache/poi/java/awt/SentEvent;-><init>()V

    invoke-static {v0, v1}, Lorg/apache/poi/sun/awt/SunToolkit;->postEvent(Lorg/apache/poi/sun/awt/AppContext;Lorg/apache/poi/java/awt/AWTEvent;)V

    :cond_1
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    iput-boolean v0, p0, Lorg/apache/poi/java/awt/SentEvent;->dispatched:Z

    iget-object v0, p0, Lorg/apache/poi/java/awt/SentEvent;->toNotify:Lorg/apache/poi/sun/awt/AppContext;

    if-eqz v0, :cond_2

    new-instance v2, Lorg/apache/poi/java/awt/SentEvent;

    invoke-direct {v2}, Lorg/apache/poi/java/awt/SentEvent;-><init>()V

    invoke-static {v0, v2}, Lorg/apache/poi/sun/awt/SunToolkit;->postEvent(Lorg/apache/poi/sun/awt/AppContext;Lorg/apache/poi/java/awt/AWTEvent;)V

    :cond_2
    monitor-enter p0

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v1

    :catchall_2
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0
.end method

.method public final dispose()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/java/awt/SentEvent;->dispatched:Z

    iget-object v0, p0, Lorg/apache/poi/java/awt/SentEvent;->toNotify:Lorg/apache/poi/sun/awt/AppContext;

    if-eqz v0, :cond_0

    new-instance v1, Lorg/apache/poi/java/awt/SentEvent;

    invoke-direct {v1}, Lorg/apache/poi/java/awt/SentEvent;-><init>()V

    invoke-static {v0, v1}, Lorg/apache/poi/sun/awt/SunToolkit;->postEvent(Lorg/apache/poi/sun/awt/AppContext;Lorg/apache/poi/java/awt/AWTEvent;)V

    :cond_0
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
