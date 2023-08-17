.class public Lorg/apache/poi/java/awt/BufferCapabilities;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/java/awt/BufferCapabilities$FlipContents;
    }
.end annotation


# instance fields
.field private backCaps:Lorg/apache/poi/java/awt/ImageCapabilities;

.field private flipContents:Lorg/apache/poi/java/awt/BufferCapabilities$FlipContents;

.field private frontCaps:Lorg/apache/poi/java/awt/ImageCapabilities;


# direct methods
.method public constructor <init>(Lorg/apache/poi/java/awt/ImageCapabilities;Lorg/apache/poi/java/awt/ImageCapabilities;Lorg/apache/poi/java/awt/BufferCapabilities$FlipContents;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iput-object p1, p0, Lorg/apache/poi/java/awt/BufferCapabilities;->frontCaps:Lorg/apache/poi/java/awt/ImageCapabilities;

    iput-object p2, p0, Lorg/apache/poi/java/awt/BufferCapabilities;->backCaps:Lorg/apache/poi/java/awt/ImageCapabilities;

    iput-object p3, p0, Lorg/apache/poi/java/awt/BufferCapabilities;->flipContents:Lorg/apache/poi/java/awt/BufferCapabilities$FlipContents;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Image capabilities specified cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
.end method

.method public getBackBufferCapabilities()Lorg/apache/poi/java/awt/ImageCapabilities;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/BufferCapabilities;->backCaps:Lorg/apache/poi/java/awt/ImageCapabilities;

    return-object v0
.end method

.method public getFlipContents()Lorg/apache/poi/java/awt/BufferCapabilities$FlipContents;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/BufferCapabilities;->flipContents:Lorg/apache/poi/java/awt/BufferCapabilities$FlipContents;

    return-object v0
.end method

.method public getFrontBufferCapabilities()Lorg/apache/poi/java/awt/ImageCapabilities;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/BufferCapabilities;->frontCaps:Lorg/apache/poi/java/awt/ImageCapabilities;

    return-object v0
.end method

.method public isFullScreenRequired()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isMultiBufferAvailable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isPageFlipping()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/BufferCapabilities;->getFlipContents()Lorg/apache/poi/java/awt/BufferCapabilities$FlipContents;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
