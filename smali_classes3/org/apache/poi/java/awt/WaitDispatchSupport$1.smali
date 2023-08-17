.class Lorg/apache/poi/java/awt/WaitDispatchSupport$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/java/awt/Conditional;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/java/awt/WaitDispatchSupport;-><init>(Lorg/apache/poi/java/awt/EventDispatchThread;Lorg/apache/poi/java/awt/Conditional;)V
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

    iput-object p1, p0, Lorg/apache/poi/java/awt/WaitDispatchSupport$1;->this$0:Lorg/apache/poi/java/awt/WaitDispatchSupport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate()Z
    .locals 3

    invoke-static {}, Lorg/apache/poi/java/awt/WaitDispatchSupport;->access$000()Lorg/apache/poi/sun/util/logging/PlatformLogger;

    move-result-object v0

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/apache/poi/java/awt/WaitDispatchSupport;->access$000()Lorg/apache/poi/sun/util/logging/PlatformLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "evaluate(): blockingEDT="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/poi/java/awt/WaitDispatchSupport$1;->this$0:Lorg/apache/poi/java/awt/WaitDispatchSupport;

    invoke-static {v2}, Lorg/apache/poi/java/awt/WaitDispatchSupport;->access$100(Lorg/apache/poi/java/awt/WaitDispatchSupport;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", blockingCT="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/poi/java/awt/WaitDispatchSupport$1;->this$0:Lorg/apache/poi/java/awt/WaitDispatchSupport;

    invoke-static {v2}, Lorg/apache/poi/java/awt/WaitDispatchSupport;->access$200(Lorg/apache/poi/java/awt/WaitDispatchSupport;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->finest(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/WaitDispatchSupport$1;->this$0:Lorg/apache/poi/java/awt/WaitDispatchSupport;

    invoke-static {v0}, Lorg/apache/poi/java/awt/WaitDispatchSupport;->access$300(Lorg/apache/poi/java/awt/WaitDispatchSupport;)Lorg/apache/poi/java/awt/Conditional;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/java/awt/WaitDispatchSupport$1;->this$0:Lorg/apache/poi/java/awt/WaitDispatchSupport;

    invoke-static {v0}, Lorg/apache/poi/java/awt/WaitDispatchSupport;->access$300(Lorg/apache/poi/java/awt/WaitDispatchSupport;)Lorg/apache/poi/java/awt/Conditional;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/java/awt/Conditional;->evaluate()Z

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iget-object v2, p0, Lorg/apache/poi/java/awt/WaitDispatchSupport$1;->this$0:Lorg/apache/poi/java/awt/WaitDispatchSupport;

    invoke-static {v2}, Lorg/apache/poi/java/awt/WaitDispatchSupport;->access$100(Lorg/apache/poi/java/awt/WaitDispatchSupport;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_3

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    return v1

    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/apache/poi/java/awt/WaitDispatchSupport$1;->this$0:Lorg/apache/poi/java/awt/WaitDispatchSupport;

    invoke-static {v0}, Lorg/apache/poi/java/awt/WaitDispatchSupport;->access$400(Lorg/apache/poi/java/awt/WaitDispatchSupport;)Ljava/util/TimerTask;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/apache/poi/java/awt/WaitDispatchSupport$1;->this$0:Lorg/apache/poi/java/awt/WaitDispatchSupport;

    invoke-static {v0}, Lorg/apache/poi/java/awt/WaitDispatchSupport;->access$400(Lorg/apache/poi/java/awt/WaitDispatchSupport;)Ljava/util/TimerTask;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    iget-object v0, p0, Lorg/apache/poi/java/awt/WaitDispatchSupport$1;->this$0:Lorg/apache/poi/java/awt/WaitDispatchSupport;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/poi/java/awt/WaitDispatchSupport;->access$402(Lorg/apache/poi/java/awt/WaitDispatchSupport;Ljava/util/TimerTask;)Ljava/util/TimerTask;

    :cond_4
    const/4 v0, 0x0

    return v0
.end method
