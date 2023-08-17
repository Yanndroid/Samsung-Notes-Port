.class final Lio/netty/util/internal/SocketUtils$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/util/internal/SocketUtils;->socketAddress(Ljava/lang/String;I)Ljava/net/InetSocketAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/net/InetSocketAddress;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic val$hostname:Ljava/lang/String;

.field public final synthetic val$port:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lio/netty/util/internal/SocketUtils$10;->val$hostname:Ljava/lang/String;

    iput p2, p0, Lio/netty/util/internal/SocketUtils$10;->val$port:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lio/netty/util/internal/SocketUtils$10;->run()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/net/InetSocketAddress;
    .locals 3

    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v1, p0, Lio/netty/util/internal/SocketUtils$10;->val$hostname:Ljava/lang/String;

    iget v2, p0, Lio/netty/util/internal/SocketUtils$10;->val$port:I

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method
