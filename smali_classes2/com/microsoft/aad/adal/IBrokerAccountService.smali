.class public interface abstract Lcom/microsoft/aad/adal/IBrokerAccountService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/aad/adal/IBrokerAccountService$Stub;,
        Lcom/microsoft/aad/adal/IBrokerAccountService$Default;
    }
.end annotation


# virtual methods
.method public abstract acquireTokenSilently(Ljava/util/Map;)Landroid/os/Bundle;
.end method

.method public abstract getBrokerUsers()Landroid/os/Bundle;
.end method

.method public abstract getInactiveBrokerKey(Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract getIntentForInteractiveRequest()Landroid/content/Intent;
.end method

.method public abstract removeAccounts()V
.end method
