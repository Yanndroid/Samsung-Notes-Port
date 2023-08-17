.class Lorg/apache/poi/java/awt/Container$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/java/awt/Container;->startLWModal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lorg/apache/poi/java/awt/Container;

.field public final synthetic val$nativeContainer:Lorg/apache/poi/java/awt/Container;


# direct methods
.method public constructor <init>(Lorg/apache/poi/java/awt/Container;Lorg/apache/poi/java/awt/Container;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/java/awt/Container$3;->this$0:Lorg/apache/poi/java/awt/Container;

    iput-object p2, p0, Lorg/apache/poi/java/awt/Container$3;->val$nativeContainer:Lorg/apache/poi/java/awt/Container;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/java/awt/EventDispatchThread;

    new-instance v1, Lorg/apache/poi/java/awt/Container$3$1;

    invoke-direct {v1, p0}, Lorg/apache/poi/java/awt/Container$3$1;-><init>(Lorg/apache/poi/java/awt/Container$3;)V

    iget-object v2, p0, Lorg/apache/poi/java/awt/Container$3;->this$0:Lorg/apache/poi/java/awt/Container;

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/java/awt/EventDispatchThread;->pumpEventsForHierarchy(Lorg/apache/poi/java/awt/Conditional;Lorg/apache/poi/java/awt/Component;)V

    return-void
.end method
