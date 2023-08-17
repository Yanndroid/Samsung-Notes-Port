.class public abstract Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationResult;
.super Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationResult;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<GenericMicrosoftAuthorizationResponse:",
        "Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationResponse;",
        "GenericMicrosoftAuthorizationErrorResponse:",
        "Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationErrorResponse;",
        ">",
        "Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationResult<",
        "TGenericMicrosoftAuthorizationResponse;TGenericMicrosoftAuthorizationErrorResponse;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationStatus;Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationErrorResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationStatus;",
            "TGenericMicrosoftAuthorizationErrorResponse;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationResult;-><init>(Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationResponse;Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationErrorResponse;)V

    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationResult;->setAuthorizationStatus(Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationStatus;)V

    invoke-virtual {p0, p2}, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationResult;->setAuthorizationErrorResponse(Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationErrorResponse;)V

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationStatus;Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationStatus;",
            "TGenericMicrosoftAuthorizationResponse;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationResult;-><init>(Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationResponse;Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationErrorResponse;)V

    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationResult;->setAuthorizationStatus(Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationStatus;)V

    invoke-virtual {p0, p2}, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationResult;->setAuthorizationResponse(Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationResponse;)V

    return-void
.end method
