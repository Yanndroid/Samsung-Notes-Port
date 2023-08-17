.class Lio/netty/handler/ssl/JdkBaseApplicationProtocolNegotiator$NoFailProtocolSelectionListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/ssl/JdkBaseApplicationProtocolNegotiator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NoFailProtocolSelectionListener"
.end annotation


# instance fields
.field private final engineWrapper:Lio/netty/handler/ssl/JdkSslEngine;

.field private final supportedProtocols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/netty/handler/ssl/JdkSslEngine;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/ssl/JdkSslEngine;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/netty/handler/ssl/JdkBaseApplicationProtocolNegotiator$NoFailProtocolSelectionListener;->engineWrapper:Lio/netty/handler/ssl/JdkSslEngine;

    iput-object p2, p0, Lio/netty/handler/ssl/JdkBaseApplicationProtocolNegotiator$NoFailProtocolSelectionListener;->supportedProtocols:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public noSelectedMatchFound(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public selected(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lio/netty/handler/ssl/JdkBaseApplicationProtocolNegotiator$NoFailProtocolSelectionListener;->supportedProtocols:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/netty/handler/ssl/JdkBaseApplicationProtocolNegotiator$NoFailProtocolSelectionListener;->engineWrapper:Lio/netty/handler/ssl/JdkSslEngine;

    invoke-virtual {v0, p1}, Lio/netty/handler/ssl/JdkSslEngine;->setNegotiatedApplicationProtocol(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lio/netty/handler/ssl/JdkBaseApplicationProtocolNegotiator$NoFailProtocolSelectionListener;->noSelectedMatchFound(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public unsupported()V
    .locals 2

    iget-object v0, p0, Lio/netty/handler/ssl/JdkBaseApplicationProtocolNegotiator$NoFailProtocolSelectionListener;->engineWrapper:Lio/netty/handler/ssl/JdkSslEngine;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/netty/handler/ssl/JdkSslEngine;->setNegotiatedApplicationProtocol(Ljava/lang/String;)V

    return-void
.end method
