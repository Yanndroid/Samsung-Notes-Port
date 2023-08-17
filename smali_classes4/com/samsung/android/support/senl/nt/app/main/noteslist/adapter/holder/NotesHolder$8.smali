.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/OnHolderTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;->decorateLockNote()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder$8;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder$8;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;->onClick()V

    return-void
.end method

.method public onContextClick()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder$8;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;->onContextClick()Z

    move-result v0

    return v0
.end method

.method public onLongClick()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder$8;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;->onLongClick()Z

    move-result v0

    return v0
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder$8;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;->onTouch(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
