.class public interface abstract Lcom/microsoft/identity/client/IMicrosoftAuthService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/identity/client/IMicrosoftAuthService$Stub;,
        Lcom/microsoft/identity/client/IMicrosoftAuthService$Default;
    }
.end annotation


# virtual methods
.method public abstract acquireTokenSilently(Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract generateSignedHttpRequest(Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract getAccounts(Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract getCurrentAccount(Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract getDeviceMode()Landroid/os/Bundle;
.end method

.method public abstract getIntentForInteractiveRequest()Landroid/content/Intent;
.end method

.method public abstract hello(Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract removeAccount(Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract removeAccountFromSharedDevice(Landroid/os/Bundle;)Landroid/os/Bundle;
.end method
