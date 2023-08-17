.class public Lorg/apache/poi/javax/imageio/IIOImage;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public image:Lorg/apache/poi/java/awt/image/RenderedImage;

.field public metadata:Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;

.field public raster:Lorg/apache/poi/java/awt/image/Raster;

.field public thumbnails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lorg/apache/poi/java/awt/image/BufferedImage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/poi/java/awt/image/Raster;Ljava/util/List;Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/java/awt/image/Raster;",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/poi/java/awt/image/BufferedImage;",
            ">;",
            "Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/IIOImage;->thumbnails:Ljava/util/List;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/apache/poi/javax/imageio/IIOImage;->raster:Lorg/apache/poi/java/awt/image/Raster;

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/IIOImage;->image:Lorg/apache/poi/java/awt/image/RenderedImage;

    iput-object p2, p0, Lorg/apache/poi/javax/imageio/IIOImage;->thumbnails:Ljava/util/List;

    iput-object p3, p0, Lorg/apache/poi/javax/imageio/IIOImage;->metadata:Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "raster == null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/apache/poi/java/awt/image/RenderedImage;Ljava/util/List;Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/java/awt/image/RenderedImage;",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/poi/java/awt/image/BufferedImage;",
            ">;",
            "Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/IIOImage;->thumbnails:Ljava/util/List;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/apache/poi/javax/imageio/IIOImage;->image:Lorg/apache/poi/java/awt/image/RenderedImage;

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/IIOImage;->raster:Lorg/apache/poi/java/awt/image/Raster;

    iput-object p2, p0, Lorg/apache/poi/javax/imageio/IIOImage;->thumbnails:Ljava/util/List;

    iput-object p3, p0, Lorg/apache/poi/javax/imageio/IIOImage;->metadata:Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "image == null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getMetadata()Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/IIOImage;->metadata:Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;

    return-object v0
.end method

.method public getNumThumbnails()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/IIOImage;->thumbnails:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getRaster()Lorg/apache/poi/java/awt/image/Raster;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/javax/imageio/IIOImage;->raster:Lorg/apache/poi/java/awt/image/Raster;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRenderedImage()Lorg/apache/poi/java/awt/image/RenderedImage;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/javax/imageio/IIOImage;->image:Lorg/apache/poi/java/awt/image/RenderedImage;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getThumbnail(I)Lorg/apache/poi/java/awt/image/BufferedImage;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/IIOImage;->thumbnails:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/java/awt/image/BufferedImage;

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "No thumbnails available!"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getThumbnails()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/poi/java/awt/image/BufferedImage;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/IIOImage;->thumbnails:Ljava/util/List;

    return-object v0
.end method

.method public hasRaster()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/javax/imageio/IIOImage;->raster:Lorg/apache/poi/java/awt/image/Raster;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setMetadata(Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/javax/imageio/IIOImage;->metadata:Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;

    return-void
.end method

.method public setRaster(Lorg/apache/poi/java/awt/image/Raster;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iput-object p1, p0, Lorg/apache/poi/javax/imageio/IIOImage;->raster:Lorg/apache/poi/java/awt/image/Raster;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/poi/javax/imageio/IIOImage;->image:Lorg/apache/poi/java/awt/image/RenderedImage;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "raster == null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setRenderedImage(Lorg/apache/poi/java/awt/image/RenderedImage;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iput-object p1, p0, Lorg/apache/poi/javax/imageio/IIOImage;->image:Lorg/apache/poi/java/awt/image/RenderedImage;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/poi/javax/imageio/IIOImage;->raster:Lorg/apache/poi/java/awt/image/Raster;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "image == null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setThumbnails(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/poi/java/awt/image/BufferedImage;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/poi/javax/imageio/IIOImage;->thumbnails:Ljava/util/List;

    return-void
.end method
