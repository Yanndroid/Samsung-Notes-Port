.class Lorg/apache/poi/sun/awt/AppContext$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/sun/awt/AppContext;->dispose()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lorg/apache/poi/sun/awt/AppContext;

.field public final synthetic val$notificationLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/apache/poi/sun/awt/AppContext;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/sun/awt/AppContext$5;->this$0:Lorg/apache/poi/sun/awt/AppContext;

    iput-object p2, p0, Lorg/apache/poi/sun/awt/AppContext$5;->val$notificationLock:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/sun/awt/AppContext$5;->val$notificationLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/sun/awt/AppContext$5;->val$notificationLock:Ljava/lang/Object;

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
