.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/progress/ComposerProgressBar;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/progress/ComposerProgressBar$OnCancelListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mEnabledNavigationBar:Z

.field private final mOnCancelListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/progress/ComposerProgressBar$OnCancelListener;

.field private mPbFileNameView:Landroid/widget/TextView;

.field private mPbPercentView:Landroid/widget/TextView;

.field private mProgressBar:Landroidx/appcompat/widget/SeslProgressBar;

.field private mProgressBarDialog:Landroidx/appcompat/app/AlertDialog;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "PC$ComposerProgressBar"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/progress/ComposerProgressBar;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/progress/ComposerProgressBar$OnCancelListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/progress/ComposerProgressBar;->mOnCancelListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/progress/ComposerProgressBar$OnCancelListener;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/progress/ComposerProgressBar;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/progress/ComposerProgressBar$OnCancelListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/progress/ComposerProgressBar;->mOnCancelListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/progress/ComposerProgressBar$OnCancelListener;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/progress/ComposerProgressBar;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/progress/ComposerProgressBar;->updateProgressState(I)V

    return-void
.end method

.method public static bridge synthetic c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/progress/ComposerProgressBar;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private clearNavigationBarFlag(Landroid/view/Window;)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/NavigationBarUtil;->clearHideNavigationBarFlag(Landroid/view/View;)V

    return-void
.end method

.method private hideNavigationBar(Landroid/view/Window;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/progress/ComposerProgressBar;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/NavigationBarUtil;->hideNavigationBar(Landroid/app/Activity;Landroid/view/View;)Z

    return-void
.end method

.method private initProgressBarDialog()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/progress/ComposerProgressBar;->mProgressBarDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/progress/ComposerProgressBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$layout;->comp_progress_bar_dialog_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->comp_progress_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/SeslProgressBar;

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/progress/ComposerProgressBar;->mProgressBar:Landroidx/appcompat/widget/SeslProgressBar;

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->comp_progress_bar_file_name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/progress/ComposerProgressBar;->mPbFileNameView:Landroid/widget/TextView;

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$string;->composer_add_pdf:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->comp_progress_bar_percent:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/progress/ComposerProgressBar;->mPbPercentView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/progress/ComposerProgressBar;->mProgressBar:Landroidx/appcompat/widget/SeslProgressBar;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/SeslProgressBar;->setMax(I)V

    new-instance v1, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/progress/ComposerProgressBar;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/progress/ComposerProgressBar;->mProgressBarDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/progress/ComposerProgressBar;->mProgressBarDialog:Landroidx/appcompat/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/progress/ComposerProgressBar;->mProgressBarDialog:Landroidx/appcompat/app/AlertDialog;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/progress/ComposerProgressBar$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/progress/ComposerProgressBar$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/progress/ComposerProgressBar;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-void
.end method

.method private updateProgressState(I)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/progress/ComposerProgressBar;->mProgressBarDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/progress/ComposerProgressBar;->mProgressBar:Landroidx/appcompat/widget/SeslProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/widget/SeslProgressBar;->setProgress(IZ)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/progress/ComposerProgressBar;->mPbPercentView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public enableToHideNavigationBar(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/progress/ComposerProgressBar;->mEnabledNavigationBar:Z

    return-void
.end method

.method public hide()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/progress/ComposerProgressBar;->mProgressBarDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/progress/ComposerProgressBar;->TAG:Ljava/lang/String;

    const-string v1, "hide#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/progress/ComposerProgressBar;->mProgressBarDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_1
    :goto_0
    return-void
.end method

.method public init(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/progress/ComposerProgressBar;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public isCancelKeyEvent(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const/16 v1, 0x6f

    if-ne p1, v1, :cond_1

    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-ne v0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onDetachView()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/progress/ComposerProgressBar;->mActivity:Landroid/app/Activity;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/progress/ComposerProgressBar;->mProgressBarDialog:Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method public setProgress(I)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/progress/ComposerProgressBar;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setProgress# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/CommonUtils;->isOnMainUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/progress/ComposerProgressBar;->updateProgressState(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/progress/ComposerProgressBar;->mProgressBar:Landroidx/appcompat/widget/SeslProgressBar;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/progress/ComposerProgressBar$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/progress/ComposerProgressBar$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/progress/ComposerProgressBar;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public show()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/progress/ComposerProgressBar;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/CommonUtil;->isNotAvailableActivity(Landroid/app/Activity;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/progress/ComposerProgressBar;->TAG:Ljava/lang/String;

    const-string v2, "show#isNotAvailableActivity true"

    :goto_0
    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/progress/ComposerProgressBar;->mProgressBarDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/progress/ComposerProgressBar;->TAG:Ljava/lang/String;

    const-string v2, "show#"

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/progress/ComposerProgressBar;->initProgressBarDialog()V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/progress/ComposerProgressBar;->mProgressBarDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-nez v2, :cond_2

    const-string v2, "window is null"

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/progress/ComposerProgressBar;->mEnabledNavigationBar:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/NavigationBarUtil;->isEnabledToHideNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/progress/ComposerProgressBar;->hideNavigationBar(Landroid/view/Window;)V

    const/16 v0, 0x8

    invoke-virtual {v2, v0, v0}, Landroid/view/Window;->setFlags(II)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/progress/ComposerProgressBar;->mProgressBarDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    invoke-virtual {v2, v0}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/progress/ComposerProgressBar;->clearNavigationBarFlag(Landroid/view/Window;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/progress/ComposerProgressBar;->mProgressBarDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :goto_1
    const/4 v0, 0x1

    return v0
.end method
