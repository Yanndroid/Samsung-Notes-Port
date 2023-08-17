.class public Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;
.super Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "WidgetSettingPresenter"


# instance fields
.field private mBackgroundImage:Z

.field private mContract:Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingContract;

.field private final mCreatedCallback:Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$Callback;

.field private mFilePath:Ljava/lang/String;

.field private mIsNewNote:Z

.field private mModel:Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingModel;

.field private mPageColor:I


# direct methods
.method public constructor <init>(Landroid/os/Bundle;Landroid/app/Activity;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;-><init>(Landroid/app/Activity;)V

    new-instance v0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter$1;-><init>(Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;)V

    iput-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->mCreatedCallback:Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$Callback;

    new-instance v0, Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingModel;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingModel;-><init>(Landroid/os/Bundle;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->mModel:Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingModel;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;->checkValidWidget()V

    invoke-direct {p0}, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->updateFilePath()V

    iget-object p1, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->mModel:Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingModel;

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingModel;->getUUID()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/app/notes/widget/util/WidgetUtils;->isSDoc(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/nt/homewidget/R$string;->widget_convert_document:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p2, p1, v0}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {p2}, Landroid/app/Activity;->finishAndRemoveTask()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->initSpenSdk()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;)Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingContract;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->mContract:Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingContract;

    return-object p0
.end method

.method public static synthetic access$000(Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;)Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$Callback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->mCreatedCallback:Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$Callback;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->mFilePath:Ljava/lang/String;

    return-object p0
.end method

.method private createCacheInfo(Ljava/lang/String;)V
    .locals 8

    const-string v0, "WidgetSettingPresenter"

    const-string v1, "createCacheInfo#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->getInstance()Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;->mActivity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->mFilePath:Ljava/lang/String;

    iget-object v7, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->mCreatedCallback:Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$Callback;

    const/4 v6, -0x1

    move-object v4, p1

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->createCacheInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/app/notes/widget/capture/CacheFileManager$Callback;)V

    return-void
.end method

