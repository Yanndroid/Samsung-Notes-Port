.class final Lorg/apache/poi/java/awt/Frame$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sun/awt/AWTAccessor$FrameAccessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/java/awt/Frame;
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
.method public getExtendedState(Lorg/apache/poi/java/awt/Frame;)I
    .locals 1

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->getObjectLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {p1}, Lorg/apache/poi/java/awt/Frame;->access$000(Lorg/apache/poi/java/awt/Frame;)I

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getMaximizedBounds(Lorg/apache/poi/java/awt/Frame;)Lorg/apache/poi/java/awt/Rectangle;
    .locals 1

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->getObjectLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object p1, p1, Lorg/apache/poi/java/awt/Frame;->maximizedBounds:Lorg/apache/poi/java/awt/Rectangle;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setExtendedState(Lorg/apache/poi/java/awt/Frame;I)V
    .locals 1

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->getObjectLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {p1, p2}, Lorg/apache/poi/java/awt/Frame;->access$002(Lorg/apache/poi/java/awt/Frame;I)I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
