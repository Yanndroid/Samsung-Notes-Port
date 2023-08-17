.class Lorg/conscrypt/PeerInfoProvider$2;
.super Lorg/conscrypt/PeerInfoProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/conscrypt/PeerInfoProvider;->forHostAndPort(Ljava/lang/String;I)Lorg/conscrypt/PeerInfoProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$host:Ljava/lang/String;

.field public final synthetic val$port:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lorg/conscrypt/PeerInfoProvider$2;->val$host:Ljava/lang/String;

    iput p2, p0, Lorg/conscrypt/PeerInfoProvider$2;->val$port:I

    invoke-direct {p0}, Lorg/conscrypt/PeerInfoProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getHostname()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/PeerInfoProvider$2;->val$host:Ljava/lang/String;

    return-object v0
.end method

.method public getHostnameOrIP()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/PeerInfoProvider$2;->val$host:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    iget v0, p0, Lorg/conscrypt/PeerInfoProvider$2;->val$port:I

    return v0
.end method
