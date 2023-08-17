.class public Lcom/microsoft/identity/common/java/net/DefaultHttpClientWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/common/java/interfaces/IHttpClientWrapper;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public wrap(Lcom/microsoft/identity/common/java/net/HttpClient;)Lcom/microsoft/identity/common/java/net/HttpClient;
    .locals 1
    .param p1    # Lcom/microsoft/identity/common/java/net/HttpClient;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .annotation build Llombok/NonNull;
    .end annotation

    const-string v0, "client is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object p1
.end method
