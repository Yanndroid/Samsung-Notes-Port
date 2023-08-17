.class Lcom/samsung/android/support/senl/nt/app/main/PhoneMainView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/PhoneMainView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/PhoneMainView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/PhoneMainView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/PhoneMainView$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/PhoneMainView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/PhoneMainView$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/PhoneMainView;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/MainView;->mMainActivity:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/common/util/CommonUtil;->isNotAvailableActivity(Landroid/app/Activity;)Z

    move-result v0

    const-string v1, "PhoneMainView"

    if-eqz v0, :cond_0

    const-string v0, "add TAG_ATTACH_DRAWER_ON_RESUME"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostResumeManager;->getInstance()Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostResumeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/PhoneMainView$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/PhoneMainView;

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/app/main/MainView;->mMainActivity:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;->getPostResumeToken()Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostResumeManager$Token;

    move-result-object v1

    const/16 v2, 0x65

    invoke-virtual {v0, v1, v2, p0}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostResumeManager;->addLogic(Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostResumeManager$Token;ILjava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/PhoneMainView$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/PhoneMainView;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/MainView;->mMainActivity:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v2, "PhoneDrawerFragment"

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/PhoneMainView$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/PhoneMainView;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/MainView;->mMainActivity:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$id;->drawer_fragment_container:I

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/main/PhoneMainView$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/PhoneMainView;

    invoke-static {v4}, Lcom/samsung/android/support/senl/nt/app/main/PhoneMainView;->a(Lcom/samsung/android/support/senl/nt/app/main/PhoneMainView;)Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;

    move-result-object v4

    invoke-virtual {v0, v3, v4, v2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDrawerFragmentRunnable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
