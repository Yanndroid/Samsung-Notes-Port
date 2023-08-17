.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapterScheduler$ItemAnimatorFinishedListenerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapterScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ItemAnimatorFinishedListenerImpl"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapterScheduler;


# direct methods
.method private constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapterScheduler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapterScheduler$ItemAnimatorFinishedListenerImpl;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapterScheduler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapterScheduler;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapterScheduler$ItemAnimatorFinishedListenerImpl;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapterScheduler;)V

    return-void
.end method

.method private runPendingDataSetChange()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapterScheduler$ItemAnimatorFinishedListenerImpl;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapterScheduler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapterScheduler;->g(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapterScheduler;Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapterScheduler$ItemAnimatorFinishedListenerImpl;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapterScheduler;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapterScheduler;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapterScheduler;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapterScheduler$ItemAnimatorFinishedListenerImpl$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapterScheduler$ItemAnimatorFinishedListenerImpl$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapterScheduler$ItemAnimatorFinishedListenerImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapterScheduler$ItemAnimatorFinishedListenerImpl;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapterScheduler;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapterScheduler;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapterScheduler;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    return-void
.end method

.method private runPendingItemChanged()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapterScheduler$ItemAnimatorFinishedListenerImpl;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapterScheduler;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapterScheduler;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapterScheduler;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapterScheduler$ItemAnimatorFinishedListenerImpl;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapterScheduler;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapterScheduler;->disableAnimation()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapterScheduler$ItemAnimatorFinishedListenerImpl;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapterScheduler;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapterScheduler;->f(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapterScheduler;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapterScheduler;->j()Ljava/lang/String;

    move-result-object v0

    const-string v1, "runPendingItemChanged#post"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapterScheduler$ItemAnimatorFinishedListenerImpl;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapterScheduler;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapterScheduler;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapterScheduler;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapterScheduler$ItemAnimatorFinishedListenerImpl$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapterScheduler$ItemAnimatorFinishedListenerImpl$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapterScheduler$ItemAnimatorFinishedListenerImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapterScheduler$ItemAnimatorFinishedListenerImpl;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapterScheduler;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapterScheduler;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapterScheduler;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapterScheduler$ChangeInfo;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapterScheduler$ItemAnimatorFinishedListenerImpl;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapterScheduler;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapterScheduler$ChangeInfo;->getPosition()I

    move-result v1

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapterScheduler;->i(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapterScheduler;I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapterScheduler$ItemAnimatorFinishedListenerImpl;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapterScheduler;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapterScheduler;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapterScheduler;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    :goto_1
    return-void
.end method


# virtual methods
.method public onAnimationsFinished()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapterScheduler$ItemAnimatorFinishedListenerImpl;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapterScheduler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapterScheduler;->h(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapterScheduler;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapterScheduler$ItemAnimatorFinishedListenerImpl;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapterScheduler$ItemAnimatorFinishedListenerImpl;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapterScheduler;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapterScheduler;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapterScheduler;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapterScheduler$ItemAnimatorFinishedListenerImpl;->runPendingDataSetChange()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapterScheduler$ItemAnimatorFinishedListenerImpl;->runPendingItemChanged()V

    return-void
.end method
