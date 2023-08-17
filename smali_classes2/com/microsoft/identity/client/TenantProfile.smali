.class public Lcom/microsoft/identity/client/TenantProfile;
.super Lcom/microsoft/identity/client/Account;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/client/ITenantProfile;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/microsoft/identity/common/java/providers/oauth2/IDToken;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/microsoft/identity/common/java/providers/oauth2/IDToken;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lcom/microsoft/identity/client/Account;-><init>(Ljava/lang/String;Lcom/microsoft/identity/common/java/providers/oauth2/IDToken;)V

    return-void
.end method


# virtual methods
.method public getTenantId()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/microsoft/identity/client/Account;->getClaims()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/microsoft/identity/client/Account;->getClaims()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "tid"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method
