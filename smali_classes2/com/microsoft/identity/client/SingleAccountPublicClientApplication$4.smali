.class Lcom/microsoft/identity/client/SingleAccountPublicClientApplication$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/common/java/commands/CommandCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/identity/client/SingleAccountPublicClientApplication;->signOutInternal(Lcom/microsoft/identity/client/ISingleAccountPublicClientApplication$SignOutCallback;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/microsoft/identity/common/java/commands/CommandCallback<",
        "Ljava/lang/Boolean;",
        "Lcom/microsoft/identity/common/java/exception/BaseException;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/identity/client/SingleAccountPublicClientApplication;

.field public final synthetic val$callback:Lcom/microsoft/identity/client/ISingleAccountPublicClientApplication$SignOutCallback;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/client/SingleAccountPublicClientApplication;Lcom/microsoft/identity/client/ISingleAccountPublicClientApplication$SignOutCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication$4;->this$0:Lcom/microsoft/identity/client/SingleAccountPublicClientApplication;

    iput-object p2, p0, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication$4;->val$callback:Lcom/microsoft/identity/client/ISingleAccountPublicClientApplication$SignOutCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    return-void
.end method

.method public onError(Lcom/microsoft/identity/common/java/exception/BaseException;)V
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication$4;->val$callback:Lcom/microsoft/identity/client/ISingleAccountPublicClientApplication$SignOutCallback;

    invoke-static {p1}, Lcom/microsoft/identity/client/internal/controllers/MsalExceptionAdapter;->msalExceptionFromBaseException(Lcom/microsoft/identity/common/java/exception/BaseException;)Lcom/microsoft/identity/client/exception/MsalException;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/microsoft/identity/client/ISingleAccountPublicClientApplication$SignOutCallback;->onError(Lcom/microsoft/identity/client/exception/MsalException;)V

    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/microsoft/identity/common/java/exception/BaseException;

    invoke-virtual {p0, p1}, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication$4;->onError(Lcom/microsoft/identity/common/java/exception/BaseException;)V

    return-void
.end method

.method public onTaskCompleted(Ljava/lang/Boolean;)V
    .locals 1

    iget-object p1, p0, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication$4;->this$0:Lcom/microsoft/identity/client/SingleAccountPublicClientApplication;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication;->access$100(Lcom/microsoft/identity/client/SingleAccountPublicClientApplication;Ljava/util/List;)V

    iget-object p1, p0, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication$4;->val$callback:Lcom/microsoft/identity/client/ISingleAccountPublicClientApplication$SignOutCallback;

    invoke-interface {p1}, Lcom/microsoft/identity/client/ISingleAccountPublicClientApplication$SignOutCallback;->onSignOut()V

    return-void
.end method

.method public bridge synthetic onTaskCompleted(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication$4;->onTaskCompleted(Ljava/lang/Boolean;)V

    return-void
.end method
