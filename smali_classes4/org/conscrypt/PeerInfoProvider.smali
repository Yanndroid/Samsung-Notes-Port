.class abstract Lorg/conscrypt/PeerInfoProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final NULL_PEER_INFO_PROVIDER:Lorg/conscrypt/PeerInfoProvider;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/conscrypt/PeerInfoProvider$1;

    invoke-direct {v0}, Lorg/conscrypt/PeerInfoProvider$1;-><init>()V

    sput-object v0, Lorg/conscrypt/PeerInfoProvider;->NULL_PEER_INFO_PROVIDER:Lorg/conscrypt/PeerInfoProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static forHostAndPort(Ljava/lang/String;I)Lorg/conscrypt/PeerInfoProvider;
    .locals 1

    new-instance v0, Lorg/conscrypt/PeerInfoProvider$2;

    invoke-direct {v0, p0, p1}, Lorg/conscrypt/PeerInfoProvider$2;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static nullProvider()Lorg/conscrypt/PeerInfoProvider;
    .locals 1

    sget-object v0, Lorg/conscrypt/PeerInfoProvider;->NULL_PEER_INFO_PROVIDER:Lorg/conscrypt/PeerInfoProvider;

    return-object v0
.end method


# virtual methods
.method public abstract getHostname()Ljava/lang/String;
.end method

.method public abstract getHostnameOrIP()Ljava/lang/String;
.end method

.method public abstract getPort()I
.end method
