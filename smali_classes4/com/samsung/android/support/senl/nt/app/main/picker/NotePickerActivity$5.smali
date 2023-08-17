.class Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/DialogViewContract$IUnlockConfirmDialog;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;->showUnlockedConfirmDialog(Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;

.field public final synthetic val$mainEntryParam:Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity$5;->this$0:Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity$5;->val$mainEntryParam:Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public unLock()V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity$5;->this$0:Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;->g(Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sdoc_uuid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity$5;->val$mainEntryParam:Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->getFolderUuid()Ljava/lang/String;

    move-result-object v1

    const-string v2, "category_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity$5;->val$mainEntryParam:Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->getGuid()Ljava/lang/String;

    move-result-object v1

    const-string v2, "lock_account_guid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity$5;->val$mainEntryParam:Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->getFilePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "doc_path"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity$5;->this$0:Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;->f(Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity$5;->this$0:Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;->g(Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/16 v3, 0x6c

    invoke-virtual {v1, v3, v0, v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;->unlockNote(ILandroid/content/Intent;[Ljava/lang/String;)V

    return-void
.end method
