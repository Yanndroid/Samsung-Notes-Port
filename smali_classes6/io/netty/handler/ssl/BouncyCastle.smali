.class final Lio/netty/handler/ssl/BouncyCastle;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final BOUNCY_CASTLE_ON_CLASSPATH:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "org.bouncycastle.jsse.provider.BouncyCastleJsseProvider"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lio/netty/handler/ssl/BouncyCastle;->BOUNCY_CASTLE_ON_CLASSPATH:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAvailable()Z
    .locals 1

    sget-boolean v0, Lio/netty/handler/ssl/BouncyCastle;->BOUNCY_CASTLE_ON_CLASSPATH:Z

    return v0
.end method

.method public static isInUse(Ljavax/net/ssl/SSLEngine;)Z
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "org.bouncycastle.jsse.provider"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
