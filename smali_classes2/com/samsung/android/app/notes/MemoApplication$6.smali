.class Lcom/samsung/android/app/notes/MemoApplication$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/notes/MemoApplication;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/app/notes/MemoApplication;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/MemoApplication;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/MemoApplication$6;->this$0:Lcom/samsung/android/app/notes/MemoApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v0, "MemoApplication"

    const-string v1, "init TAG_MEMO_APPLICATION_SIDE_SETUP"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/content/ClipboardManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/content/ClipboardManagerCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/notes/MemoApplication$6;->this$0:Lcom/samsung/android/app/notes/MemoApplication;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/content/ClipboardManagerCompat;->init(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/MemoApplication$6;->this$0:Lcom/samsung/android/app/notes/MemoApplication;

    const-string v1, "APP_LAUNCH"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "first_time_use"

    const/4 v3, 0x1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/notes/MemoApplication$6;->this$0:Lcom/samsung/android/app/notes/MemoApplication;

    invoke-static {v0}, Lcom/samsung/android/app/notes/MemoApplication;->a(Lcom/samsung/android/app/notes/MemoApplication;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/notes/control/NotificationChannelManager;->cleanNotificationChannels(Landroid/content/Context;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/data/DataUpdateManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/data/DataUpdateManager;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/notes/trash/EmptyTrashNotifier;

    invoke-direct {v1}, Lcom/samsung/android/app/notes/trash/EmptyTrashNotifier;-><init>()V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/data/DataUpdateManager;->addObserver(Lcom/samsung/android/support/senl/nt/base/common/data/DataUpdateManager$DataUpdateObserver;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/notes/MemoApplication$6;->this$0:Lcom/samsung/android/app/notes/MemoApplication;

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/app/notes/MemoApplication$6;->this$0:Lcom/samsung/android/app/notes/MemoApplication;

    invoke-virtual {v4}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.samsung.android.app.notes.disable.BR.com.samsung.pen.INSERT"

    invoke-virtual {v0, v1, v4, v5, v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;->getMetaData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/notes/MemoApplication$6;->this$0:Lcom/samsung/android/app/notes/MemoApplication;

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/notes/receiver/SpenEventBroadcastReceiverSwitcher;->getComponentEnabledSetting(Landroid/content/Context;)I

    move-result v0

    if-eq v3, v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/notes/MemoApplication$6;->this$0:Lcom/samsung/android/app/notes/MemoApplication;

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/notes/receiver/SpenEventBroadcastReceiverSwitcher;->enableSpenEventBroadcastReceiver(Landroid/content/Context;)V

    :cond_1
    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/lock/utils/LockBackupUtil;->backupLockInfo()V

    return-void
.end method
