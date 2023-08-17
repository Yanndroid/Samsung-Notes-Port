.class Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment$IAddonsInstallDialog;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$1;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$1$2;->this$1:Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$1$2;->this$1:Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$1;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;->j(Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$1$2;->this$1:Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$1;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;->a(Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;)Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector;->cancel()Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;->m(Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;Ljava/util/Set;)V

    return-void
.end method

.method public onCancel(Ljava/lang/String;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$1$2;->this$1:Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$1;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;->j(Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$1$2;->this$1:Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$1;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;->a(Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;)Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector;->cancel()Ljava/util/Set;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;->m(Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;Ljava/util/Set;)V

    return-void
.end method

.method public onConfirm(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "restoreDatabase# onConfirm, dialogType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AppLaunchManager"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$1$2;->this$1:Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$1;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;->a(Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;)Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$1$2;->this$1:Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$1;

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;->e(Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;)Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector$OnRestoreListener;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector;->setOnRestoreListener(Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector$OnRestoreListener;)Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector;

    const-string p1, "APP_LAUNCH"

    invoke-static {p1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v1

    const-string v2, "pending_path_set"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$1$2;->this$1:Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$1;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;->a(Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;)Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector;->execute(Ljava/util/Set;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$1$2;->this$1:Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$1;

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;->a(Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;)Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector;->execute()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "restoreDatabase#, restore list is empty"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "restore_db"

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$1$2;->onBackPressed()V

    :cond_1
    :goto_0
    return-void
.end method
