.class Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/client/IMultipleAccountPublicClientApplication$RemoveAccountCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication;->removeAccount(Lcom/microsoft/identity/client/IAccount;)Z
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

    iput-object p1, p0, Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication$6;->this$0:Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication;

    iput-object p2, p0, Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication$6;->val$future:Lcom/microsoft/identity/common/java/util/ResultFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/microsoft/identity/client/exception/MsalException;)V
    .locals 3
    .param p1    # Lcom/microsoft/identity/client/exception/MsalException;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication$6;->val$future:Lcom/microsoft/identity/common/java/util/ResultFuture;

    new-instance v1, Lcom/microsoft/identity/client/internal/AsyncResult;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v1, v2, p1}, Lcom/microsoft/identity/client/internal/AsyncResult;-><init>(Ljava/lang/Object;Lcom/microsoft/identity/client/exception/MsalException;)V

    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/java/util/ResultFuture;->setResult(Ljava/lang/Object;)V

    return-void
.end method

.method public onRemoved()V
    .locals 4

    iget-object v0, p0, Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication$6;->val$future:Lcom/microsoft/identity/common/java/util/ResultFuture;

    new-instance v1, Lcom/microsoft/identity/client/internal/AsyncResult;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/microsoft/identity/client/internal/AsyncResult;-><init>(Ljava/lang/Object;Lcom/microsoft/identity/client/exception/MsalException;)V

    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/java/util/ResultFuture;->setResult(Ljava/lang/Object;)V

    return-void
.end method
