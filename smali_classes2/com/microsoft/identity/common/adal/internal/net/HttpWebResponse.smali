.class public Lcom/microsoft/identity/common/adal/internal/net/HttpWebResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mResponseBody:Ljava/lang/String;

.field private final mResponseHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mStatusCode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/microsoft/identity/common/adal/internal/net/HttpWebResponse;->mStatusCode:I

    iput-object p2, p0, Lcom/microsoft/identity/common/adal/internal/net/HttpWebResponse;->mResponseBody:Ljava/lang/String;

    iput-object p3, p0, Lcom/microsoft/identity/common/adal/internal/net/HttpWebResponse;->mResponseHeaders:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/adal/internal/net/HttpWebResponse;->mResponseBody:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/microsoft/identity/common/adal/internal/net/HttpWebResponse;->mResponseHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    iget v0, p0, Lcom/microsoft/identity/common/adal/internal/net/HttpWebResponse;->mStatusCode:I

    return v0
.end method
