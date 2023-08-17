.class final Lio/netty/util/internal/SocketUtils$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/util/internal/SocketUtils;->connect(Ljava/net/Socket;Ljava/net/SocketAddress;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedExceptionAction<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic val$remoteAddress:Ljava/net/SocketAddress;

.field public final synthetic val$socket:Ljava/net/Socket;

.field public final synthetic val$timeout:I


# direct methods
.method public constructor <init>(Ljava/net/Socket;Ljava/net/SocketAddress;I)V
    .locals 0

    iput-object p1, p0, Lio/netty/util/internal/SocketUtils$1;->val$socket:Ljava/net/Socket;

    iput-object p2, p0, Lio/netty/util/internal/SocketUtils$1;->val$remoteAddress:Ljava/net/SocketAddress;

    iput p3, p0, Lio/netty/util/internal/SocketUtils$1;->val$timeout:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lio/netty/util/internal/SocketUtils$1;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .locals 3

    iget-object v0, p0, Lio/netty/util/internal/SocketUtils$1;->val$socket:Ljava/net/Socket;

    iget-object v1, p0, Lio/netty/util/internal/SocketUtils$1;->val$remoteAddress:Ljava/net/SocketAddress;

    iget v2, p0, Lio/netty/util/internal/SocketUtils$1;->val$timeout:I

    invoke-virtual {v0, v1, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    const/4 v0, 0x0

    return-object v0
.end method
