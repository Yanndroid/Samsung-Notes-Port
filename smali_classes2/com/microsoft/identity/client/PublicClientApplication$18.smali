.class Lcom/microsoft/identity/client/PublicClientApplication$18;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/common/java/commands/CommandCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/identity/client/PublicClientApplication;->getCommandCallback(Lcom/microsoft/identity/client/SilentAuthenticationCallback;Lcom/microsoft/identity/client/TokenParameters;)Lcom/microsoft/identity/common/java/commands/CommandCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/microsoft/identity/common/java/commands/CommandCallback<",
        "Lcom/microsoft/identity/common/java/result/ILocalAuthenticationResult;",
        "Lcom/microsoft/identity/common/java/exception/BaseException;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/identity/client/PublicClientApplication;

.field public final synthetic val$authenticationCallback:Lcom/microsoft/identity/client/SilentAuthenticationCallback;

.field public final synthetic val$tokenParameters:Lcom/microsoft/identity/client/TokenParameters;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/client/PublicClientApplication;Lcom/microsoft/identity/client/TokenParameters;Lcom/microsoft/identity/client/SilentAuthenticationCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/client/PublicClientApplication$18;->this$0:Lcom/microsoft/identity/client/PublicClientApplication;

    iput-object p2, p0, Lcom/microsoft/identity/client/PublicClientApplication$18;->val$tokenParameters:Lcom/microsoft/identity/client/TokenParameters;

    iput-object p3, p0, Lcom/microsoft/identity/client/PublicClientApplication$18;->val$authenticationCallback:Lcom/microsoft/identity/client/SilentAuthenticationCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplication$18;->val$authenticationCallback:Lcom/microsoft/identity/client/SilentAuthenticationCallback;

    instance-of v1, v0, Lcom/microsoft/identity/client/AuthenticationCallback;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/microsoft/identity/client/AuthenticationCallback;

    invoke-interface {v0}, Lcom/microsoft/identity/client/AuthenticationCallback;->onCancel()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Silent requests cannot be cancelled."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onError(Lcom/microsoft/identity/common/java/exception/BaseException;)V
    .locals 1

    invoke-static {p1}, Lcom/microsoft/identity/client/internal/controllers/MsalExceptionAdapter;->msalExceptionFromBaseException(Lcom/microsoft/identity/common/java/exception/BaseException;)Lcom/microsoft/identity/client/exception/MsalException;

    move-result-object p1

    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplication$18;->val$authenticationCallback:Lcom/microsoft/identity/client/SilentAuthenticationCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/microsoft/identity/client/SilentAuthenticationCallback;->onError(Lcom/microsoft/identity/client/exception/MsalException;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "callback cannot be null or empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/microsoft/identity/common/java/exception/BaseException;

    invoke-virtual {p0, p1}, Lcom/microsoft/identity/client/PublicClientApplication$18;->onError(Lcom/microsoft/identity/common/java/exception/BaseException;)V

    return-void
.end method

.method public onTaskCompleted(Lcom/microsoft/identity/common/java/result/ILocalAuthenticationResult;)V
    .locals 3

    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplication$18;->this$0:Lcom/microsoft/identity/client/PublicClientApplication;

    iget-object v1, p0, Lcom/microsoft/identity/client/PublicClientApplication$18;->val$tokenParameters:Lcom/microsoft/identity/client/TokenParameters;

    iget-object v2, p0, Lcom/microsoft/identity/client/PublicClientApplication$18;->val$authenticationCallback:Lcom/microsoft/identity/client/SilentAuthenticationCallback;

    invoke-virtual {v0, p1, v1, v2}, Lcom/microsoft/identity/client/PublicClientApplication;->postAuthResult(Lcom/microsoft/identity/common/java/result/ILocalAuthenticationResult;Lcom/microsoft/identity/client/TokenParameters;Lcom/microsoft/identity/client/SilentAuthenticationCallback;)V

    return-void
.end method

.method public bridge synthetic onTaskCompleted(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/microsoft/identity/common/java/result/ILocalAuthenticationResult;

    invoke-virtual {p0, p1}, Lcom/microsoft/identity/client/PublicClientApplication$18;->onTaskCompleted(Lcom/microsoft/identity/common/java/result/ILocalAuthenticationResult;)V

    return-void
.end method
