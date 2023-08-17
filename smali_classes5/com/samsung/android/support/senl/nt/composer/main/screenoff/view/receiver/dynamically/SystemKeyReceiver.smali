.class public Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/receiver/dynamically/SystemKeyReceiver;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mSystemKeyReceiver:Landroid/content/BroadcastReceiver;

.field private mSystemKeyReceiverListener:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/receiver/dynamically/ISystemKeyReceiver;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "SystemKeyReceiver"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/SOLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/receiver/dynamically/SystemKeyReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/receiver/dynamically/SystemKeyReceiver;)Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/receiver/dynamically/ISystemKeyReceiver;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/receiver/dynamically/SystemKeyReceiver;->mSystemKeyReceiverListener:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/receiver/dynamically/ISystemKeyReceiver;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/receiver/dynamically/SystemKeyReceiver;Landroid/content/Intent;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/receiver/dynamically/SystemKeyReceiver;->isAllowedReceiveCase(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/receiver/dynamically/SystemKeyReceiver;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private isAllowedReceiveCase(Landroid/content/Intent;)Z
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/receiver/dynamically/SystemKeyReceiver;->TAG:Ljava/lang/String;

    const-string v0, "isAllowedReceiveCase# intent or action is null"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method private registerSystemKeyReceiver(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/receiver/dynamically/SystemKeyReceiver$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/receiver/dynamically/SystemKeyReceiver$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/receiver/dynamically/SystemKeyReceiver;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/receiver/dynamically/SystemKeyReceiver;->mSystemKeyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public registerReceivers(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/receiver/dynamically/ISystemKeyReceiver;)V
    .locals 0

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/receiver/dynamically/SystemKeyReceiver;->mSystemKeyReceiverListener:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/receiver/dynamically/ISystemKeyReceiver;

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/receiver/dynamically/SystemKeyReceiver;->registerSystemKeyReceiver(Landroid/content/Context;)V

    return-void
.end method

.method public unregisterReceivers(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/receiver/dynamically/SystemKeyReceiver;->mSystemKeyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/receiver/dynamically/SystemKeyReceiver;->mSystemKeyReceiver:Landroid/content/BroadcastReceiver;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/receiver/dynamically/SystemKeyReceiver;->mSystemKeyReceiverListener:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/receiver/dynamically/ISystemKeyReceiver;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    :try_start_1
    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/receiver/dynamically/SystemKeyReceiver;->TAG:Ljava/lang/String;

    const-string v1, "unregisterReceivers# occur exception"

    invoke-static {p1, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/receiver/dynamically/SystemKeyReceiver;->mSystemKeyReceiver:Landroid/content/BroadcastReceiver;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/receiver/dynamically/SystemKeyReceiver;->mSystemKeyReceiverListener:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/receiver/dynamically/ISystemKeyReceiver;

    throw p1
.end method
