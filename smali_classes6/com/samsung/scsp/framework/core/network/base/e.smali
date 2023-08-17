.class public final synthetic Lcom/samsung/scsp/framework/core/network/base/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/scsp/framework/core/network/base/NetworkImpl$ConnectionSetter;


# static fields
.field public static final synthetic a:Lcom/samsung/scsp/framework/core/network/base/e;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/scsp/framework/core/network/base/e;

    invoke-direct {v0}, Lcom/samsung/scsp/framework/core/network/base/e;-><init>()V

    sput-object v0, Lcom/samsung/scsp/framework/core/network/base/e;->a:Lcom/samsung/scsp/framework/core/network/base/e;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final setup(Ljava/net/HttpURLConnection;)V
    .locals 0

    invoke-static {p1}, Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;->h(Ljava/net/HttpURLConnection;)V

    return-void
.end method
