.class Lcom/samsung/android/support/senl/nt/stt/view/STTListView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/stt/view/STTListView;->updatePlayingItemByIndex(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/stt/view/STTListView;

.field public final synthetic val$index:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/stt/view/STTListView;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/stt/view/STTListView$4;->this$0:Lcom/samsung/android/support/senl/nt/stt/view/STTListView;

    iput p2, p0, Lcom/samsung/android/support/senl/nt/stt/view/STTListView$4;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/view/STTListView$4;->this$0:Lcom/samsung/android/support/senl/nt/stt/view/STTListView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/stt/view/STTListView;->d(Lcom/samsung/android/support/senl/nt/stt/view/STTListView;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/stt/view/STTListView$4$1;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/stt/view/STTListView$4;->this$0:Lcom/samsung/android/support/senl/nt/stt/view/STTListView;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/support/senl/nt/stt/view/STTListView$4$1;-><init>(Lcom/samsung/android/support/senl/nt/stt/view/STTListView$4;Landroid/content/Context;)V

    iget v1, p0, Lcom/samsung/android/support/senl/nt/stt/view/STTListView$4;->val$index:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/stt/view/STTListView$4;->this$0:Lcom/samsung/android/support/senl/nt/stt/view/STTListView;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/stt/view/STTListView;->d(Lcom/samsung/android/support/senl/nt/stt/view/STTListView;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/view/STTListView$4;->this$0:Lcom/samsung/android/support/senl/nt/stt/view/STTListView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/stt/view/STTListView;->b(Lcom/samsung/android/support/senl/nt/stt/view/STTListView;)Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
