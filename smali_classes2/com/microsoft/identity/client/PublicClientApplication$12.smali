.class Lcom/microsoft/identity/client/PublicClientApplication$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/common/java/commands/CommandCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/identity/client/PublicClientApplication;->generateSignedHttpRequest(Lcom/microsoft/identity/client/IAccount;Lcom/microsoft/identity/client/PoPAuthenticationScheme;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/microsoft/identity/common/java/commands/CommandCallback<",
        "Lcom/microsoft/identity/common/java/result/GenerateShrResult;",
        "Lcom/microsoft/identity/common/java/exception/BaseException;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/identity/client/PublicClientApplication;

.field public final synthetic val$future:Lcom/microsoft/identity/common/java/util/ResultFuture;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/client/PublicClientApplication;Lcom/microsoft/identity/common/java/util/ResultFuture;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/client/PublicClientApplication$12;->this$0:Lcom/microsoft/identity/client/PublicClientApplication;

    iput-object p2, p0, Lcom/microsoft/identity/client/PublicClientApplication$12;->val$future:Lcom/microsoft/identity/common/java/util/ResultFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    return-void
.end method

.method public onError(Lcom/microsoft/identity/common/java/exception/BaseException;)V
    .locals 3
    .param p1    # Lcom/microsoft/identity/common/java/exception/BaseException;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplication$12;->val$future:Lcom/microsoft/identity/common/java/util/ResultFuture;

    new-instance v1, Lcom/microsoft/identity/client/internal/AsyncResult;

    iget-object v2, p0, Lcom/microsoft/identity/client/PublicClientApplication$12;->this$0:Lcom/microsoft/identity/client/PublicClientApplication;

    invoke-static {v2, p1}, Lcom/microsoft/identity/client/PublicClientApplication;->access$300(Lcom/microsoft/identity/client/PublicClientApplication;Lcom/microsoft/identity/common/java/exception/BaseException;)Lcom/microsoft/identity/client/exception/MsalException;

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Lcom/microsoft/identity/client/internal/AsyncResult;-><init>(Ljava/lang/Object;Lcom/microsoft/identity/client/exception/MsalException;)V

    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/java/util/ResultFuture;->setResult(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/microsoft/identity/common/java/exception/BaseException;

    invoke-virtual {p0, p1}, Lcom/microsoft/identity/client/PublicClientApplication$12;->onError(Lcom/microsoft/identity/common/java/exception/BaseException;)V

    return-void
.end method

.method public onTaskCompleted(Lcom/microsoft/identity/common/java/result/GenerateShrResult;)V
    .locals 3
    .param p1    # Lcom/microsoft/identity/common/java/result/GenerateShrResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplication$12;->val$future:Lcom/microsoft/identity/common/java/util/ResultFuture;

    new-instance v1, Lcom/microsoft/identity/client/internal/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/microsoft/identity/client/internal/AsyncResult;-><init>(Ljava/lang/Object;Lcom/microsoft/identity/client/exception/MsalException;)V

    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/java/util/ResultFuture;->setResult(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onTaskCompleted(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/microsoft/identity/common/java/result/GenerateShrResult;

    invoke-virtual {p0, p1}, Lcom/microsoft/identity/client/PublicClientApplication$12;->onTaskCompleted(Lcom/microsoft/identity/common/java/result/GenerateShrResult;)V

    return-void
.end method
