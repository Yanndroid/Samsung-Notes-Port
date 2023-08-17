.class final Lorg/apache/poi/java/awt/EventQueue$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sun/awt/AWTAccessor$EventQueueAccessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/java/awt/EventQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDispatchThread(Lorg/apache/poi/java/awt/EventQueue;)Ljava/lang/Thread;
    .locals 0

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/EventQueue;->getDispatchThread()Lorg/apache/poi/java/awt/EventDispatchThread;

    move-result-object p1

    return-object p1
.end method

.method public getMostRecentEventTime(Lorg/apache/poi/java/awt/EventQueue;)J
    .locals 2

    invoke-static {p1}, Lorg/apache/poi/java/awt/EventQueue;->access$200(Lorg/apache/poi/java/awt/EventQueue;)J

    move-result-wide v0

    return-wide v0
.end method

.method public invokeAndWait(Ljava/lang/Object;Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p1, p2}, Lorg/apache/poi/java/awt/EventQueue;->invokeAndWait(Ljava/lang/Object;Ljava/lang/Runnable;)V

    return-void
.end method

.method public isDispatchThreadImpl(Lorg/apache/poi/java/awt/EventQueue;)Z
    .locals 0

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/EventQueue;->isDispatchThreadImpl()Z

    move-result p1

    return p1
.end method

.method public noEvents(Lorg/apache/poi/java/awt/EventQueue;)Z
    .locals 0

    invoke-static {p1}, Lorg/apache/poi/java/awt/EventQueue;->access$000(Lorg/apache/poi/java/awt/EventQueue;)Z

    move-result p1

    return p1
.end method

.method public removeSourceEvents(Lorg/apache/poi/java/awt/EventQueue;Ljava/lang/Object;Z)V
    .locals 0

    invoke-virtual {p1, p2, p3}, Lorg/apache/poi/java/awt/EventQueue;->removeSourceEvents(Ljava/lang/Object;Z)V

    return-void
.end method

.method public wakeup(Lorg/apache/poi/java/awt/EventQueue;Z)V
    .locals 0

    invoke-static {p1, p2}, Lorg/apache/poi/java/awt/EventQueue;->access$100(Lorg/apache/poi/java/awt/EventQueue;Z)V

    return-void
.end method
