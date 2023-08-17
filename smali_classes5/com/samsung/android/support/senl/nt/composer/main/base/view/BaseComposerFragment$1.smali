.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/view/system/WindowManagerWrapper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangedDeviceState(Landroidx/window/layout/FoldingFeature;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->changeDeviceState(Landroid/app/Activity;Landroidx/window/layout/FoldingFeature;)V

    :cond_0
    return-void
.end method
