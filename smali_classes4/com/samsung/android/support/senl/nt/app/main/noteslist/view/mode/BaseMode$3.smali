.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->onContextClick(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;

.field public final synthetic val$isMenuClicked:[Z

.field public final synthetic val$noteData:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

.field public final synthetic val$uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;[ZLjava/lang/String;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode$3;->val$isMenuClicked:[Z

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode$3;->val$uuid:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode$3;->val$noteData:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode$3;->val$isMenuClicked:[Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode$3;->val$uuid:Ljava/lang/String;

    invoke-virtual {v0, v3, v2, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;->setCheck(Ljava/lang/String;ZZ)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->move:I

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->showFolderPickerDialog()V

    goto/16 :goto_0

    :cond_0
    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->convert:I

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;->showConvertNotesDialog()V

    goto/16 :goto_0

    :cond_1
    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->lock:I

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->setLockNotes()V

    goto/16 :goto_0

    :cond_2
    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->unlock:I

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->setUnlockNotes()V

    goto/16 :goto_0

    :cond_3
    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->share:I

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode$3;->val$noteData:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->isSdoc()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;->shareOldNotes()V

    goto/16 :goto_0

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;->showExportOptionPopup(Z)V

    goto/16 :goto_0

    :cond_5
    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->delete:I

    if-ne p1, v0, :cond_6

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;->showDeleteDialog()V

    goto :goto_0

    :cond_6
    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->save:I

    if-ne p1, v0, :cond_7

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {p1, v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;->showExportOptionPopup(Z)V

    goto :goto_0

    :cond_7
    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->duplicate:I

    if-ne p1, v0, :cond_8

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;->duplicateToDevice()V

    goto :goto_0

    :cond_8
    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->secure_folder:I

    if-ne p1, v0, :cond_a

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode$3;->val$noteData:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getCorrupted()I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->isWarning(I)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mContext:Landroid/content/Context;

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->base_string_failed_to_load_image:I

    invoke-static {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;II)V

    goto :goto_0

    :cond_9
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getCheckNotesCountInfo()Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckNotesCountInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckNotesCountInfo;->getLockedNotesCount()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->moveToSecureFolder(I)V

    goto :goto_0

    :cond_a
    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->color:I

    if-ne p1, v0, :cond_b

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    new-instance v0, Ljava/util/ArrayList;

    new-array v3, v2, [Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode$3;->val$uuid:Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->showChangeColorDialog(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_b
    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->rename:I

    if-ne p1, v0, :cond_c

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->showFolderRenameDialog()V

    :goto_0
    return v2

    :cond_c
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode$3;->val$uuid:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;->setCheck(Ljava/lang/String;ZZ)V

    return v1
.end method
