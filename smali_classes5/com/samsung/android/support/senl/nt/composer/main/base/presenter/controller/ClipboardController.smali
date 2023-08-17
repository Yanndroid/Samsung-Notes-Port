.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

.field private final mInvocationHandler:Ljava/lang/reflect/InvocationHandler;

.field private mNoteManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

.field private mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

.field private mPageManager:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

.field private mPasteListener:Ljava/lang/Object;

.field private mPdfManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;

.field private mSoftInputManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;

.field private mTaskController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;

.field private mTextManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "ClipboardController"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;->mPasteListener:Ljava/lang/Object;

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;->mInvocationHandler:Ljava/lang/reflect/InvocationHandler;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;->mNoteManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;)Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;->mPageManager:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;->mPdfManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;->mSoftInputManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;->mTextManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

    return-object p0
.end method

.method public static bridge synthetic i()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private isNeedPermission(Landroid/content/ClipData;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/dex/DoPControlClipData;->isDoPDrop(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x3

    invoke-static {p1}, Lcom/samsung/android/support/senl/cm/base/framework/os/PermissionCompat;->getStoragePermissions(I)[Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->isPermissionGrantedWithoutNotice(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public clearFilter(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearFilter# isNotAvailableActivity from : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearFilter# from : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/content/ClipboardManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/content/ClipboardManagerCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/content/ClipboardManagerCompat;->finishBind(Landroid/content/Context;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/content/ClipboardManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/content/ClipboardManagerCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;->mActivity:Landroid/app/Activity;

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/content/ClipboardManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/content/ClipboardManagerCompat;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/ClipboardManagerCompat;->getTypeNone()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/samsung/android/support/senl/cm/base/framework/content/ClipboardManagerCompat;->filterClip(Landroid/app/Activity;ILjava/lang/Object;Ljava/lang/String;)Z

    return-void
.end method

.method public closeClipboard()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/content/ClipboardManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/content/ClipboardManagerCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/content/ClipboardManagerCompat;->dismissDialog(Landroid/content/Context;)V

    return-void
.end method

.method public executeTaskPaste(Landroid/content/ClipData;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$InputValues;)V
    .locals 4

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste;-><init>()V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;->isNeedPermission(Landroid/content/ClipData;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;->TAG:Ljava/lang/String;

    const-string v2, "to get READ_EXTERNAL_STORAGE permission"

    invoke-static {p1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;->mActivity:Landroid/app/Activity;

    check-cast p1, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v2, "Composer"

    invoke-virtual {p1, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x3

    invoke-static {v2}, Lcom/samsung/android/support/senl/cm/base/framework/os/PermissionCompat;->getStoragePermissions(I)[Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x7c

    invoke-static {p1, v3, v2}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->requestPermissions(Landroidx/fragment/app/Fragment;I[Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;->mTaskController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste;->getDefaultCallback()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;

    move-result-object v2

    invoke-virtual {p1, v0, p2, v2, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->setPendingTask(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;Z)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;->mTaskController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste;->getDefaultCallback()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;

    move-result-object v2

    invoke-virtual {p1, v0, p2, v2, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->execute(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;Z)Z

    :goto_0
    return-void
.end method

.method public getPastePosition()Landroid/graphics/PointF;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getModeManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;->Text:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->isMode(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->isFocusedTextBox()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->getPastePosition()Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method public getPrimaryClip()Landroid/content/ClipData;
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/content/ClipboardManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/content/ClipboardManagerCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/content/ClipboardManagerCompat;->getPrimaryClip(Landroid/content/Context;)Landroid/content/ClipData;

    move-result-object v0

    return-object v0
.end method

.method public init(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;->mTaskController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;->mPageManager:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;->mNoteManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    iput-object p5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;->mTextManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

    iput-object p6, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;->mPdfManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;

    iput-object p7, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    iput-object p8, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;->mSoftInputManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;

    return-void
.end method

.method public isShowingClipboard()Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/content/ClipboardManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/content/ClipboardManagerCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/content/ClipboardManagerCompat;->isShowing(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public onAttachView(Landroid/app/Activity;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;->mActivity:Landroid/app/Activity;

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/content/ClipboardManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/content/ClipboardManagerCompat;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/cm/base/framework/content/ClipboardManagerCompat;->getTypeAll()I

    move-result p1

    const-string v0, "onAttachView"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;->setClipboardFilter(ILjava/lang/String;)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;->isShowingClipboard()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;->closeClipboard()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onDetachView()V
    .locals 1

    const-string v0, "onDetachView"

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;->clearFilter(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;->mActivity:Landroid/app/Activity;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;->mPasteListener:Ljava/lang/Object;

    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    const-string v0, "onFocusChange"

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/content/ClipboardManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/content/ClipboardManagerCompat;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/cm/base/framework/content/ClipboardManagerCompat;->getTypeAll()I

    move-result p1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;->setClipboardFilter(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;->clearFilter(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setClipboardFilter(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/docscan/common/util/CommonUtils;->isNotAvailableActivity(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setClipboardFilter# isNotAvailableActivity from : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getModeManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->isDeleteOnlyMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/content/ClipboardManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/content/ClipboardManagerCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/ClipboardManagerCompat;->getTypeText()I

    move-result v0

    if-eq p1, v0, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/content/ClipboardManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/content/ClipboardManagerCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/ClipboardManagerCompat;->getTypeNone()I

    move-result v0

    if-eq p1, v0, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/content/ClipboardManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/content/ClipboardManagerCompat;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/cm/base/framework/content/ClipboardManagerCompat;->getTypeText()I

    move-result p1

    const-string p2, "setClipboardFilter# skip by delete only"

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;->setClipboardFilter(ILjava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;->mPasteListener:Ljava/lang/Object;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/content/ClipboardManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/content/ClipboardManagerCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;->mInvocationHandler:Ljava/lang/reflect/InvocationHandler;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/ClipboardManagerCompat;->getPasteListener(Landroid/content/Context;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;->mPasteListener:Ljava/lang/Object;

    :cond_2
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/content/ClipboardManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/content/ClipboardManagerCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;->mPasteListener:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1, v2, p2}, Lcom/samsung/android/support/senl/cm/base/framework/content/ClipboardManagerCompat;->filterClip(Landroid/app/Activity;ILjava/lang/Object;Ljava/lang/String;)Z

    return-void
.end method

.method public showClipboard(I)V
    .locals 4

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/content/ClipboardManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/content/ClipboardManagerCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;->mPasteListener:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/samsung/android/support/senl/cm/base/framework/content/ClipboardManagerCompat;->showDialog(Landroid/content/Context;Landroid/view/View;ILjava/lang/Object;)Z

    return-void
.end method
