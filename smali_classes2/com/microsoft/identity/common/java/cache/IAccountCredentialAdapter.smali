.class public interface abstract Lcom/microsoft/identity/common/java/cache/IAccountCredentialAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2Strategy;",
        "U:",
        "Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest;",
        "V:",
        "Lcom/microsoft/identity/common/java/providers/oauth2/TokenResponse;",
        "W:",
        "Lcom/microsoft/identity/common/java/BaseAccount;",
        "X:",
        "Lcom/microsoft/identity/common/java/providers/oauth2/RefreshToken;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract asAccount(Lcom/microsoft/identity/common/java/BaseAccount;)Lcom/microsoft/identity/common/java/dto/AccountRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TW;)",
            "Lcom/microsoft/identity/common/java/dto/AccountRecord;"
        }
    .end annotation
.end method

.method public abstract asIdToken(Lcom/microsoft/identity/common/java/BaseAccount;Lcom/microsoft/identity/common/java/providers/oauth2/RefreshToken;)Lcom/microsoft/identity/common/java/dto/IdTokenRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TW;TX;)",
            "Lcom/microsoft/identity/common/java/dto/IdTokenRecord;"
        }
    .end annotation
.end method

.method public abstract asRefreshToken(Lcom/microsoft/identity/common/java/providers/oauth2/RefreshToken;)Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TX;)",
            "Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;"
        }
    .end annotation
.end method

.method public abstract createAccessToken(Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2Strategy;Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest;Lcom/microsoft/identity/common/java/providers/oauth2/TokenResponse;)Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TU;TV;)",
            "Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;"
        }
    .end annotation
.end method

.method public abstract createAccount(Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2Strategy;Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest;Lcom/microsoft/identity/common/java/providers/oauth2/TokenResponse;)Lcom/microsoft/identity/common/java/dto/AccountRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TU;TV;)",
            "Lcom/microsoft/identity/common/java/dto/AccountRecord;"
        }
    .end annotation
.end method

.method public abstract createIdToken(Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2Strategy;Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest;Lcom/microsoft/identity/common/java/providers/oauth2/TokenResponse;)Lcom/microsoft/identity/common/java/dto/IdTokenRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TU;TV;)",
            "Lcom/microsoft/identity/common/java/dto/IdTokenRecord;"
        }
    .end annotation
.end method

.method public abstract createRefreshToken(Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2Strategy;Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest;Lcom/microsoft/identity/common/java/providers/oauth2/TokenResponse;)Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TU;TV;)",
            "Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;"
        }
    .end annotation
.end method
