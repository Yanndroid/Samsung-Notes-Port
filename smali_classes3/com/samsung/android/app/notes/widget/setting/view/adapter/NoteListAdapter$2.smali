.class Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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

.field public final synthetic val$holder:Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter$NoteListHolder;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter;Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter$NoteListHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter$2;->this$0:Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter;

    iput-object p2, p0, Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter$2;->val$holder:Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter$NoteListHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/16 p2, 0xd3

    if-ne p1, p2, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter$2;->this$0:Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter;

    invoke-static {p1}, Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter;->c(Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter;)Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter$OnStartDragListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter$2;->this$0:Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter;

    invoke-static {p1}, Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter;->c(Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter;)Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter$OnStartDragListener;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter$2;->val$holder:Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter$NoteListHolder;

    invoke-interface {p1, p2}, Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter$OnStartDragListener;->onStartDrag(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
