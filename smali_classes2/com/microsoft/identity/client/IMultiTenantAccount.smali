.class public interface abstract Lcom/microsoft/identity/client/IMultiTenantAccount;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/client/IAccount;


# virtual methods
.method public abstract getTenantProfiles()Ljava/util/Map;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/microsoft/identity/client/ITenantProfile;",
            ">;"
        }
    .end annotation
.end method
