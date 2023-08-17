.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter$8$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ExternalAccessCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter$8;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter$8;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter$8$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filtered(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter$8$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter$8;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter$8;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    const-string v0, "duplicateToDeviceFailed empty"

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;->duplicateToDeviceFailed(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter$8$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter$8;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter$8;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;->g(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;ZLjava/util/List;)V

    :goto_0
    return-void
.end method
