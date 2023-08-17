.class public final synthetic Lcom/samsung/scsp/framework/core/network/base/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/scsp/framework/core/common/Predicate;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/scsp/framework/core/network/base/l;->a:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lcom/samsung/scsp/framework/core/network/base/l;->a:I

    check-cast p1, Ljava/net/HttpURLConnection;

    invoke-static {v0, p1}, Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;->g(ILjava/net/HttpURLConnection;)Z

    move-result p1

    return p1
.end method
