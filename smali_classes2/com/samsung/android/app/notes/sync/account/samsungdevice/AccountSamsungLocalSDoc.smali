.class public Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;
.super Lcom/samsung/android/app/notes/sync/account/samsungdevice/a;
.source "SourceFile"


# instance fields
.field public m:I

.field public n:Lcom/msc/sa/aidl/ISAService;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:Lcom/msc/sa/aidl/ISACallback$Stub;

.field public r:J

.field public s:J

.field public t:Ljava/lang/Object;

.field public u:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/base/common/sync/IAccountLoginListener;Lg/b;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/notes/sync/account/samsungdevice/a;-><init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/base/common/sync/IAccountLoginListener;Lg/b;)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;->m:I

    const-wide/16 p2, 0x0

    iput-wide p2, p0, Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;->r:J

    iput-wide p2, p0, Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;->s:J

    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;->t:Ljava/lang/Object;

    new-instance p2, Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc$1;-><init>(Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;)V

    iput-object p2, p0, Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;->u:Landroid/content/ServiceConnection;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/CommonUtils;->getAppServiceId()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/notes/sync/account/samsungdevice/a;->l:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;->p:Ljava/lang/String;

    new-instance p1, Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc$2;-><init>(Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;)V

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;->q:Lcom/msc/sa/aidl/ISACallback$Stub;

    return-void
.end method

