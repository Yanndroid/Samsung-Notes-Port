.class Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/common/java/commands/CommandCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication$3;->onMigrationFinished(I)V
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
.field public final synthetic this$1:Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication$3;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication$3;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication$3$1;->this$1:Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    return-void
.end method

.method public onError(Lcom/microsoft/identity/common/java/exception/BaseException;)V
    .locals 2

    iget-object v0, p0, Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication$3$1;->this$1:Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication$3;

    iget-object v0, v0, Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication$3;->val$methodTag:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/exception/BaseException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/microsoft/identity/common/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication$3$1;->this$1:Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication$3;

    iget-object v0, v0, Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication$3;->val$callback:Lcom/microsoft/identity/client/IMultipleAccountPublicClientApplication$GetAccountCallback;

    invoke-static {p1}, Lcom/microsoft/identity/client/internal/controllers/MsalExceptionAdapter;->msalExceptionFromBaseException(Lcom/microsoft/identity/common/java/exception/BaseException;)Lcom/microsoft/identity/client/exception/MsalException;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/microsoft/identity/client/IMultipleAccountPublicClientApplication$GetAccountCallback;->onError(Lcom/microsoft/identity/client/exception/MsalException;)V

    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/microsoft/identity/common/java/exception/BaseException;

    invoke-virtual {p0, p1}, Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication$3$1;->onError(Lcom/microsoft/identity/common/java/exception/BaseException;)V

    return-void
.end method

.method public bridge synthetic onTaskCompleted(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication$3$1;->onTaskCompleted(Ljava/util/List;)V

    return-void
.end method

.method public onTaskCompleted(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/java/cache/ICacheRecord;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/microsoft/identity/client/AccountAdapter;->adapt(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication$3$1;->this$1:Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication$3;

    iget-object v1, v1, Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication$3;->val$identifier:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/microsoft/identity/client/PublicClientApplication$AccountMatcher;

    iget-object v3, p0, Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication$3$1;->this$1:Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication$3;

    iget-object v3, v3, Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication$3;->this$0:Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/microsoft/identity/client/PublicClientApplication$AccountMatcher;

    const/4 v5, 0x0

    iget-object v6, v3, Lcom/microsoft/identity/client/PublicClientApplication;->homeAccountMatcher:Lcom/microsoft/identity/client/PublicClientApplication$AccountMatcher;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, v3, Lcom/microsoft/identity/client/PublicClientApplication;->localAccountMatcher:Lcom/microsoft/identity/client/PublicClientApplication$AccountMatcher;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-object v6, v3, Lcom/microsoft/identity/client/PublicClientApplication;->usernameMatcher:Lcom/microsoft/identity/client/PublicClientApplication$AccountMatcher;

    aput-object v6, v4, v5

    invoke-direct {v2, v3, v4}, Lcom/microsoft/identity/client/PublicClientApplication$AccountMatcher;-><init>(Lcom/microsoft/identity/client/PublicClientApplication;[Lcom/microsoft/identity/client/PublicClientApplication$AccountMatcher;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/microsoft/identity/client/IAccount;

    invoke-virtual {v2, v1, v3}, Lcom/microsoft/identity/client/PublicClientApplication$AccountMatcher;->matches(Ljava/lang/String;Lcom/microsoft/identity/client/IAccount;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object p1, p0, Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication$3$1;->this$1:Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication$3;

    iget-object p1, p1, Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication$3;->val$callback:Lcom/microsoft/identity/client/IMultipleAccountPublicClientApplication$GetAccountCallback;

    invoke-interface {p1, v3}, Lcom/microsoft/identity/client/IMultipleAccountPublicClientApplication$GetAccountCallback;->onTaskCompleted(Lcom/microsoft/identity/client/IAccount;)V

    return-void

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication$3$1;->this$1:Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication$3;

    iget-object p1, p1, Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication$3;->val$methodTag:Ljava/lang/String;

    const-string v1, "No account found."

    invoke-static {p1, v1}, Lcom/microsoft/identity/common/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object p1, p0, Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication$3$1;->this$1:Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication$3;

    iget-object p1, p1, Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication$3;->val$callback:Lcom/microsoft/identity/client/IMultipleAccountPublicClientApplication$GetAccountCallback;

    invoke-interface {p1, v0}, Lcom/microsoft/identity/client/IMultipleAccountPublicClientApplication$GetAccountCallback;->onTaskCompleted(Lcom/microsoft/identity/client/IAccount;)V

    return-void
.end method
