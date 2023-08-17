.class public Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;
.super Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;
.source "SourceFile"


# static fields
.field private static final KEY_NOTE_OPEN_TYPE:Ljava/lang/String; = "key_note_open_type"

.field private static final KEY_SELECTED_FOLDER_UUID:Ljava/lang/String; = "folder_uuid"

.field private static final KEY_SELECTED_UUID:Ljava/lang/String; = "note_uuid"

.field private static final OPEN_TYPE_NEW_NOTE:I = 0x1

.field private static final OPEN_TYPE_OPENED_NOTE:I = 0x2

.field private static final OPEN_TYPE_PICK_DEFAULT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "NotesPickerActivity"


# instance fields
.field private mCaller:I

.field private final mInitializeRunnable:Ljava/lang/Runnable;

.field private mMimeType:Ljava/lang/String;

.field private mModel:Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerModel;

.field private mNewMemoDirectlyDone:Z

.field private mNoteOpenType:I

.field private mNotesFragment:Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;

.field private mSelectedFolderUUID:Ljava/lang/String;

.field private mSelectedUuid:Ljava/lang/String;

.field private mWidgetId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;->mInitializeRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;)Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerModel;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;->mModel:Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerModel;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;->mNotesFragment:Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;->mSelectedUuid:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;->openNoteDirectly()V

    return-void
.end method

