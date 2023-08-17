.class final Lio/netty/handler/ssl/BouncyCastleAlpnSslUtils$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/ssl/BouncyCastleAlpnSslUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedExceptionAction<",
        "Ljava/lang/reflect/Method;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic val$testBCApplicationProtocolSelector:Ljava/lang/Class;

.field public final synthetic val$testBCSslEngine:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, Lio/netty/handler/ssl/BouncyCastleAlpnSslUtils$6;->val$testBCSslEngine:Ljava/lang/Class;

    iput-object p2, p0, Lio/netty/handler/ssl/BouncyCastleAlpnSslUtils$6;->val$testBCApplicationProtocolSelector:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/ssl/BouncyCastleAlpnSslUtils$6;->run()Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/reflect/Method;
    .locals 4

    iget-object v0, p0, Lio/netty/handler/ssl/BouncyCastleAlpnSslUtils$6;->val$testBCSslEngine:Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    iget-object v2, p0, Lio/netty/handler/ssl/BouncyCastleAlpnSslUtils$6;->val$testBCApplicationProtocolSelector:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "setBCHandshakeApplicationProtocolSelector"

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method
