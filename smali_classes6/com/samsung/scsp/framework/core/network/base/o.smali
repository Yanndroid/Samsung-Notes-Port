.class public final synthetic Lcom/samsung/scsp/framework/core/network/base/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/scsp/framework/core/common/Supplier;


# instance fields
.field public final synthetic a:Ljava/util/Map;

.field public final synthetic b:Lcom/samsung/scsp/framework/core/network/HttpRequest;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;Lcom/samsung/scsp/framework/core/network/HttpRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/scsp/framework/core/network/base/o;->a:Ljava/util/Map;

    iput-object p2, p0, Lcom/samsung/scsp/framework/core/network/base/o;->b:Lcom/samsung/scsp/framework/core/network/HttpRequest;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/samsung/scsp/framework/core/network/base/o;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/samsung/scsp/framework/core/network/base/o;->b:Lcom/samsung/scsp/framework/core/network/HttpRequest;

    invoke-static {v0, v1}, Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;->d(Ljava/util/Map;Lcom/samsung/scsp/framework/core/network/HttpRequest;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
