.class Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/client/IMultipleAccountPublicClientApplication$GetAccountCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication;->getAccount(Ljava/lang/String;)Lcom/microsoft/identity/client/IAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication;

.field public final synthetic val$future:Lcom/microsoft/identity/common/java/util/ResultFuture;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication;Lcom/microsoft/identity/common/java/util/ResultFuture;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication$4;->this$0:Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication;

    iput-object p2, p0, Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication$4;->val$future:Lcom/microsoft/identity/common/java/util/ResultFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/microsoft/identity/client/exception/MsalException;)V
    .locals 3

    iget-object v0, p0, Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication$4;->val$future:Lcom/microsoft/identity/common/java/util/ResultFuture;

    new-instance v1, Lcom/microsoft/identity/client/internal/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Lcom/microsoft/identity/client/internal/AsyncResult;-><init>(Ljava/lang/Object;Lcom/microsoft/identity/client/exception/MsalException;)V

    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/java/util/ResultFuture;->setResult(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/microsoft/identity/client/exception/MsalException;

    invoke-virtual {p0, p1}, Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication$4;->onError(Lcom/microsoft/identity/client/exception/MsalException;)V

    return-void
.end method

.method public onTaskCompleted(Lcom/microsoft/identity/client/IAccount;)V
    .locals 3

    iget-object v0, p0, Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication$4;->val$future:Lcom/microsoft/identity/common/java/util/ResultFuture;

    new-instance v1, Lcom/microsoft/identity/client/internal/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/microsoft/identity/client/internal/AsyncResult;-><init>(Ljava/lang/Object;Lcom/microsoft/identity/client/exception/MsalException;)V

    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/java/util/ResultFuture;->setResult(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onTaskCompleted(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/microsoft/identity/client/IAccount;

    invoke-virtual {p0, p1}, Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication$4;->onTaskCompleted(Lcom/microsoft/identity/client/IAccount;)V

    return-void
.end method
