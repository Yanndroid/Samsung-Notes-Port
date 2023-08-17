.class Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView$4;
.super Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->initItemMoveHelper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView$4;->this$0:Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x3

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    move-result p1

    return p1
.end method

.method public isLongPressDragEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p1

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p2

    const/4 p3, -0x1

    if-eq p1, p3, :cond_1

    if-ne p2, p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView$4;->this$0:Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;

    invoke-static {p3}, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->b(Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;)Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetListSettingPresenter;

    move-result-object p3

    invoke-virtual {p3}, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetListSettingPresenter;->getModel()Lcom/samsung/android/app/notes/widget/setting/model/WidgetListSettingModel;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/samsung/android/app/notes/widget/setting/model/WidgetListSettingModel;->swapItem(II)V

    iget-object p3, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView$4;->this$0:Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;

    invoke-static {p3}, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->a(Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;)Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    iget-object p3, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView$4;->this$0:Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;

    invoke-static {p3}, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->c(Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;)Lcom/samsung/android/app/notes/widget/setting/view/adapter/PreviewListAdapter;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    iget-object p1, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView$4;->this$0:Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;

    invoke-static {p1}, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->d(Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method
