.class Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$IfStatement;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->getComposerForActionSend()Landroid/app/Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$3;->this$0:Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isMatched(Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$ComposerInfo;)Z
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$3;->this$0:Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->a(Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$ComposerInfo;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$ComposerInfo;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/os/AppTaskCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/os/AppTaskCompat;

    move-result-object v3

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2}, Landroid/app/Activity;->getTaskId()I

    move-result v5

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v5, v2}, Lcom/samsung/android/support/senl/cm/base/framework/os/AppTaskCompat;->isEqualTopActivity(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$ComposerInfo;->a(Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$ComposerInfo;)Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$IComposerResolver;

    move-result-object p1

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v2}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$IComposerResolver;->isEditable()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$IComposerResolver;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$IComposerResolver;->isCoeditNote()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_0
    return v1
.end method
