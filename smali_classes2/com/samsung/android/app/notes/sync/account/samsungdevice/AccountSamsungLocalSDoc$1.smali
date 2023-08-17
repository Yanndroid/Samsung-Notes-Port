.class Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc$1;->this$0:Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    const-string p1, "SA/AccountSamsungLocalSDoc"

    const-string v0, "[SA] onServiceConnected()"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc$1;->this$0:Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;->y(Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;Lcom/msc/sa/aidl/ISAService;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc$1;->this$0:Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;

    invoke-static {v0, v1}, Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;->z(Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc$1;->this$0:Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;->x(Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;I)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc$1;->this$0:Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;

    invoke-static {p2}, Lcom/msc/sa/aidl/ISAService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/msc/sa/aidl/ISAService;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;->y(Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;Lcom/msc/sa/aidl/ISAService;)V

    :try_start_0
    iget-object p2, p0, Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc$1;->this$0:Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;

    invoke-static {p2}, Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;->t(Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;)Lcom/msc/sa/aidl/ISAService;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc$1;->this$0:Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;

    invoke-static {p2}, Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;->t(Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;)Lcom/msc/sa/aidl/ISAService;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc$1;->this$0:Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;

    iget-object v1, v1, Lcom/samsung/android/app/notes/sync/account/samsungdevice/a;->l:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/CommonUtils;->getAppSecretKey()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc$1;->this$0:Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;

    invoke-static {v3}, Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;->u(Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc$1;->this$0:Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;

    invoke-static {v4}, Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;->w(Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;)Lcom/msc/sa/aidl/ISACallback$Stub;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/msc/sa/aidl/ISAService;->registerCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/msc/sa/aidl/ISACallback;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;->z(Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc$1;->this$0:Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;

    invoke-static {p2}, Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;->v(Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    const-string p2, "[SA] mRegistrationCode is null"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc$1;->this$0:Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;

    invoke-static {p2}, Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;->C(Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;)V

    return-void

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc$1;->this$0:Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;

    invoke-static {p2}, Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;->E(Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p2

    if-nez p2, :cond_1

    const-string p2, "[SA] manager is null"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc$1;->this$0:Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;

    const-string v0, "Can\'t access the account manager!"

    invoke-static {p2, v0}, Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;->F(Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v0, "com.osp.app.signin"

    invoke-virtual {p2, v0}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object p2

    if-eqz p2, :cond_2

    array-length p2, p2

    if-lez p2, :cond_2

    iget-object p2, p0, Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc$1;->this$0:Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;

    invoke-static {p2}, Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;->B(Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;)V

    goto :goto_0

    :cond_2
    const-string p2, "[SA] accountArr is empty"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc$1;->this$0:Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;

    const-string v0, "No Samsung Account!"

    invoke-static {p2, v0}, Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;->G(Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string p2, "[SA] mISaService is null"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc$1;->this$0:Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;

    invoke-static {p2}, Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;->D(Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    const-string v0, "[SA] RemoteException occurred!"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc$1;->this$0:Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;

    invoke-virtual {p2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;->H(Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "SA/AccountSamsungLocalSDoc"

    const-string v0, "[SA] onServiceDisconnected()"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc$1;->this$0:Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;->x(Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;I)V

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc$1;->this$0:Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;->y(Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;Lcom/msc/sa/aidl/ISAService;)V

    return-void
.end method
