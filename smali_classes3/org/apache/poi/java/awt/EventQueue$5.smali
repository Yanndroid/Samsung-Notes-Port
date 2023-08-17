.class Lorg/apache/poi/java/awt/EventQueue$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/java/awt/EventQueue;->initDispatchThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Lorg/apache/poi/java/awt/EventDispatchThread;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lorg/apache/poi/java/awt/EventQueue;


# direct methods
.method public constructor <init>(Lorg/apache/poi/java/awt/EventQueue;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/java/awt/EventQueue$5;->this$0:Lorg/apache/poi/java/awt/EventQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/EventQueue$5;->run()Lorg/apache/poi/java/awt/EventDispatchThread;

    move-result-object v0

    return-object v0
.end method

.method public run()Lorg/apache/poi/java/awt/EventDispatchThread;
    .locals 4

    new-instance v0, Lorg/apache/poi/java/awt/EventDispatchThread;

    iget-object v1, p0, Lorg/apache/poi/java/awt/EventQueue$5;->this$0:Lorg/apache/poi/java/awt/EventQueue;

    invoke-static {v1}, Lorg/apache/poi/java/awt/EventQueue;->access$500(Lorg/apache/poi/java/awt/EventQueue;)Ljava/lang/ThreadGroup;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/java/awt/EventQueue$5;->this$0:Lorg/apache/poi/java/awt/EventQueue;

    invoke-static {v2}, Lorg/apache/poi/java/awt/EventQueue;->access$600(Lorg/apache/poi/java/awt/EventQueue;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/poi/java/awt/EventQueue$5;->this$0:Lorg/apache/poi/java/awt/EventQueue;

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/poi/java/awt/EventDispatchThread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/String;Lorg/apache/poi/java/awt/EventQueue;)V

    iget-object v1, p0, Lorg/apache/poi/java/awt/EventQueue$5;->this$0:Lorg/apache/poi/java/awt/EventQueue;

    invoke-static {v1}, Lorg/apache/poi/java/awt/EventQueue;->access$700(Lorg/apache/poi/java/awt/EventQueue;)Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-static {}, Lorg/apache/poi/sun/awt/AWTAutoShutdown;->getInstance()Lorg/apache/poi/sun/awt/AWTAutoShutdown;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/poi/sun/awt/AWTAutoShutdown;->notifyThreadBusy(Ljava/lang/Thread;)V

    return-object v0
.end method
