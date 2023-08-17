.class public interface abstract Lorg/apache/poi/java/awt/image/WritableRenderedImage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/java/awt/image/RenderedImage;


# virtual methods
.method public abstract addTileObserver(Lorg/apache/poi/java/awt/image/TileObserver;)V
.end method

.method public abstract getWritableTile(II)Lorg/apache/poi/java/awt/image/WritableRaster;
.end method

.method public abstract getWritableTileIndices()[Lorg/apache/poi/java/awt/Point;
.end method

.method public abstract hasTileWriters()Z
.end method

.method public abstract isTileWritable(II)Z
.end method

.method public abstract releaseWritableTile(II)V
.end method

.method public abstract removeTileObserver(Lorg/apache/poi/java/awt/image/TileObserver;)V
.end method

.method public abstract setData(Lorg/apache/poi/java/awt/image/Raster;)V
.end method
