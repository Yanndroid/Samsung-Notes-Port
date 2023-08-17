.class public final synthetic Lcom/samsung/scsp/framework/core/network/base/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/scsp/framework/core/common/Predicate;


# static fields
.field public static final synthetic a:Lcom/samsung/scsp/framework/core/network/base/m;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/scsp/framework/core/network/base/m;

    invoke-direct {v0}, Lcom/samsung/scsp/framework/core/network/base/m;-><init>()V

    sput-object v0, Lcom/samsung/scsp/framework/core/network/base/m;->a:Lcom/samsung/scsp/framework/core/network/base/m;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/net/HttpURLConnection;

    invoke-static {p1}, Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;->o(Ljava/net/HttpURLConnection;)Z

    move-result p1

    return p1
.end method