.method public static bridge synthetic A(Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;IZLandroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;->L(IZLandroid/os/Bundle;)V

    return-void
.end method

.method public static bridge synthetic B(Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;)V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;->O()V

    return-void
.end method

.method public static synthetic C(Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;)V
    .locals 0

    invoke-virtual {p0}, Lg/a;->i()V

    return-void
.end method

.method public static synthetic D(Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;)V
    .locals 0

    invoke-virtual {p0}, Lg/a;->i()V

    return-void
.end method

.method public static synthetic E(Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lg/a;->a:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic F(Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lg/a;->j(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic G(Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lg/a;->j(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic H(Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lg/a;->j(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic t(Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;)Lcom/msc/sa/aidl/ISAService;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;->n:Lcom/msc/sa/aidl/ISAService;

    return-object p0
.end method

.method public static bridge synthetic u(Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;->p:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic v(Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;->o:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic w(Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;)Lcom/msc/sa/aidl/ISACallback$Stub;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;->q:Lcom/msc/sa/aidl/ISACallback$Stub;

    return-object p0
.end method

.method public static bridge synthetic x(Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;->m:I

    return-void
.end method

.method public static bridge synthetic y(Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;Lcom/msc/sa/aidl/ISAService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;->n:Lcom/msc/sa/aidl/ISAService;

    return-void
.end method

.method public static bridge synthetic z(Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;->o:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final I()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;->J()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lg/a;->i()V

    :cond_0
    return-void
.end method

.method public final J()Z
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;->t:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;->N()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    monitor-exit v0

    return v2

    :cond_0
    iget v1, p0, Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;->m:I

    if-eqz v1, :cond_1

    const-string v1, "SA/AccountSamsungLocalSDoc"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SA] connectSamsungAccountService() : request to unbind and bind, prvServiceBinding = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;->m:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lg/a;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;->u:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v3, "SA/AccountSamsungLocalSDoc"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[SA] connectSamsungAccountService() : fail to unbind = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;->n:Lcom/msc/sa/aidl/ISAService;

    goto :goto_1

    :cond_1
    const-string v1, "SA/AccountSamsungLocalSDoc"

    const-string v3, "[SA] connectSamsungAccountService() : request to bind"

    invoke-static {v1, v3}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.msc.action.samsungaccount.REQUEST_SERVICE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.osp.app.signin"

    const-string v4, "com.msc.sa.service.RequestService"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iput v2, p0, Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;->m:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;->s:J

    iget-object v3, p0, Lg/a;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;->u:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v1, v4, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public K()V
    .locals 6

    const-string v0, "SA/AccountSamsungLocalSDoc"

    const-string v1, "[SA] disConnectSamsungAccountService()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;->t:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;->o:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;->n:Lcom/msc/sa/aidl/ISAService;

    if-eqz v3, :cond_0

    invoke-interface {v3, v1}, Lcom/msc/sa/aidl/ISAService;->unregisterCallback(Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v3, "SA/AccountSamsungLocalSDoc"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[SA] disConnectSamsungAccountService() : fail to unregister = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    iput-object v2, p0, Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;->o:Ljava/lang/String;

    :cond_1
    const-string v1, "SA/AccountSamsungLocalSDoc"

    const-string v3, "[SA] disConnectSamsungAccountService() : request to unbind"

    invoke-static {v1, v3}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v1, p0, Lg/a;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;->u:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v1

    :try_start_4
    const-string v3, "SA/AccountSamsungLocalSDoc"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[SA] disConnectSamsungAccountService() : fail to unbind = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iput-object v2, p0, Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;->n:Lcom/msc/sa/aidl/ISAService;

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;->m:I

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-string v0, "SA/AccountSamsungLocalSDoc"

    const-string v1, "[SA] disConnectSamsungAccountService() finish"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v1
.end method

.method public final L(IZLandroid/os/Bundle;)V
    .locals 2

    const-string p1, ""

    const-string v0, "SA/AccountSamsungLocalSDoc"

    if-eqz p2, :cond_3

    const-string p2, "[SA] handleAccessTokenResponse : AccessToken received!"

    invoke-static {v0, p2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_2

    const-string p2, "access_token"

    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lg/a;->f:Ljava/lang/String;

    invoke-static {p2}, Lorg/jsoup/helper/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string/jumbo p1, "user_id"

    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lg/a;->g:Ljava/lang/String;

    invoke-static {p1}, Lorg/jsoup/helper/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lg/a;->e:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object p2, p0, Lg/a;->g:Ljava/lang/String;

    const-string v1, "UID"

    invoke-interface {p1, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string p1, "[SA] handleAccessTokenResponse : set mUserId"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "[SA] handleAccessTokenResponse : mUserId is empty!"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string p1, "cc"

    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lg/a;->j:Ljava/lang/String;

    const-string p1, "auth_server_url"

    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lg/a;->k:Ljava/lang/String;

    iget-object p1, p0, Lg/a;->b:Lg/b;

    if-eqz p1, :cond_5

    iget-object p2, p0, Lg/a;->f:Ljava/lang/String;

    iget-object p3, p0, Lg/a;->g:Ljava/lang/String;

    iget-object v0, p0, Lg/a;->j:Ljava/lang/String;

    invoke-interface {p1, p2, p3, v0}, Lg/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    const-string p2, "[SA] handleAccessTokenResponse : access token is empty!"

    invoke-static {v0, p2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p2, p0, Lg/a;->d:Ljava/lang/Boolean;

    const-string p2, "access token is empty"

    goto :goto_1

    :cond_2
    const-string p2, "[SA] handleAccessTokenResponse : resultData is empty!"

    invoke-static {v0, p2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p2, p0, Lg/a;->d:Ljava/lang/Boolean;

    const-string p2, "resultData is empty"

    goto :goto_1

    :cond_3
    const-string p2, "[SA] handleAccessTokenResponse : AccessToken error!"

    invoke-static {v0, p2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    iput-object p2, p0, Lg/a;->f:Ljava/lang/String;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p2, p0, Lg/a;->d:Ljava/lang/Boolean;

    if-eqz p3, :cond_4

    const-string p1, "error_code"

    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "error_message"

    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_4
    const-string p2, "[SA] handleAccessTokenResponse : no resultData!"

    invoke-static {v0, p2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "requestAccessToken error"

    :goto_1
    invoke-virtual {p0, p1, p2}, Lg/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public final M()Z
    .locals 7

    iget-wide v0, p0, Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;->r:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const-string v2, "SA/AccountSamsungLocalSDoc"

    if-nez v0, :cond_0

    const-string v0, "[SA] isAccessTokenRefreshTime() : first time!"

    :goto_0
    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;->r:J

    sub-long/2addr v3, v5

    const-wide/32 v5, 0x2932e00

    cmp-long v0, v3, v5

    if-lez v0, :cond_1

    const-string v0, "[SA] isAccessTokenRefreshTime() : expired!"

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final N()Z
    .locals 4

    iget v0, p0, Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;->m:I

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;->s:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7530

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SA] isBindingNeeded() : false, isServiceBinding = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;->m:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", et = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SA/AccountSamsungLocalSDoc"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final O()V
    .locals 7

    const-string v0, "SA/AccountSamsungLocalSDoc"

    const-string v1, "[SA] requestAccessToken()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "user_id"

    const-string v3, "auth_server_url"

    const-string v4, "login_id"

    const-string v5, "mcc"

    const-string v6, "cc"

    filled-new-array {v2, v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "additional"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v2, "scope"

    const-string v3, "galaxystore.openapi"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lg/a;->f:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lg/a;->d:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;->M()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    iget-object v2, p0, Lg/a;->f:Ljava/lang/String;

    const-string v3, "expired_access_token"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SA] requestAccessToken : expired access token = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lg/a;->f:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "empty"

    goto :goto_0

    :cond_1
    const-string v3, "XXX"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;->r:J

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v2, p0, Lg/a;->d:Ljava/lang/Boolean;

    :cond_2
    iget v2, p0, Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;->m:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;->n:Lcom/msc/sa/aidl/ISAService;

    if-eqz v2, :cond_3

    const/16 v0, 0x3e8

    iget-object v3, p0, Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;->o:Ljava/lang/String;

    invoke-interface {v2, v0, v3, v1}, Lcom/msc/sa/aidl/ISAService;->requestAccessToken(ILjava/lang/String;Landroid/os/Bundle;)Z

    goto :goto_1

    :cond_3
    const-string v1, "[SA] requestAccessToken() : mISaService is null!"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v1, "[SA] requestAccessToken() : mBound is false!"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;->I()V

    :goto_1
    return-void
.end method

.method public a()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;->I()V

    return-void
.end method

.method public b()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;->K()V

    return-void
.end method
