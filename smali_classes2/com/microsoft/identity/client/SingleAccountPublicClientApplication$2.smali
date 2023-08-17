.class Lcom/microsoft/identity/client/SingleAccountPublicClientApplication$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/client/ISingleAccountPublicClientApplication$CurrentAccountCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/identity/client/SingleAccountPublicClientApplication;->getCurrentAccount()Lcom/microsoft/identity/client/ICurrentAccountResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/identity/client/SingleAccountPublicClientApplication;

.field public final synthetic val$future:Lcom/microsoft/identity/common/java/util/ResultFuture;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/client/SingleAccountPublicClientApplication;Lcom/microsoft/identity/common/java/util/ResultFuture;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication$2;->this$0:Lcom/microsoft/identity/client/SingleAccountPublicClientApplication;

    iput-object p2, p0, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication$2;->val$future:Lcom/microsoft/identity/common/java/util/ResultFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccountChanged(Lcom/microsoft/identity/client/IAccount;Lcom/microsoft/identity/client/IAccount;)V
    .locals 2
    .param p1    # Lcom/microsoft/identity/client/IAccount;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/microsoft/identity/client/IAccount;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Lcom/microsoft/identity/client/CurrentAccountResult;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p1, v1}, Lcom/microsoft/identity/client/CurrentAccountResult;-><init>(Lcom/microsoft/identity/client/IAccount;Lcom/microsoft/identity/client/IAccount;Z)V

    iget-object p1, p0, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication$2;->val$future:Lcom/microsoft/identity/common/java/util/ResultFuture;

    new-instance p2, Lcom/microsoft/identity/client/internal/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1}, Lcom/microsoft/identity/client/internal/AsyncResult;-><init>(Ljava/lang/Object;Lcom/microsoft/identity/client/exception/MsalException;)V

    invoke-virtual {p1, p2}, Lcom/microsoft/identity/common/java/util/ResultFuture;->setResult(Ljava/lang/Object;)V

    return-void
.end method

.method public onAccountLoaded(Lcom/microsoft/identity/client/IAccount;)V
    .locals 3
    .param p1    # Lcom/microsoft/identity/client/IAccount;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Lcom/microsoft/identity/client/CurrentAccountResult;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/microsoft/identity/client/CurrentAccountResult;-><init>(Lcom/microsoft/identity/client/IAccount;Lcom/microsoft/identity/client/IAccount;Z)V

    iget-object p1, p0, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication$2;->val$future:Lcom/microsoft/identity/common/java/util/ResultFuture;

    new-instance v2, Lcom/microsoft/identity/client/internal/AsyncResult;

    invoke-direct {v2, v0, v1}, Lcom/microsoft/identity/client/internal/AsyncResult;-><init>(Ljava/lang/Object;Lcom/microsoft/identity/client/exception/MsalException;)V

    invoke-virtual {p1, v2}, Lcom/microsoft/identity/common/java/util/ResultFuture;->setResult(Ljava/lang/Object;)V

    return-void
.end method

.method public onError(Lcom/microsoft/identity/client/exception/MsalException;)V
    .locals 3
    .param p1    # Lcom/microsoft/identity/client/exception/MsalException;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication$2;->val$future:Lcom/microsoft/identity/common/java/util/ResultFuture;

    new-instance v1, Lcom/microsoft/identity/client/internal/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Lcom/microsoft/identity/client/internal/AsyncResult;-><init>(Ljava/lang/Object;Lcom/microsoft/identity/client/exception/MsalException;)V

    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/java/util/ResultFuture;->setResult(Ljava/lang/Object;)V

    return-void
.end method
