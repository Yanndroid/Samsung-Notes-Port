.class Lcom/microsoft/identity/client/PublicClientApplication$17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/common/java/commands/CommandCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/identity/client/PublicClientApplication;->getLoadAccountsCallback(Lcom/microsoft/identity/client/IPublicClientApplication$LoadAccountsCallback;)Lcom/microsoft/identity/common/java/commands/CommandCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/microsoft/identity/common/java/commands/CommandCallback<",
        "Ljava/util/List<",
        "Lcom/microsoft/identity/common/java/cache/ICacheRecord;",
        ">;",
        "Lcom/microsoft/identity/common/java/exception/BaseException;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic val$loadAccountsCallback:Lcom/microsoft/identity/client/IPublicClientApplication$LoadAccountsCallback;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/client/IPublicClientApplication$LoadAccountsCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/client/PublicClientApplication$17;->val$loadAccountsCallback:Lcom/microsoft/identity/client/IPublicClientApplication$LoadAccountsCallback;

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

    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplication$17;->val$loadAccountsCallback:Lcom/microsoft/identity/client/IPublicClientApplication$LoadAccountsCallback;

    invoke-static {p1}, Lcom/microsoft/identity/client/internal/controllers/MsalExceptionAdapter;->msalExceptionFromBaseException(Lcom/microsoft/identity/common/java/exception/BaseException;)Lcom/microsoft/identity/client/exception/MsalException;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/microsoft/identity/client/IPublicClientApplication$LoadAccountsCallback;->onError(Lcom/microsoft/identity/client/exception/MsalException;)V

    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/microsoft/identity/common/java/exception/BaseException;

    invoke-virtual {p0, p1}, Lcom/microsoft/identity/client/PublicClientApplication$17;->onError(Lcom/microsoft/identity/common/java/exception/BaseException;)V

    return-void
.end method

.method public bridge synthetic onTaskCompleted(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/microsoft/identity/client/PublicClientApplication$17;->onTaskCompleted(Ljava/util/List;)V

    return-void
.end method

.method public onTaskCompleted(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/java/cache/ICacheRecord;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/microsoft/identity/client/PublicClientApplication$17;->val$loadAccountsCallback:Lcom/microsoft/identity/client/IPublicClientApplication$LoadAccountsCallback;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/microsoft/identity/client/IPublicClientApplication$LoadAccountsCallback;->onTaskCompleted(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplication$17;->val$loadAccountsCallback:Lcom/microsoft/identity/client/IPublicClientApplication$LoadAccountsCallback;

    invoke-static {p1}, Lcom/microsoft/identity/client/AccountAdapter;->adapt(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/microsoft/identity/client/IPublicClientApplication$LoadAccountsCallback;->onTaskCompleted(Ljava/util/List;)V

    :goto_0
    return-void
.end method