.method public static bridge synthetic d(Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;)Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingModel;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->mModel:Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingModel;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->createCacheInfo(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic f(Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->updateFilePath()V

    return-void
.end method

.method private getDocRepository()Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createMainListRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->mModel:Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingModel;

    invoke-virtual {v1}, Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingModel;->getUUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->get(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, "WidgetSettingPresenter"

    const-string v1, "getDocRepository# fail to docRepository"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private initSpenSdk()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/sdk/util/SpenSdkInitializer;->initialize(Landroid/content/Context;)Z

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/samsung/android/sdk/composer/SpenComposerSdk;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method private updateColorAndBgImage(Ljava/lang/String;)V
    .locals 2

    const-string v0, "note_none"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;->mActivity:Landroid/app/Activity;

    sget v1, Lcom/samsung/android/support/senl/nt/homewidget/R$color;->widget_bg_color:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->getInstance()Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->getPageColor(Ljava/lang/String;)I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->mPageColor:I

    invoke-static {}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->getInstance()Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->hasBackgroundImage(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->mBackgroundImage:Z

    return-void
.end method

.method private updateFilePath()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->mModel:Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingModel;

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingModel;->getUUID()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateFilePath# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WidgetSettingPresenter"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createDocumentDataRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->mFilePath:Ljava/lang/String;

    :cond_1
    if-nez v1, :cond_2

    const-string v1, "note_none"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "updateFilePath# file path is null"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/samsung/android/app/notes/widget/broadcast/WidgetBroadcast;->sendDeleteUUIDWidgetBroadcast(Landroid/content/Context;Ljava/util/List;)V

    goto :goto_1

    :cond_2
    iput-object v1, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->mFilePath:Ljava/lang/String;

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public cancelAndFinish()V
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->mModel:Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingModel;

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingModel;->getUUID()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->mModel:Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingModel;

    invoke-virtual {v1}, Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingModel;->getOldUUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createDocumentDataRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->mModel:Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingModel;

    invoke-virtual {v1}, Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingModel;->getOldUUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->mModel:Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingModel;

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingModel;->getOldUUID()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->mModel:Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingModel;->getWidgetId()I

    move-result v4

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->mModel:Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingModel;->getOldTransparency()I

    move-result v5

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->mModel:Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingModel;->getOldBackgroundColor()I

    move-result v7

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->mModel:Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingModel;->getOldDarkMode()I

    move-result v8

    invoke-static/range {v2 .. v8}, Lcom/samsung/android/app/notes/widget/broadcast/WidgetBroadcast;->sendPickWidgetBroadcast(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;II)V

    :cond_0
    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;->cancelAndFinish()V

    return-void
.end method

.method public createCacheInfo()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->mModel:Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingModel;

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingModel;->getUUID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "note_none"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "WidgetSettingPresenter"

    if-eqz v1, :cond_0

    const-string v0, "createCacheInfo# uuid none"

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->mContract:Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingContract;

    invoke-interface {v0}, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingContract;->updateBgSettingMenu()V

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->mContract:Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingContract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingContract;->updateWidgetSettingDarkMode()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->mContract:Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingContract;

    invoke-interface {v1}, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingContract;->showLoadingView()V

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    invoke-direct {v1, v2}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter$3;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter$3;-><init>(Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public getModel()Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingModel;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->mModel:Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingModel;

    return-object v0
.end method

.method public bridge synthetic getModel()Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingModel;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->getModel()Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingModel;

    move-result-object v0

    return-object v0
.end method

.method public getPageColor()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->mPageColor:I

    return v0
.end method

.method public getRecommendTitle()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->getDocRepository()Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/samsung/android/app/notes/widget/util/WidgetUtils;->getRecommendTitleText(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->getDocRepository()Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->mModel:Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingModel;

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingModel;->getUUID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getView()Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingContract;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->mContract:Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingContract;

    return-object v0
.end method

.method public hideLoadingView()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->mContract:Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingContract;

    invoke-interface {v0}, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingContract;->hideLoadingView()V

    return-void
.end method

.method public isBackgroundImage()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->mBackgroundImage:Z

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->mModel:Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingModel;

    invoke-virtual {v1}, Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingModel;->getUUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WidgetSettingPresenter"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_3

    const/4 p1, -0x1

    if-ne p2, p1, :cond_3

    const-string p1, "note_uuid"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityResult# new uuid : "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " old uuid :"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->mModel:Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingModel;

    invoke-virtual {v3}, Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingModel;->getUUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, "onActivityResult# new uuid null"

    :goto_0
    invoke-static {v1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "note_file_path"

    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    xor-int/2addr p3, v2

    iput-boolean p3, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->mIsNewNote:Z

    if-eqz p1, :cond_4

    iget-object p3, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->mModel:Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingModel;

    invoke-virtual {p3}, Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingModel;->getUUID()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_4

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;->mActivity:Landroid/app/Activity;

    invoke-static {p3}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object p3

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createDocumentDataRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->mFilePath:Ljava/lang/String;

    if-nez p3, :cond_1

    iput-object p2, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->mFilePath:Ljava/lang/String;

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->getInstance()Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;

    move-result-object p2

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->mModel:Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingModel;

    invoke-virtual {v2}, Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingModel;->getUUID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, p3, v2}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->removeCacheInfo(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->mModel:Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingModel;

    invoke-virtual {p2, p1}, Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingModel;->setUUID(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->mContract:Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingContract;

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->getRecommendTitle()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingContract;->updateNoteTitleView(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->mContract:Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingContract;

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->getTitle()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingContract;->updatePreviewTitleView(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->getInstance()Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->isDoneState(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p1, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->mContract:Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingContract;

    invoke-interface {p1}, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingContract;->hideEmptyView()V

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->updatePreviewAndSetting()V

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->mContract:Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingContract;

    invoke-interface {p2}, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingContract;->showLoadingView()V

    invoke-direct {p0, p1}, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->createCacheInfo(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "onActivityResult# exception : "

    invoke-static {v1, p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;->mActivity:Landroid/app/Activity;

    sget p2, Lcom/samsung/android/support/senl/nt/homewidget/R$string;->unable_to_open_note:I

    invoke-static {p1, p2, v0}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;II)V

    goto :goto_1

    :cond_3
    iput-boolean v0, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->mIsNewNote:Z

    :cond_4
    :goto_1
    return-void
.end method

.method public onChangeClicked()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChangeClicked# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->mModel:Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingModel;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingModel;->getWidgetId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WidgetSettingPresenter"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/access/notelist/NoteListAccessHandler;->getNotePickerClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->getInstance()Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->executeBaseLogic(I)V

    :cond_0
    const-string v0, "616"

    const-string v2, "6128"

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;->mActivity:Landroid/app/Activity;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/access/notelist/NoteListAccessHandler;->getNotePickerClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "widget.MEMO_PICK"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "widget_action_pick"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "widget_setting_action_pick"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->mModel:Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingModel;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingModel;->getWidgetId()I

    move-result v2

    const-string v3, "appWidgetId"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "pick_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public saveAndFinish()V
    .locals 8

    iget-boolean v0, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->mIsNewNote:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->mModel:Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingModel;

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingModel;->isOnlyUUIDChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WidgetSettingPresenter"

    const-string v1, "saveAndFinish# widget changed new note"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->mModel:Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingModel;

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingModel;->isChanged()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->mModel:Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingModel;

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingModel;->getUUID()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->mModel:Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingModel;->getWidgetId()I

    move-result v3

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->mModel:Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingModel;->getTransparency()I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->mFilePath:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->mModel:Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingModel;->getBackgroundColor()I

    move-result v6

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->mModel:Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingModel;->getDarkMode()I

    move-result v7

    invoke-static/range {v1 .. v7}, Lcom/samsung/android/app/notes/widget/broadcast/WidgetBroadcast;->sendPickWidgetBroadcast(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;II)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->mModel:Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingModel;->getReverseTransparency()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/widget/util/BaseWidgetUtils;->convertAlpha(I)I

    move-result v0

    const-string v1, "9980"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertStatusLog(Ljava/lang/String;I)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finishAndRemoveTask()V

    return-void
.end method

.method public setView(Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingContract;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingContract;

    iput-object p1, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->mContract:Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingContract;

    invoke-interface {p1, p0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingContract;->setPresenter(Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;)V

    return-void
.end method

.method public showLoadingView()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->mContract:Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingContract;

    invoke-interface {v0}, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingContract;->showLoadingView()V

    return-void
.end method

.method public updateEmptyPreview()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createMainListRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->mModel:Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingModel;

    invoke-virtual {v1}, Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingModel;->getUUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->get(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getIsDeleted()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WidgetSettingPresenter"

    const-string/jumbo v1, "updateEmptyPreview# deleted note"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->mContract:Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingContract;

    invoke-interface {v0}, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingContract;->updateEmptyPreview()V

    :cond_0
    return-void
.end method

.method public updateNoteTitle()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->mContract:Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingContract;

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->getRecommendTitle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingContract;->updateNoteTitleView(Ljava/lang/String;)V

    return-void
.end method

.method public updatePreviewAndSetting()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->mModel:Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingModel;

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingModel;->getUUID()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->updateColorAndBgImage(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->getInstance()Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v2}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->getThumbnailPath(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->getInstance()Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v2, v4}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->getThumbnailPath(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/samsung/android/app/notes/widget/util/WidgetUtils;->getCacheThumbnailFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v2}, Lcom/samsung/android/app/notes/widget/util/WidgetUtils;->getCacheThumbnailFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v4, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter$2;

    invoke-direct {v4, p0, v1, v2, v0}, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter$2;-><init>(Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
