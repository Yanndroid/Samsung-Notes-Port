.class public interface abstract Lcom/samsung/scsp/framework/core/identity/AccountInfoSupplier;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getAccessToken()Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getAppId()Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getUserId()Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract has()Z
.end method

.method public abstract onUnauthorized()V
.end method

.method public abstract signOut()V
.end method

.method public abstract update()V
.end method
