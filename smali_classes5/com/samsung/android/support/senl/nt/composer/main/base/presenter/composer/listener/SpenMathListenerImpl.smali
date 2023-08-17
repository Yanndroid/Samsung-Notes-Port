.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenMathListenerImpl;
.super Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathListener;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mProgressHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ProgressHandler;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "SpenMathListenerImpl"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenMathListenerImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathListener;-><init>()V

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenMathListenerImpl;->mActivity:Landroid/app/Activity;

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ProgressHandler;

    invoke-direct {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ProgressHandler;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenMathListenerImpl;->mProgressHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ProgressHandler;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenMathListenerImpl;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenMathListenerImpl;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method private showErrorMessage(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenMathListenerImpl;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenMathListenerImpl$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenMathListenerImpl$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenMathListenerImpl;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public onFailed()V
    .locals 1

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$string;->composer_unable_to_extract_text:I

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenMathListenerImpl;->showErrorMessage(I)V

    return-void
.end method

.method public onNoInputStrokes()V
    .locals 1

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$string;->composer_could_not_find_any_handwriting:I

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenMathListenerImpl;->showErrorMessage(I)V

    return-void
.end method

.method public onProgressStart()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenMathListenerImpl;->TAG:Ljava/lang/String;

    const-string v1, "onProgressStart"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenMathListenerImpl;->mProgressHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ProgressHandler;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ProgressHandler;->onProgressStart()V

    return-void
.end method

.method public onProgressStop()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenMathListenerImpl;->TAG:Ljava/lang/String;

    const-string v1, "onProgressStop"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenMathListenerImpl;->mProgressHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ProgressHandler;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ProgressHandler;->onProgressStop()V

    return-void
.end method

.method public onUndefinedResult()V
    .locals 1

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$string;->composer_calculation_range_error:I

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenMathListenerImpl;->showErrorMessage(I)V

    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenMathListenerImpl;->mProgressHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ProgressHandler;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ProgressHandler;->release()V

    return-void
.end method
