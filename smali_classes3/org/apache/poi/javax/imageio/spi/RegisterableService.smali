.class public interface abstract Lorg/apache/poi/javax/imageio/spi/RegisterableService;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onDeregistration(Lorg/apache/poi/javax/imageio/spi/ServiceRegistry;Ljava/lang/Class;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/javax/imageio/spi/ServiceRegistry;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation
.end method

.method public abstract onRegistration(Lorg/apache/poi/javax/imageio/spi/ServiceRegistry;Ljava/lang/Class;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/javax/imageio/spi/ServiceRegistry;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation
.end method
