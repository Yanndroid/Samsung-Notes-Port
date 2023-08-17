.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/LayoutStyleDialogFragment$Contract;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager$9;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNewNote(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager$9;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager;->h(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getNotesView()Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IView;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IView;->onNewNote(Ljava/lang/String;I)V

    return-void
.end method
