.class Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;->deleteDuplicatedDB()V
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

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils;->showProgressDialogFragment()Landroidx/fragment/app/DialogFragment;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/updater/restore/DuplicatedDatabaseDetector;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;->c(Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;)Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/support/senl/nt/app/updater/restore/DuplicatedDatabaseDetector;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$2$1;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$2$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$2;Landroidx/fragment/app/DialogFragment;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/app/updater/restore/DuplicatedDatabaseDetector;->setOnArrangeListener(Lcom/samsung/android/support/senl/nt/app/updater/restore/DuplicatedDatabaseDetector$OnArrangeListener;)Lcom/samsung/android/support/senl/nt/app/updater/restore/DuplicatedDatabaseDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/updater/restore/DuplicatedDatabaseDetector;->execute()Z

    return-void
.end method
