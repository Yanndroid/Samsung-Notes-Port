.class public Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager$stateForSA;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager$SavedState;
    }
.end annotation


# static fields
.field private static final KEY_INSTANCE_STATE:Ljava/lang/String; = "key_MdeManager"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCoeditAdapter:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;

.field private mIsReopening:Z

.field private final mMdeInfo:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;

.field private mMdeInfoResolver:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;

.field private mMemberListLiveData:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract$MemberInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mMemberListLiveDataObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract$MemberInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSavedState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager$SavedState;

.field private mStateForSA:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager$stateForSA;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "MdeManager"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->mIsReopening:Z

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->createMdeInfo(Landroid/content/Intent;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->mMdeInfo:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->mCoeditAdapter:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->initCoedit(Landroid/content/Intent;Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;)V

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager$stateForSA;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager$stateForSA;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->mStateForSA:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager$stateForSA;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->mMdeInfo:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->mMdeInfoResolver:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;

    return-object p0
.end method

.method public static bridge synthetic c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private createMdeInfo(Landroid/content/Intent;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;
    .locals 7

    new-instance v6, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;

    const-string v0, "mde_space_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "mde_group_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "mde_owner_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "account_type"

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string v4, ""

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v6
.end method

.method private initCoedit(Landroid/content/Intent;Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;)V
    .locals 2

    const-string v0, "category_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "sdoc_uuid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;->get(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getCategoryUuid()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->mCoeditAdapter:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->isCoeditNote(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->mCoeditAdapter:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->setCoeditNote(Z)V

    invoke-virtual {p0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->initMdeInfoResolver(Z)V

    :cond_2
    return-void
.end method

.method private setMemberListLiveDataObserver(Landroid/content/Context;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->mMemberListLiveData:Landroidx/lifecycle/LiveData;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->TAG:Ljava/lang/String;

    const-string v1, "setMemberListLiveDataObserver# old data was remained"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->mMdeInfoResolver:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->mMdeInfo:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->getGroupId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;->getMemberListLiveData(Landroid/content/Context;Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->mMemberListLiveData:Landroidx/lifecycle/LiveData;

    if-nez p1, :cond_1

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->TAG:Ljava/lang/String;

    const-string v0, "setMemberListLiveDataObserver# mMemberListLiveData is null"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->mMemberListLiveDataObserver:Landroidx/lifecycle/Observer;

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->mMemberListLiveData:Landroidx/lifecycle/LiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMemberListLiveDataObserver# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->mMemberListLiveData:Landroidx/lifecycle/LiveData;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " IllegalStateException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public clearSession()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->mMdeInfoResolver:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->mMdeInfo:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->isMde()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->mMdeInfoResolver:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;->requestDisConnectSessionAsync()V

    :cond_0
    return-void
.end method

.method public connectSession()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->mMdeInfoResolver:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->mMdeInfo:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->isMde()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->mMdeInfoResolver:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;->requestConnectSessionAsync()V

    :cond_0
    return-void
.end method

.method public deleteCoeditNoteDataAndDownload(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->mMdeInfoResolver:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;->deleteCoeditNoteDataAndDownload(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public deleteNote(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->mMdeInfoResolver:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;->deleteNote(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public deleteSpace(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->mMdeInfoResolver:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;->deleteSpace(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getCoeditAdapter()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->mCoeditAdapter:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;

    return-object v0
.end method

.method public getMaximumCountOnCoedit()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->mStateForSA:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager$stateForSA;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager$stateForSA;->getMaximumCountOnCoedit()I

    move-result v0

    return v0
.end method

.method public getMdeInfo()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->mMdeInfo:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;

    return-object v0
.end method

.method public getSavedState()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager$SavedState;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->mSavedState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager$SavedState;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->mSavedState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager$SavedState;

    return-object v0
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->mMdeInfo:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->isMde()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->mCoeditAdapter:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->isCoeditFeatureSupported(Landroid/content/Context;)Z

    move-result p1

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->setCoeditEnabled(Z)V

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init# isCoeditNote : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->mCoeditAdapter:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->isCoeditNote()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->mCoeditAdapter:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->isCoeditNote()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->initMdeInfoResolver(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->connectSession()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->mCoeditAdapter:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->isCoeditNote()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->setMemberListLiveDataObserver(Landroid/content/Context;)V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->mMdeInfoResolver:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->mMdeInfo:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->getGroupId()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->mMdeInfo:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->getOwnerId()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->mMdeInfo:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->getSpaceId()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager$1;

    invoke-direct {v6, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;)V

    move-object v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;->getCreatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver$Callback;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->mMdeInfo:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->mMdeInfoResolver:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->getGroupId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;->getLeaderId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->setLeaderId(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->mMdeInfo:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->mMdeInfoResolver:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;->getCurrentUserOwnerId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->setMyId(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->mMdeInfo:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->mMdeInfoResolver:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->getSpaceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;->isStandAlone(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->setStandAlone(Z)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->mMdeInfo:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->mMdeInfoResolver:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->getSpaceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;->getSpaceName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->setSpaceName(Ljava/lang/String;)V

    return-void
.end method

.method public initMdeInfoResolver(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->mMdeInfoResolver:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->mMdeInfoResolver:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->mMdeInfoResolver:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;->init(Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->mCoeditAdapter:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->mMdeInfoResolver:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->setMdeInfoResolver(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;)V

    return-void
.end method

.method public isCreator(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->mMdeInfoResolver:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;->getCurrentUserOwnerId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isReopening()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->mIsReopening:Z

    return v0
.end method

.method public leaveNote()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->mMdeInfoResolver:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->mMdeInfo:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->getSpaceId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->mMdeInfo:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->getGroupId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;->leave(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->mStateForSA:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager$stateForSA;

    const-string v1, "key_MdeManager"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public release()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->mMemberListLiveData:Landroidx/lifecycle/LiveData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->mMemberListLiveDataObserver:Landroidx/lifecycle/Observer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->TAG:Ljava/lang/String;

    const-string v1, "release# mMemberListLiveData.removeObserver"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->mMemberListLiveData:Landroidx/lifecycle/LiveData;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->mMemberListLiveDataObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->mMemberListLiveDataObserver:Landroidx/lifecycle/Observer;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->mMemberListLiveData:Landroidx/lifecycle/LiveData;

    :cond_0
    return-void
.end method

.method public restoreState(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "key_MdeManager"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager$stateForSA;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->mStateForSA:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager$stateForSA;

    :cond_0
    return-void
.end method

.method public setMaximumCountOnCoedit(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->mStateForSA:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager$stateForSA;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager$stateForSA;->setMaximumCountOnCoedit(I)V

    return-void
.end method

.method public setReopening(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->mIsReopening:Z

    return-void
.end method

.method public setSavedState(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager$SavedState;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->mSavedState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager$SavedState;

    return-void
.end method

.method public updateMdeEntity(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->mMdeInfo:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->getSpaceId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->mMdeInfo:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->getSpaceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setMdeSpaceId(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->mMdeInfo:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->getGroupId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->mMdeInfo:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->getGroupId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setMdeGroupId(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->mMdeInfo:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->getOwnerId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->mMdeInfo:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->getOwnerId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setMdeOwnerId(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
