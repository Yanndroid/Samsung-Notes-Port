.class Lorg/apache/poi/java/awt/WaitDispatchSupport$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Lorg/apache/poi/java/awt/WaitDispatchSupport$2;->this$0:Lorg/apache/poi/java/awt/WaitDispatchSupport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lorg/apache/poi/java/awt/WaitDispatchSupport;->access$000()Lorg/apache/poi/sun/util/logging/PlatformLogger;

    move-result-object v0

    const-string v1, "Starting a new event pump"

    invoke-virtual {v0, v1}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/poi/java/awt/WaitDispatchSupport$2;->this$0:Lorg/apache/poi/java/awt/WaitDispatchSupport;

    invoke-static {v0}, Lorg/apache/poi/java/awt/WaitDispatchSupport;->access$500(Lorg/apache/poi/java/awt/WaitDispatchSupport;)Lorg/apache/poi/java/awt/EventFilter;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/java/awt/WaitDispatchSupport$2;->this$0:Lorg/apache/poi/java/awt/WaitDispatchSupport;

    invoke-static {v0}, Lorg/apache/poi/java/awt/WaitDispatchSupport;->access$700(Lorg/apache/poi/java/awt/WaitDispatchSupport;)Lorg/apache/poi/java/awt/EventDispatchThread;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/java/awt/WaitDispatchSupport$2;->this$0:Lorg/apache/poi/java/awt/WaitDispatchSupport;

    invoke-static {v1}, Lorg/apache/poi/java/awt/WaitDispatchSupport;->access$600(Lorg/apache/poi/java/awt/WaitDispatchSupport;)Lorg/apache/poi/java/awt/Conditional;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/java/awt/EventDispatchThread;->pumpEvents(Lorg/apache/poi/java/awt/Conditional;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/WaitDispatchSupport$2;->this$0:Lorg/apache/poi/java/awt/WaitDispatchSupport;

    invoke-static {v0}, Lorg/apache/poi/java/awt/WaitDispatchSupport;->access$700(Lorg/apache/poi/java/awt/WaitDispatchSupport;)Lorg/apache/poi/java/awt/EventDispatchThread;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/java/awt/WaitDispatchSupport$2;->this$0:Lorg/apache/poi/java/awt/WaitDispatchSupport;

    invoke-static {v1}, Lorg/apache/poi/java/awt/WaitDispatchSupport;->access$600(Lorg/apache/poi/java/awt/WaitDispatchSupport;)Lorg/apache/poi/java/awt/Conditional;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/java/awt/WaitDispatchSupport$2;->this$0:Lorg/apache/poi/java/awt/WaitDispatchSupport;

    invoke-static {v2}, Lorg/apache/poi/java/awt/WaitDispatchSupport;->access$500(Lorg/apache/poi/java/awt/WaitDispatchSupport;)Lorg/apache/poi/java/awt/EventFilter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/java/awt/EventDispatchThread;->pumpEventsForFilter(Lorg/apache/poi/java/awt/Conditional;Lorg/apache/poi/java/awt/EventFilter;)V

    :goto_0
    return-void
.end method
