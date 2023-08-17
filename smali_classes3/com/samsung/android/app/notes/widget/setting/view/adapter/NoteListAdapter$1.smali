.class Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter$ItemRemoveClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter;->onBindViewHolder(Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter$NoteListHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter$1;->this$0:Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemRemoveClick(Landroid/view/View;I)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter$1;->this$0:Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter;

    invoke-static {p1}, Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter;->b(Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter$1;->this$0:Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    iget-object p1, p0, Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter$1;->this$0:Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter;

    invoke-static {p1}, Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter;->a(Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter;)Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter$ItemLayoutHeightListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter$1;->this$0:Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter;

    invoke-static {p1}, Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter;->a(Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter;)Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter$ItemLayoutHeightListener;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter$ItemLayoutHeightListener;->onItemRemoved(I)V

    :cond_0
    return-void
.end method
