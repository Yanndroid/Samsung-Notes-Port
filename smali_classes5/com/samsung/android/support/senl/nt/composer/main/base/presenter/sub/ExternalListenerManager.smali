.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/common/MenuPresenterContract$IExternalListenerManager;
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/common/QuickNotePresenterContract$IExternalListenerManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "ExternalListenerManager"


# instance fields
.field private final mComposerLifeState:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerLifeState;

.field private final mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

.field private mContextAwarenessListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/listener/ContextAwarenessListenerImpl;

.field private mMediaCollectListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/MediaCollectListenerImpl;

.field private final mMenuPresenterManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/MenuPresenterManager;

.field private mObjectRecognitionCollectListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/ObjectRecognitionCollectListenerImpl;

.field private mPdfSearchCollectListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/PdfSearchCollectListenerImpl;

.field private mSpenInsertDetector:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/SpenInsertDetector;

.field private mTagCollectListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/TagCollectListenerImpl;

.field private mTextSearchCollectListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/TextSearchCollectListenerImpl;

.field private mTitleCollectListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/TitleCollectListenerImpl;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;->getComposerLifeState()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerLifeState;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager;->mComposerLifeState:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerLifeState;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;->getComposerModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;->getMenuPresenterManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/MenuPresenterManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager;->mMenuPresenterManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/MenuPresenterManager;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager;->createSpenInsertDetector()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager;->createFoldStateListener()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerLifeState;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager;->mComposerLifeState:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerLifeState;

    return-object p0
.end method

