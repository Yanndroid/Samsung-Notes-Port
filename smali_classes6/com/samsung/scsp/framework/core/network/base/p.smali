.class public final synthetic Lcom/samsung/scsp/framework/core/network/base/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/scsp/framework/core/network/base/NetworkImpl$ConnectionSetter;


# instance fields
.field public final synthetic a:Lcom/samsung/scsp/framework/core/network/HttpRequest;

.field public final synthetic b:Lcom/samsung/scsp/framework/core/network/Network$ErrorListener;

.field public final synthetic c:Lcom/samsung/scsp/framework/core/network/Network$StreamListener;

.field public final synthetic d:Lcom/samsung/scsp/framework/core/network/Network$TransferListener;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/scsp/framework/core/network/HttpRequest;Lcom/samsung/scsp/framework/core/network/Network$ErrorListener;Lcom/samsung/scsp/framework/core/network/Network$StreamListener;Lcom/samsung/scsp/framework/core/network/Network$TransferListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/scsp/framework/core/network/base/p;->a:Lcom/samsung/scsp/framework/core/network/HttpRequest;

    iput-object p2, p0, Lcom/samsung/scsp/framework/core/network/base/p;->b:Lcom/samsung/scsp/framework/core/network/Network$ErrorListener;

    iput-object p3, p0, Lcom/samsung/scsp/framework/core/network/base/p;->c:Lcom/samsung/scsp/framework/core/network/Network$StreamListener;

    iput-object p4, p0, Lcom/samsung/scsp/framework/core/network/base/p;->d:Lcom/samsung/scsp/framework/core/network/Network$TransferListener;

    return-void
.end method


# virtual methods
.method public final setup(Ljava/net/HttpURLConnection;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/scsp/framework/core/network/base/p;->a:Lcom/samsung/scsp/framework/core/network/HttpRequest;

    iget-object v1, p0, Lcom/samsung/scsp/framework/core/network/base/p;->b:Lcom/samsung/scsp/framework/core/network/Network$ErrorListener;

    iget-object v2, p0, Lcom/samsung/scsp/framework/core/network/base/p;->c:Lcom/samsung/scsp/framework/core/network/Network$StreamListener;

    iget-object v3, p0, Lcom/samsung/scsp/framework/core/network/base/p;->d:Lcom/samsung/scsp/framework/core/network/Network$TransferListener;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;->a(Lcom/samsung/scsp/framework/core/network/HttpRequest;Lcom/samsung/scsp/framework/core/network/Network$ErrorListener;Lcom/samsung/scsp/framework/core/network/Network$StreamListener;Lcom/samsung/scsp/framework/core/network/Network$TransferListener;Ljava/net/HttpURLConnection;)V

    return-void
.end method
