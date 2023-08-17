.class public interface abstract Lcom/samsung/scsp/framework/core/network/Network;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/scsp/framework/core/network/Network$TransferListener;,
        Lcom/samsung/scsp/framework/core/network/Network$StreamListener;,
        Lcom/samsung/scsp/framework/core/network/Network$ErrorListener;
    }
.end annotation


# static fields
.field public static final HTTP_STATUS:Ljava/lang/String; = "HTTP_STATUS"

.field public static final RESUMABLE_INCOMPLETE_UPLOAD_V1:I = 0x134

.field public static final RESUMABLE_INCOMPLETE_UPLOAD_V2:I = 0xfb

.field public static final TEMPORARY_REDIRECT:I = 0x133


# virtual methods
.method public abstract close()V
.end method

.method public abstract close(I)V
.end method

.method public abstract delete(Lcom/samsung/scsp/framework/core/network/HttpRequest;Lcom/samsung/scsp/framework/core/network/Network$ErrorListener;Lcom/samsung/scsp/framework/core/network/Network$StreamListener;Lcom/samsung/scsp/framework/core/network/Network$TransferListener;)V
.end method

.method public abstract get(Lcom/samsung/scsp/framework/core/network/HttpRequest;Lcom/samsung/scsp/framework/core/network/Network$ErrorListener;Lcom/samsung/scsp/framework/core/network/Network$StreamListener;Lcom/samsung/scsp/framework/core/network/Network$TransferListener;)V
.end method

.method public abstract head(Lcom/samsung/scsp/framework/core/network/HttpRequest;Lcom/samsung/scsp/framework/core/network/Network$ErrorListener;Lcom/samsung/scsp/framework/core/network/Network$StreamListener;Lcom/samsung/scsp/framework/core/network/Network$TransferListener;)V
.end method

.method public abstract open()V
.end method

.method public abstract patch(Lcom/samsung/scsp/framework/core/network/HttpRequest;Lcom/samsung/scsp/framework/core/network/Network$ErrorListener;Lcom/samsung/scsp/framework/core/network/Network$StreamListener;Lcom/samsung/scsp/framework/core/network/Network$TransferListener;)V
.end method

.method public abstract post(Lcom/samsung/scsp/framework/core/network/HttpRequest;Lcom/samsung/scsp/framework/core/network/Network$ErrorListener;Lcom/samsung/scsp/framework/core/network/Network$StreamListener;Lcom/samsung/scsp/framework/core/network/Network$TransferListener;)V
.end method

.method public abstract put(Lcom/samsung/scsp/framework/core/network/HttpRequest;Lcom/samsung/scsp/framework/core/network/Network$ErrorListener;Lcom/samsung/scsp/framework/core/network/Network$StreamListener;Lcom/samsung/scsp/framework/core/network/Network$TransferListener;)V
.end method
