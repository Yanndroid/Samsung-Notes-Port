.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$NoteFragmentBixby2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$NoteFragmentBixby2;->search()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$NoteFragmentBixby2;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$NoteFragmentBixby2;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$NoteFragmentBixby2$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$NoteFragmentBixby2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$NoteFragmentBixby2$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$NoteFragmentBixby2;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$NoteFragmentBixby2;->a(Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$NoteFragmentBixby2;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/common/util/CommonUtil;->isNotAvailableActivity(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$NoteFragmentBixby2$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$NoteFragmentBixby2;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$NoteFragmentBixby2;->b(Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$NoteFragmentBixby2;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->setSearchMode()V

    return-void
.end method
