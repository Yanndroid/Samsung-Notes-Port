.class Lorg/apache/poi/java/awt/WaitDispatchSupport$3;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/java/awt/WaitDispatchSupport;->enter()Z
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

    iput-object p1, p0, Lorg/apache/poi/java/awt/WaitDispatchSupport$3;->this$0:Lorg/apache/poi/java/awt/WaitDispatchSupport;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/java/awt/WaitDispatchSupport$3;->this$0:Lorg/apache/poi/java/awt/WaitDispatchSupport;

    invoke-static {v0}, Lorg/apache/poi/java/awt/WaitDispatchSupport;->access$100(Lorg/apache/poi/java/awt/WaitDispatchSupport;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/java/awt/WaitDispatchSupport$3;->this$0:Lorg/apache/poi/java/awt/WaitDispatchSupport;

    invoke-static {v0}, Lorg/apache/poi/java/awt/WaitDispatchSupport;->access$800(Lorg/apache/poi/java/awt/WaitDispatchSupport;)V

    :cond_0
    return-void
.end method
