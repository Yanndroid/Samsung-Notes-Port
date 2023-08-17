.class public Lcom/samsung/android/support/senl/nt/app/account/AccountHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "AccountHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAccountConfirmIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    const-string v0, "AccountHelper"

    const-string v1, "getAccountConfirmIntent()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lf/a;->m(Landroid/content/Context;)Lf/a;

    move-result-object p0

    invoke-virtual {p0}, Lf/a;->j()Lcom/samsung/android/app/notes/sync/account/base/AccountSamsungType;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/app/notes/sync/account/base/AccountSamsungType;->WEB:Lcom/samsung/android/app/notes/sync/account/base/AccountSamsungType;

    if-eq p0, v0, :cond_1

    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.osp.app.signin"

    const-string v1, "com.osp.app.signin.AccountView"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/CommonUtils;->getAppServiceId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "client_id"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/CommonUtils;->getAppSecretKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/CommonUtils;->getAppSecretKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "client_secret"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const-string v0, "OSP_VER"

    const-string v1, "OSP_02"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "account_mode"

    const-string v1, "ACCOUNT_VERIFY"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public static getLoginForLockIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/support/senl/nt/app/account/SamsungAccountLoginForLockActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static getLoginIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3

    invoke-static {p0}, Lf/a;->m(Landroid/content/Context;)Lf/a;

    move-result-object v0

    invoke-virtual {v0}, Lf/a;->j()Lcom/samsung/android/app/notes/sync/account/base/AccountSamsungType;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/notes/sync/account/base/AccountSamsungType;->WEB:Lcom/samsung/android/app/notes/sync/account/base/AccountSamsungType;

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/support/senl/nt/app/account/SamsungAccountPrimaryLoginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.osp.app.signin.action.ADD_SAMSUNG_ACCOUNT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/CommonUtils;->getAppServiceId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "client_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/CommonUtils;->getAppSecretKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/CommonUtils;->getAppSecretKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "client_secret"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "mypackage"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "OSP_VER"

    const-string v1, "OSP_02"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "MODE"

    const-string v1, "ADD_ACCOUNT"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    return-object v0
.end method
