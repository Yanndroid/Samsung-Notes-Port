.class final Lio/netty/handler/ssl/SslMasterKeyHandler$WiresharkSslMasterKeyHandler;
.super Lio/netty/handler/ssl/SslMasterKeyHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/ssl/SslMasterKeyHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WiresharkSslMasterKeyHandler"
.end annotation


# static fields
.field private static final wireshark_logger:Lio/netty/util/internal/logging/InternalLogger;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "io.netty.wireshark"

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/String;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/handler/ssl/SslMasterKeyHandler$WiresharkSslMasterKeyHandler;->wireshark_logger:Lio/netty/util/internal/logging/InternalLogger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/netty/handler/ssl/SslMasterKeyHandler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/netty/handler/ssl/SslMasterKeyHandler$1;)V
    .locals 0

    invoke-direct {p0}, Lio/netty/handler/ssl/SslMasterKeyHandler$WiresharkSslMasterKeyHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljavax/crypto/SecretKey;Ljavax/net/ssl/SSLSession;)V
    .locals 2

    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0x30

    if-ne v0, v1, :cond_0

    invoke-interface {p2}, Ljavax/net/ssl/SSLSession;->getId()[B

    move-result-object p2

    sget-object v0, Lio/netty/handler/ssl/SslMasterKeyHandler$WiresharkSslMasterKeyHandler;->wireshark_logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-static {p2}, Lio/netty/buffer/ByteBufUtil;->hexDump([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p1

    invoke-static {p1}, Lio/netty/buffer/ByteBufUtil;->hexDump([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v1, "RSA Session-ID:{} Master-Key:{}"

    invoke-interface {v0, v1, p2, p1}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "An invalid length master key was provided."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
