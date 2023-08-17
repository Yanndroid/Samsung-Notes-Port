.class abstract Lorg/apache/poi/java/awt/MediaEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ABORTED:I = 0x2

.field public static final COMPLETE:I = 0x8

.field public static final DONE:I = 0xe

.field public static final ERRORED:I = 0x4

.field public static final LOADING:I = 0x1

.field public static final LOADSTARTED:I = 0xd


# instance fields
.field public ID:I

.field public cancelled:Z

.field public next:Lorg/apache/poi/java/awt/MediaEntry;

.field public status:I

.field public tracker:Lorg/apache/poi/java/awt/MediaTracker;


# direct methods
.method public constructor <init>(Lorg/apache/poi/java/awt/MediaTracker;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/java/awt/MediaEntry;->tracker:Lorg/apache/poi/java/awt/MediaTracker;

    iput p2, p0, Lorg/apache/poi/java/awt/MediaEntry;->ID:I

    return-void
.end method

.method public static insert(Lorg/apache/poi/java/awt/MediaEntry;Lorg/apache/poi/java/awt/MediaEntry;)Lorg/apache/poi/java/awt/MediaEntry;
    .locals 5

    const/4 v0, 0x0

    move-object v1, v0

    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_1

    iget v2, v0, Lorg/apache/poi/java/awt/MediaEntry;->ID:I

    iget v3, p1, Lorg/apache/poi/java/awt/MediaEntry;->ID:I

    if-le v2, v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, v0, Lorg/apache/poi/java/awt/MediaEntry;->next:Lorg/apache/poi/java/awt/MediaEntry;

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_0

    :cond_1
    :goto_1
    iput-object v0, p1, Lorg/apache/poi/java/awt/MediaEntry;->next:Lorg/apache/poi/java/awt/MediaEntry;

    if-nez v1, :cond_2

    move-object p0, p1

    goto :goto_2

    :cond_2
    iput-object p1, v1, Lorg/apache/poi/java/awt/MediaEntry;->next:Lorg/apache/poi/java/awt/MediaEntry;

    :goto_2
    return-object p0
.end method


# virtual methods
.method cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/java/awt/MediaEntry;->cancelled:Z

    return-void
.end method

.method public getID()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/java/awt/MediaEntry;->ID:I

    return v0
.end method

.method public abstract getMedia()Ljava/lang/Object;
.end method

.method public declared-synchronized getStatus(ZZ)I
    .locals 0

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget p1, p0, Lorg/apache/poi/java/awt/MediaEntry;->status:I

    and-int/lit8 p2, p1, 0xd

    if-nez p2, :cond_0

    and-int/lit8 p1, p1, -0x3

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/poi/java/awt/MediaEntry;->status:I

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/MediaEntry;->startLoad()V

    :cond_0
    iget p1, p0, Lorg/apache/poi/java/awt/MediaEntry;->status:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setStatus(I)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lorg/apache/poi/java/awt/MediaEntry;->status:I

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lorg/apache/poi/java/awt/MediaEntry;->tracker:Lorg/apache/poi/java/awt/MediaTracker;

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/MediaTracker;->setDone()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public abstract startLoad()V
.end method
