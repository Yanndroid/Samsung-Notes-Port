.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/SwipeRefreshView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/SwipeRefreshView;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/SwipeRefreshView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/SwipeRefreshView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/SwipeRefreshView$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/SwipeRefreshView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/SwipeRefreshView$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/SwipeRefreshView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/SwipeRefreshView;->a(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/SwipeRefreshView;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/SwipeRefreshView$Contract;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/SwipeRefreshView$Contract;->getMode()Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IMode;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IMode;->onSwipeRefresh()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/SwipeRefreshView$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/SwipeRefreshView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/SwipeRefreshView;->c(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/SwipeRefreshView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/SwipeRefreshView$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/SwipeRefreshView;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/SwipeRefreshView;->b(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/SwipeRefreshView;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/SwipeRefreshView$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/SwipeRefreshView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/SwipeRefreshView;->d(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/SwipeRefreshView;)Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    :goto_0
    return-void
.end method
