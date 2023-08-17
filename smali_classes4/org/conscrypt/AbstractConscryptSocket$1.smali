.class Lorg/conscrypt/AbstractConscryptSocket$1;
.super Lorg/conscrypt/PeerInfoProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/conscrypt/AbstractConscryptSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lorg/conscrypt/AbstractConscryptSocket;


# direct methods
.method public constructor <init>(Lorg/conscrypt/AbstractConscryptSocket;)V
    .locals 0

    iput-object p1, p0, Lorg/conscrypt/AbstractConscryptSocket$1;->this$0:Lorg/conscrypt/AbstractConscryptSocket;

    invoke-direct {p0}, Lorg/conscrypt/PeerInfoProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getHostname()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/AbstractConscryptSocket$1;->this$0:Lorg/conscrypt/AbstractConscryptSocket;

    invoke-virtual {v0}, Lorg/conscrypt/AbstractConscryptSocket;->getHostname()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHostnameOrIP()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/AbstractConscryptSocket$1;->this$0:Lorg/conscrypt/AbstractConscryptSocket;

    invoke-virtual {v0}, Lorg/conscrypt/AbstractConscryptSocket;->getHostnameOrIP()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPort()I
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/AbstractConscryptSocket$1;->this$0:Lorg/conscrypt/AbstractConscryptSocket;

    invoke-virtual {v0}, Lorg/conscrypt/AbstractConscryptSocket;->getPort()I

    move-result v0

    return v0
.end method
