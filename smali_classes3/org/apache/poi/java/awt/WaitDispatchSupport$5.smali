.class Lorg/apache/poi/java/awt/WaitDispatchSupport$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/java/awt/WaitDispatchSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lorg/apache/poi/java/awt/WaitDispatchSupport;


# direct methods
.method public constructor <init>(Lorg/apache/poi/java/awt/WaitDispatchSupport;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/java/awt/WaitDispatchSupport$5;->this$0:Lorg/apache/poi/java/awt/WaitDispatchSupport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lorg/apache/poi/java/awt/WaitDispatchSupport;->access$000()Lorg/apache/poi/sun/util/logging/PlatformLogger;

    move-result-object v0

    const-string v1, "Wake up EDT"

    invoke-virtual {v0, v1}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    invoke-static {}, Lorg/apache/poi/java/awt/WaitDispatchSupport;->access$900()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/WaitDispatchSupport$5;->this$0:Lorg/apache/poi/java/awt/WaitDispatchSupport;

    invoke-static {v1}, Lorg/apache/poi/java/awt/WaitDispatchSupport;->access$200(Lorg/apache/poi/java/awt/WaitDispatchSupport;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Lorg/apache/poi/java/awt/WaitDispatchSupport;->access$900()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lorg/apache/poi/java/awt/WaitDispatchSupport;->access$000()Lorg/apache/poi/sun/util/logging/PlatformLogger;

    move-result-object v0

    const-string v1, "Wake up EDT done"

    invoke-virtual {v0, v1}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
