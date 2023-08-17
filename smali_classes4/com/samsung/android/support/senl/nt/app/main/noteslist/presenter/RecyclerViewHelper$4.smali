.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$4;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;->setLayoutManager(IILandroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;

.field public final synthetic val$notesSpan:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;

    iput p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$4;->val$notesSpan:I

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 1

    if-ltz p1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;->f(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;)Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;->f(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;)Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p1

    const/16 v0, 0x20

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    iget p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$4;->val$notesSpan:I

    return p1

    :cond_2
    :goto_0
    iget p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$4;->val$notesSpan:I

    return p1
.end method
