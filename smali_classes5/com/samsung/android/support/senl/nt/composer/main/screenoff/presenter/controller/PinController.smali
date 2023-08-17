.class public Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/controller/PinController;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

.field private final mPinData:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/PinData;

.field private mSaveModel:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "PinController"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/SOLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/controller/PinController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/PinData;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/PinData;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/controller/PinController;->mPinData:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/PinData;

    return-void
.end method


# virtual methods
.method public deleteExistingPinnedDataByExceptedUri(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/controller/PinController;->mPinData:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/PinData;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/PinData;->deleteExistingPinnedDataByExceptedUri(Ljava/lang/String;)V

    return-void
.end method

.method public deleteExistingPinnedDataByUri(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/controller/PinController;->mPinData:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/PinData;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/PinData;->deleteExistingPinnedDataByUri(Landroid/content/ContentResolver;Ljava/lang/String;)V

    return-void
.end method

.method public deleteExistingPinnedLegacyNoteByExceptedPath(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/controller/PinController;->mPinData:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/PinData;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/PinData;->deleteExistingPinnedLegacyNoteByExceptedPath(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public deleteExistingPinnedLegacyNoteByPath(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/controller/PinController;->mPinData:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/PinData;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/PinData;->deleteExistingPinnedLegacyNoteByPath(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public init(Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;)V
    .locals 7

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/controller/PinController;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/controller/PinController;->mSaveModel:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/controller/PinController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/controller/PinController;->mActivity:Landroid/app/Activity;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/app/Activity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/controller/PinController;->mPinData:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/PinData;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/controller/PinController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    move-object v3, p1

    goto :goto_0

    :cond_0
    move-object v3, v0

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :cond_1
    move-object v4, v0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/controller/PinController;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getDocInfo()Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;->getUuid()Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/controller/PinController;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getDocInfo()Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;->getDocPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/PinData;->init(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public loadExistingPinnedLegacyNotePathByPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/controller/PinController;->mPinData:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/PinData;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/PinData;->loadExistingPinnedLegacyNotePathByPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public loadExistingPinnedNoteUuidByUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/controller/PinController;->mPinData:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/PinData;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/PinData;->loadExistingPinnedNoteUuidByUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onAttachView(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/controller/PinController;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public pinToAOD(Landroid/graphics/Bitmap;Z)V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/controller/PinController;->TAG:Ljava/lang/String;

    const-string v1, "pinToAOD# execute AODPinExecutor"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/controller/PinController;->mPinData:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/PinData;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/PinData;->makePinData(Landroid/graphics/Bitmap;Z)V

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "PIN"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/controller/PinController;->mPinData:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/PinData;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/PinData;->getPinImagePath()Ljava/lang/String;

    move-result-object p2

    const-string v0, "pinImagePath"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/controller/PinController;->mPinData:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/PinData;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/PinData;->getPinUri()Landroid/net/Uri;

    move-result-object p2

    const-string v0, "pinUri"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/controller/PinController;->mPinData:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/PinData;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/PinData;->getEdited()Z

    move-result p2

    const-string v0, "isEdited"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/executor/ExecutorFactory;->createExecutor(Landroid/content/Intent;)Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/executor/executors/AbsExecutor;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/controller/PinController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p2, v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/executor/executors/AbsExecutor;->execute(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public replacePinnedNoteData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/controller/PinController;->mPinData:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/PinData;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/PinData;->replacePinnedNoteData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public savePinCache()V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/controller/PinController;->TAG:Ljava/lang/String;

    const-string v1, "savePinCache#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/controller/PinController;->mPinData:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/PinData;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/PinData;->savePinnedNoteData()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/controller/PinController;->mSaveModel:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->requestReadyForSave()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/controller/PinController;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getDocState()Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDocumentRepository()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/controller/PinController;->mSaveModel:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->createAdjustData()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentAdjustData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->setAdjustData(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentAdjustData;)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/controller/PinController;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    const/4 v1, 0x0

    const/16 v2, 0x440

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->saveCache(ZI)V

    return-void
.end method

.method public unPinFromAOD(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/PinData;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/PinData;-><init>()V

    invoke-virtual {v0, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/PinData;->loadExistingPinnedLegacyNotePathByPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/controller/PinController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unPinFromAOD# uri/legacyPinPath "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/controller/PinController;->deleteExistingPinnedLegacyNoteByPath(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/controller/PinController;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/controller/PinController;->mPinData:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/PinData;

    invoke-virtual {v0, p3}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/PinData;->loadPinnedNoteUuidByUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/controller/PinController;->mPinData:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/PinData;

    invoke-virtual {v1, p3}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/PinData;->loadPinnedNotePathByUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p2, v0, v1, v2, v2}, Lcom/samsung/android/support/senl/nt/data/common/utils/NotesDocumentDeleteUtils;->deleteDocumentFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0, p1, p3}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/controller/PinController;->deleteExistingPinnedDataByUri(Landroid/content/ContentResolver;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
