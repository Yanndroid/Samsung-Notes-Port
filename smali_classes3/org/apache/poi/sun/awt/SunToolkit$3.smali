.class Lorg/apache/poi/sun/awt/SunToolkit$3;
.super Lorg/apache/poi/sun/awt/PeerEvent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/sun/awt/SunToolkit;->waitForIdle(J)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lorg/apache/poi/sun/awt/SunToolkit;

.field public final synthetic val$timeout:J


# direct methods
.method public constructor <init>(Lorg/apache/poi/sun/awt/SunToolkit;Ljava/lang/Object;Ljava/lang/Runnable;JJ)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/sun/awt/SunToolkit$3;->this$0:Lorg/apache/poi/sun/awt/SunToolkit;

    iput-wide p6, p0, Lorg/apache/poi/sun/awt/SunToolkit$3;->val$timeout:J

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/apache/poi/sun/awt/PeerEvent;-><init>(Ljava/lang/Object;Ljava/lang/Runnable;J)V

    return-void
.end method


# virtual methods
.method public dispatch()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/apache/poi/sun/awt/SunToolkit$3;->this$0:Lorg/apache/poi/sun/awt/SunToolkit;

    iget-wide v2, p0, Lorg/apache/poi/sun/awt/SunToolkit$3;->val$timeout:J

    invoke-virtual {v1, v2, v3}, Lorg/apache/poi/sun/awt/SunToolkit;->syncNativeQueue(J)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/apache/poi/sun/awt/SunToolkit;->flushPendingEvents()V

    iget-object v0, p0, Lorg/apache/poi/sun/awt/SunToolkit$3;->this$0:Lorg/apache/poi/sun/awt/SunToolkit;

    invoke-static {v0}, Lorg/apache/poi/sun/awt/SunToolkit;->access$000(Lorg/apache/poi/sun/awt/SunToolkit;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/sun/awt/SunToolkit$3;->this$0:Lorg/apache/poi/sun/awt/SunToolkit;

    invoke-static {v1}, Lorg/apache/poi/sun/awt/SunToolkit;->access$200(Lorg/apache/poi/sun/awt/SunToolkit;)Z

    move-result v2

    invoke-static {v1, v2}, Lorg/apache/poi/sun/awt/SunToolkit;->access$102(Lorg/apache/poi/sun/awt/SunToolkit;Z)Z

    iget-object v1, p0, Lorg/apache/poi/sun/awt/SunToolkit$3;->this$0:Lorg/apache/poi/sun/awt/SunToolkit;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/apache/poi/sun/awt/SunToolkit;->access$302(Lorg/apache/poi/sun/awt/SunToolkit;Z)Z

    iget-object v1, p0, Lorg/apache/poi/sun/awt/SunToolkit$3;->this$0:Lorg/apache/poi/sun/awt/SunToolkit;

    invoke-static {v1}, Lorg/apache/poi/sun/awt/SunToolkit;->access$000(Lorg/apache/poi/sun/awt/SunToolkit;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
