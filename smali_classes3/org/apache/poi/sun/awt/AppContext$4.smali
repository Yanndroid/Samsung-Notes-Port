.class Lorg/apache/poi/sun/awt/AppContext$4;
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

.field public final synthetic val$changeSupport:Ljava/beans/PropertyChangeSupport;

.field public final synthetic val$notificationLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/apache/poi/sun/awt/AppContext;Ljava/beans/PropertyChangeSupport;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/sun/awt/AppContext$4;->this$0:Lorg/apache/poi/sun/awt/AppContext;

    iput-object p2, p0, Lorg/apache/poi/sun/awt/AppContext$4;->val$changeSupport:Ljava/beans/PropertyChangeSupport;

    iput-object p3, p0, Lorg/apache/poi/sun/awt/AppContext$4;->val$notificationLock:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    invoke-static {}, Lorg/apache/poi/java/awt/Window;->getOwnerlessWindows()[Lorg/apache/poi/java/awt/Window;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    :try_start_0
    invoke-virtual {v4}, Lorg/apache/poi/java/awt/Window;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v4

    invoke-static {}, Lorg/apache/poi/sun/awt/AppContext;->access$700()Lorg/apache/poi/sun/util/logging/PlatformLogger;

    move-result-object v5

    const-string v6, "exception occurred while disposing app context"

    invoke-virtual {v5, v6, v4}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->finer(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/poi/sun/awt/AppContext$4$1;

    invoke-direct {v0, p0}, Lorg/apache/poi/sun/awt/AppContext$4$1;-><init>(Lorg/apache/poi/sun/awt/AppContext$4;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/poi/sun/awt/AppContext$4;->val$changeSupport:Ljava/beans/PropertyChangeSupport;

    if-eqz v0, :cond_1

    const-string v1, "guidisposed"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;ZZ)V

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/sun/awt/AppContext$4;->val$notificationLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lorg/apache/poi/sun/awt/AppContext$4;->val$notificationLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method
