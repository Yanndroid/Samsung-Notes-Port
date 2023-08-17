.class public abstract Lg/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/c;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lg/b;

.field public c:Lcom/samsung/android/support/senl/nt/base/common/sync/IAccountLoginListener;

.field public d:Ljava/lang/Boolean;

.field public final e:Landroid/content/SharedPreferences;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Z

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/base/common/sync/IAccountLoginListener;Lg/b;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lg/a;->d:Ljava/lang/Boolean;

    const/4 v0, 0x0

    iput-object v0, p0, Lg/a;->f:Ljava/lang/String;

    iput-object v0, p0, Lg/a;->g:Ljava/lang/String;

    iput-object v0, p0, Lg/a;->h:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lg/a;->i:Z

    iput-object v0, p0, Lg/a;->j:Ljava/lang/String;

    iput-object v0, p0, Lg/a;->k:Ljava/lang/String;

    iput-object p1, p0, Lg/a;->a:Landroid/content/Context;

    iput-object p2, p0, Lg/a;->c:Lcom/samsung/android/support/senl/nt/base/common/sync/IAccountLoginListener;

    iput-object p3, p0, Lg/a;->b:Lg/b;

    const-string p2, "LoginInfo"

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lg/a;->e:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public d()V
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lg/a;->d:Ljava/lang/Boolean;

    return-void
.end method

.method public e(Z)V
    .locals 6

    const-string v0, "SA/AccountSamsung"

    const-string v1, "setLogout"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lg/a;->i:Z

    if-nez v1, :cond_0

    const-string p1, "already logged out!"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lg/a;->i:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lg/a;->f:Ljava/lang/String;

    iput-object v2, p0, Lg/a;->g:Ljava/lang/String;

    iget-object v3, p0, Lg/a;->e:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "UID"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v3, "setLogout() : set mUserId empty"

    invoke-static {v0, v3}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lg/a;->h:Ljava/lang/String;

    iput-object v2, p0, Lg/a;->j:Ljava/lang/String;

    iput-object v2, p0, Lg/a;->k:Ljava/lang/String;

    invoke-virtual {p0}, Lg/a;->l()V

    invoke-virtual {p0}, Lg/a;->o()V

    if-eqz p1, :cond_1

    iget-object p1, p0, Lg/a;->c:Lcom/samsung/android/support/senl/nt/base/common/sync/IAccountLoginListener;

    invoke-interface {p1, v1}, Lcom/samsung/android/support/senl/nt/base/common/sync/IAccountLoginListener;->onLoginInfoReceived(Z)V

    :cond_1
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/a;->j:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/a;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getAccessToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lg/a;->g:Ljava/lang/String;

    invoke-static {v0}, Lorg/jsoup/helper/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "SA/AccountSamsung"

    const-string v1, "getUserId() : mUserId is empty and try to get it!"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lg/a;->e:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    const-string v3, "UID"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jsoup/helper/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "getUserId() : mUserId is still empty!"

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v1

    :cond_1
    iget-object v0, p0, Lg/a;->g:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/a;->k:Ljava/lang/String;

    return-object v0
.end method

.method public i()V
    .locals 3

    const-string v0, "SA/AccountSamsung"

    const-string v1, "Failed to bind service"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lg/a;->b:Lg/b;

    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-interface {v0, v2, v1}, Lg/b;->onFailed(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleFailure : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SA/AccountSamsung"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lg/a;->b:Lg/b;

    if-eqz v0, :cond_0

    const-string v1, "0"

    invoke-interface {v0, v1, p1}, Lg/b;->onFailed(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public k(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleFailure : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SA/AccountSamsung"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lg/a;->b:Lg/b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lg/b;->onFailed(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public abstract l()V
.end method

.method public m()V
    .locals 3

    iget-object v0, p0, Lg/a;->e:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-string v2, "ISLOGIN"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lg/a;->i:Z

    iget-object v0, p0, Lg/a;->e:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    const-string v2, "Email"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lg/a;->h:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public n()V
    .locals 3

    iget-object v0, p0, Lg/a;->e:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-boolean v1, p0, Lg/a;->i:Z

    const-string v2, "ISLOGIN"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lg/a;->h:Ljava/lang/String;

    const-string v2, "Email"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public abstract o()V
.end method

.method public p(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    const-string p3, "SA/AccountSamsung"

    const-string v0, "setLogin"

    invoke-static {p3, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lg/a;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/a;->h:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "already logged in!"

    invoke-static {p3, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p1}, Lorg/jsoup/helper/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iput-object p1, p0, Lg/a;->g:Ljava/lang/String;

    iget-object p1, p0, Lg/a;->e:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object v0, p0, Lg/a;->g:Ljava/lang/String;

    const-string v1, "UID"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setLogin() : mUserId = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lg/a;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->pii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo p1, "uId is empty and call requestAuthInfo() to get GUID"

    invoke-static {p3, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0}, Lg/c;->a()V

    :goto_0
    iput-object p2, p0, Lg/a;->h:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lg/a;->i:Z

    invoke-virtual {p0}, Lg/a;->o()V

    iget-object p2, p0, Lg/a;->c:Lcom/samsung/android/support/senl/nt/base/common/sync/IAccountLoginListener;

    invoke-interface {p2, p1}, Lcom/samsung/android/support/senl/nt/base/common/sync/IAccountLoginListener;->onLoginInfoReceived(Z)V

    return-void
.end method
