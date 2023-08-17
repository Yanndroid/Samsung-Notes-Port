.class public Lorg/apache/poi/java/awt/MediaTracker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final ABORTED:I = 0x2

.field public static final COMPLETE:I = 0x8

.field public static final DONE:I = 0xe

.field public static final ERRORED:I = 0x4

.field public static final LOADING:I = 0x1

.field private static final serialVersionUID:J = -0x6b4945d9933680fL


# instance fields
.field public head:Lorg/apache/poi/java/awt/MediaEntry;

.field public target:Lorg/apache/poi/java/awt/Component;


# direct methods
.method public constructor <init>(Lorg/apache/poi/java/awt/Component;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/java/awt/MediaTracker;->target:Lorg/apache/poi/java/awt/Component;

    return-void
.end method

.method private declared-synchronized checkAll(ZZ)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/MediaTracker;->head:Lorg/apache/poi/java/awt/MediaEntry;

    const/4 v1, 0x1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/java/awt/MediaEntry;->getStatus(ZZ)I

    move-result v2

    and-int/lit8 v2, v2, 0xe

    if-nez v2, :cond_0

    const/4 v1, 0x0

    :cond_0
    iget-object v0, v0, Lorg/apache/poi/java/awt/MediaEntry;->next:Lorg/apache/poi/java/awt/MediaEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized checkID(IZZ)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/MediaTracker;->head:Lorg/apache/poi/java/awt/MediaEntry;

    const/4 v1, 0x1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/MediaEntry;->getID()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {v0, p2, p3}, Lorg/apache/poi/java/awt/MediaEntry;->getStatus(ZZ)I

    move-result v2

    and-int/lit8 v2, v2, 0xe

    if-nez v2, :cond_0

    const/4 v1, 0x0

    :cond_0
    iget-object v0, v0, Lorg/apache/poi/java/awt/MediaEntry;->next:Lorg/apache/poi/java/awt/MediaEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized statusAll(ZZ)I
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/MediaTracker;->head:Lorg/apache/poi/java/awt/MediaEntry;

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/java/awt/MediaEntry;->getStatus(ZZ)I

    move-result v2

    or-int/2addr v1, v2

    iget-object v0, v0, Lorg/apache/poi/java/awt/MediaEntry;->next:Lorg/apache/poi/java/awt/MediaEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized statusID(IZZ)I
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/MediaTracker;->head:Lorg/apache/poi/java/awt/MediaEntry;

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/MediaEntry;->getID()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {v0, p2, p3}, Lorg/apache/poi/java/awt/MediaEntry;->getStatus(ZZ)I

    move-result v2

    or-int/2addr v1, v2

    :cond_0
    iget-object v0, v0, Lorg/apache/poi/java/awt/MediaEntry;->next:Lorg/apache/poi/java/awt/MediaEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public addImage(Lorg/apache/poi/java/awt/Image;I)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0, v0}, Lorg/apache/poi/java/awt/MediaTracker;->addImage(Lorg/apache/poi/java/awt/Image;III)V

    return-void
.end method

.method public declared-synchronized addImage(Lorg/apache/poi/java/awt/Image;III)V
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/MediaTracker;->head:Lorg/apache/poi/java/awt/MediaEntry;

    new-instance v7, Lorg/apache/poi/java/awt/ImageMediaEntry;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/java/awt/ImageMediaEntry;-><init>(Lorg/apache/poi/java/awt/MediaTracker;Lorg/apache/poi/java/awt/Image;III)V

    invoke-static {v0, v7}, Lorg/apache/poi/java/awt/MediaEntry;->insert(Lorg/apache/poi/java/awt/MediaEntry;Lorg/apache/poi/java/awt/MediaEntry;)Lorg/apache/poi/java/awt/MediaEntry;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/java/awt/MediaTracker;->head:Lorg/apache/poi/java/awt/MediaEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public checkAll()Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/java/awt/MediaTracker;->checkAll(ZZ)Z

    move-result v0

    return v0
.end method

.method public checkAll(Z)Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/java/awt/MediaTracker;->checkAll(ZZ)Z

    move-result p1

    return p1
.end method

.method public checkID(I)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/poi/java/awt/MediaTracker;->checkID(IZZ)Z

    move-result p1

    return p1
.end method

.method public checkID(IZ)Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/java/awt/MediaTracker;->checkID(IZZ)Z

    move-result p1

    return p1
.end method

