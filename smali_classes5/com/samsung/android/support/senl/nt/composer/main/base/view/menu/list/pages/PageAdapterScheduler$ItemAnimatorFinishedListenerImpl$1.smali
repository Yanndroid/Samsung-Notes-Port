.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapterScheduler$ItemAnimatorFinishedListenerImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapterScheduler$ItemAnimatorFinishedListenerImpl;->runPendingDataSetChange()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapterScheduler$ItemAnimatorFinishedListenerImpl;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapterScheduler$ItemAnimatorFinishedListenerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapterScheduler$ItemAnimatorFinishedListenerImpl$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapterScheduler$ItemAnimatorFinishedListenerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapterScheduler;->j()Ljava/lang/String;

    move-result-object v0

    const-string v1, "runPendingDataSetChange#post"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapterScheduler$ItemAnimatorFinishedListenerImpl$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapterScheduler$ItemAnimatorFinishedListenerImpl;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapterScheduler$ItemAnimatorFinishedListenerImpl;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapterScheduler;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapterScheduler;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapterScheduler;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapterScheduler$ItemAnimatorFinishedListenerImpl$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapterScheduler$ItemAnimatorFinishedListenerImpl;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapterScheduler$ItemAnimatorFinishedListenerImpl;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapterScheduler;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapterScheduler;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapterScheduler;)Landroidx/recyclerview/widget/DefaultItemAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapterScheduler$ItemAnimatorFinishedListenerImpl$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapterScheduler$ItemAnimatorFinishedListenerImpl;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapterScheduler$ItemAnimatorFinishedListenerImpl;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapterScheduler;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapterScheduler;->notifyDataSetChanged()V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapterScheduler;->j()Ljava/lang/String;

    move-result-object v0

    const-string v1, "runPendingDataSetChange#post: skip"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
