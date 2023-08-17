.class public interface abstract Lorg/apache/poi/javax/imageio/event/IIOReadUpdateListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/EventListener;


# virtual methods
.method public abstract imageUpdate(Lorg/apache/poi/javax/imageio/ImageReader;Lorg/apache/poi/java/awt/image/BufferedImage;IIIIII[I)V
.end method

.method public abstract passComplete(Lorg/apache/poi/javax/imageio/ImageReader;Lorg/apache/poi/java/awt/image/BufferedImage;)V
.end method

.method public abstract passStarted(Lorg/apache/poi/javax/imageio/ImageReader;Lorg/apache/poi/java/awt/image/BufferedImage;IIIIIII[I)V
.end method

.method public abstract thumbnailPassComplete(Lorg/apache/poi/javax/imageio/ImageReader;Lorg/apache/poi/java/awt/image/BufferedImage;)V
.end method

.method public abstract thumbnailPassStarted(Lorg/apache/poi/javax/imageio/ImageReader;Lorg/apache/poi/java/awt/image/BufferedImage;IIIIIII[I)V
.end method

.method public abstract thumbnailUpdate(Lorg/apache/poi/javax/imageio/ImageReader;Lorg/apache/poi/java/awt/image/BufferedImage;IIIIII[I)V
.end method
