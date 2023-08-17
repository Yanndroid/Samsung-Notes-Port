.class public interface abstract Lorg/apache/poi/javax/imageio/event/IIOReadProgressListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/EventListener;


# virtual methods
.method public abstract imageComplete(Lorg/apache/poi/javax/imageio/ImageReader;)V
.end method

.method public abstract imageProgress(Lorg/apache/poi/javax/imageio/ImageReader;F)V
.end method

.method public abstract imageStarted(Lorg/apache/poi/javax/imageio/ImageReader;I)V
.end method

.method public abstract readAborted(Lorg/apache/poi/javax/imageio/ImageReader;)V
.end method

.method public abstract sequenceComplete(Lorg/apache/poi/javax/imageio/ImageReader;)V
.end method

.method public abstract sequenceStarted(Lorg/apache/poi/javax/imageio/ImageReader;I)V
.end method

.method public abstract thumbnailComplete(Lorg/apache/poi/javax/imageio/ImageReader;)V
.end method

.method public abstract thumbnailProgress(Lorg/apache/poi/javax/imageio/ImageReader;F)V
.end method

.method public abstract thumbnailStarted(Lorg/apache/poi/javax/imageio/ImageReader;II)V
.end method
