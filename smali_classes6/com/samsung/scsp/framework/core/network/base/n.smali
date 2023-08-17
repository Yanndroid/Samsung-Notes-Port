.class public final synthetic Lcom/samsung/scsp/framework/core/network/base/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/scsp/framework/core/common/Supplier;


# instance fields
.field public final synthetic a:Lcom/samsung/scsp/framework/core/network/HttpRequest;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/scsp/framework/core/network/HttpRequest;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/scsp/framework/core/network/base/n;->a:Lcom/samsung/scsp/framework/core/network/HttpRequest;

    iput-object p2, p0, Lcom/samsung/scsp/framework/core/network/base/n;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/samsung/scsp/framework/core/network/base/n;->a:Lcom/samsung/scsp/framework/core/network/HttpRequest;

    iget-object v1, p0, Lcom/samsung/scsp/framework/core/network/base/n;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;->l(Lcom/samsung/scsp/framework/core/network/HttpRequest;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
