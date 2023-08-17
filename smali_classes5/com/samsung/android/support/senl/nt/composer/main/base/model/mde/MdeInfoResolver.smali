.class Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver$EmptyCoeditDataResolver;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver$CoeditDataResolverImpl;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver$CoeditCommonDataResolver;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver$GscResolver;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver$Callback;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver$ICoeditDataResolver;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver$ICommonDataResolver;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver$ConnectionCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCoeditDataResolver:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver$ICoeditDataResolver;

.field private mCommonDataResolver:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver$ICommonDataResolver;

.field private mConnectionCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver$ConnectionCallback;

.field private mIsCoedit:Z

.field private mIsRequestedSessionConnection:Z

.field private final mIsSessionConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mSesUiListener:Lcom/samsung/android/support/senl/nt/base/common/sync/SesUiListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "MdeInfoResolver"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;->mIsRequestedSessionConnection:Z

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;->mIsSessionConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;->mSesUiListener:Lcom/samsung/android/support/senl/nt/base/common/sync/SesUiListener;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver$ConnectionCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;->mConnectionCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver$ConnectionCallback;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;->mIsSessionConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver$ConnectionCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;->mConnectionCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver$ConnectionCallback;

    return-void
.end method

.method public static bridge synthetic d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public deleteCoeditNoteDataAndDownload(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;->mCoeditDataResolver:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver$ICoeditDataResolver;

    invoke-interface {v0, p1, p3, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver$ICoeditDataResolver;->deleteCoeditNoteDataAndDownload(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public deleteNote(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;->mCommonDataResolver:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver$ICommonDataResolver;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver$ICommonDataResolver;->deleteNote(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public deleteSpace(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;->mCoeditDataResolver:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver$ICoeditDataResolver;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver$ICoeditDataResolver;->deleteSpace(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getCreatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver$Callback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver$Callback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;->mCommonDataResolver:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver$ICommonDataResolver;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver$ICommonDataResolver;->getCreatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver$Callback;)V

    return-void
.end method

.method public getCurrentUserOwnerId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;->mCoeditDataResolver:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver$ICoeditDataResolver;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver$ICoeditDataResolver;->getCurrentUserOwnerId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLeaderId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;->mCoeditDataResolver:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver$ICoeditDataResolver;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver$ICoeditDataResolver;->getLeaderId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMemberListLiveData(Landroid/content/Context;Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract$MemberInfo;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;->mCoeditDataResolver:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver$ICoeditDataResolver;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver$ICoeditDataResolver;->getMemberListLiveData(Landroid/content/Context;Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public getSpaceName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;->mCoeditDataResolver:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver$ICoeditDataResolver;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver$ICoeditDataResolver;->getSpaceName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public init(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;->mCommonDataResolver:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver$ICommonDataResolver;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;->mIsCoedit:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;->mIsCoedit:Z

    if-eqz p1, :cond_1

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver$CoeditCommonDataResolver;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver$CoeditCommonDataResolver;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;->mCommonDataResolver:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver$ICommonDataResolver;

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver$CoeditDataResolverImpl;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver$CoeditDataResolverImpl;-><init>()V

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver$GscResolver;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver$GscResolver;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;->mCommonDataResolver:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver$ICommonDataResolver;

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver$EmptyCoeditDataResolver;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver$EmptyCoeditDataResolver;-><init>()V

    :goto_0
    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;->mCoeditDataResolver:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver$ICoeditDataResolver;

    return-void
.end method

.method public isSessionConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;->mIsSessionConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isStandAlone(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;->mCoeditDataResolver:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver$ICoeditDataResolver;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver$ICoeditDataResolver;->isStandAlone(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public leave(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;->mCoeditDataResolver:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver$ICoeditDataResolver;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver$ICoeditDataResolver;->leave(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public requestConnectSessionAsync()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;->requestConnectSessionAsync(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver$ConnectionCallback;)V

    return-void
.end method

.method public requestConnectSessionAsync(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver$ConnectionCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;->mConnectionCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver$ConnectionCallback;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;->mConnectionCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver$ConnectionCallback;

    :cond_0
    iget-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;->mIsRequestedSessionConnection:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;->mIsRequestedSessionConnection:Z

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;->mCommonDataResolver:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver$ICommonDataResolver;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;->mSesUiListener:Lcom/samsung/android/support/senl/nt/base/common/sync/SesUiListener;

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver$ICommonDataResolver;->requestConnectSessionAsync(Lcom/samsung/android/support/senl/nt/base/common/sync/SesUiListener;)V

    :cond_1
    return-void
.end method

.method public requestDisConnectSessionAsync()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;->mIsRequestedSessionConnection:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;->mCommonDataResolver:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver$ICommonDataResolver;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;->mSesUiListener:Lcom/samsung/android/support/senl/nt/base/common/sync/SesUiListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver$ICommonDataResolver;->requestDisConnectSessionAsync(Lcom/samsung/android/support/senl/nt/base/common/sync/SesUiListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;->mIsRequestedSessionConnection:Z

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;->mIsSessionConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    return-void
.end method
