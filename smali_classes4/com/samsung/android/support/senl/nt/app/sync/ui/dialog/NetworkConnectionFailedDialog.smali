.class public Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog$TwoButtonNegativeClickListener;,
        Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog$TwoButtonPositiveClickListener;,
        Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog$SingleButtonClickListener;
    }
.end annotation


# static fields
.field public static final IS_RUN_ON_ACTIVITY:Ljava/lang/String; = "RUN_ON_ACTIVITY"

.field private static final REQUEST_CODE:I = 0x4d2

.field private static final RES_ID_BTN_CANCEL:I

.field private static final RES_ID_BTN_OK:I

.field private static final TAG:Ljava/lang/String; = "NT$NetworkConnectionFailedDialog"


# instance fields
.field private mAlertDialog:Landroidx/appcompat/app/AlertDialog;

.field private mConnectionType:I

.field private mContext:Landroid/content/Context;

.field private mRunOnActivity:Z

.field private mSyncType:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->sync_network_dialog_btn_ok:I

    sput v0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;->RES_ID_BTN_OK:I

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->sync_network_dialog_btn_cancel:I

    sput v0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;->RES_ID_BTN_CANCEL:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;->mConnectionType:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;->mRunOnActivity:Z

    return-void
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;)Landroidx/appcompat/app/AlertDialog;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    return-object p0
.end method

