.class public abstract Lcom/samsung/android/app/notes/sync/account/samsungdevice/a;
.super Lg/a;
.source "SourceFile"


# instance fields
.field public l:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/base/common/sync/IAccountLoginListener;Lg/b;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lg/a;-><init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/base/common/sync/IAccountLoginListener;Lg/b;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/account/samsungdevice/a;->r()V

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public declared-synchronized c()V
    .locals 7

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/account/samsungdevice/a;->q()Landroid/accounts/Account;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-nez v0, :cond_1

    const-string v4, "SA/AccountSamsungLocal"

    const-string/jumbo v5, "updateLoginState() : account is null!"

    invoke-static {v4, v5}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-boolean v4, p0, Lg/a;->i:Z

    if-ne v4, v3, :cond_4

    if-eqz v3, :cond_7

    iget-object v3, p0, Lg/a;->h:Ljava/lang/String;

    iget-object v4, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0, v1}, Lg/a;->e(Z)V

    :goto_1
    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/app/notes/sync/account/samsungdevice/a;->s(Landroid/accounts/Account;Z)V

    goto :goto_3

    :cond_2
    iget-object v0, p0, Lg/a;->g:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_3
    const-string v0, "SA/AccountSamsungLocal"

    const-string v1, "mUserId is empty and call requestAuthInfo() to get GUID!"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/account/samsungdevice/a;->a()V

    goto :goto_3

    :cond_4
    const-string v4, "SA/AccountSamsungLocal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateLoginState : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_5

    const-string v6, "Logged in"

    goto :goto_2

    :cond_5
    const-string v6, "Logged out"

    :goto_2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {p0, v1}, Lg/a;->e(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_7
    :goto_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isLogined()Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/account/samsungdevice/a;->c()V

    iget-boolean v0, p0, Lg/a;->i:Z

    return v0
.end method

.method public l()V
    .locals 0

    return-void
.end method

.method public o()V
    .locals 0

    invoke-virtual {p0}, Lg/a;->n()V

    return-void
.end method

.method public q()Landroid/accounts/Account;
    .locals 5

    const-string v0, "SA/AccountSamsungLocal"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lg/a;->a:Landroid/content/Context;

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v1

    :goto_0
    if-nez v2, :cond_0

    const-string v2, "getSamsungAccount() : manager is null. please check the APK signing!"

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    const-string v0, "com.osp.app.signin"

    invoke-virtual {v2, v0}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    array-length v2, v0

    if-lez v2, :cond_1

    const/4 v1, 0x0

    aget-object v1, v0, v1

    :cond_1
    return-object v1
.end method

.method public r()V
    .locals 0

    invoke-virtual {p0}, Lg/a;->m()V

    return-void
.end method

.method public s(Landroid/accounts/Account;Z)V
    .locals 1

    iget-object p1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-super {p0, v0, p1, p2}, Lg/a;->p(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