.method public static bridge synthetic i(Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;->shareSDocToComposer()Z

    move-result p0

    return p0
.end method

.method private isShareIntent(Landroid/content/Intent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private isWidgetIntent(Landroid/content/Intent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "widget.MEMO_PICK"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "widget.MEMO_PICK_FROM_NOTE_LIST"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private onNoteSelectedFromShare(Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;)V
    .locals 6

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->getLockType()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNoteSelectedFromShare# lockType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NotesPickerActivity"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;->mSelectedUuid:Ljava/lang/String;

    const-string v4, "sdoc_uuid"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->getGuid()Ljava/lang/String;

    move-result-object v3

    const-string v4, "lock_account_guid"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x5

    if-ne v0, v5, :cond_0

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;->mNotesFragment:Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;

    const/16 v0, 0x65

    new-array v2, v4, [Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;->mSelectedUuid:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p1, v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;->verifyLockedNote(ILandroid/content/Intent;[Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/LockUtils;->isLockedOtherDocType(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->getModeIndex()I

    move-result p1

    const-string v0, "mode"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;->mNotesFragment:Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;

    const/16 v0, 0x6e

    new-array v2, v4, [Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;->mSelectedUuid:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p1, v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;->verifyLockedNote(ILandroid/content/Intent;[Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Lcom/samsung/android/support/senl/nt/app/nativecomposer/ComposerActivity;

    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const p1, 0x10008000

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->base_string_failed_to_load_image:I

    invoke-static {p0, v0, v4}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;II)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNoteSelectedFromShare# e : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method private onNoteSelectedFromWidget(Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;)V
    .locals 6

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->getLockType()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNoteSelectedFromWidget# lockType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NotesPickerActivity"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;->mSelectedUuid:Ljava/lang/String;

    iget v4, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;->mWidgetId:I

    int-to-long v4, v4

    invoke-static {v1, v3, v4, v5}, Lcom/samsung/android/app/notes/widget/AppWidgetUtils;->isAvailableToAddWidget(Landroid/content/Context;Ljava/lang/String;J)Z

    move-result v1

    if-nez v1, :cond_0

    const-string p1, "onNoteSelectedFromWidget# not availableToAddWidget"

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/notes/widget/util/WidgetUtils;->showWidgetAlreadyPinToast(Landroid/content/Context;)V

    goto :goto_1

    :cond_0
    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;->showUnlockedConfirmDialog(Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;)V

    goto :goto_1

    :cond_1
    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/LockUtils;->isLockedOtherDocType(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v0, 0x6

    invoke-static {v0, p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/IntentFactory;->makeIntent(ILandroid/app/Activity;Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;)Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;->mNotesFragment:Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;

    const/16 v2, 0x6e

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;->mSelectedUuid:Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-virtual {v0, v2, p1, v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;->verifyLockedNote(ILandroid/content/Intent;[Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "widget_setting_action_pick"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;->mSelectedUuid:Ljava/lang/String;

    const-string v1, "note_uuid"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;->mSelectedUuid:Ljava/lang/String;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;->mWidgetId:I

    invoke-static {p0, v0, v1}, Lcom/samsung/android/app/notes/widget/broadcast/WidgetBroadcast;->sendPickWidgetBroadcast(Landroid/content/Context;Ljava/lang/String;I)V

    :goto_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_1
    return-void
.end method

.method private openNoteDirectly()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "openNoteDirectly# NoteOpenType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;->mNoteOpenType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", NewMemoDirectlyDone : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;->mNewMemoDirectlyDone:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotesPickerActivity"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;->mNoteOpenType:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;->sendToComposer()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openNoteDirectly# OPEN_TYPE_OPENED_NOTE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;->mNewMemoDirectlyDone:Z

    if-nez v0, :cond_3

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$MyFolders;->UUID:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;->onNewNote(Ljava/lang/String;I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private sendToComposer()Z
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;->mMimeType:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "application/sdoc"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->getComposerForActionSend()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    const-string v2, "action_send_addition"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    sget-object v0, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$MyFolders;->UUID:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;->onNewNote(Ljava/lang/String;I)V

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const v4, 0x20000001

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v4, "BixbyAction"

    const-string v5, "AddContentToEditingNote"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/access/composer/ComposerAccessHandler;->getCreateNoteActivityClass()Ljava/lang/Class;

    move-result-object v4

    if-nez v4, :cond_3

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->getInstance()Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->executeBaseLogic(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/access/composer/ComposerAccessHandler;->getCreateNoteActivityClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/os/AppTaskCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/os/AppTaskCompat;

    move-result-object v4

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v2}, Landroid/app/Activity;->getTaskId()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/support/senl/cm/base/framework/os/AppTaskCompat;->getAppTask(Landroid/content/Context;I)Landroid/app/ActivityManager$AppTask;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v0, v6}, Landroid/app/ActivityManager$AppTask;->startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_1

    :cond_4
    :goto_0
    move v1, v3

    :goto_1
    if-eqz v1, :cond_5

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_5
    :goto_2
    return v3
.end method

.method private setTheme(Landroid/content/Intent;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;->isShareIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "action_send_addition"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->getComposerForActionSend()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;->isWidgetIntent(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-lt p1, v0, :cond_2

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTranslucent(Z)Z

    :cond_2
    sget p1, Lcom/samsung/android/support/senl/nt/app/R$style;->AppMainThemeNoChunking:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setTheme(I)V

    return-void
.end method

.method private shareSDocToComposer()Z
    .locals 6

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shareSDocToComposer# action : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NotesPickerActivity"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;->isShareIntent(Landroid/content/Intent;)Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    return v3

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/StorageUtils;->isAvailableMemoryForNewMemo()Z

    move-result v1

    const/4 v4, 0x1

    if-nez v1, :cond_2

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->not_enough_space_content_for_open:I

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->isSecBrandAsGalaxy()Z

    move-result v2

    if-eqz v2, :cond_1

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$string;->composer_save_to_image_dir_galaxy:I

    goto :goto_0

    :cond_1
    sget v2, Lcom/samsung/android/support/senl/nt/app/R$string;->composer_save_to_image_dir:I

    :goto_0
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity$3;-><init>(Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;)V

    invoke-static {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils;->showNotEnoughStorageDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)Landroidx/appcompat/app/AlertDialog;

    return v3

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;->mModel:Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerModel;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v1, v5, v0}, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerModel;->hasOnlySDocShare(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "shareSDocToComposer# start OpaqueDocOpenTriggerActivity"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/samsung/android/support/senl/nt/app/trigger/OpaqueDocOpenTriggerActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return v4

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;->mModel:Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerModel;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerModel;->importSdocHandler(Landroid/content/Context;Landroid/content/Intent;)V

    return v3
.end method

.method private showUnlockedConfirmDialog(Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;)V
    .locals 4

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/UnlockedConfirmDialog;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/UnlockConfirmDialogHelper;

    sget-object v2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/UnlockConfirmDialogHelper$Caller;->PICKER:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/UnlockConfirmDialogHelper$Caller;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3, v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/UnlockConfirmDialogHelper;-><init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/UnlockConfirmDialogHelper$Caller;IZ)V

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity$5;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity$5;-><init>(Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/UnlockedConfirmDialog;-><init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/UnlockConfirmDialogHelper;Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/DialogViewContract$IUnlockConfirmDialog;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/UnlockedConfirmDialog;->show()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult# requestCode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", resultCode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotesPickerActivity"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;->mInitializeRunnable:Ljava/lang/Runnable;

    invoke-static {p1, p2, v0}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->onActivityResult(IILjava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;->mNotesFragment:Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;->onActivityResultFromLockManager(IILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x7

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/app/common/NotesConstants;->getMainListRequestCode(II)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    const/4 p1, -0x1

    if-ne p2, p1, :cond_9

    const-string p1, "sdoc_uuid"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "doc_path"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;->mCaller:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_5

    const/4 p2, 0x2

    if-eq v0, p2, :cond_3

    const/16 p2, 0x8

    if-eq v0, p2, :cond_2

    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_2

    :cond_2
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;->mNotesFragment:Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;->getCheckedNotesCount()I

    move-result p2

    const/16 p3, 0xa

    if-ge p2, p3, :cond_7

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;->mNotesFragment:Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;->addCheckedNote(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;->mNotesFragment:Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;->getNoteData(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

    move-result-object p2

    if-eqz p2, :cond_4

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;-><init>()V

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;->setMainListEntry(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;)Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;

    move-result-object p1

    goto :goto_1

    :cond_4
    new-instance p2, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;

    invoke-direct {p2}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;-><init>()V

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;->setUuid(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;->setFilePath(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;->setTitle(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;->setLastModifiedAt(J)Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;

    move-result-object p1

    :goto_1
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;->build()Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/support/senl/nt/app/main/common/task/ShareToOtherAppsTask;

    invoke-virtual {p0}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;->mMimeType:Ljava/lang/String;

    invoke-direct {p2, p0, p1, p3, v0}, Lcom/samsung/android/support/senl/nt/app/main/common/task/ShareToOtherAppsTask;-><init>(Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;Ljava/lang/String;Ljava/lang/String;)V

    new-array p1, v1, [Ljava/lang/Void;

    invoke-virtual {p2, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_2

    :cond_5
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    if-eqz p3, :cond_6

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "widget_setting_action_pick"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "note_uuid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "note_file_path"

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_6
    invoke-virtual {p0, p2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0

    :cond_7
    :goto_2
    return-void

    :cond_8
    const/16 v0, 0x12

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/app/common/NotesConstants;->getMainListRequestCode(II)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_9
    iget p1, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;->mNoteOpenType:I

    if-eqz p1, :cond_a

    iput v1, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;->mNoteOpenType:I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_a
    return-void

    :cond_b
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;->mNotesFragment:Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;->onActivityResultAfterVerify(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    const-string v0, "NotesFragment"

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;->onBackPressed(Ljava/lang/String;)Z

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p1, p0, v0}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->controllIndicatorBar(Landroid/app/Activity;I)Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;->setTheme(Landroid/content/Intent;)V

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerModel;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerModel;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;->mModel:Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerModel;

    const-string v1, "activity"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    invoke-virtual {v1}, Landroid/app/ActivityManager;->getLockTaskModeState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->showLockTaskEscapeMessage()V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    sget v1, Lcom/samsung/android/support/senl/nt/app/R$layout;->notes_picker_activity:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->select_notes:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->toolbar:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const/4 v3, -0x1

    const-string v4, "appWidgetId"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;->mWidgetId:I

    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;->mMimeType:Ljava/lang/String;

    const-string v3, "mode"

    const/4 v4, 0x7

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Lcom/samsung/android/support/senl/nt/app/common/util/FeatureUtils;->isPickMode(I)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_0

    :cond_1
    move v4, v5

    :goto_0
    const-string v5, "android.intent.action.PICK"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x3

    const/4 v7, 0x1

    if-eqz v5, :cond_2

    iput v2, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;->mCaller:I

    goto :goto_2

    :cond_2
    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;->isShareIntent(Landroid/content/Intent;)Z

    move-result v5

    if-eqz v5, :cond_3

    iput v6, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;->mCaller:I

    goto :goto_2

    :cond_3
    const-string v5, "widget.MEMO_PICK"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iput v7, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;->mCaller:I

    goto :goto_2

    :cond_4
    const-string v5, "action_pick_notes_from_space"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v1, 0x6

    :goto_1
    iput v1, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;->mCaller:I

    goto :goto_2

    :cond_5
    const-string v5, "action_pick_notes_from_coedit_space"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/16 v1, 0x9

    goto :goto_1

    :cond_6
    const-string v5, "action_pick_notes_from_meeting"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/16 v1, 0xa

    goto :goto_1

    :cond_7
    const-string v5, "widget.MEMO_PICK_FROM_NOTE_LIST"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    const/16 v1, 0x8

    iput v1, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;->mCaller:I

    const/16 v4, 0x18

    goto :goto_2

    :cond_8
    iput v7, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;->mCaller:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unknown action:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "NotesPickerActivity"

    invoke-static {v5, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    const-string v1, "NotesFragment"

    if-nez p1, :cond_9

    sget-object p1, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$AllNotes;->UUID:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;->mSelectedFolderUUID:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->setLastSelectedFolder(Ljava/lang/String;)V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "spaceId"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "key_space_id"

    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget v3, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;->mCaller:I

    const-string v4, "caller"

    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "note_uuid_list"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;->mSelectedFolderUUID:Ljava/lang/String;

    const-string v3, "folderUuid"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;->mNotesFragment:Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->notes_fragment_container:I

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;->mNotesFragment:Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;

    invoke-virtual {p1, v0, v3, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_3

    :cond_9
    const-string v0, "folder_uuid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;->mSelectedFolderUUID:Ljava/lang/String;

    const-string v0, "key_note_open_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;->mNoteOpenType:I

    const-string v0, "note_uuid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;->mSelectedUuid:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;->mNotesFragment:Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;

    :goto_3
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;->mNotesFragment:Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;

    invoke-virtual {p1, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;->setContract(Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;->mModel:Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerModel;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerModel;->getFolderRepository()Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;

    move-result-object p1

    invoke-virtual {p1, v7}, Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;->getAllDocumentCategoryTree_LiveData(Z)Landroidx/lifecycle/LiveData;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;->mNotesFragment:Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity$2;-><init>(Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;)V

    invoke-virtual {p1, v0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getMainListRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->getAllNoteCount(IZ)I

    move-result p1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;->mNewMemoDirectlyDone:Z

    if-nez p1, :cond_a

    iput v7, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;->mNoteOpenType:I

    goto :goto_4

    :cond_a
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "extra_document"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    iput v7, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;->mNoteOpenType:I

    sget-object p1, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$MyFolders;->UUID:Ljava/lang/String;

    invoke-virtual {p0, p1, v7}, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;->onNewNote(Ljava/lang/String;I)V

    goto :goto_4

    :cond_b
    iget p1, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;->mCaller:I

    if-ne p1, v6, :cond_c

    iput v2, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;->mNoteOpenType:I

    goto :goto_4

    :cond_c
    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;->mNoteOpenType:I

    :goto_4
    sget p1, Lcom/samsung/android/support/senl/nt/app/R$color;->task_description_title_color:I

    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/nt/base/common/util/ContextUtils;->setTaskDescription(Landroid/app/Activity;I)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p1, p0, v0}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->controllIndicatorBar(Landroid/app/Activity;I)Z

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;->onDestroy()V

    const-string v0, "NotesPickerActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->saveCurrentFolderExpandState()V

    return-void
.end method

.method public onFolderSelected(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFolderSelected# uuid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotesPickerActivity"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;->mNotesFragment:Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;->mSelectedFolderUUID:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;->onFolderSelected(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const-string v0, "NotesFragment"

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const-string v0, "NotesFragment"

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;->onKeyUp(ILandroid/view/KeyEvent;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    const-string v0, "appWidgetId"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;->mWidgetId:I

    return-void
.end method

.method public onNewNote(Ljava/lang/String;I)V
    .locals 12

    const-class v0, Lcom/samsung/android/support/senl/nt/app/nativecomposer/ComposerActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNewNote# Callee : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;->mCaller:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NotesPickerActivity"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;->mCaller:I

    const-string v3, "onNewNote : "

    const-string v4, "settings_preferred_note_style"

    const-string v5, "Settings"

    const-string v6, "page_type"

    const-string v7, "tool_type"

    const-string v8, "category_id"

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eq v1, v10, :cond_7

    if-eq v1, v9, :cond_7

    const/4 v11, 0x3

    if-eq v1, v11, :cond_2

    const/16 v11, 0x8

    if-eq v1, v11, :cond_7

    const/16 p1, 0xa

    if-eq v1, p1, :cond_0

    goto/16 :goto_4

    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const/4 p2, -0x1

    invoke-virtual {p0, p2, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_4

    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v1, v9, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {v1, v8, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v7, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {v5}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object p1

    invoke-virtual {p1, v4, v10}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v1, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const p1, 0x10008000

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v1, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p1, "sdoc_uuid"

    invoke-virtual {v1, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {v1, p1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_3
    const-string p1, "lock_account_guid"

    invoke-virtual {v1, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {v1, p1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_4
    :try_start_0
    const-string p1, "action_send_addition"

    invoke-virtual {v1, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/desktopmode/DesktopModeCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/desktopmode/DesktopModeCompat;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/desktopmode/DesktopModeCompat;->isDexMode(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_6

    const/high16 p1, 0x8080000

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenon/util/ScreenOnUtils;->getScreenOnInfo(Landroid/content/Context;)Landroid/app/ActivityOptions;

    move-result-object p1

    if-nez p1, :cond_5

    const/4 p1, 0x0

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    :goto_1
    invoke-virtual {p0, v1, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_6
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->isFreeFormWindow(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_1

    sget p1, Lcom/samsung/android/support/senl/nt/app/R$anim;->new_activity_from_bottom_to_top:I

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$anim;->prev_activity_exit_with_dim:I

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    :goto_2
    invoke-static {v2, v3, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget p1, Lcom/samsung/android/support/senl/nt/app/R$string;->base_string_failed_to_load_image:I

    invoke-static {p0, p1, v10}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;II)V

    goto/16 :goto_0

    :cond_7
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v1, v11, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "com.samsung.android.app.notes.ACTION_NEW_MEMO"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v8, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget p1, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;->mWidgetId:I

    const-string v0, "NEW_MEMO_FROM_PICKER"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v1, v7, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {v5}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object p1

    invoke-virtual {p1, v4, v10}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v1, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "widget_setting_action_pick"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_8

    iget p1, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;->mCaller:I

    if-ne p1, v9, :cond_9

    :cond_8
    const-string p1, "pick_note"

    invoke-virtual {v1, p1, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_9
    const/4 p1, 0x7

    :try_start_1
    invoke-virtual {p0, v1, p1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->isFreeFormWindow(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_a

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/desktopmode/DesktopModeCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/desktopmode/DesktopModeCompat;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/samsung/android/support/senl/cm/base/framework/desktopmode/DesktopModeCompat;->isDexMode(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_a

    sget p1, Lcom/samsung/android/support/senl/nt/app/R$anim;->new_activity_from_bottom_to_top:I

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$anim;->prev_activity_exit_with_dim:I

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_4

    :catch_2
    move-exception p1

    goto :goto_3

    :catch_3
    move-exception p1

    :goto_3
    invoke-static {v2, v3, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget p1, Lcom/samsung/android/support/senl/nt/app/R$string;->base_string_failed_to_load_image:I

    invoke-static {p0, p1, v10}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;II)V

    :cond_a
    :goto_4
    iput-boolean v10, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;->mNewMemoDirectlyDone:Z

    return-void
.end method

.method public onNoteSelected(Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNoteSelected# mCallee: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;->mCaller:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotesPickerActivity"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->getUuid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;->mSelectedUuid:Ljava/lang/String;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;->mCaller:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/16 v2, 0x9

    if-eq v1, v2, :cond_1

    const/16 v0, 0xa

    if-eq v1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->getUuid()Ljava/lang/String;

    move-result-object p1

    const-string v1, "sdoc_uuid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;->mNotesFragment:Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;->addCheckedNote(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;->mNotesFragment:Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;->importNoteToSpace()V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;->onNoteSelectedFromShare(Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;)V

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/common/task/ShareToOtherAppsTask;

    invoke-virtual {p0}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;->mMimeType:Ljava/lang/String;

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/samsung/android/support/senl/nt/app/main/common/task/ShareToOtherAppsTask;-><init>(Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;->onNoteSelectedFromWidget(Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;)V

    :goto_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const-string v0, "NotesPickerActivity"

    const/16 v1, 0x66

    if-ne p1, v1, :cond_1

    invoke-static {p0, p1, p3, p2}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->verifyRequestResult(Landroid/app/Activity;I[I[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;->mInitializeRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    const-string p1, "onRequestPermissionsResult# denied"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "unexpected requestCode: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;->mSelectedUuid:Ljava/lang/String;

    const-string v1, "note_uuid"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;->mSelectedFolderUUID:Ljava/lang/String;

    const-string v1, "folder_uuid"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;->mNoteOpenType:I

    const-string v1, "key_note_open_type"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;->mNotesFragment:Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/os/PermissionCompat;->getStoragePermissions(I)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity$4;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity$4;-><init>(Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;[Ljava/lang/String;)V

    invoke-static {p0, v1, v0}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->isPermissionGranted(Landroid/app/Activity;Ljava/lang/Runnable;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->getNoticeAppPermissionNeededs()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;->mInitializeRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method
