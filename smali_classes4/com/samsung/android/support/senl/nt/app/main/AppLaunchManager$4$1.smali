.class Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$4;->getResult(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$4;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$4;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$4$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$4$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$4;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;->c(Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;)Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/common/util/CommonUtil;->isNotAvailableActivity(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "AppLaunchManager"

    const-string v1, "onCheckNewVersion# getResult, badge update"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$4$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$4;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;->c(Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;)Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->toolbar:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/badge/NavigateUpHelper;->updateDrawerIconWithBadge(Landroidx/appcompat/widget/Toolbar;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$4$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$4;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;->b(Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;)Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$IMainView;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$IMainView;->updateDrawerDisplayData()V

    return-void
.end method
