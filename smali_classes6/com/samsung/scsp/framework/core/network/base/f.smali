.class public final synthetic Lcom/samsung/scsp/framework/core/network/base/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/scsp/framework/core/network/base/NetworkImpl$ConnectionSetter;


# static fields
.field public static final synthetic a:Lcom/samsung/scsp/framework/core/network/base/f;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/scsp/framework/core/network/base/f;

    invoke-direct {v0}, Lcom/samsung/scsp/framework/core/network/base/f;-><init>()V

    sput-object v0, Lcom/samsung/scsp/framework/core/network/base/f;->a:Lcom/samsung/scsp/framework/core/network/base/f;

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

    invoke-static {p1}, Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;->j(Ljava/net/HttpURLConnection;)V

    return-void
.end method
