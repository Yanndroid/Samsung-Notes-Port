.class Lio/netty/handler/ssl/ConscryptAlpnSslEngine$ClientEngine$1;
.super Lorg/conscrypt/HandshakeListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/handler/ssl/ConscryptAlpnSslEngine$ClientEngine;-><init>(Ljavax/net/ssl/SSLEngine;Lio/netty/buffer/ByteBufAllocator;Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/netty/handler/ssl/ConscryptAlpnSslEngine$ClientEngine;


# direct methods
.method public constructor <init>(Lio/netty/handler/ssl/ConscryptAlpnSslEngine$ClientEngine;)V
    .locals 0

    iput-object p1, p0, Lio/netty/handler/ssl/ConscryptAlpnSslEngine$ClientEngine$1;->this$0:Lio/netty/handler/ssl/ConscryptAlpnSslEngine$ClientEngine;

    invoke-direct {p0}, Lorg/conscrypt/HandshakeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onHandshakeFinished()V
    .locals 1

    iget-object v0, p0, Lio/netty/handler/ssl/ConscryptAlpnSslEngine$ClientEngine$1;->this$0:Lio/netty/handler/ssl/ConscryptAlpnSslEngine$ClientEngine;

    invoke-static {v0}, Lio/netty/handler/ssl/ConscryptAlpnSslEngine$ClientEngine;->access$100(Lio/netty/handler/ssl/ConscryptAlpnSslEngine$ClientEngine;)V

    return-void
.end method
