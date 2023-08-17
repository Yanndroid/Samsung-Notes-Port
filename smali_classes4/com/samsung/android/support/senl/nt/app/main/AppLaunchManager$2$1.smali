.class Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/updater/restore/DuplicatedDatabaseDetector$OnArrangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$2;

.field public final synthetic val$dbProgressDialog:Landroidx/fragment/app/DialogFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$2;Landroidx/fragment/app/DialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$2$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$2;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$2$1;->val$dbProgressDialog:Landroidx/fragment/app/DialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    const-string v0, "AppLaunchManager"

    const-string v1, "deleteDuplicatedDB# finish()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$2$1;->val$dbProgressDialog:Landroidx/fragment/app/DialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method public onStart()V
    .locals 3

    const-string v0, "AppLaunchManager"

    const-string v1, "deleteDuplicatedDB# start()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$2$1;->val$dbProgressDialog:Landroidx/fragment/app/DialogFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/fragment/app/DialogFragment;->setCancelable(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$2$1;->val$dbProgressDialog:Landroidx/fragment/app/DialogFragment;

    check-cast v0, Lcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils$ProgressDialogFragment;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$2$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$2;

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;->c(Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;)Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "Delete_Duplicate_DB"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils$ProgressDialogFragment;->showAllowingStateLoss(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
