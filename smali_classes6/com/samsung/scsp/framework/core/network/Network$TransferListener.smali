.class public interface abstract Lcom/samsung/scsp/framework/core/network/Network$TransferListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/scsp/framework/core/network/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TransferListener"
.end annotation


# virtual methods
.method public abstract onCompleted(Lcom/samsung/scsp/framework/core/network/HttpRequest;)V
.end method

.method public abstract onTransferred(Lcom/samsung/scsp/framework/core/network/HttpRequest;Ljava/util/Map;JJLjava/nio/ByteBuffer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/scsp/framework/core/network/HttpRequest;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;JJ",
            "Ljava/nio/ByteBuffer;",
            ")V"
        }
    .end annotation
.end method
