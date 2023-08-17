.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;
.super Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextListener;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mDialogPresenterManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IDialogPresenter;

.field private final mHandler:Landroid/os/Handler;

.field private mIsRunningSpenConvertToText:Z

.field private final mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

.field private final mPageManager:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

.field private final mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;

.field private final mProgressHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ProgressHandler;

.field private final mSoftInputManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;

.field private final mSpenWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

.field private final mTaskController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "SpenConvertToTextListenerImpl"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextListener;-><init>()V

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;->mActivity:Landroid/app/Activity;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;->getObjectManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;->getPageManager()Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;->mPageManager:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;->getDialogPresenterManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IDialogPresenter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;->mDialogPresenterManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IDialogPresenter;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;->getDoc()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;->mSpenWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;->mTaskController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ProgressHandler;

    invoke-direct {p1, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ProgressHandler;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;->mProgressHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ProgressHandler;

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;->mSoftInputManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method private addBodyTextBox(Landroid/text/SpannableStringBuilder;Landroid/graphics/RectF;)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->getNewBodyText()Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object v0

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->insertText(Ljava/lang/String;I)V

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/util/CharUtils;->convertSpannablerToSpen(Landroid/text/SpannableStringBuilder;Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;->mSpenWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;->mPageManager:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->getDocPageInfo()Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->getCurrentPageIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPage(I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->getTextManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

    move-result-object v1

    iget v3, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1, p1, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->getLineRectOfBodyText(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;F)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    iget v3, v1, Landroid/graphics/RectF;->bottom:F

    iget v4, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    iget v5, p2, Landroid/graphics/RectF;->top:F

    cmpl-float v4, v5, v4

    if-lez v4, :cond_0

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v3, v4

    iput v3, p2, Landroid/graphics/RectF;->top:F

    :cond_0
    sget-object v3, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addBodyTextBox# page:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;->mPageManager:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->getDocPageInfo()Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->getCurrentPageIndex()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", rect:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", lineRect:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    new-instance v3, Landroid/graphics/PointF;

    iget v4, p2, Landroid/graphics/RectF;->left:F

    iget v5, p2, Landroid/graphics/RectF;->top:F

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v1, v0, p1, v3, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->insertBodyText(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Landroid/graphics/PointF;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;->mSpenWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getBodyText()Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;->mSpenWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->selectObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->getTextManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

    move-result-object v0

    new-instance v1, Landroid/graphics/PointF;

    iget v2, p2, Landroid/graphics/RectF;->left:F

    iget p2, p2, Landroid/graphics/RectF;->top:F

    invoke-direct {v1, v2, p2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->getCursorIndex(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;Landroid/graphics/PointF;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->setCursorPosition(I)V

    :cond_1
    return-void
.end method

.method private addNewTextBox(Landroid/text/SpannableStringBuilder;Landroid/graphics/RectF;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->getNewTextBox()Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object v0

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->insertText(Ljava/lang/String;I)V

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/util/CharUtils;->convertSpannablerToSpen(Landroid/text/SpannableStringBuilder;Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    new-instance v1, Landroid/graphics/PointF;

    iget v2, p2, Landroid/graphics/RectF;->left:F

    iget p2, p2, Landroid/graphics/RectF;->top:F

    invoke-direct {v1, v2, p2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->addTextBoxFromCTT(Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;Landroid/graphics/PointF;)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;->setRunningStateForCoEdit(Z)V

    return-void
.end method

.method private setRunningStateForCoEdit(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;->getComposerModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getCoeditAdapter()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->isCoeditNote()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl$3;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;)V

    invoke-interface {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;->pauseCoEdit(Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;->TAG:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;->resumeCoEdit(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private updateConvertToTextRunning(Z)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateConvertToTextRunning :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;->mIsRunningSpenConvertToText:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;->mIsRunningSpenConvertToText:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;->mIsRunningSpenConvertToText:Z

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public getInsertType()I
    .locals 3

    const-string v0, "Settings"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const-string v1, "settings_handwriting_recognition_insert_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public onClose()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;->TAG:Ljava/lang/String;

    const-string v1, "onClose"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;->mDialogPresenterManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IDialogPresenter;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IDialogPresenter;->dismissConvertSettingDialog()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;->mSoftInputManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;->hide(Landroid/view/View;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;->updateConvertToTextRunning(Z)V

    return-void
.end method

.method public onConvertToText(Landroid/text/SpannableStringBuilder;Landroid/graphics/RectF;)V
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;->TAG:Ljava/lang/String;

    const-string p2, "onConvertToText# spannableSB is empty. return"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->composer_text_box_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget v1, p2, Landroid/graphics/RectF;->left:F

    int-to-float v0, v0

    cmpg-float v1, v1, v0

    if-gez v1, :cond_1

    iput v0, p2, Landroid/graphics/RectF;->left:F

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;->getInsertType()I

    move-result v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onConvertToText#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Landroid/graphics/RectF;->left:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", insertType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;->addBodyTextBox(Landroid/text/SpannableStringBuilder;Landroid/graphics/RectF;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;->addNewTextBox(Landroid/text/SpannableStringBuilder;Landroid/graphics/RectF;)V

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->clearSelectObject()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;->mSoftInputManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;->getView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;->hide(Landroid/view/View;)V

    const-string p1, "412"

    const-string p2, "4310"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onConvertToTextFailed(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;->updateConvertToTextRunning(Z)V

    return-void
.end method

.method public onConvertToTextRunning(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;->updateConvertToTextRunning(Z)V

    return-void
.end method

.method public onCopySelected(Ljava/lang/CharSequence;)V
    .locals 9

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCopySelected#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;->getInsertType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->getNewBodyText()Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->getNewTextBox()Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object v1

    :goto_0
    move-object v5, v1

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x0

    invoke-virtual {v5, v1, v8}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->insertText(Ljava/lang/String;I)V

    invoke-static {v0, v5}, Lcom/samsung/android/support/senl/nt/base/common/util/CharUtils;->convertSpannablerToSpen(Landroid/text/SpannableStringBuilder;Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopy$InputValues;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    const/4 v6, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopy$InputValues;-><init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;Lcom/samsung/android/sdk/pen/document/SpenObjectShape;II)V

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopy;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopy;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;->mTaskController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopy;->getDefaultCallback()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2, v8}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->execute(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;Z)Z

    const-string p1, "412"

    const-string v0, "4319"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onEditLineOverflow(I)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$string;->maximum_number_of_lines_exceeded:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1, v3}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-direct {p0, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;->updateConvertToTextRunning(Z)V

    return-void
.end method

.method public onEditTextOverflow(I)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$string;->maximum_number_of_characters_exceeded:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1, v3}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-direct {p0, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;->updateConvertToTextRunning(Z)V

    return-void
.end method

.method public onFinished()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;->TAG:Ljava/lang/String;

    const-string v1, "onFinished"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;->updateConvertToTextRunning(Z)V

    return-void
.end method

.method public onProgressStart()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;->TAG:Ljava/lang/String;

    const-string v1, "onProgressStart"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;->mProgressHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ProgressHandler;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ProgressHandler;->onProgressStart()V

    return-void
.end method

.method public onProgressStop()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;->TAG:Ljava/lang/String;

    const-string v1, "onProgressStop"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;->mProgressHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ProgressHandler;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ProgressHandler;->onProgressStop()V

    return-void
.end method

.method public onSetting()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;->mDialogPresenterManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IDialogPresenter;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IDialogPresenter;->showConvertSettingDialog()V

    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;->mProgressHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ProgressHandler;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ProgressHandler;->release()V

    return-void
.end method
