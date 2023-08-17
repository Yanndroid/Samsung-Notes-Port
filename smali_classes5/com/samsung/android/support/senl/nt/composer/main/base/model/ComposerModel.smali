.class public Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mActionLinkModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/actionlink/ActionLinkModel;

.field public final mComposerSaveModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/ComposerSaveModel;

.field private final mComposerSpenDocModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerSpenDocModel;

.field private final mDirectWriteManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/directwrite/DirectWriteManager;

.field public mDocInfo:Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;

.field private mDocState:Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument<",
            "Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;",
            ">;"
        }
    .end annotation
.end field

.field private final mEntityManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/EntityManager;

.field private mIsDoingCoeditWorkThread:Z

.field private mIsLastSpenOnlyMode:Z

.field public mIsPDFReader:Z

.field private mIsRecoveredOnCorrupted:Z

.field private mIsReloading:Z

.field private mIsTabletLayout:Z

.field private mLastMenuDirty:Ljava/lang/String;

.field private mLastPenInfoInNote:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

.field private final mMdeManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;

.field private final mModeManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

.field private mSearchModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchModel;

.field public final mState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;

.field private final mTextOnlyModeState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/common/TextOnlyModeState;

.field private final mVoiceModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ComposerModel"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mIsTabletLayout:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mIsPDFReader:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mIsRecoveredOnCorrupted:Z

    const-string v1, ""

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mLastMenuDirty:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mIsReloading:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mIsDoingCoeditWorkThread:Z

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerSpenDocModel;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerSpenDocModel;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mComposerSpenDocModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerSpenDocModel;

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mModeManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mVoiceModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/actionlink/ActionLinkModel;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/actionlink/ActionLinkModel;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mActionLinkModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/actionlink/ActionLinkModel;

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/directwrite/DirectWriteManager;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/directwrite/DirectWriteManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mDirectWriteManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/directwrite/DirectWriteManager;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->createSaveModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/ComposerSaveModel;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mComposerSaveModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/ComposerSaveModel;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->createEntityManager(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/EntityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mEntityManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/EntityManager;

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getNotesDocEntityManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->getNotesDocumentRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;-><init>(Landroid/content/Intent;Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mMdeManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/common/TextOnlyModeState;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/common/TextOnlyModeState;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mTextOnlyModeState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/common/TextOnlyModeState;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;)Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mDocState:Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    return-object p0
.end method


# virtual methods
.method public autoSave()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->saveCache(Z)Z

    return-void
.end method

.method public changeDocState(Landroidx/lifecycle/LifecycleOwner;Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument<",
            "Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->setDocState(Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mEntityManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/EntityManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/EntityManager;->changeDocState(Landroidx/lifecycle/LifecycleOwner;Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;)V

    return-void
.end method

.method public clearLastPenInfoInNote()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mLastPenInfoInNote:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    return-void
.end method

.method public createEntityManager(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/EntityManager;
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/EntityManager;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;)V

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/EntityManager;-><init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/model/common/IModelParent;)V

    return-object v0
.end method

.method public createSaveModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/ComposerSaveModel;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/ComposerSaveModel;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/ComposerSaveModel;-><init>()V

    return-object v0
.end method

.method public discard(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mComposerSaveModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/ComposerSaveModel;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/ComposerSaveModel;->discard(Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->setIsSaved(Z)V

    return-void
.end method

.method public finish(Landroid/app/Activity;)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mEntityManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/EntityManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/EntityManager;->release()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mMdeManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->release()V

    return-void
.end method

.method public getActionLinkModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/actionlink/ActionLinkModel;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mActionLinkModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/actionlink/ActionLinkModel;

    return-object v0
.end method

.method public getBookmarkModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mEntityManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/EntityManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/EntityManager;->getBookmarkModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel;

    move-result-object v0

    return-object v0
.end method

.method public getCoeditAdapter()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mMdeManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->getCoeditAdapter()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getComposerSaveModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/ComposerSaveModel;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mComposerSaveModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/ComposerSaveModel;

    return-object v0
.end method

.method public getComposerSpenDocModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerSpenDocModel;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mComposerSpenDocModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerSpenDocModel;

    return-object v0
.end method

.method public getComposerState()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;

    return-object v0
.end method

.method public getDeviceNameForSyncConflicted()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mEntityManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/EntityManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/EntityManager;->getNotesDocEntityManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->getSyncConflictManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/SyncConflictDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/SyncConflictDataManager;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDirectWriteManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/directwrite/DirectWriteManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mDirectWriteManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/directwrite/DirectWriteManager;

    return-object v0
.end method

.method public getDoc()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mComposerSpenDocModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerSpenDocModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerSpenDocModel;->getDoc()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v0

    return-object v0
.end method

.method public getDocInfo()Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mDocInfo:Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;

    return-object v0
.end method

.method public getDocInfo(Landroid/os/Bundle;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mDocInfo:Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;->restoreFromSavedInstance(Landroid/os/Bundle;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mDocInfo:Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mDocInfo:Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;

    return-object p1
.end method

.method public getDocState()Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument<",
            "Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mDocState:Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    return-object v0
.end method

.method public getEntityManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/EntityManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mEntityManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/EntityManager;

    return-object v0
.end method

.method public getLastPenInfoInNote()Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mLastPenInfoInNote:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    return-object v0
.end method

.method public getLastPenInfoOnlyOnce()V
    .locals 4

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->TAG:Ljava/lang/String;

    const-string v1, "getLastPenInfo#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mDocInfo:Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo$OpenType;->New:Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo$OpenType;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;->isOpenType(Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo$OpenType;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mDocState:Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDoc()Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getLastPenInfo()Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mLastPenInfoInNote:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLastPenInfo# "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mLastPenInfoInNote:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    :cond_0
    :goto_0
    return-void
.end method

.method public getMdeInfo()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mMdeManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->getMdeInfo()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;

    move-result-object v0

    return-object v0
.end method

.method public getMdeManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mMdeManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;

    return-object v0
.end method

.method public getMenuDirty()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mLastMenuDirty:Ljava/lang/String;

    return-object v0
.end method

.method public getModeManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mModeManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    return-object v0
.end method

.method public getNotesDocEntityManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mEntityManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/EntityManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/EntityManager;->getNotesDocEntityManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;

    move-result-object v0

    return-object v0
.end method

.method public getSearchData()Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchModel;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mSearchModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchModel;

    return-object v0
.end method

.method public getSearchKeyword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mSearchModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchModel;->getKeyword()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getState(Z)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mComposerSpenDocModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerSpenDocModel;

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerSpenDocModel;->getSpenDocInfo(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mDocInfo:Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;

    if-eqz p1, :cond_0

    const-string p1, ", uuid: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mDocInfo:Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;->getUuid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", openType: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mDocInfo:Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;->getOpenType()Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo$OpenType;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mEntityManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/EntityManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/EntityManager;->getNotesDocEntityManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string p1, ", isDel: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mEntityManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/EntityManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/EntityManager;->getNotesDocEntityManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->isDeleted()Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", isLock: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mEntityManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/EntityManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/EntityManager;->getNotesDocEntityManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->isLocked()Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    :cond_1
    const-string p1, ", mde: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mMdeManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->getMdeInfo()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->isMde()Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", pdfReader: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->isPDFReader()Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTextOnlyModeState()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/common/TextOnlyModeState;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mTextOnlyModeState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/common/TextOnlyModeState;

    return-object v0
.end method

.method public getVoiceModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mVoiceModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    return-object v0
.end method

.method public initFirstBackgroundColorInverted()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mDocState:Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->isNew()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mDocState:Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDoc()Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->isBackgroundColorInverted()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->setBackgroundColorInverted(Z)V

    :cond_0
    return-void
.end method

.method public initMdeInfo()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mMdeManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mDocState:Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDocumentEntityContainer()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;->getEntity()Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->updateMdeEntity(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mMdeManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->getCoeditAdapter()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->isCoeditNote()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mComposerSaveModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/ComposerSaveModel;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/ComposerSaveModel;->setAutoSaveOptionEnabled(Ljava/lang/Boolean;)V

    :cond_0
    return-void
.end method

.method public insertSALogForDocument()V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->isPDFReader()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mComposerSpenDocModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerSpenDocModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerSpenDocModel;->getPageCountForLog()I

    move-result v0

    int-to-long v0, v0

    const-string v2, "401"

    const-string v3, "9923"

    invoke-static {v2, v3, v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mComposerSpenDocModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerSpenDocModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerSpenDocModel;->getDetailBodyTextLengthForLog()I

    move-result v0

    int-to-long v0, v0

    const-string v3, "9938"

    invoke-static {v2, v3, v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mComposerSpenDocModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerSpenDocModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerSpenDocModel;->hasPdfForLog()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "a"

    goto :goto_0

    :cond_0
    const-string v0, "b"

    :goto_0
    const-string v1, "9940"

    invoke-static {v2, v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->setIsSaved(Z)V

    :cond_1
    return-void
.end method

.method public isChangedDocState()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mComposerSaveModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/ComposerSaveModel;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mDocState:Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/ComposerSaveModel;->isChangedDocState(Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;)Z

    move-result v0

    return v0
.end method

.method public isChangedDocStateOrRecording()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mComposerSaveModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/ComposerSaveModel;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mDocState:Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/ComposerSaveModel;->isChangedDocState(Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getVoiceModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->isRecordingVoiceState()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isChangedDocStateWithSnapSavedData()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->isChangedDocState()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mComposerSaveModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/ComposerSaveModel;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mDocState:Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/ComposerSaveModel;->hasSnapSavedData(Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isChangedRealContent()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mComposerSaveModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/ComposerSaveModel;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mDocState:Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/ComposerSaveModel;->isChangedRealContent(Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;)Z

    move-result v0

    return v0
.end method

.method public isDoingCoeditWorkThread()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mIsDoingCoeditWorkThread:Z

    return v0
.end method

.method public isEditable()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->isEditable()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mComposerSaveModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/ComposerSaveModel;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mDocState:Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/ComposerSaveModel;->isEmpty(Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;)Z

    move-result v0

    return v0
.end method

.method public isEmptyOnNewNote()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mComposerSaveModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/ComposerSaveModel;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mDocState:Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/ComposerSaveModel;->isEmptyOnNewNote(Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;)Z

    move-result v0

    return v0
.end method

.method public isExistInDB(Landroid/app/Activity;)Z
    .locals 1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createMainListRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mDocInfo:Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public isExistSdocxFile()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mDocState:Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->exists(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isFirstBackgroundColorInverted()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->isBackgroundColorInverted()Z

    move-result v0

    return v0
.end method

.method public isInitialCoeditNote()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mComposerSaveModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/ComposerSaveModel;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mDocState:Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/ComposerSaveModel;->isInitialCoeditNote(Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;)Z

    move-result v0

    return v0
.end method

.method public isLastSpenOnlyMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mIsLastSpenOnlyMode:Z

    return v0
.end method

.method public isLastStateLockCanvas()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->isLastStateLockCanvas()Z

    move-result v0

    return v0
.end method

.method public isLockStateMismatched()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mEntityManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/EntityManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/EntityManager;->getNotesDocEntityManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->isLocked()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mComposerSpenDocModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerSpenDocModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerSpenDocModel;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPDFReader()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mIsPDFReader:Z

    return v0
.end method

.method public isRecoveredOnCorrupted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mIsRecoveredOnCorrupted:Z

    return v0
.end method

.method public isReloading()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mIsReloading:Z

    return v0
.end method

.method public isRunningDrawing()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->isRunningDrawing()Z

    move-result v0

    return v0
.end method

.method public isSingleMode()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mComposerSpenDocModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerSpenDocModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerSpenDocModel;->isSingleMode()Z

    move-result v0

    return v0
.end method

.method public isTabletLayout()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mIsTabletLayout:Z

    return v0
.end method

.method public isUnsupportedHandoff()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mMdeManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->getMdeInfo()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->isMde()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->isEditable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public needToConflictSyncForComposerEdit(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mDocState:Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mVoiceModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->isRecordingVoiceState()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->TAG:Ljava/lang/String;

    const-string v1, "needToConflictSyncForComposerEdit isRecordingVoiceState true"

    :goto_0
    invoke-static {p1, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->isChangedDocStateWithSnapSavedData()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->TAG:Ljava/lang/String;

    const-string v1, "needToConflictSyncForComposerEdit isChangedDocStateWithSnapSavedData"

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_1
    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->TAG:Ljava/lang/String;

    const-string v0, "needToConflictSyncForComposerEdit, mDocState is null or uuid is not matched."

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public needToPendingSyncForComposerBusy(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mDocInfo:Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mDocState:Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    const/4 v0, 0x1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getModeManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->isEditMode()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->TAG:Ljava/lang/String;

    const-string v1, "needToPendingSyncForComposerBusy recreation"

    invoke-static {p1, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->getLastRequestCode()I

    move-result p1

    const/4 v2, -0x1

    if-eq p1, v2, :cond_2

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "needToPendingSyncForComposerBusy mRequestCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->getLastRequestCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->isReloading()Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->TAG:Ljava/lang/String;

    const-string v1, "needToPendingSyncForComposerBusy reloading"

    invoke-static {p1, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public onDestroy(ZLcom/samsung/android/support/senl/cm/base/framework/support/BOOLEAN;)V
    .locals 7

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mComposerSaveModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/ComposerSaveModel;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mDocState:Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->isFinishAfterSave()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/ComposerSaveModel;->save(Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;ZZZIZ)Z

    move-result p1

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/BOOLEAN;->setValue(Z)V

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/BOOLEAN;->isFalse()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->isChangedDocState()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mComposerSaveModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/ComposerSaveModel;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/ComposerSaveModel;->isHyperLinkChanged()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mComposerSaveModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/ComposerSaveModel;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mDocState:Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/ComposerSaveModel;->saveForOnlyHyperLink(Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;)Z

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mActionLinkModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/actionlink/ActionLinkModel;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/actionlink/ActionLinkModel;->onDestroy()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mVoiceModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->onDestroy()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;Z)V
    .locals 2
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mComposerSaveModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/ComposerSaveModel;

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/ComposerSaveModel;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mModeManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->getMode()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->setMode(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mModeManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->getPrevMode()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->setPrevMode(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;

    invoke-virtual {v0, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->blockSip(Z)V

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mModeManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->isDeleteOnlyMode()Z

    move-result v0

    invoke-virtual {p3, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->setDeleteOnlyMode(Z)V

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;

    const-string v0, "composer_state_key"

    invoke-virtual {p2, v0, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mVoiceModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    invoke-virtual {p3, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mActionLinkModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/actionlink/ActionLinkModel;

    invoke-virtual {p3, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/actionlink/ActionLinkModel;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mDirectWriteManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/directwrite/DirectWriteManager;

    invoke-virtual {p3, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/directwrite/DirectWriteManager;->onSaveInstanceState(Landroid/os/Bundle;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string p3, "sdoc_uuid"

    invoke-virtual {p1, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "doc_path"

    invoke-virtual {p1, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "new_doc"

    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {p2, p3, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mDocInfo:Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mEntityManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/EntityManager;

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/EntityManager;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mMdeManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mTextOnlyModeState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/common/TextOnlyModeState;

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/common/TextOnlyModeState;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public requestCollect()V
    .locals 4

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->TAG:Ljava/lang/String;

    const-string v1, "requestCollect#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getDocInfo()Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;->setUuid(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mEntityManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/EntityManager;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/EntityManager;->getNotesDocEntityManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->getLastModifiedTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;->setLastModifiedAt(J)Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$TriggerType;->SAVE:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$TriggerType;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$TriggerType;->getValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;->setTriggerType(I)Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;->START:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;->getValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;->setActionType(I)Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$Priority;->FOREGROUND:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$Priority;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$Priority;->getValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;->setPriority(I)Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$LinkWith;->DEFAULT:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$LinkWith;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$LinkWith;->getValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;->setLinkWith(I)Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getDocInfo()Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo$OpenType;->New:Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo$OpenType;

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;->isOpenType(Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo$OpenType;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getDocState()Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->setAllPageIdList()V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getDocState()Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getChangedPageIdList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;->setChangedPageIdList(Ljava/util/List;)Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/collector/CollectController;->getInstance()Lcom/samsung/android/support/senl/nt/model/collector/CollectController;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;->build()Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/model/collector/CollectController;->postCollectorTask(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;)V

    return-void
.end method

.method public restoreState(Landroid/os/Bundle;ZLcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager$SoftInputManagerContract;)V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mVoiceModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->restoreState(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mModeManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->getMode()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->getPrevMode()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->isBlockedSip()Z

    move-result v5

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->isDeleteOnlyMode()Z

    move-result v7

    move v4, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->restoreMode(Ljava/lang/String;Ljava/lang/String;ZZLcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager$SoftInputManagerContract;Z)V

    return-void
.end method

.method public restoreStateOnlyData(Landroid/os/Bundle;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->restoreState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mComposerSaveModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/ComposerSaveModel;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->isEditable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/ComposerSaveModel;->setEditable(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mComposerSaveModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/ComposerSaveModel;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/ComposerSaveModel;->restoreState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mActionLinkModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/actionlink/ActionLinkModel;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/actionlink/ActionLinkModel;->restoreState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mDirectWriteManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/directwrite/DirectWriteManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/directwrite/DirectWriteManager;->restoreState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mMdeManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->restoreState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mTextOnlyModeState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/common/TextOnlyModeState;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/common/TextOnlyModeState;->restoreState(Landroid/os/Bundle;)V

    return-void
.end method

.method public save(ZZ)Z
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mComposerSaveModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/ComposerSaveModel;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mDocState:Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/ComposerSaveModel;->save(Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;ZZZIZ)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mMdeManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->getCoeditAdapter()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->checkDeleteOnlyMode()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mMdeManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->getCoeditAdapter()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->saveCoeditCache()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->setIsSaved(Z)V

    return p2

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public save(ZZZIZ)Z
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mComposerSaveModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/ComposerSaveModel;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mDocState:Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/ComposerSaveModel;->save(Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;ZZZIZ)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mMdeManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->getCoeditAdapter()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->checkDeleteOnlyMode()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mMdeManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->getCoeditAdapter()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->saveCoeditCache()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->setIsSaved(Z)V

    return p2

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public saveCache(ZI)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mComposerSaveModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/ComposerSaveModel;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mDocState:Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/ComposerSaveModel;->saveCache(Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;ZIZ)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mMdeManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->getCoeditAdapter()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->checkDeleteOnlyMode()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mMdeManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->getCoeditAdapter()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->saveCoeditCache()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;

    invoke-virtual {p1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->setIsSaved(Z)V

    :cond_0
    return-void
.end method

.method public saveCache(Z)Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mComposerSaveModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/ComposerSaveModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/ComposerSaveModel;->isAutoSaveOptionEnabled()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mComposerSaveModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/ComposerSaveModel;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mDocState:Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    invoke-virtual {v0, v3, p1, v2, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/ComposerSaveModel;->saveCache(Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;ZIZ)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mMdeManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->getCoeditAdapter()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->checkDeleteOnlyMode()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mMdeManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->getCoeditAdapter()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->saveCoeditCache()V

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->setIsSaved(Z)V

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mComposerSaveModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/ComposerSaveModel;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mDocState:Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    invoke-virtual {v0, v3, p1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/ComposerSaveModel;->snapSave(Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;ZI)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public saveCacheForced(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mComposerSaveModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/ComposerSaveModel;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mDocState:Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/ComposerSaveModel;->saveCacheForced(Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mMdeManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->getCoeditAdapter()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->checkDeleteOnlyMode()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mMdeManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->getCoeditAdapter()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->saveCoeditCache()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->setIsSaved(Z)V

    :cond_0
    return-void
.end method

.method public setDocInfo(Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mDocInfo:Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;

    return-void
.end method

.method public setDocState(Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument<",
            "Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mComposerSaveModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/ComposerSaveModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/ComposerSaveModel;->setBlockedSave(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getNotesDocEntityManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->setOnRemovedListener(Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager$OnRemovedListener;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mDocState:Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mComposerSpenDocModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerSpenDocModel;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDoc()Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;

    :cond_0
    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerSpenDocModel;->setDoc(Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mDocState:Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mEntityManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/EntityManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/EntityManager;->setDocState(Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mVoiceModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mComposerSpenDocModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerSpenDocModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerSpenDocModel;->getDoc()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mMdeManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->getCoeditAdapter()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->isCoeditNote()Z

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->init(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mActionLinkModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/actionlink/ActionLinkModel;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mComposerSpenDocModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerSpenDocModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerSpenDocModel;->getDoc()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/actionlink/ActionLinkModel;->setDoc(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    :cond_1
    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mIsReloading:Z

    return-void
.end method

.method public setDoingCoeditWorkThread(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mIsDoingCoeditWorkThread:Z

    return-void
.end method

.method public setIsRecoveredOnCorrupted(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mIsRecoveredOnCorrupted:Z

    return-void
.end method

.method public setLastSpenOnlyMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mIsLastSpenOnlyMode:Z

    return-void
.end method

.method public setLastStateLockCanvas(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->setLastStateLockCanvas(Z)V

    return-void
.end method

.method public setMenuDirty(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mLastMenuDirty:Ljava/lang/String;

    return-void
.end method

.method public setNotSave()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mComposerSaveModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/ComposerSaveModel;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mDocState:Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/ComposerSaveModel;->setNotSave(Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;)V

    return-void
.end method

.method public setObserverIsConflicted(Landroidx/lifecycle/LifecycleOwner;Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mEntityManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/EntityManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/EntityManager;->getNotesDocEntityManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->getSyncConflictManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/SyncConflictDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/SyncConflictDataManager;->clearReplaceConflictStrategy()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mEntityManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/EntityManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/EntityManager;->getNotesDocEntityManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->getSyncConflictManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/SyncConflictDataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mDocState:Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/SyncConflictDataManager;->setObserverIsConflicted(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Ljava/lang/Runnable;)V

    return-void
.end method

.method public setOpenedTime()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->TAG:Ljava/lang/String;

    const-string v1, "setOpenedTime#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mDocInfo:Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo$OpenType;->OpenByView:Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo$OpenType;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;->isOpenType(Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo$OpenType;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mDocInfo:Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo$OpenType;->New:Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo$OpenType;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;->isOpenType(Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo$OpenType;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mEntityManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/EntityManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/EntityManager;->getNotesDocEntityManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mDocInfo:Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->setOpenedTime(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setReloadingState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mIsReloading:Z

    return-void
.end method

.method public setRunningDrawing(Z)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRunningDrawing# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->setRunningDrawing(Z)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;->BrushDrawing:Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->setLastRequestCode(I)V

    :cond_0
    return-void
.end method

.method public setSearchData(Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchModel;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mSearchModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchModel;

    return-void
.end method

.method public setTabletLayout(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mIsTabletLayout:Z

    return-void
.end method

.method public setUpToFinishWithoutSave()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getComposerSaveModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/ComposerSaveModel;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/ComposerSaveModel;->setBlockedSave(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getDocState()Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDocumentRepository()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->removeSaveStrategy(I)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    return-void
.end method

.method public setWidgetId(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mDocState:Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDocumentEntityContainer()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;->getEntity()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setWidgetId(I)V

    return-void
.end method

.method public setWidgetUpdateSaveStrategy(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mDocState:Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x8000

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDocumentRepository()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->removeSaveStrategy(I)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDocumentRepository()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->addSaveStrategy(I)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    :goto_0
    return-void
.end method

.method public updateActionLinkData()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mActionLinkModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/actionlink/ActionLinkModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/actionlink/ActionLinkModel;->updateActionLinkData()V

    return-void
.end method

.method public updateBackgroundData()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mDocState:Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->isSaveCache()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mActionLinkModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/actionlink/ActionLinkModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/actionlink/ActionLinkModel;->updateActionLinkData()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->requestCollect()V

    :cond_0
    return-void
.end method

.method public updateConflictStrategy(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mEntityManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/EntityManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/EntityManager;->getNotesDocEntityManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->getSyncConflictManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/SyncConflictDataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->mDocState:Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/SyncConflictDataManager;->updateConflictStrategy(Ljava/lang/String;I)V

    return-void
.end method
