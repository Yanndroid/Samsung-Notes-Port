.class public Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/dialog/DialogPresenterManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCreator:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/dialog/DialogContract$IDialogCreator;

.field private mSaveNoteDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/dialog/SaveNoteDialogPresenter;

.field private mSelectNoteDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/dialog/SelectNoteDialogPresenter;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "DialogPresenterManager"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/SOLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/dialog/DialogPresenterManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/dialog/DialogContract$IDialogCreator;Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/dialog/SaveNoteDialogPresenter$ISaveNoteDialogNavigator;Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/dialog/SelectNoteDialogPresenter$ISelectNoteDialogNavigator;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/dialog/DialogPresenterManager;->TAG:Ljava/lang/String;

    const-string v1, "init#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/dialog/DialogPresenterManager;->mCreator:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/dialog/DialogContract$IDialogCreator;

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/dialog/SaveNoteDialogPresenter;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/dialog/DialogPresenterManager;->mCreator:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/dialog/DialogContract$IDialogCreator;

    invoke-direct {p1, v0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/dialog/SaveNoteDialogPresenter;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/dialog/DialogContract$IDialogCreator;Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/dialog/SaveNoteDialogPresenter$ISaveNoteDialogNavigator;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/dialog/DialogPresenterManager;->mSaveNoteDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/dialog/SaveNoteDialogPresenter;

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/dialog/SelectNoteDialogPresenter;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/dialog/DialogPresenterManager;->mCreator:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/dialog/DialogContract$IDialogCreator;

    invoke-direct {p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/dialog/SelectNoteDialogPresenter;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/dialog/DialogContract$IDialogCreator;Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/dialog/SelectNoteDialogPresenter$ISelectNoteDialogNavigator;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/dialog/DialogPresenterManager;->mSelectNoteDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/dialog/SelectNoteDialogPresenter;

    return-void
.end method

.method public onAttachView(Landroid/app/Activity;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/dialog/DialogPresenterManager;->TAG:Ljava/lang/String;

    const-string v1, "onAttachView#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/dialog/DialogPresenterManager;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/dialog/DialogPresenterManager;->mSaveNoteDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/dialog/SaveNoteDialogPresenter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/dialog/SaveNoteDialogPresenter;->onAttachView(Landroid/app/Activity;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/dialog/DialogPresenterManager;->mSelectNoteDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/dialog/SelectNoteDialogPresenter;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/dialog/DialogPresenterManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/dialog/SelectNoteDialogPresenter;->onAttachView(Landroid/app/Activity;)V

    return-void
.end method

.method public onDetachView()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/dialog/DialogPresenterManager;->TAG:Ljava/lang/String;

    const-string v1, "onDetachView#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/dialog/DialogPresenterManager;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/dialog/DialogPresenterManager;->mCreator:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/dialog/DialogContract$IDialogCreator;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/dialog/DialogPresenterManager;->mSaveNoteDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/dialog/SaveNoteDialogPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/dialog/SaveNoteDialogPresenter;->onDetachView()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/dialog/DialogPresenterManager;->mSelectNoteDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/dialog/SelectNoteDialogPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/dialog/SelectNoteDialogPresenter;->onDetachView()V

    return-void
.end method

.method public showSaveNoteDialog()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/dialog/DialogPresenterManager;->TAG:Ljava/lang/String;

    const-string v1, "showSaveNoteDialog#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/dialog/DialogPresenterManager;->mSaveNoteDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/dialog/SaveNoteDialogPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/dialog/SaveNoteDialogPresenter;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/dialog/DialogPresenterManager;->mSaveNoteDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/dialog/SaveNoteDialogPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/dialog/SaveNoteDialogPresenter;->showSaveNoteDialog()V

    :cond_0
    return-void
.end method

.method public showSelectNoteDialog()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/dialog/DialogPresenterManager;->TAG:Ljava/lang/String;

    const-string v1, "showSelectNoteDialog#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/dialog/DialogPresenterManager;->mSelectNoteDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/dialog/SelectNoteDialogPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/dialog/SelectNoteDialogPresenter;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/dialog/DialogPresenterManager;->mSelectNoteDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/dialog/SelectNoteDialogPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/dialog/SelectNoteDialogPresenter;->showSelectNoteDialog()V

    :cond_0
    return-void
.end method
