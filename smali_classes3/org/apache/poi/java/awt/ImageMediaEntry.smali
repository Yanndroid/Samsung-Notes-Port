.class Lorg/apache/poi/java/awt/ImageMediaEntry;
.super Lorg/apache/poi/java/awt/MediaEntry;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/java/awt/image/ImageObserver;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x41c5a6458288ebcaL


# instance fields
.field public height:I

.field public image:Lorg/apache/poi/java/awt/Image;

.field public width:I


# direct methods
.method public constructor <init>(Lorg/apache/poi/java/awt/MediaTracker;Lorg/apache/poi/java/awt/Image;III)V
    .locals 0

    invoke-direct {p0, p1, p3}, Lorg/apache/poi/java/awt/MediaEntry;-><init>(Lorg/apache/poi/java/awt/MediaTracker;I)V

    iput-object p2, p0, Lorg/apache/poi/java/awt/ImageMediaEntry;->image:Lorg/apache/poi/java/awt/Image;

    iput p4, p0, Lorg/apache/poi/java/awt/ImageMediaEntry;->width:I

    iput p5, p0, Lorg/apache/poi/java/awt/ImageMediaEntry;->height:I

    return-void
.end method


# virtual methods
.method public getMedia()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/ImageMediaEntry;->image:Lorg/apache/poi/java/awt/Image;

    return-object v0
.end method

.method public declared-synchronized getStatus(ZZ)I
    .locals 5

    monitor-enter p0

    if-eqz p2, :cond_1

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/MediaEntry;->tracker:Lorg/apache/poi/java/awt/MediaTracker;

    iget-object v0, v0, Lorg/apache/poi/java/awt/MediaTracker;->target:Lorg/apache/poi/java/awt/Component;

    iget-object v1, p0, Lorg/apache/poi/java/awt/ImageMediaEntry;->image:Lorg/apache/poi/java/awt/Image;

    iget v2, p0, Lorg/apache/poi/java/awt/ImageMediaEntry;->width:I

    iget v3, p0, Lorg/apache/poi/java/awt/ImageMediaEntry;->height:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/poi/java/awt/Component;->checkImage(Lorg/apache/poi/java/awt/Image;IILorg/apache/poi/java/awt/image/ImageObserver;)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/ImageMediaEntry;->parseflags(I)I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lorg/apache/poi/java/awt/MediaEntry;->status:I

    and-int/lit8 v0, v0, 0xc

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/MediaEntry;->setStatus(I)V

    goto :goto_0

    :cond_0
    iget v1, p0, Lorg/apache/poi/java/awt/MediaEntry;->status:I

    if-eq v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/MediaEntry;->setStatus(I)V

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lorg/apache/poi/java/awt/MediaEntry;->getStatus(ZZ)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public imageUpdate(Lorg/apache/poi/java/awt/Image;IIIII)Z
    .locals 0

    iget-boolean p1, p0, Lorg/apache/poi/java/awt/MediaEntry;->cancelled:Z

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    return p3

    :cond_0
    invoke-virtual {p0, p2}, Lorg/apache/poi/java/awt/ImageMediaEntry;->parseflags(I)I

    move-result p1

    if-eqz p1, :cond_1

    iget p2, p0, Lorg/apache/poi/java/awt/MediaEntry;->status:I

    if-eq p1, p2, :cond_1

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/MediaEntry;->setStatus(I)V

    :cond_1
    iget p1, p0, Lorg/apache/poi/java/awt/MediaEntry;->status:I

    const/4 p2, 0x1

    and-int/2addr p1, p2

    if-eqz p1, :cond_2

    move p3, p2

    :cond_2
    return p3
.end method

.method public matches(Lorg/apache/poi/java/awt/Image;II)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/ImageMediaEntry;->image:Lorg/apache/poi/java/awt/Image;

    if-ne v0, p1, :cond_0

    iget p1, p0, Lorg/apache/poi/java/awt/ImageMediaEntry;->width:I

    if-ne p1, p2, :cond_0

    iget p1, p0, Lorg/apache/poi/java/awt/ImageMediaEntry;->height:I

    if-ne p1, p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public parseflags(I)I
    .locals 1

    and-int/lit8 v0, p1, 0x40

    if-eqz v0, :cond_0

    const/4 p1, 0x4

    return p1

    :cond_0
    and-int/lit16 v0, p1, 0x80

    if-eqz v0, :cond_1

    const/4 p1, 0x2

    return p1

    :cond_1
    and-int/lit8 p1, p1, 0x30

    if-eqz p1, :cond_2

    const/16 p1, 0x8

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public startLoad()V
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/java/awt/MediaEntry;->tracker:Lorg/apache/poi/java/awt/MediaTracker;

    iget-object v0, v0, Lorg/apache/poi/java/awt/MediaTracker;->target:Lorg/apache/poi/java/awt/Component;

    iget-object v1, p0, Lorg/apache/poi/java/awt/ImageMediaEntry;->image:Lorg/apache/poi/java/awt/Image;

    iget v2, p0, Lorg/apache/poi/java/awt/ImageMediaEntry;->width:I

    iget v3, p0, Lorg/apache/poi/java/awt/ImageMediaEntry;->height:I

    invoke-virtual {v0, v1, v2, v3, p0}, Lorg/apache/poi/java/awt/Component;->prepareImage(Lorg/apache/poi/java/awt/Image;IILorg/apache/poi/java/awt/image/ImageObserver;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/MediaEntry;->setStatus(I)V

    :cond_0
    return-void
.end method
