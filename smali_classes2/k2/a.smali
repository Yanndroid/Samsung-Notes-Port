.class public Lk2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/scsp/framework/core/identity/AccountInfoSupplier;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Lcom/samsung/android/support/senl/nt/base/common/sync/IAuthInfoReqListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lk2/a;->a:Ljava/lang/String;

    iput-object v0, p0, Lk2/a;->b:Ljava/lang/String;

    new-instance v0, Lk2/a$a;

    invoke-direct {v0, p0}, Lk2/a$a;-><init>(Lk2/a;)V

    iput-object v0, p0, Lk2/a;->c:Lcom/samsung/android/support/senl/nt/base/common/sync/IAuthInfoReqListener;

    return-void
.end method

.method public static bridge synthetic a(Lk2/a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lk2/a;->a:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic b(Lk2/a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lk2/a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    const-string v0, "AccountInfoSupplierImpl"

    const-string v1, "[PAM] requestAccessToken()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lf/a;->m(Landroid/content/Context;)Lf/a;

    move-result-object v0

    iget-object v1, p0, Lk2/a;->c:Lcom/samsung/android/support/senl/nt/base/common/sync/IAuthInfoReqListener;

    invoke-virtual {v0, v1}, Lf/a;->w(Lcom/samsung/android/support/senl/nt/base/common/sync/IAuthInfoReqListener;)V

    return-void
.end method

.method public final d()V
    .locals 2

    const-string v0, "AccountInfoSupplierImpl"

    const-string v1, "[PAM] requestAccessTokenWithExpiredTokenToSamsungAccount()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lf/a;->m(Landroid/content/Context;)Lf/a;

    move-result-object v0

    invoke-virtual {v0}, Lf/a;->x()V

    invoke-virtual {p0}, Lk2/a;->c()V

    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "AccountInfoSupplierImpl"

    const-string v1, "[PAM] setAccountInfo()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lk2/a;->a:Ljava/lang/String;

    iput-object p2, p0, Lk2/a;->b:Ljava/lang/String;

    return-void
.end method

.method public getAccessToken()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lk2/a;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "AccountInfoSupplierImpl"

    if-eqz v0, :cond_0

    const-string v0, "[PAM] getAccessToken() : accessToken is empty!"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "[PAM] getAccessToken()"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lk2/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/CommonUtils;->getAppServiceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lk2/a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AccountInfoSupplierImpl"

    const-string v1, "[PAM] getUserId() : userId is empty!"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lk2/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic has()Z
    .locals 1

    invoke-static {p0}, Lcom/samsung/scsp/framework/core/identity/a;->a(Lcom/samsung/scsp/framework/core/identity/AccountInfoSupplier;)Z

    move-result v0

    return v0
.end method

.method public onUnauthorized()V
    .locals 0

    invoke-virtual {p0}, Lk2/a;->d()V

    return-void
.end method

.method public synthetic signOut()V
    .locals 0

    invoke-static {p0}, Lcom/samsung/scsp/framework/core/identity/a;->b(Lcom/samsung/scsp/framework/core/identity/AccountInfoSupplier;)V

    return-void
.end method

.method public synthetic update()V
    .locals 0

    invoke-static {p0}, Lcom/samsung/scsp/framework/core/identity/a;->c(Lcom/samsung/scsp/framework/core/identity/AccountInfoSupplier;)V

    return-void
.end method
