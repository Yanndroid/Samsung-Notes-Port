.class public Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/CoeditAbsShareHelper$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/CoeditAbsShareHelper;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/CoeditAbsShareHelper;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/CoeditAbsShareHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/CoeditAbsShareHelper$a;->a:Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/CoeditAbsShareHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const-string v0, ""

    const-string v1, "CoeditAbsShareHelper"

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/j;->L()Lcom/samsung/android/app/notes/sync/contentsharing/sessession/j;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->A()Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "checkAuthorization() : SesSession is not connected!"

    invoke-static {v1, v5}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/j;->L()Lcom/samsung/android/app/notes/sync/contentsharing/sessession/j;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->m(I)V

    const/4 v4, 0x1

    :cond_0
    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/j;->L()Lcom/samsung/android/app/notes/sync/contentsharing/sessession/j;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->A()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {}, Lu/b;->c()Lcom/samsung/android/sdk/mobileservice/auth/result/AuthInfoResult;

    move-result-object v5

    if-nez v5, :cond_2

    const-string v5, "Not logged in the samsung account!"

    invoke-static {v1, v5}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/CoeditAbsShareHelper$a;->a:Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/CoeditAbsShareHelper;

    new-instance v6, Ls/d;

    invoke-direct {v6, v0, v3}, Ls/d;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/CoeditAbsShareHelper;->i(Ly1/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/j;->L()Lcom/samsung/android/app/notes/sync/contentsharing/sessession/j;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->n(ILcom/samsung/android/support/senl/nt/base/common/sync/SesUiListener;)V

    :cond_1
    return-void

    :cond_2
    :try_start_1
    invoke-virtual {v5}, Lcom/samsung/android/sdk/mobileservice/auth/result/AuthInfoResult;->getResult()Lcom/samsung/android/sdk/mobileservice/auth/AuthInfo;

    move-result-object v5

    if-nez v5, :cond_3

    const-string v5, "authInfo is null!"

    invoke-static {v1, v5}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/CoeditAbsShareHelper$a;->a:Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/CoeditAbsShareHelper;

    new-instance v6, Ls/d;

    invoke-direct {v6, v0, v3}, Ls/d;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {v5, v6}, Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/CoeditAbsShareHelper;->i(Ly1/a;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v5}, Lcom/samsung/android/sdk/mobileservice/auth/AuthInfo;->getAccountId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/CoeditAbsShareHelper$a;->a:Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/CoeditAbsShareHelper;

    invoke-virtual {v6, v5}, Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/CoeditAbsShareHelper;->j(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v5, "accountId is not valid!"

    invoke-static {v1, v5}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/CoeditAbsShareHelper$a;->a:Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/CoeditAbsShareHelper;

    new-instance v6, Ls/d;

    invoke-direct {v6, v0, v3}, Ls/d;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    const-string v5, "checkAuthorization() : SesSession is not connected!!"

    invoke-static {v1, v5}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/CoeditAbsShareHelper$a;->a:Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/CoeditAbsShareHelper;

    new-instance v6, Ls/d;

    invoke-direct {v6, v0, v3}, Ls/d;-><init>(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    if-eqz v4, :cond_6

    :goto_2
    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/j;->L()Lcom/samsung/android/app/notes/sync/contentsharing/sessession/j;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->n(ILcom/samsung/android/support/senl/nt/base/common/sync/SesUiListener;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v5

    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/CoeditAbsShareHelper$a;->a:Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/CoeditAbsShareHelper;

    new-instance v5, Ls/h;

    invoke-direct {v5, v0, v3}, Ls/h;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v5}, Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/CoeditAbsShareHelper;->i(Ly1/a;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_6

    goto :goto_2

    :cond_6
    :goto_3
    return-void

    :goto_4
    if-eqz v4, :cond_7

    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/j;->L()Lcom/samsung/android/app/notes/sync/contentsharing/sessession/j;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->n(ILcom/samsung/android/support/senl/nt/base/common/sync/SesUiListener;)V

    :cond_7
    throw v0
.end method
