.class public Lcom/microsoft/identity/client/PoPAuthenticationScheme;
.super Lcom/microsoft/identity/client/AuthenticationScheme;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/common/java/authscheme/IPoPAuthenticationSchemeParams;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/identity/client/PoPAuthenticationScheme$Builder;
    }
.end annotation


# instance fields
.field private final mClientClaims:Ljava/lang/String;

.field private final mHttpMethod:Lcom/microsoft/identity/client/HttpMethod;

.field private final mNonce:Ljava/lang/String;

.field private final mUrl:Ljava/net/URL;


# direct methods
.method private constructor <init>(Lcom/microsoft/identity/client/HttpMethod;Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/microsoft/identity/client/HttpMethod;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/net/URL;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "PoP"

    invoke-direct {p0, v0}, Lcom/microsoft/identity/client/AuthenticationScheme;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/microsoft/identity/client/PoPAuthenticationScheme;->mHttpMethod:Lcom/microsoft/identity/client/HttpMethod;

    iput-object p2, p0, Lcom/microsoft/identity/client/PoPAuthenticationScheme;->mUrl:Ljava/net/URL;

    iput-object p3, p0, Lcom/microsoft/identity/client/PoPAuthenticationScheme;->mNonce:Ljava/lang/String;

    iput-object p4, p0, Lcom/microsoft/identity/client/PoPAuthenticationScheme;->mClientClaims:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/microsoft/identity/client/HttpMethod;Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/client/PoPAuthenticationScheme$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/microsoft/identity/client/PoPAuthenticationScheme;-><init>(Lcom/microsoft/identity/client/HttpMethod;Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static builder()Lcom/microsoft/identity/client/PoPAuthenticationScheme$Builder;
    .locals 2

    new-instance v0, Lcom/microsoft/identity/client/PoPAuthenticationScheme$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/microsoft/identity/client/PoPAuthenticationScheme$Builder;-><init>(Lcom/microsoft/identity/client/PoPAuthenticationScheme$1;)V

    return-object v0
.end method


# virtual methods
.method public getClientClaims()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/client/PoPAuthenticationScheme;->mClientClaims:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpMethod()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/microsoft/identity/client/PoPAuthenticationScheme;->mHttpMethod:Lcom/microsoft/identity/client/HttpMethod;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getNonce()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/client/PoPAuthenticationScheme;->mNonce:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/net/URL;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/client/PoPAuthenticationScheme;->mUrl:Ljava/net/URL;

    return-object v0
.end method