.method private addCollectListener(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "ExternalListenerManager"

    const-string v1, "addCollectListener#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager;->mObjectRecognitionCollectListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/ObjectRecognitionCollectListenerImpl;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/ObjectRecognitionCollectListenerImpl;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/ObjectRecognitionCollectListenerImpl;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager;->mObjectRecognitionCollectListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/ObjectRecognitionCollectListenerImpl;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager;->mObjectRecognitionCollectListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/ObjectRecognitionCollectListenerImpl;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/AbsCollectListenerImpl;->init(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ObjectRecognitionCollectListenerManager;->getInstance()Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ObjectRecognitionCollectListenerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager;->mObjectRecognitionCollectListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/ObjectRecognitionCollectListenerImpl;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/AbsCollectListenerManager;->addListener(Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ICollectListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager;->mTextSearchCollectListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/TextSearchCollectListenerImpl;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/TextSearchCollectListenerImpl;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/TextSearchCollectListenerImpl;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager;->mTextSearchCollectListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/TextSearchCollectListenerImpl;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager;->mTextSearchCollectListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/TextSearchCollectListenerImpl;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/AbsCollectListenerImpl;->init(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/TextSearchCollectListenerManager;->getInstance()Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/TextSearchCollectListenerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager;->mTextSearchCollectListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/TextSearchCollectListenerImpl;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/AbsCollectListenerManager;->addListener(Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ICollectListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager;->mPdfSearchCollectListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/PdfSearchCollectListenerImpl;

    if-nez v0, :cond_2

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/PdfSearchCollectListenerImpl;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/PdfSearchCollectListenerImpl;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager;->mPdfSearchCollectListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/PdfSearchCollectListenerImpl;

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager;->mPdfSearchCollectListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/PdfSearchCollectListenerImpl;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/AbsCollectListenerImpl;->init(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/PdfSearchCollectListenerManager;->getInstance()Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/PdfSearchCollectListenerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager;->mPdfSearchCollectListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/PdfSearchCollectListenerImpl;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/AbsCollectListenerManager;->addListener(Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ICollectListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager;->mTitleCollectListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/TitleCollectListenerImpl;

    if-nez v0, :cond_3

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/TitleCollectListenerImpl;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/TitleCollectListenerImpl;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager;->mTitleCollectListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/TitleCollectListenerImpl;

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager;->mTitleCollectListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/TitleCollectListenerImpl;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/AbsCollectListenerImpl;->init(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/TitleCollectListenerManager;->getInstance()Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/TitleCollectListenerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager;->mTitleCollectListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/TitleCollectListenerImpl;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/AbsCollectListenerManager;->addListener(Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ICollectListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager;->mTagCollectListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/TagCollectListenerImpl;

    if-nez v0, :cond_4

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/TagCollectListenerImpl;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/TagCollectListenerImpl;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager;->mTagCollectListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/TagCollectListenerImpl;

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager;->mTagCollectListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/TagCollectListenerImpl;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/AbsCollectListenerImpl;->init(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/TagCollectListenerManager;->getInstance()Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/TagCollectListenerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager;->mTagCollectListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/TagCollectListenerImpl;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/AbsCollectListenerManager;->addListener(Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ICollectListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager;->mMediaCollectListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/MediaCollectListenerImpl;

    if-nez v0, :cond_5

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/MediaCollectListenerImpl;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/MediaCollectListenerImpl;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager;->mMediaCollectListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/MediaCollectListenerImpl;

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager;->mMediaCollectListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/MediaCollectListenerImpl;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/AbsCollectListenerImpl;->init(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/MediaCollectListenerManager;->getInstance()Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/MediaCollectListenerManager;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager;->mMediaCollectListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/MediaCollectListenerImpl;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/AbsCollectListenerManager;->addListener(Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ICollectListener;)V

    return-void
.end method

.method private addContextAwarenessListener(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager;->mContextAwarenessListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/listener/ContextAwarenessListenerImpl;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/listener/ContextAwarenessListenerImpl;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/listener/ContextAwarenessListenerImpl;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager;->mContextAwarenessListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/listener/ContextAwarenessListenerImpl;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager;->mContextAwarenessListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/listener/ContextAwarenessListenerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/listener/ContextAwarenessListenerImpl;->init(Landroid/app/Activity;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessListenerManager;->getInstance()Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessListenerManager;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager;->mContextAwarenessListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/listener/ContextAwarenessListenerImpl;

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessListenerManager;->addListener(ILcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessListener;)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/MenuPresenterManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager;->mMenuPresenterManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/MenuPresenterManager;

    return-object p0
.end method

.method private createFoldStateListener()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat;->getFoldType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat;->getFoldState(Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat$FolderStateCallback;)V

    return-void
.end method

.method private createSpenInsertDetector()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->isSpenModel()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->isTabletModel()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/SpenInsertDetector;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager;)V

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/SpenInsertDetector;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager;->mSpenInsertDetector:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/SpenInsertDetector;

    :cond_1
    :goto_0
    return-void
.end method

.method private removeCollectListener()V
    .locals 2

    const-string v0, "ExternalListenerManager"

    const-string v1, "removeCollectListener#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager;->mObjectRecognitionCollectListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/ObjectRecognitionCollectListenerImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/AbsCollectListenerImpl;->release()V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ObjectRecognitionCollectListenerManager;->getInstance()Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ObjectRecognitionCollectListenerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager;->mObjectRecognitionCollectListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/ObjectRecognitionCollectListenerImpl;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/AbsCollectListenerManager;->removeListener(Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ICollectListener;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager;->mTextSearchCollectListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/TextSearchCollectListenerImpl;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/AbsCollectListenerImpl;->release()V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/TextSearchCollectListenerManager;->getInstance()Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/TextSearchCollectListenerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager;->mTextSearchCollectListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/TextSearchCollectListenerImpl;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/AbsCollectListenerManager;->removeListener(Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ICollectListener;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager;->mPdfSearchCollectListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/PdfSearchCollectListenerImpl;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/AbsCollectListenerImpl;->release()V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/PdfSearchCollectListenerManager;->getInstance()Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/PdfSearchCollectListenerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager;->mPdfSearchCollectListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/PdfSearchCollectListenerImpl;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/AbsCollectListenerManager;->removeListener(Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ICollectListener;)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager;->mTitleCollectListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/TitleCollectListenerImpl;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/AbsCollectListenerImpl;->release()V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/TitleCollectListenerManager;->getInstance()Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/TitleCollectListenerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager;->mTitleCollectListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/TitleCollectListenerImpl;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/AbsCollectListenerManager;->removeListener(Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ICollectListener;)V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager;->mTagCollectListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/TagCollectListenerImpl;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/AbsCollectListenerImpl;->release()V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/TagCollectListenerManager;->getInstance()Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/TagCollectListenerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager;->mTagCollectListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/TagCollectListenerImpl;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/AbsCollectListenerManager;->removeListener(Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ICollectListener;)V

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager;->mMediaCollectListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/MediaCollectListenerImpl;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/AbsCollectListenerImpl;->release()V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/MediaCollectListenerManager;->getInstance()Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/MediaCollectListenerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager;->mMediaCollectListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/MediaCollectListenerImpl;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/AbsCollectListenerManager;->removeListener(Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ICollectListener;)V

    :cond_5
    return-void
.end method

.method private removeContextAwarenessListener(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager;->mContextAwarenessListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/listener/ContextAwarenessListenerImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/listener/ContextAwarenessListenerImpl;->release()V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessListenerManager;->getInstance()Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessListenerManager;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessListenerManager;->removeListener(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getContextAwarenessListener()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/listener/ContextAwarenessListenerImpl;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager;->mContextAwarenessListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/listener/ContextAwarenessListenerImpl;

    return-object v0
.end method

.method public bridge synthetic getContextAwarenessListener()Ljava/util/Observable;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager;->getContextAwarenessListener()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/listener/ContextAwarenessListenerImpl;

    move-result-object v0

    return-object v0
.end method

.method public getMediaCollectListener()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/MediaCollectListenerImpl;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager;->mMediaCollectListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/MediaCollectListenerImpl;

    return-object v0
.end method

.method public getObjectRecognitionCollectListener()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/ObjectRecognitionCollectListenerImpl;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager;->mObjectRecognitionCollectListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/ObjectRecognitionCollectListenerImpl;

    return-object v0
.end method

.method public getPdfSearchCollectListener()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/PdfSearchCollectListenerImpl;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager;->mPdfSearchCollectListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/PdfSearchCollectListenerImpl;

    return-object v0
.end method

.method public getTagCollectListener()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/TagCollectListenerImpl;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager;->mTagCollectListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/TagCollectListenerImpl;

    return-object v0
.end method

.method public getTextSearchCollectListener()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/TextSearchCollectListenerImpl;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager;->mTextSearchCollectListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/TextSearchCollectListenerImpl;

    return-object v0
.end method

.method public getTitleCollectListener()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/TitleCollectListenerImpl;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager;->mTitleCollectListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/TitleCollectListenerImpl;

    return-object v0
.end method

.method public bridge synthetic getTitleCollectListener()Ljava/util/Observable;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager;->getTitleCollectListener()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/TitleCollectListenerImpl;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/app/Activity;)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/ContextAwarenessFeature;->isContextAwarenessEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager;->addContextAwarenessListener(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager;->removeContextAwarenessListener(Landroid/app/Activity;)V

    return-void
.end method

.method public onDetachView(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager;->removeCollectListener()V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager;->removeContextAwarenessListener(Landroid/app/Activity;)V

    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager;->mSpenInsertDetector:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/SpenInsertDetector;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/SpenInsertDetector;->unregisterSpenInsertReceiver(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onPostComposerViewInitialized(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager;->addCollectListener(Landroid/app/Activity;)V

    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ExternalListenerManager;->mSpenInsertDetector:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/SpenInsertDetector;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/SpenInsertDetector;->registerSpenInsertReceiver(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
