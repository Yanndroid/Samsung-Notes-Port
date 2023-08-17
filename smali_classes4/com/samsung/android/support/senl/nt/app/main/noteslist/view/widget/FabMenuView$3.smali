.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;->a(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;)Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;->a(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;)Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;->a(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;)Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;->c(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;Z)V

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;->d(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;Z)V

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;->setNoteFabVisibility(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Z)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;->b(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->setIsScrolling(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;->b(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->postNotifyDataSetChanged()V

    :cond_1
    return-void
.end method
