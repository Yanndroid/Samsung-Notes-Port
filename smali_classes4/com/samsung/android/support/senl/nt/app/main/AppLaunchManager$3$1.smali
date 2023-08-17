.class Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/settings/common/dialog/AllowAppPermissionDialogFragment$AllowAppPermissionDialogCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$3;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$3;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$3$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppPermissionCancel()V
    .locals 2

    const-string v0, "AppLaunchManager"

    const-string v1, "onAppPermissionCancel."

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$3$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$3;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;->c(Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;)Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onAppPermissionConfirm()V
    .locals 2

    const-string v0, "AppLaunchManager"

    const-string v1, "onAppPermissionConfirm."

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$3$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$3;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;->c(Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;)Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lc3/q;->m(Landroid/content/Context;Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$3$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$3;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$3;->a(Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$3;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$3$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$3;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;->k(Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$3$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$3;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;->l(Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;)V

    return-void
.end method
