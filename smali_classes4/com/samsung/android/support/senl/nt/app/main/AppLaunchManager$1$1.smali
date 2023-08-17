.class Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector$OnRestoreListener;


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

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$1$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    const-string v0, "AppLaunchManager"

    const-string v1, "restoreDatabase# onFinish"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$1$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$1;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;->c(Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;)Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$1$1$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$1$1$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$1$1;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$1$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$1;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;->m(Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;Ljava/util/Set;)V

    const-string v0, "APP_LAUNCH"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const-string v1, "restore_db"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onStart()V
    .locals 2

    const-string v0, "AppLaunchManager"

    const-string v1, "restoreDatabase# onStart"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
