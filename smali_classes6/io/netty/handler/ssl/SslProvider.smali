.class public final enum Lio/netty/handler/ssl/SslProvider;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/netty/handler/ssl/SslProvider;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/netty/handler/ssl/SslProvider;

.field public static final enum JDK:Lio/netty/handler/ssl/SslProvider;

.field public static final enum OPENSSL:Lio/netty/handler/ssl/SslProvider;

.field public static final enum OPENSSL_REFCNT:Lio/netty/handler/ssl/SslProvider;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lio/netty/handler/ssl/SslProvider;

    const-string v1, "JDK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/netty/handler/ssl/SslProvider;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/netty/handler/ssl/SslProvider;->JDK:Lio/netty/handler/ssl/SslProvider;

    new-instance v1, Lio/netty/handler/ssl/SslProvider;

    const-string v3, "OPENSSL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/netty/handler/ssl/SslProvider;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/netty/handler/ssl/SslProvider;->OPENSSL:Lio/netty/handler/ssl/SslProvider;

    new-instance v3, Lio/netty/handler/ssl/SslProvider;

    const-string v5, "OPENSSL_REFCNT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/netty/handler/ssl/SslProvider;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/netty/handler/ssl/SslProvider;->OPENSSL_REFCNT:Lio/netty/handler/ssl/SslProvider;

    const/4 v5, 0x3

    new-array v5, v5, [Lio/netty/handler/ssl/SslProvider;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lio/netty/handler/ssl/SslProvider;->$VALUES:[Lio/netty/handler/ssl/SslProvider;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static isAlpnSupported(Lio/netty/handler/ssl/SslProvider;)Z
    .locals 3

    sget-object v0, Lio/netty/handler/ssl/SslProvider$1;->$SwitchMap$io$netty$handler$ssl$SslProvider:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown SslProvider: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-static {}, Lio/netty/handler/ssl/OpenSsl;->isAlpnSupported()Z

    move-result p0

    return p0

    :cond_2
    invoke-static {}, Lio/netty/handler/ssl/JdkAlpnApplicationProtocolNegotiator;->isAlpnSupported()Z

    move-result p0

    return p0
.end method

.method public static isTlsv13EnabledByDefault(Lio/netty/handler/ssl/SslProvider;Ljava/security/Provider;)Z
    .locals 2

    sget-object v0, Lio/netty/handler/ssl/SslProvider$1;->$SwitchMap$io$netty$handler$ssl$SslProvider:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 p1, 0x2

    if-eq v0, p1, :cond_1

    const/4 p1, 0x3

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/Error;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown SslProvider: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-static {}, Lio/netty/handler/ssl/OpenSsl;->isTlsv13Supported()Z

    move-result p0

    return p0

    :cond_2
    invoke-static {p1}, Lio/netty/handler/ssl/SslUtils;->isTLSv13EnabledByJDK(Ljava/security/Provider;)Z

    move-result p0

    return p0
.end method

.method public static isTlsv13Supported(Lio/netty/handler/ssl/SslProvider;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lio/netty/handler/ssl/SslProvider;->isTlsv13Supported(Lio/netty/handler/ssl/SslProvider;Ljava/security/Provider;)Z

    move-result p0

    return p0
.end method

.method public static isTlsv13Supported(Lio/netty/handler/ssl/SslProvider;Ljava/security/Provider;)Z
    .locals 2

    sget-object v0, Lio/netty/handler/ssl/SslProvider$1;->$SwitchMap$io$netty$handler$ssl$SslProvider:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 p1, 0x2

    if-eq v0, p1, :cond_1

    const/4 p1, 0x3

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/Error;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown SslProvider: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-static {}, Lio/netty/handler/ssl/OpenSsl;->isTlsv13Supported()Z

    move-result p0

    return p0

    :cond_2
    invoke-static {p1}, Lio/netty/handler/ssl/SslUtils;->isTLSv13SupportedByJDK(Ljava/security/Provider;)Z

    move-result p0

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/netty/handler/ssl/SslProvider;
    .locals 1

    const-class v0, Lio/netty/handler/ssl/SslProvider;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/netty/handler/ssl/SslProvider;

    return-object p0
.end method

.method public static values()[Lio/netty/handler/ssl/SslProvider;
    .locals 1

    sget-object v0, Lio/netty/handler/ssl/SslProvider;->$VALUES:[Lio/netty/handler/ssl/SslProvider;

    invoke-virtual {v0}, [Lio/netty/handler/ssl/SslProvider;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/netty/handler/ssl/SslProvider;

    return-object v0
.end method
