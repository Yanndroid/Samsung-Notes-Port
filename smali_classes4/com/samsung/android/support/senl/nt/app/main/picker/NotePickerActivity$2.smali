.class Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Drawer LiveData onChanged# childCount : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;->getChildCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotesPickerActivity"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;->e(Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;)Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerModel;->updateDrawerData(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;->f(Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;->f(Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;->updateNoteViewByDrawerObserver()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity$2;->onChanged(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;)V

    return-void
.end method
