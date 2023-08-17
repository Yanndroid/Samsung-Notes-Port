.class Lcom/samsung/android/support/senl/nt/composer/main/screenon/view/ScreenOnFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/screenon/view/ScreenOnFragment;->initializeResizeButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenon/view/ScreenOnFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/screenon/view/ScreenOnFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenon/view/ScreenOnFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenon/view/ScreenOnFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenon/view/ScreenOnFragment;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onClick# resizeView"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenon/view/ScreenOnFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenon/view/ScreenOnFragment;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/CommonUtil;->isSos()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenon/view/ScreenOnFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenon/view/ScreenOnFragment;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenon/view/ScreenOnFragment;->b(Lcom/samsung/android/support/senl/nt/composer/main/screenon/view/ScreenOnFragment;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenon/view/ScreenOnFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenon/view/ScreenOnFragment;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenon/view/ScreenOnFragment;->access$000(Lcom/samsung/android/support/senl/nt/composer/main/screenon/view/ScreenOnFragment;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenon/view/ScreenOnFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenon/view/ScreenOnFragment;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenon/view/ScreenOnFragment;->access$100(Lcom/samsung/android/support/senl/nt/composer/main/screenon/view/ScreenOnFragment;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenon/view/ScreenOnFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenon/view/ScreenOnFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->onDestroy(Landroid/app/Activity;ZZ)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenon/view/ScreenOnFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenon/view/ScreenOnFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :goto_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenon/view/ScreenOnFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenon/view/ScreenOnFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string v1, "composer_instanceState"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenon/view/ScreenOnFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenon/view/ScreenOnFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenon/util/ScreenOnUtils;->getScreenOnInfo(Landroid/content/Context;)Landroid/app/ActivityOptions;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenon/view/ScreenOnFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenon/view/ScreenOnFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenon/view/ScreenOnFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenon/view/ScreenOnFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$anim;->screenon_resize_enter:I

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$anim;->screenon_resize_exit:I

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_1
    return-void
.end method