.method private cancelImportList()V
    .locals 2

    const-string v0, "NT$NetworkConnectionFailedDialog"

    const-string v1, "cancelImportList()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;->mSyncType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-static {}, Lx0/a;->a()Lx0/a;

    move-result-object v0

    invoke-virtual {v0}, Lx0/a;->b()V

    :cond_0
    return-void
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;Landroidx/appcompat/app/AlertDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method public static bridge synthetic f(Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;->cancelImportList()V

    return-void
.end method

.method public static bridge synthetic g(Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;->networkConnectionResolved(Z)V

    return-void
.end method

.method private getConnectionFailedType(Landroid/content/Intent;)Z
    .locals 6

    const-string v0, "NT$NetworkConnectionFailedDialog"

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v2, "NETWORK_CONNECTION_FAILED_TYPE"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;->mConnectionType:I

    const-string v2, "NETWORK_CONNECTION_SYNC_TYPE"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;->mSyncType:I

    const-string v2, "RUN_ON_ACTIVITY"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;->mRunOnActivity:Z

    const-string p1, "getConnectionFailedType() : %d, %d, runOnActivity(%s)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;->mConnectionType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    iget v3, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;->mSyncType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    iget-boolean v5, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;->mRunOnActivity:Z

    if-eqz v5, :cond_0

    const-string v5, "true"

    goto :goto_0

    :cond_0
    const-string v5, "false"

    :goto_0
    aput-object v5, v2, v3

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :catch_0
    move-exception p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getConnectionFailedType(intent) : Failed with exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return v1
.end method

.method public static bridge synthetic h(Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;->startMoblieDataUsage()V

    return-void
.end method

.method private networkConnectionResolved(Z)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "networkConnectionResolved() - RESOLVE : %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "NT$NetworkConnectionFailedDialog"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper;->cancelNetworkErrNotification()V

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lx0/a;->a()Lx0/a;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;->mConnectionType:I

    iget v1, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;->mSyncType:I

    invoke-virtual {p1, v0, v1}, Lx0/a;->d(II)V

    return-void
.end method

.method private startMoblieDataUsage()V
    .locals 3

    const-string v0, "NT$NetworkConnectionFailedDialog"

    const-string v1, "startMoblieDataUsage()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "android.settings.WIFI_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_0

    const/16 v2, 0x4d2

    invoke-virtual {p0, v1, v2}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    const-string v1, "\t Intent (android.provider.Settings.ACTION_WIFI_SETTINGS)"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    const-string v0, "NT$NetworkConnectionFailedDialog"

    const-string v1, "finish()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;->mRunOnActivity:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public getConnectionType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;->mConnectionType:I

    return v0
.end method

.method public getSyncType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;->mSyncType:I

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const-string p1, "NT$NetworkConnectionFailedDialog"

    const-string p2, "onActivityResult()"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lc3/h;->i(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "\t RE-CONNECT SUCCEED (resolved)"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;->mConnectionType:I

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;->networkConnectionResolved(Z)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;->networkConnectionResolved(Z)V

    const-string p2, "\t RE-CONNECT FAILED"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    iget-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;->mRunOnActivity:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_0
    iput-object p0, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;->mContext:Landroid/content/Context;

    const-string p1, "NT$NetworkConnectionFailedDialog"

    const-string v0, "onCreate()"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/samsung/android/support/senl/nt/app/R$layout;->transparent_activity_main:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;->getConnectionFailedType(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;->mConnectionType:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;->showWarningDialog(I)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedHelper;->getInstance()Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedHelper;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedHelper;->setCurrentDialog(Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;->finish()V

    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "NT$NetworkConnectionFailedDialog"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedHelper;->getInstance()Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedHelper;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedHelper;->setCurrentDialog(Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;)V

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    const-string p1, "NT$NetworkConnectionFailedDialog"

    const-string v0, "onNewIntent()"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public showWarningDialog(I)V
    .locals 10

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "NT$NetworkConnectionFailedDialog"

    const/4 v4, 0x1

    if-eq p1, v1, :cond_5

    const/4 v5, 0x3

    if-ne p1, v5, :cond_1

    goto :goto_1

    :cond_1
    const/16 v6, 0x65

    if-eq p1, v6, :cond_4

    const/16 v6, 0x66

    if-eq p1, v6, :cond_4

    const/16 v6, 0x67

    if-eq p1, v6, :cond_4

    const/16 v6, 0x64

    if-ne p1, v6, :cond_2

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;->mSyncType:I

    if-ne v0, v5, :cond_3

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    const-string p1, "showWarningDialog() : WAN type(%d)"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;->finish()V

    return-void

    :cond_3
    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    const-string p1, "showWarningDialog() : Incorrect type(%d)"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;->networkConnectionResolved(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;->finish()V

    return-void

    :cond_4
    :goto_0
    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;->mContext:Landroid/content/Context;

    sget v6, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;->RES_ID_BTN_OK:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_5
    :goto_1
    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;->mSyncType:I

    if-ne v0, v4, :cond_6

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    const-string p1, "showWarningDialog() : ignore type(%d)"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;->networkConnectionResolved(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;->finish()V

    return-void

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;->mContext:Landroid/content/Context;

    sget v5, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;->RES_ID_BTN_OK:I

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;->mContext:Landroid/content/Context;

    sget v6, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;->RES_ID_BTN_CANCEL:I

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedType;->getInstance()Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedType;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedType;->getResIdTitle(I)I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedType;->getInstance()Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedType;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedType;->getResIdBody(I)I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;

    invoke-direct {v8, p0}, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v6}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v8, v7}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v9, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog$1;

    invoke-direct {v9, p0}, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog$1;-><init>(Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;)V

    invoke-virtual {v8, v9}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v6, v1, v2

    aput-object v7, v1, v4

    const-string v2, "showWarningDialog() : %s, %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog$SingleButtonClickListener;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog$SingleButtonClickListener;-><init>(Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;I)V

    invoke-virtual {v8, v5, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    goto :goto_3

    :cond_7
    new-instance v1, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog$TwoButtonPositiveClickListener;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog$TwoButtonPositiveClickListener;-><init>(Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;I)V

    invoke-virtual {v8, v5, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog$TwoButtonNegativeClickListener;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog$TwoButtonNegativeClickListener;-><init>(Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;I)V

    invoke-virtual {v1, v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    :goto_3
    invoke-virtual {v8}, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog$2;-><init>(Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;->mRunOnActivity:Z

    xor-int/2addr v0, v4

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method
