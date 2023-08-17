.class public interface abstract Lorg/apache/poi/sun/awt/image/SunWritableRaster$DataStealer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/sun/awt/image/SunWritableRaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DataStealer"
.end annotation


# virtual methods
.method public abstract getData(Lorg/apache/poi/java/awt/image/DataBufferByte;I)[B
.end method

.method public abstract getData(Lorg/apache/poi/java/awt/image/DataBufferInt;I)[I
.end method

.method public abstract getData(Lorg/apache/poi/java/awt/image/DataBufferUShort;I)[S
.end method

.method public abstract getTrackable(Lorg/apache/poi/java/awt/image/DataBuffer;)Lorg/apache/poi/sun/java2d/StateTrackableDelegate;
.end method

.method public abstract setTrackable(Lorg/apache/poi/java/awt/image/DataBuffer;Lorg/apache/poi/sun/java2d/StateTrackableDelegate;)V
.end method