.method public declared-synchronized getErrorsAny()[Ljava/lang/Object;
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/MediaTracker;->head:Lorg/apache/poi/java/awt/MediaEntry;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-eqz v0, :cond_1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lorg/apache/poi/java/awt/MediaEntry;->getStatus(ZZ)I

    move-result v3

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    iget-object v0, v0, Lorg/apache/poi/java/awt/MediaEntry;->next:Lorg/apache/poi/java/awt/MediaEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :cond_2
    :try_start_1
    new-array v0, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lorg/apache/poi/java/awt/MediaTracker;->head:Lorg/apache/poi/java/awt/MediaEntry;

    move v3, v1

    :goto_1
    if-eqz v2, :cond_4

    invoke-virtual {v2, v1, v1}, Lorg/apache/poi/java/awt/MediaEntry;->getStatus(ZZ)I

    move-result v4

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_3

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v2}, Lorg/apache/poi/java/awt/MediaEntry;->getMedia()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v0, v3

    move v3, v4

    :cond_3
    iget-object v2, v2, Lorg/apache/poi/java/awt/MediaEntry;->next:Lorg/apache/poi/java/awt/MediaEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_4
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getErrorsID(I)[Ljava/lang/Object;
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/MediaTracker;->head:Lorg/apache/poi/java/awt/MediaEntry;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/MediaEntry;->getID()I

    move-result v3

    if-ne v3, p1, :cond_0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lorg/apache/poi/java/awt/MediaEntry;->getStatus(ZZ)I

    move-result v3

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    iget-object v0, v0, Lorg/apache/poi/java/awt/MediaEntry;->next:Lorg/apache/poi/java/awt/MediaEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :cond_2
    :try_start_1
    new-array v0, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lorg/apache/poi/java/awt/MediaTracker;->head:Lorg/apache/poi/java/awt/MediaEntry;

    move v3, v1

    :goto_1
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lorg/apache/poi/java/awt/MediaEntry;->getID()I

    move-result v4

    if-ne v4, p1, :cond_3

    invoke-virtual {v2, v1, v1}, Lorg/apache/poi/java/awt/MediaEntry;->getStatus(ZZ)I

    move-result v4

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_3

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v2}, Lorg/apache/poi/java/awt/MediaEntry;->getMedia()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v0, v3

    move v3, v4

    :cond_3
    iget-object v2, v2, Lorg/apache/poi/java/awt/MediaEntry;->next:Lorg/apache/poi/java/awt/MediaEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_4
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isErrorAny()Z
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/MediaTracker;->head:Lorg/apache/poi/java/awt/MediaEntry;

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/java/awt/MediaEntry;->getStatus(ZZ)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    monitor-exit p0

    return v2

    :cond_0
    :try_start_1
    iget-object v0, v0, Lorg/apache/poi/java/awt/MediaEntry;->next:Lorg/apache/poi/java/awt/MediaEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isErrorID(I)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/MediaTracker;->head:Lorg/apache/poi/java/awt/MediaEntry;

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/MediaEntry;->getID()I

    move-result v2

    if-ne v2, p1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/java/awt/MediaEntry;->getStatus(ZZ)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    monitor-exit p0

    return v2

    :cond_0
    :try_start_1
    iget-object v0, v0, Lorg/apache/poi/java/awt/MediaEntry;->next:Lorg/apache/poi/java/awt/MediaEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeImage(Lorg/apache/poi/java/awt/Image;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/MediaTracker;->head:Lorg/apache/poi/java/awt/MediaEntry;

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_2

    iget-object v2, v0, Lorg/apache/poi/java/awt/MediaEntry;->next:Lorg/apache/poi/java/awt/MediaEntry;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/MediaEntry;->getMedia()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_1

    if-nez v1, :cond_0

    iput-object v2, p0, Lorg/apache/poi/java/awt/MediaTracker;->head:Lorg/apache/poi/java/awt/MediaEntry;

    goto :goto_1

    :cond_0
    iput-object v2, v1, Lorg/apache/poi/java/awt/MediaEntry;->next:Lorg/apache/poi/java/awt/MediaEntry;

    :goto_1
    invoke-virtual {v0}, Lorg/apache/poi/java/awt/MediaEntry;->cancel()V

    goto :goto_2

    :cond_1
    move-object v1, v0

    :goto_2
    move-object v0, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeImage(Lorg/apache/poi/java/awt/Image;I)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/MediaTracker;->head:Lorg/apache/poi/java/awt/MediaEntry;

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_2

    iget-object v2, v0, Lorg/apache/poi/java/awt/MediaEntry;->next:Lorg/apache/poi/java/awt/MediaEntry;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/MediaEntry;->getID()I

    move-result v3

    if-ne v3, p2, :cond_1

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/MediaEntry;->getMedia()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_1

    if-nez v1, :cond_0

    iput-object v2, p0, Lorg/apache/poi/java/awt/MediaTracker;->head:Lorg/apache/poi/java/awt/MediaEntry;

    goto :goto_1

    :cond_0
    iput-object v2, v1, Lorg/apache/poi/java/awt/MediaEntry;->next:Lorg/apache/poi/java/awt/MediaEntry;

    :goto_1
    invoke-virtual {v0}, Lorg/apache/poi/java/awt/MediaEntry;->cancel()V

    goto :goto_2

    :cond_1
    move-object v1, v0

    :goto_2
    move-object v0, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeImage(Lorg/apache/poi/java/awt/Image;III)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/MediaTracker;->head:Lorg/apache/poi/java/awt/MediaEntry;

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_2

    iget-object v2, v0, Lorg/apache/poi/java/awt/MediaEntry;->next:Lorg/apache/poi/java/awt/MediaEntry;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/MediaEntry;->getID()I

    move-result v3

    if-ne v3, p2, :cond_1

    instance-of v3, v0, Lorg/apache/poi/java/awt/ImageMediaEntry;

    if-eqz v3, :cond_1

    move-object v3, v0

    check-cast v3, Lorg/apache/poi/java/awt/ImageMediaEntry;

    invoke-virtual {v3, p1, p3, p4}, Lorg/apache/poi/java/awt/ImageMediaEntry;->matches(Lorg/apache/poi/java/awt/Image;II)Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v1, :cond_0

    iput-object v2, p0, Lorg/apache/poi/java/awt/MediaTracker;->head:Lorg/apache/poi/java/awt/MediaEntry;

    goto :goto_1

    :cond_0
    iput-object v2, v1, Lorg/apache/poi/java/awt/MediaEntry;->next:Lorg/apache/poi/java/awt/MediaEntry;

    :goto_1
    invoke-virtual {v0}, Lorg/apache/poi/java/awt/MediaEntry;->cancel()V

    goto :goto_2

    :cond_1
    move-object v1, v0

    :goto_2
    move-object v0, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setDone()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public statusAll(Z)I
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/java/awt/MediaTracker;->statusAll(ZZ)I

    move-result p1

    return p1
.end method

.method public statusID(IZ)I
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/java/awt/MediaTracker;->statusID(IZZ)I

    move-result p1

    return p1
.end method

.method public waitForAll()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/java/awt/MediaTracker;->waitForAll(J)Z

    return-void
.end method

.method public declared-synchronized waitForAll(J)Z
    .locals 8

    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    move v4, v3

    :goto_0
    invoke-direct {p0, v4, v4}, Lorg/apache/poi/java/awt/MediaTracker;->statusAll(ZZ)I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v5, v4, 0x1

    if-nez v5, :cond_1

    const/16 p1, 0x8

    if-ne v4, p1, :cond_0

    move v2, v3

    :cond_0
    monitor-exit p0

    return v2

    :cond_1
    const-wide/16 v4, 0x0

    cmp-long v6, p1, v4

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-long v6, v0, v6

    cmp-long v4, v6, v4

    if-gtz v4, :cond_3

    monitor-exit p0

    return v2

    :cond_3
    move-wide v4, v6

    :goto_1
    :try_start_2
    invoke-virtual {p0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v4, v2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public waitForID(I)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/poi/java/awt/MediaTracker;->waitForID(IJ)Z

    return-void
.end method

.method public declared-synchronized waitForID(IJ)Z
    .locals 8

    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p2

    const/4 v2, 0x0

    const/4 v3, 0x1

    move v4, v3

    :goto_0
    invoke-direct {p0, p1, v4, v4}, Lorg/apache/poi/java/awt/MediaTracker;->statusID(IZZ)I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v5, v4, 0x1

    if-nez v5, :cond_1

    const/16 p1, 0x8

    if-ne v4, p1, :cond_0

    move v2, v3

    :cond_0
    monitor-exit p0

    return v2

    :cond_1
    const-wide/16 v4, 0x0

    cmp-long v6, p2, v4

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-long v6, v0, v6

    cmp-long v4, v6, v4

    if-gtz v4, :cond_3

    monitor-exit p0

    return v2

    :cond_3
    move-wide v4, v6

    :goto_1
    :try_start_2
    invoke-virtual {p0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v4, v2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
