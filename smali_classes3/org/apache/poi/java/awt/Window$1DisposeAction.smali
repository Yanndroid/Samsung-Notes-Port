.class Lorg/apache/poi/java/awt/Window$1DisposeAction;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/java/awt/Window;->doDispose()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "1DisposeAction"
.end annotation


# instance fields
.field public final synthetic this$0:Lorg/apache/poi/java/awt/Window;


# direct methods
.method public constructor <init>(Lorg/apache/poi/java/awt/Window;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/java/awt/Window$1DisposeAction;->this$0:Lorg/apache/poi/java/awt/Window;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lorg/apache/poi/java/awt/Window$1DisposeAction;->this$0:Lorg/apache/poi/java/awt/Window;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/apache/poi/java/awt/Window;->access$202(Lorg/apache/poi/java/awt/Window;Z)Z

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lorg/apache/poi/java/awt/Window$1DisposeAction;->this$0:Lorg/apache/poi/java/awt/Window;

    invoke-virtual {v2}, Lorg/apache/poi/java/awt/Component;->getGraphicsConfiguration()Lorg/apache/poi/java/awt/GraphicsConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/java/awt/GraphicsConfiguration;->getDevice()Lorg/apache/poi/java/awt/GraphicsDevice;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/java/awt/GraphicsDevice;->getFullScreenWindow()Lorg/apache/poi/java/awt/Window;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/poi/java/awt/Window$1DisposeAction;->this$0:Lorg/apache/poi/java/awt/Window;

    const/4 v5, 0x0

    if-ne v3, v4, :cond_0

    invoke-virtual {v2, v5}, Lorg/apache/poi/java/awt/GraphicsDevice;->setFullScreenWindow(Lorg/apache/poi/java/awt/Window;)V

    :cond_0
    iget-object v2, p0, Lorg/apache/poi/java/awt/Window$1DisposeAction;->this$0:Lorg/apache/poi/java/awt/Window;

    iget-object v2, v2, Lorg/apache/poi/java/awt/Window;->ownedWindowList:Ljava/util/Vector;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v3, p0, Lorg/apache/poi/java/awt/Window$1DisposeAction;->this$0:Lorg/apache/poi/java/awt/Window;

    iget-object v3, v3, Lorg/apache/poi/java/awt/Window;->ownedWindowList:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v6, p0, Lorg/apache/poi/java/awt/Window$1DisposeAction;->this$0:Lorg/apache/poi/java/awt/Window;

    iget-object v6, v6, Lorg/apache/poi/java/awt/Window;->ownedWindowList:Ljava/util/Vector;

    invoke-virtual {v6, v4}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_2

    :try_start_2
    aget-object v6, v4, v2

    check-cast v6, Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/poi/java/awt/Window;

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lorg/apache/poi/java/awt/Window;->disposeImpl()V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lorg/apache/poi/java/awt/Window$1DisposeAction;->this$0:Lorg/apache/poi/java/awt/Window;

    invoke-virtual {v2}, Lorg/apache/poi/java/awt/Window;->hide()V

    iget-object v2, p0, Lorg/apache/poi/java/awt/Window$1DisposeAction;->this$0:Lorg/apache/poi/java/awt/Window;

    iput-boolean v1, v2, Lorg/apache/poi/java/awt/Window;->beforeFirstShow:Z

    invoke-virtual {v2}, Lorg/apache/poi/java/awt/Window;->removeNotify()V

    iget-object v1, p0, Lorg/apache/poi/java/awt/Window$1DisposeAction;->this$0:Lorg/apache/poi/java/awt/Window;

    invoke-static {v1}, Lorg/apache/poi/java/awt/Window;->access$300(Lorg/apache/poi/java/awt/Window;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget-object v2, p0, Lorg/apache/poi/java/awt/Window$1DisposeAction;->this$0:Lorg/apache/poi/java/awt/Window;

    iget-object v2, v2, Lorg/apache/poi/java/awt/Window;->inputContext:Lorg/apache/poi/java/awt/im/InputContext;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lorg/apache/poi/java/awt/im/InputContext;->dispose()V

    iget-object v2, p0, Lorg/apache/poi/java/awt/Window$1DisposeAction;->this$0:Lorg/apache/poi/java/awt/Window;

    iput-object v5, v2, Lorg/apache/poi/java/awt/Window;->inputContext:Lorg/apache/poi/java/awt/im/InputContext;

    :cond_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v1, p0, Lorg/apache/poi/java/awt/Window$1DisposeAction;->this$0:Lorg/apache/poi/java/awt/Window;

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/Container;->clearCurrentFocusCycleRootOnHide()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    iget-object v1, p0, Lorg/apache/poi/java/awt/Window$1DisposeAction;->this$0:Lorg/apache/poi/java/awt/Window;

    invoke-static {v1, v0}, Lorg/apache/poi/java/awt/Window;->access$202(Lorg/apache/poi/java/awt/Window;Z)Z

    return-void

    :catchall_0
    move-exception v2

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_1
    move-exception v1

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception v1

    iget-object v2, p0, Lorg/apache/poi/java/awt/Window$1DisposeAction;->this$0:Lorg/apache/poi/java/awt/Window;

    invoke-static {v2, v0}, Lorg/apache/poi/java/awt/Window;->access$202(Lorg/apache/poi/java/awt/Window;Z)Z

    throw v1
.end method
