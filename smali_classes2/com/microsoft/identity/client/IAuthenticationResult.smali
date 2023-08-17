.class public interface abstract Lcom/microsoft/identity/client/IAuthenticationResult;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getAccessToken()Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getAccount()Lcom/microsoft/identity/client/IAccount;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getAuthenticationScheme()Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getAuthorizationHeader()Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getCorrelationId()Ljava/util/UUID;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getExpiresOn()Ljava/util/Date;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getScope()[Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getTenantId()Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method
