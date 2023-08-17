.class Lcom/microsoft/identity/client/claims/ClaimsRequestSerializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/gson/JsonSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/gson/JsonSerializer<",
        "Lcom/microsoft/identity/client/claims/ClaimsRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addPropertiesToObject(Ljava/util/List;Lcom/google/gson/JsonObject;Lcom/google/gson/JsonSerializationContext;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/client/claims/RequestedClaim;",
            ">;",
            "Lcom/google/gson/JsonObject;",
            "Lcom/google/gson/JsonSerializationContext;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/identity/client/claims/RequestedClaim;

    invoke-virtual {v0}, Lcom/microsoft/identity/client/claims/RequestedClaim;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/microsoft/identity/client/claims/RequestedClaim;->getAdditionalInformation()Lcom/microsoft/identity/client/claims/RequestedClaimAdditionalInformation;

    move-result-object v0

    const-class v2, Lcom/microsoft/identity/client/claims/RequestedClaimAdditionalInformation;

    invoke-interface {p3, v0, v2}, Lcom/google/gson/JsonSerializationContext;->serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public serialize(Lcom/microsoft/identity/client/claims/ClaimsRequest;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
    .locals 4

    new-instance p2, Lcom/google/gson/JsonObject;

    invoke-direct {p2}, Lcom/google/gson/JsonObject;-><init>()V

    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    new-instance v2, Lcom/google/gson/JsonObject;

    invoke-direct {v2}, Lcom/google/gson/JsonObject;-><init>()V

    invoke-virtual {p1}, Lcom/microsoft/identity/client/claims/ClaimsRequest;->getAccessTokenClaimsRequested()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v3, v1, p3}, Lcom/microsoft/identity/client/claims/ClaimsRequestSerializer;->addPropertiesToObject(Ljava/util/List;Lcom/google/gson/JsonObject;Lcom/google/gson/JsonSerializationContext;)V

    invoke-virtual {p1}, Lcom/microsoft/identity/client/claims/ClaimsRequest;->getIdTokenClaimsRequested()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v3, v2, p3}, Lcom/microsoft/identity/client/claims/ClaimsRequestSerializer;->addPropertiesToObject(Ljava/util/List;Lcom/google/gson/JsonObject;Lcom/google/gson/JsonSerializationContext;)V

    invoke-virtual {p1}, Lcom/microsoft/identity/client/claims/ClaimsRequest;->getUserInfoClaimsRequested()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, v0, p3}, Lcom/microsoft/identity/client/claims/ClaimsRequestSerializer;->addPropertiesToObject(Ljava/util/List;Lcom/google/gson/JsonObject;Lcom/google/gson/JsonSerializationContext;)V

    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->size()I

    move-result p1

    if-eqz p1, :cond_0

    const-string/jumbo p1, "userinfo"

    invoke-virtual {p2, p1, v0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    :cond_0
    invoke-virtual {v2}, Lcom/google/gson/JsonObject;->size()I

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "id_token"

    invoke-virtual {p2, p1, v2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    :cond_1
    invoke-virtual {v1}, Lcom/google/gson/JsonObject;->size()I

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "access_token"

    invoke-virtual {p2, p1, v1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    :cond_2
    return-object p2
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
    .locals 0

    check-cast p1, Lcom/microsoft/identity/client/claims/ClaimsRequest;

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/identity/client/claims/ClaimsRequestSerializer;->serialize(Lcom/microsoft/identity/client/claims/ClaimsRequest;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;

    move-result-object p1

    return-object p1
.end method
