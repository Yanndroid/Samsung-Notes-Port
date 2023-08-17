.class public interface abstract Lorg/apache/poi/java/awt/image/RenderedImage;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract copyData(Lorg/apache/poi/java/awt/image/WritableRaster;)Lorg/apache/poi/java/awt/image/WritableRaster;
.end method

.method public abstract getColorModel()Lorg/apache/poi/java/awt/image/ColorModel;
.end method

.method public abstract getData()Lorg/apache/poi/java/awt/image/Raster;
.end method

.method public abstract getData(Lorg/apache/poi/java/awt/Rectangle;)Lorg/apache/poi/java/awt/image/Raster;
.end method

.method public abstract getHeight()I
.end method

.method public abstract getMinTileX()I
.end method

.method public abstract getMinTileY()I
.end method

.method public abstract getMinX()I
.end method

.method public abstract getMinY()I
.end method

.method public abstract getNumXTiles()I
.end method

.method public abstract getNumYTiles()I
.end method

.method public abstract getProperty(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract getPropertyNames()[Ljava/lang/String;
.end method

.method public abstract getSampleModel()Lorg/apache/poi/java/awt/image/SampleModel;
.end method

.method public abstract getSources()Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Lorg/apache/poi/java/awt/image/RenderedImage;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTile(II)Lorg/apache/poi/java/awt/image/Raster;
.end method

.method public abstract getTileGridXOffset()I
.end method

.method public abstract getTileGridYOffset()I
.end method

.method public abstract getTileHeight()I
.end method

.method public abstract getTileWidth()I
.end method

.method public abstract getWidth()I
.end method
