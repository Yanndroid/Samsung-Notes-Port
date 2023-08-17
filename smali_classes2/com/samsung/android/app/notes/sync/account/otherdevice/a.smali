.class public Lcom/samsung/android/app/notes/sync/account/otherdevice/a;
.super Lg/a;
.source "SourceFile"


# instance fields
.field public l:J

.field public m:Ljava/lang/String;

.field public n:J

.field public o:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/base/common/sync/IAccountLoginListener;Lg/b;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lg/a;-><init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/base/common/sync/IAccountLoginListener;Lg/b;)V

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/samsung/android/app/notes/sync/account/otherdevice/a;->l:J

    const/4 p3, 0x0

    iput-object p3, p0, Lcom/samsung/android/app/notes/sync/account/otherdevice/a;->m:Ljava/lang/String;

    iput-wide p1, p0, Lcom/samsung/android/app/notes/sync/account/otherdevice/a;->n:J

    iput-object p3, p0, Lcom/samsung/android/app/notes/sync/account/otherdevice/a;->o:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/account/otherdevice/a;->r()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    const-string v0, "SA/AccountSamsungWeb"

    const-string v1, "requestAuthInfo()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lg/a;->b:Lg/b;

    iget-object v1, p0, Lg/a;->f:Ljava/lang/String;

    iget-object v2, p0, Lg/a;->g:Ljava/lang/String;

    iget-object v3, p0, Lg/a;->j:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lg/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 2

    const-string v0, "SA/AccountSamsungWeb"

    const-string v1, "cancelAuthInfo()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c()V
    .locals 14

    const-string v0, "SA/AccountSamsungWeb"

    const-string/jumbo v1, "updateLoginState"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lg/a;->i:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lg/a;->f:Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lg/a;->g:Ljava/lang/String;

    if-nez v1, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-wide v3, p0, Lcom/samsung/android/app/notes/sync/account/otherdevice/a;->l:J

    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/app/notes/sync/account/otherdevice/a;->q(J)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-wide v3, p0, Lcom/samsung/android/app/notes/sync/account/otherdevice/a;->n:J

    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/app/notes/sync/account/otherdevice/a;->q(J)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "updateLoginState Logout isExpired(mRefreshTokenExpireSec)"

    :goto_0
    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lg/a;->e(Z)V

    return-void

    :cond_2
    new-instance v1, Lcom/samsung/android/app/notes/sync/account/otherdevice/TokenRefreshTask;

    invoke-direct {v1}, Lcom/samsung/android/app/notes/sync/account/otherdevice/TokenRefreshTask;-><init>()V

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/app/notes/sync/account/otherdevice/a;->o:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/app/notes/sync/account/otherdevice/a;->m:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/CommonUtils;->getAppServiceId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v4, v5, v6}, Lcom/samsung/android/app/notes/sync/account/otherdevice/TokenRefreshTask;->makeURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v4

    new-array v5, v2, [Ljava/net/HttpURLConnection;

    aput-object v4, v5, v3

    invoke-virtual {v1, v5}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    check-cast v1, Lcom/samsung/android/app/notes/sync/account/otherdevice/TokenRefreshTask$a;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Token "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/app/notes/sync/account/otherdevice/TokenRefreshTask$a;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->s(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/android/app/notes/sync/account/otherdevice/TokenRefreshTask$a;->a()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v6, v1, Lcom/samsung/android/app/notes/sync/account/otherdevice/TokenRefreshTask$a;->a:Ljava/lang/String;

    iget-object v7, p0, Lg/a;->g:Ljava/lang/String;

    iget-wide v8, v1, Lcom/samsung/android/app/notes/sync/account/otherdevice/TokenRefreshTask$a;->b:J

    iget-object v10, v1, Lcom/samsung/android/app/notes/sync/account/otherdevice/TokenRefreshTask$a;->c:Ljava/lang/String;

    iget-wide v11, v1, Lcom/samsung/android/app/notes/sync/account/otherdevice/TokenRefreshTask$a;->d:J

    iget-object v13, p0, Lcom/samsung/android/app/notes/sync/account/otherdevice/a;->o:Ljava/lang/String;

    move-object v5, p0

    invoke-virtual/range {v5 .. v13}, Lcom/samsung/android/app/notes/sync/account/otherdevice/a;->t(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v2

    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to handle the fresh token : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    if-nez v3, :cond_4

    const-string v1, "ERROR refreshtoken fail"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lg/a;->e(Z)V

    :cond_4
    return-void

    :cond_5
    :goto_2
    const-string/jumbo v1, "updateLoginState Logout (mAccessToken == null || mUserId == null)"

    goto :goto_0
.end method

.method public isLogined()Z
    .locals 1

    iget-object v0, p0, Lg/a;->f:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lg/a;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/account/otherdevice/a;->c()V

    iget-boolean v0, p0, Lg/a;->i:Z

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public l()V
    .locals 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/app/notes/sync/account/otherdevice/a;->l:J

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/app/notes/sync/account/otherdevice/a;->m:Ljava/lang/String;

    iput-wide v0, p0, Lcom/samsung/android/app/notes/sync/account/otherdevice/a;->n:J

    return-void
.end method

.method public o()V
    .locals 4

    invoke-virtual {p0}, Lg/a;->n()V

    iget-object v0, p0, Lg/a;->e:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/base/common/sync/EncryptUtil;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/base/common/sync/EncryptUtil;-><init>()V

    iget-object v2, p0, Lg/a;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/sync/EncryptUtil;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "AccessToken"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/account/otherdevice/a;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/sync/EncryptUtil;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "RefreshToken"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lg/a;->g:Ljava/lang/String;

    const-string v2, "UID"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-wide v1, p0, Lcom/samsung/android/app/notes/sync/account/otherdevice/a;->l:J

    const-string v3, "ExpireSec"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    iget-wide v1, p0, Lcom/samsung/android/app/notes/sync/account/otherdevice/a;->n:J

    const-string v3, "RefreshTokenExpireSec"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/account/otherdevice/a;->o:Ljava/lang/String;

    const-string v2, "AuthServerUrl"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public final q(J)Z
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0xe10

    add-long/2addr v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentSec = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " expireSec = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " remain = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v3, p1, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SA/AccountSamsungWeb"

    invoke-static {v3, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long p1, v0, p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public r()V
    .locals 6

    invoke-virtual {p0}, Lg/a;->m()V

    iget-object v0, p0, Lg/a;->e:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/samsung/android/support/senl/nt/base/common/sync/EncryptUtil;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/base/common/sync/EncryptUtil;-><init>()V

    iget-object v1, p0, Lg/a;->e:Landroid/content/SharedPreferences;

    const-string v2, "AccessToken"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/sync/EncryptUtil;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lg/a;->f:Ljava/lang/String;

    iget-object v1, p0, Lg/a;->e:Landroid/content/SharedPreferences;

    const-string v2, "RefreshToken"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/sync/EncryptUtil;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/account/otherdevice/a;->m:Ljava/lang/String;

    iget-object v0, p0, Lg/a;->e:Landroid/content/SharedPreferences;

    const-string v1, "UID"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lg/a;->g:Ljava/lang/String;

    iget-object v0, p0, Lg/a;->e:Landroid/content/SharedPreferences;

    const-string v1, "ExpireSec"

    const-wide/16 v4, -0x1

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/notes/sync/account/otherdevice/a;->l:J

    iget-object v0, p0, Lg/a;->e:Landroid/content/SharedPreferences;

    const-string v1, "RefreshTokenExpireSec"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/notes/sync/account/otherdevice/a;->n:J

    iget-object v0, p0, Lg/a;->e:Landroid/content/SharedPreferences;

    const-string v1, "AuthServerUrl"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/account/otherdevice/a;->o:Ljava/lang/String;

    iget-object v1, p0, Lg/a;->f:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lg/a;->g:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lg/a;->h:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/account/otherdevice/a;->m:Ljava/lang/String;

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lg/a;->i:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lg/a;->e(Z)V

    :cond_1
    return-void
.end method

.method public s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lg/a;->f:Ljava/lang/String;

    iput-object p2, p0, Lg/a;->g:Ljava/lang/String;

    iput-object p3, p0, Lg/a;->h:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    add-long/2addr p1, p4

    iput-wide p1, p0, Lcom/samsung/android/app/notes/sync/account/otherdevice/a;->l:J

    iput-object p6, p0, Lcom/samsung/android/app/notes/sync/account/otherdevice/a;->m:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    div-long/2addr p1, v0

    add-long/2addr p1, p7

    iput-wide p1, p0, Lcom/samsung/android/app/notes/sync/account/otherdevice/a;->n:J

    iput-object p9, p0, Lcom/samsung/android/app/notes/sync/account/otherdevice/a;->o:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lg/a;->i:Z

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/account/otherdevice/a;->o()V

    return-void
.end method

.method public t(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WEB setToken "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SA/AccountSamsungWeb"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->s(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lg/a;->f:Ljava/lang/String;

    iput-object p2, p0, Lg/a;->g:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    add-long/2addr p1, p3

    iput-wide p1, p0, Lcom/samsung/android/app/notes/sync/account/otherdevice/a;->l:J

    iput-object p5, p0, Lcom/samsung/android/app/notes/sync/account/otherdevice/a;->m:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    div-long/2addr p1, v0

    add-long/2addr p1, p6

    iput-wide p1, p0, Lcom/samsung/android/app/notes/sync/account/otherdevice/a;->n:J

    iput-object p8, p0, Lcom/samsung/android/app/notes/sync/account/otherdevice/a;->o:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/account/otherdevice/a;->o()V

    return-void
.end method
