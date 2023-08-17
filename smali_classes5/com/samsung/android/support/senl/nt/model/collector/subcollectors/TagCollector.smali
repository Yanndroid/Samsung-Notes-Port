.class public Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/TagCollector;
.super Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/AbsCollector;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mTagMiningExtractor:Lcom/samsung/android/support/senl/nt/model/collector/common/mining/TagMiningExtractor;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "TagCollector"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/model/common/log/CollectLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/TagCollector;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ICollectStateListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/AbsCollector;-><init>(Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ICollectStateListener;)V

    new-instance p1, Lcom/samsung/android/support/senl/nt/model/collector/common/mining/TagMiningExtractor;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/model/collector/common/mining/TagMiningExtractor;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/TagCollector;->mTagMiningExtractor:Lcom/samsung/android/support/senl/nt/model/collector/common/mining/TagMiningExtractor;

    return-void
.end method


# virtual methods
.method public collect(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;Lcom/samsung/android/support/senl/nt/model/collector/repository/ICollectRepository;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/TagCollector;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/AbsCollector;->isAvailable(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/AbsCollector;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/TagCollectListenerManager;->getInstance()Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/TagCollectListenerManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/AbsCollectListenerManager;->notifyOnCollectCanceled(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;Lcom/samsung/android/support/senl/nt/model/collector/repository/ICollectRepository;)V

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/AbsCollector;->collectNext(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;Lcom/samsung/android/support/senl/nt/model/collector/repository/ICollectRepository;)Z

    move-result p1

    return p1

    :cond_1
    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/TagCollectListenerManager;->getInstance()Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/TagCollectListenerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/AbsCollectListenerManager;->notifyOnCollectStarted(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/model/collector/repository/ICollectRepository;->getEntireObjectRecognitionData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/16 v3, 0x20

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/model/collector/repository/ICollectRepository;->getBodyTextData()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/model/collector/repository/ICollectRepository;->getTitleData()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/TagCollector;->mTagMiningExtractor:Lcom/samsung/android/support/senl/nt/model/collector/common/mining/TagMiningExtractor;

    invoke-virtual {v2, v1}, Lcom/samsung/android/support/senl/nt/model/collector/common/mining/AbsMiningExtractor;->setExtraTitle(Ljava/lang/String;)V

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/TagCollector;->mTagMiningExtractor:Lcom/samsung/android/support/senl/nt/model/collector/common/mining/TagMiningExtractor;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/TagCollector$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/TagCollector$1;-><init>(Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/TagCollector;Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;Lcom/samsung/android/support/senl/nt/model/collector/repository/ICollectRepository;)V

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/support/senl/nt/model/collector/common/mining/AbsMiningExtractor;->extract(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/collector/common/mining/ICompleteListener;)V

    goto :goto_0

    :cond_5
    :goto_2
    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/TagCollector;->TAG:Ljava/lang/String;

    const-string v1, "collect not executed, not supported or not available"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/TagCollectListenerManager;->getInstance()Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/TagCollectListenerManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/AbsCollectListenerManager;->notifyOnCollectFailed(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;Lcom/samsung/android/support/senl/nt/model/collector/repository/ICollectRepository;)V

    goto :goto_0
.end method

.method public fail(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;Lcom/samsung/android/support/senl/nt/model/collector/repository/ICollectRepository;)Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/TagCollectListenerManager;->getInstance()Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/TagCollectListenerManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/AbsCollectListenerManager;->notifyOnCollectFailed(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;Lcom/samsung/android/support/senl/nt/model/collector/repository/ICollectRepository;)V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/AbsCollector;->failNext(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;Lcom/samsung/android/support/senl/nt/model/collector/repository/ICollectRepository;)Z

    move-result p1

    return p1
.end method

.method public isSupported()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectFeature;->isKeyPhraseCollectSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/AbsCollector;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
