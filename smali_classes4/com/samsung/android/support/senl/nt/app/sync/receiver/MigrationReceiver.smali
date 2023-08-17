.class public Lcom/samsung/android/support/senl/nt/app/sync/receiver/MigrationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field private static final PATH_EXTRAS:Ljava/lang/String; = "SAVE_PATH"

.field private static final PATH_URIS_EXTRAS:Ljava/lang/String; = "SAVE_PATH_URIS"

.field private static final TAG:Ljava/lang/String; = "SS$MigrationReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private runEntireType(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 6

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x2

    const-string v2, "com.samsung.android.intent.action.REQUEST_RESTORE_SAMSUNGNOTE_SF"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    move v5, v1

    goto :goto_0

    :sswitch_1
    const-string v0, "com.samsung.android.intent.action.REQUEST_RESTORE_SAMSUNGNOTE"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    move v5, v3

    goto :goto_0

    :sswitch_2
    const-string v0, "com.samsung.android.intent.action.REQUEST_BACKUP_SAMSUNGNOTE"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    goto :goto_0

    :cond_2
    move v5, v4

    :goto_0
    const-string p3, "SS$MigrationReceiver"

    packed-switch v5, :pswitch_data_0

    const-string p1, "runEntireType wrong intent"

    invoke-static {p3, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_0
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->isPermissionGrantedWithoutNotice(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "runEntireType Need permission"

    invoke-static {p3, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p3, Landroid/content/Intent;

    const-class v0, Lcom/samsung/android/app/notes/sync/migration/MigrationPermissions;

    invoke-direct {p3, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "SAVE_PATH"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "SAVE_PATH_URIS"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    invoke-virtual {p3, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, p3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_3
    new-instance p1, Lcom/samsung/android/app/notes/sync/migration/b;

    invoke-direct {p1}, Lcom/samsung/android/app/notes/sync/migration/b;-><init>()V

    invoke-virtual {p1, v1, p2}, Lcom/samsung/android/app/notes/sync/migration/b;->a(ILandroid/content/Intent;)V

    goto :goto_1

    :pswitch_1
    new-instance p1, Lcom/samsung/android/app/notes/sync/migration/b;

    invoke-direct {p1}, Lcom/samsung/android/app/notes/sync/migration/b;-><init>()V

    invoke-virtual {p1, v3, p2}, Lcom/samsung/android/app/notes/sync/migration/b;->a(ILandroid/content/Intent;)V

    goto :goto_1

    :pswitch_2
    new-instance p1, Lcom/samsung/android/app/notes/sync/migration/b;

    invoke-direct {p1}, Lcom/samsung/android/app/notes/sync/migration/b;-><init>()V

    invoke-virtual {p1, v4, p2}, Lcom/samsung/android/app/notes/sync/migration/b;->a(ILandroid/content/Intent;)V

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x475b009b -> :sswitch_2
        0x46641da5 -> :sswitch_1
        0x7c97332d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private runInstantByFlowType(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "FLOW_TYPE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BACKUP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/app/notes/sync/migration/b;

    invoke-direct {v0}, Lcom/samsung/android/app/notes/sync/migration/b;-><init>()V

    const/4 v1, 0x3

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/android/app/notes/sync/migration/b;

    invoke-direct {v0}, Lcom/samsung/android/app/notes/sync/migration/b;-><init>()V

    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/notes/sync/migration/b;->b(ILandroid/content/Intent;)V

    return-void
.end method

.method private runInstantType(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "com.samsung.android.intent.action.NOTICE_INSTANT_TASK_CANCELED"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    goto :goto_0

    :sswitch_1
    const-string v0, "com.samsung.android.intent.action.REQUEST_INSTANT_RESTORE"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_2
    const-string v0, "com.samsung.android.intent.action.NOTICE_INSTANT_UPLOAD_DONE"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_3
    const-string v0, "com.samsung.android.intent.action.REQUEST_INSTANT_SNAPSHOT"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    const-string p1, "SS$MigrationReceiver"

    const-string p2, "runInstantType wrong intent"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_0
    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/app/sync/receiver/MigrationReceiver;->runInstantByFlowType(Landroid/content/Intent;)V

    goto :goto_1

    :pswitch_1
    new-instance p3, Lcom/samsung/android/app/notes/sync/migration/b;

    invoke-direct {p3}, Lcom/samsung/android/app/notes/sync/migration/b;-><init>()V

    const/4 v0, 0x4

    invoke-virtual {p3, v0, p2}, Lcom/samsung/android/app/notes/sync/migration/b;->b(ILandroid/content/Intent;)V

    goto :goto_1

    :pswitch_2
    new-instance p3, Lcom/samsung/android/app/notes/sync/migration/b;

    invoke-direct {p3}, Lcom/samsung/android/app/notes/sync/migration/b;-><init>()V

    invoke-virtual {p3, v1, p2}, Lcom/samsung/android/app/notes/sync/migration/b;->b(ILandroid/content/Intent;)V

    :goto_1
    invoke-static {p1}, Lw1/a;->a(Landroid/content/Context;)V

    goto :goto_2

    :pswitch_3
    invoke-static {p1}, Lw1/a;->b(Landroid/content/Context;)V

    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/app/sync/receiver/MigrationReceiver;->runInstantByFlowType(Landroid/content/Intent;)V

    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x2cbe1068 -> :sswitch_3
        -0x24d50a9f -> :sswitch_2
        0x59eaa1a -> :sswitch_1
        0x70fed434 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;->isKMemoPackage(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "SS$MigrationReceiver"

    if-eqz v0, :cond_0

    const-string p1, "onReceive NOT support PostMemo"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/DeviceInfo;->isOtherCorpDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "onReceive NOT support otherCorpDevice"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->getInstance()Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->executeBaseLogics()V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive version/action "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;->getVersionInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "INSTANT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/support/senl/nt/app/sync/receiver/MigrationReceiver;->runInstantType(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/support/senl/nt/app/sync/receiver/MigrationReceiver;->runEntireType(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_4
    :goto_1
    const-string p1, "onReceive intent or action is null."

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
