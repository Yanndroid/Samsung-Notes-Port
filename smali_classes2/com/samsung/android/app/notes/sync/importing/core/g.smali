.class public Lcom/samsung/android/app/notes/sync/importing/core/g;
.super Lcom/samsung/android/app/notes/sync/importing/core/e;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/base/common/sync/IAuthInfoReqListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;->MEMO_SCLOUD:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/notes/sync/importing/core/e;-><init>(Landroid/content/Context;Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;Z)V

    invoke-virtual {p0, p0}, Lcom/samsung/android/app/notes/sync/importing/core/a;->h(Lcom/samsung/android/support/senl/nt/base/common/sync/IAuthInfoReqListener;)V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    monitor-enter p0

    const/4 v0, -0x1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v1, "SAC_0302"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v2

    goto :goto_0

    :pswitch_1
    const-string v1, "SAC_0301"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->a:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    const/16 v2, 0x100

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "errCode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " errMsg = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-virtual {p0, v0, v2, p1, v1}, Lcom/samsung/android/app/notes/sync/importing/core/a;->onImportError(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;ILjava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->a:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "errCode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " errMsg = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :pswitch_data_0
    .packed-switch -0x6be36672
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onReceived(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "MemoCloudImportHelper"

    const-string v1, "onReceived()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lh2/a;->g(Landroid/content/Context;)Lh2/a;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/notes/sync/importing/core/g$a;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/notes/sync/importing/core/g$a;-><init>(Lcom/samsung/android/app/notes/sync/importing/core/g;)V

    invoke-virtual {v0, p1, p2, v1}, Lh2/a;->e(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/base/common/sync/IAuthorizationListener;)Z

    return-void

    :cond_1
    :goto_0
    const-string p1, "onReceived() : userToken or userId is empty!"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->a:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    const/16 p2, 0x100

    const/4 v0, 0x0

    const-string/jumbo v1, "userToken or userId is empty"

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/samsung/android/app/notes/sync/importing/core/a;->onImportError(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;ILjava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method
