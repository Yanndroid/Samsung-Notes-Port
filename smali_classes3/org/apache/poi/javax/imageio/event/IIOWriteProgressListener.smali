.class public interface abstract Lorg/apache/poi/javax/imageio/event/IIOWriteProgressListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/EventListener;


# virtual methods
.method public abstract imageComplete(Lorg/apache/poi/javax/imageio/ImageWriter;)V
.end method

.method public abstract imageProgress(Lorg/apache/poi/javax/imageio/ImageWriter;F)V
.end method

.method public abstract imageStarted(Lorg/apache/poi/javax/imageio/ImageWriter;I)V
.end method

.method public abstract thumbnailComplete(Lorg/apache/poi/javax/imageio/ImageWriter;)V
.end method

.method public abstract thumbnailProgress(Lorg/apache/poi/javax/imageio/ImageWriter;F)V
.end method

.method public abstract thumbnailStarted(Lorg/apache/poi/javax/imageio/ImageWriter;II)V
.end method

.method public abstract writeAborted(Lorg/apache/poi/javax/imageio/ImageWriter;)V
.end method
