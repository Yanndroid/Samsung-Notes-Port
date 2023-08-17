.class public abstract Lcom/samsung/android/app/notes/widget/configure/AbsWidgetConfigureActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String; = "AbsWidgetConfigureActivity"


# instance fields
.field private final mActivityResultLauncher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mAppWidgetId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v1, Lcom/samsung/android/app/notes/widget/configure/AbsWidgetConfigureActivity$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/notes/widget/configure/AbsWidgetConfigureActivity$1;-><init>(Lcom/samsung/android/app/notes/widget/configure/AbsWidgetConfigureActivity;)V

    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/notes/widget/configure/AbsWidgetConfigureActivity;->mActivityResultLauncher:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method public static bridge synthetic c(Lcom/samsung/android/app/notes/widget/configure/AbsWidgetConfigureActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/notes/widget/configure/AbsWidgetConfigureActivity;->setWidgetResult(I)V

    return-void
.end method

.method private setWidgetResult(I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget v1, p0, Lcom/samsung/android/app/notes/widget/configure/AbsWidgetConfigureActivity;->mAppWidgetId:I

    const-string v2, "appWidgetId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    return-void
.end method


# virtual methods
.method public abstract getMaxCount()I
.end method

.method public abstract getProviderClass()Ljava/lang/Class;
.end method

.method public abstract getWidgetCount()I
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1e

    if-lt v0, v2, :cond_0

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTranslucent(Z)Z

    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "AbsWidgetConfigureActivity"

    if-nez p1, :cond_1

    const-string p1, "extra info null"

    invoke-static {v0, p1}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v2, "appWidgetId"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/notes/widget/configure/AbsWidgetConfigureActivity;->mAppWidgetId:I

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/widget/configure/AbsWidgetConfigureActivity;->getMaxCount()I

    move-result p1

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/widget/configure/AbsWidgetConfigureActivity;->getWidgetCount()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Add mAppWidgetId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/samsung/android/app/notes/widget/configure/AbsWidgetConfigureActivity;->mAppWidgetId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", maxCount: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", widgetCount: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-ltz p1, :cond_2

    if-lt v2, p1, :cond_2

    invoke-direct {p0, v1}, Lcom/samsung/android/app/notes/widget/configure/AbsWidgetConfigureActivity;->setWidgetResult(I)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/notes/widget/configure/AbsWidgetConfigureActivity;->mAppWidgetId:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " cancel."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/samsung/android/app/notes/widget/configure/AbsWidgetConfigureActivity;->mAppWidgetId:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/widget/configure/AbsWidgetConfigureActivity;->startPickerActivity(I)V

    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/configure/AbsWidgetConfigureActivity;->mActivityResultLauncher:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {v0}, Landroidx/activity/result/ActivityResultLauncher;->unregister()V

    return-void
.end method

.method public startMultiSelectPicker(I)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/access/notelist/NoteListAccessHandler;->getNotePickerClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->getInstance()Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->executeBaseLogic(I)V

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/access/notelist/NoteListAccessHandler;->getNotePickerClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "widget.MEMO_PICK_FROM_NOTE_LIST"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "widget_action_pick"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "appWidgetId"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "pick_type"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p1, p0, Lcom/samsung/android/app/notes/widget/configure/AbsWidgetConfigureActivity;->mActivityResultLauncher:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {p1, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method

.method public abstract startPickerActivity(I)V
.end method

.method public startSingleSelectPicker(I)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/access/widgetaccess/WidgetAccessHandler;->getWidgetResolverClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/access/notelist/NoteListAccessHandler;->getNotePickerClass()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->getInstance()Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->executeBaseLogic(I)V

    :cond_1
    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createMainListRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->getAllNoteCount(IZ)I

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/access/composer/ComposerAccessHandler;->getComposerActivityClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.samsung.android.app.notes.ACTION_NEW_MEMO"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "NEW_MEMO_FROM_PICKER"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo p1, "tool_type"

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/access/notelist/NoteListAccessHandler;->getNotePickerClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "widget.MEMO_PICK"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "widget_action_pick"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "appWidgetId"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "pick_type"

    :goto_0
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p1, p0, Lcom/samsung/android/app/notes/widget/configure/AbsWidgetConfigureActivity;->mActivityResultLauncher:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {p1, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method
