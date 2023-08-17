.class public Lcom/samsung/android/app/notes/nativecomposer/ComposerAppToNoteActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"


# static fields
.field private static final ARG_APP_TO_NOTE:Ljava/lang/String; = "app_to_note"

.field private static final ARG_APP_TO_NOTE_KEYGUARD:Ljava/lang/String; = "app_to_note_keyguard"

.field private static final ARG_APP_TO_NOTE_NEW:Ljava/lang/String; = "app_to_note_new"

.field private static final ARG_APP_TO_NOTE_POS_RECT:Ljava/lang/String; = "app_to_note_pos_rect"

.field private static final ARG_APP_TO_NOTE_TOAST_DELETED:Ljava/lang/String; = "app_to_note_toast_deleted"

.field private static final ARG_APP_TO_NOTE_UUID:Ljava/lang/String; = "app_to_note_uuid"

.field private static final TAG:Ljava/lang/String; = "ComposerAppToNoteActivity"


# instance fields
.field public mIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private checkIfExistInDB(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createMainListRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->get(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getIsDeleted()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const-string p1, "ComposerAppToNoteActivity"

    const-string v0, "not exist or delete "

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method private createNewNote()V
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/UUIDUtils;->newUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/notes/nativecomposer/ComposerAppToNoteActivity;->setResultWithUuid(Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lcom/samsung/android/app/notes/nativecomposer/ComposerAppToNoteActivity;->startComposerActivity(Ljava/lang/String;)V

    const-string v0, "ComposerAppToNoteActivity"

    const-string v1, "createNewNote"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private moveRunningActivityToFront(Ljava/lang/String;)Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->getComposerActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const-string v0, "ComposerAppToNoteActivity"

    const-string v1, "moveRunningActivityToFront : existComposer "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/os/AppTaskCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/os/AppTaskCompat;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getTaskId()I

    move-result p1

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/os/AppTaskCompat;->moveTaskToFront(Landroid/content/Context;I)Z

    const/4 p1, 0x1

    return p1
.end method

.method private openNote(Ljava/lang/String;)V
    .locals 3

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/notes/nativecomposer/ComposerAppToNoteActivity;->setResultWithUuid(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/nativecomposer/ComposerAppToNoteActivity;->mIntent:Landroid/content/Intent;

    const-string v1, "com.samsung.android.app.notes.ACTION_OPEN_MEMO"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/app/notes/nativecomposer/ComposerAppToNoteActivity;->mIntent:Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/app/notes/nativecomposer/NativeComposerReminderTriggerActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/app/notes/nativecomposer/ComposerAppToNoteActivity;->mIntent:Landroid/content/Intent;

    const-string v1, "app_to_note_pos_rect"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    const-string v2, "app_pos_rect_popup"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/notes/nativecomposer/ComposerAppToNoteActivity;->startComposerActivity(Ljava/lang/String;)V

    const-string p1, "ComposerAppToNoteActivity"

    const-string v0, "openNote"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setResultWithUuid(Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "app_to_note_uuid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    return-void
.end method

.method private startComposerActivity()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/notes/nativecomposer/ComposerAppToNoteActivity;->mIntent:Landroid/content/Intent;

    const-string v1, "app_to_note"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/notes/nativecomposer/ComposerAppToNoteActivity;->startComposerActivityFromOtherApp()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/notes/nativecomposer/ComposerAppToNoteActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private startComposerActivity(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/notes/nativecomposer/ComposerAppToNoteActivity;->mIntent:Landroid/content/Intent;

    const-string v1, "sdoc_uuid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/notes/nativecomposer/ComposerAppToNoteActivity;->mIntent:Landroid/content/Intent;

    const-string v1, "app_to_note_pos_rect"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/notes/nativecomposer/ActivityUtil;->getOptionsForPopupWindow(Landroid/content/Context;Landroid/os/Parcelable;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/notes/nativecomposer/ComposerAppToNoteActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/notes/nativecomposer/ComposerAppToNoteActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method private startComposerActivityFromOtherApp()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/app/notes/nativecomposer/ComposerAppToNoteActivity;->mIntent:Landroid/content/Intent;

    const-string v1, "app_to_note_uuid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/notes/nativecomposer/ComposerAppToNoteActivity;->createNewNote()V

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "uuid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ComposerAppToNoteActivity"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/app/notes/nativecomposer/ComposerAppToNoteActivity;->moveRunningActivityToFront(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "moveRunningActivityToFront"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/notes/nativecomposer/ComposerAppToNoteActivity;->setResultWithUuid(Ljava/lang/String;I)V

    return-void

    :cond_1
    invoke-direct {p0, v0}, Lcom/samsung/android/app/notes/nativecomposer/ComposerAppToNoteActivity;->checkIfExistInDB(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v0}, Lcom/samsung/android/app/notes/nativecomposer/ComposerAppToNoteActivity;->openNote(Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/notes/nativecomposer/ComposerAppToNoteActivity;->mIntent:Landroid/content/Intent;

    const-string v2, "app_to_note_new"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/app/notes/nativecomposer/ComposerAppToNoteActivity;->createNewNote()V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/app/notes/nativecomposer/ComposerAppToNoteActivity;->mIntent:Landroid/content/Intent;

    const/4 v2, 0x1

    const-string v4, "app_to_note_toast_deleted"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->unable_to_open_note:I

    invoke-static {p0, v1, v3}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;II)V

    :cond_4
    invoke-direct {p0, v0, v3}, Lcom/samsung/android/app/notes/nativecomposer/ComposerAppToNoteActivity;->setResultWithUuid(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/notes/nativecomposer/ComposerAppToNoteActivity;->mIntent:Landroid/content/Intent;

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/app/KeyguardManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/app/KeyguardManagerCompat;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/app/KeyguardManagerCompat;->isKeyguardSecureOn(Landroid/content/Context;)Z

    move-result p1

    const-string v0, "ComposerAppToNoteActivity"

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/notes/nativecomposer/ComposerAppToNoteActivity;->mIntent:Landroid/content/Intent;

    const/4 v1, 0x0

    const-string v2, "app_to_note_keyguard"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/notes/nativecomposer/ComposerAppToNoteActivity;->mIntent:Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/app/KeyguardManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/app/KeyguardManagerCompat;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/notes/nativecomposer/ComposerAppToNoteActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1, v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/app/KeyguardManagerCompat;->setKeyguardPendingIntentByActivity(Landroid/content/Context;Landroid/content/Intent;)V

    const-string p1, "startComposerActivity : isKeyguardSecureOn true"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/notes/nativecomposer/ComposerAppToNoteActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/app/notes/nativecomposer/ComposerAppToNoteActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v1, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate, trigger by unknown action: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/notes/nativecomposer/ComposerAppToNoteActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {}, Lcom/samsung/android/app/notes/nativecomposer/ActivityUtil;->executePostLaunchManager()V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/notes/nativecomposer/ComposerAppToNoteActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/notes/nativecomposer/ActivityUtil;->makeIntentForComposer(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/app/notes/nativecomposer/ComposerAppToNoteActivity;->startComposerActivity()V

    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
