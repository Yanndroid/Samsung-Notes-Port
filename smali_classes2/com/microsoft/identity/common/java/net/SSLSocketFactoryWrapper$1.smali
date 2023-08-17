.class Lcom/microsoft/identity/common/java/net/SSLSocketFactoryWrapper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/net/ssl/HandshakeCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/identity/common/java/net/SSLSocketFactoryWrapper;->modifyEnabledSockets(Ljava/net/Socket;)Ljava/net/Socket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/identity/common/java/net/SSLSocketFactoryWrapper;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/java/net/SSLSocketFactoryWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/java/net/SSLSocketFactoryWrapper$1;->this$0:Lcom/microsoft/identity/common/java/net/SSLSocketFactoryWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handshakeCompleted(Ljavax/net/ssl/HandshakeCompletedEvent;)V
    .locals 0

    invoke-virtual {p1}, Ljavax/net/ssl/HandshakeCompletedEvent;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object p1

    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getProtocol()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/microsoft/identity/common/java/net/SSLSocketFactoryWrapper;->setLastHandshakeTLSversion(Ljava/lang/String;)V

    return-void
.end method
