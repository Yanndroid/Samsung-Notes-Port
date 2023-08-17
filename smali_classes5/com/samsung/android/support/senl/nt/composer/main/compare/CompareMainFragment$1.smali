.class Lcom/samsung/android/support/senl/nt/composer/main/compare/CompareMainFragment$1;
.super Landroidx/activity/OnBackPressedCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/compare/CompareMainFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/compare/CompareMainFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/compare/CompareMainFragment;Z)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/compare/CompareMainFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/compare/CompareMainFragment;

    invoke-direct {p0, p2}, Landroidx/activity/OnBackPressedCallback;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public handleOnBackPressed()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/compare/CompareMainFragment;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "handleOnBackPressed#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/compare/CompareMainFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/compare/CompareMainFragment;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/compare/CompareMainFragment;->a(Lcom/samsung/android/support/senl/nt/composer/main/compare/CompareMainFragment;)Lcom/samsung/android/support/senl/nt/composer/main/compare/CompareMainFragment$AbsCompareLayoutManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/compare/CompareMainFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/compare/CompareMainFragment;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/compare/CompareMainFragment;->a(Lcom/samsung/android/support/senl/nt/composer/main/compare/CompareMainFragment;)Lcom/samsung/android/support/senl/nt/composer/main/compare/CompareMainFragment$AbsCompareLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/compare/CompareMainFragment$AbsCompareLayoutManager;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/compare/CompareMainFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/compare/CompareMainFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method
