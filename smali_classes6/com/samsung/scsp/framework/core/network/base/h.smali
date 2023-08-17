.class public final synthetic Lcom/samsung/scsp/framework/core/network/base/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/scsp/error/FaultBarrier$ThrowableRunnable;


# instance fields
.field public final synthetic a:Ljava/net/HttpURLConnection;


# direct methods
.method public synthetic constructor <init>(Ljava/net/HttpURLConnection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/scsp/framework/core/network/base/h;->a:Ljava/net/HttpURLConnection;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/scsp/framework/core/network/base/h;->a:Ljava/net/HttpURLConnection;

    invoke-static {v0}, Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;->c(Ljava/net/HttpURLConnection;)V

    return-void
.end method
