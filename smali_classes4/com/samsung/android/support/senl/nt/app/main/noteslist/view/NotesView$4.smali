.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView$Contract;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getModeIndex()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->getModeIndex()I

    move-result v0

    return v0
.end method

.method public getVerticalOffset()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->a(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;)Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->getVerticalOffset()Z

    move-result v0

    return v0
.end method

.method public onNewNote(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->f(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/ModeContract$IFragment;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/ModeContract$IFragment;->onNewNote(Ljava/lang/String;I)V

    return-void
.end method
