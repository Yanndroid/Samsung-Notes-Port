.class Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;->restoreDatabase()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "APP_LAUNCH"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v1

    const-string v2, "restore_db"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "AppLaunchManager"

    const-string v2, "restoreDatabase"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;->a(Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;)Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;

    new-instance v3, Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;->c(Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;)Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector;-><init>(Landroid/content/Context;)V

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;->f(Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector;)V

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;->e(Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;)Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector$OnRestoreListener;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;

    new-instance v3, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$1$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$1$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$1;)V

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;->h(Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector$OnRestoreListener;)V

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;->d(Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;)Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment$IAddonsInstallDialog;

    move-result-object v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;

    new-instance v3, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$1$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$1$2;-><init>(Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$1;)V

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;->g(Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment$IAddonsInstallDialog;)V

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;->d(Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;)Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment$IAddonsInstallDialog;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;->n(Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment$IAddonsInstallDialog;)V

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "pending_path_set"

    invoke-virtual {v0, v3, v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "restoreDatabase# restart pendingPath"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;->a(Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;)Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;->e(Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;)Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector$OnRestoreListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector;->setOnRestoreListener(Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector$OnRestoreListener;)Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector;->execute(Ljava/util/Set;)Z

    :cond_3
    return-void
.end method
