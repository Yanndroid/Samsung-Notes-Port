.class public abstract Lcom/samsung/android/support/senl/nt/model/collector/common/mining/AbsMiningExtractor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/model/collector/common/mining/IMiningExtractor;


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static final TOP_K:I = 0xa


# instance fields
.field public mCompleteListener:Lcom/samsung/android/support/senl/nt/model/collector/common/mining/ICompleteListener;

.field public final mExtra:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mExtractOptions:Lcom/samsung/android/sdk/scs/ai/text/phrase/KeyPhraseExtractor$ExtractOptions;

.field public mKeyPhraseExtractor:Lcom/samsung/android/sdk/scs/ai/text/phrase/KeyPhraseExtractor;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "AbsMiningExtractor"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/model/common/log/CollectLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/model/collector/common/mining/AbsMiningExtractor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/mining/AbsMiningExtractor;->mExtra:Ljava/util/Map;

    return-void
.end method

.method public static bridge synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/common/mining/AbsMiningExtractor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getOnCompleteListener()Lcom/samsung/android/sdk/scs/base/tasks/OnCompleteListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/sdk/scs/base/tasks/OnCompleteListener<",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/scs/ai/text/phrase/KeyPhrase;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/support/senl/nt/model/collector/common/mining/AbsMiningExtractor$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/model/collector/common/mining/AbsMiningExtractor$2;-><init>(Lcom/samsung/android/support/senl/nt/model/collector/common/mining/AbsMiningExtractor;)V

    return-object v0
.end method


# virtual methods
.method public extract(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/collector/common/mining/ICompleteListener;)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/collector/common/mining/AbsMiningExtractor;->initExtract()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/collector/common/mining/AbsMiningExtractor;->initExtractOptions()V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/mining/AbsMiningExtractor;->mCompleteListener:Lcom/samsung/android/support/senl/nt/model/collector/common/mining/ICompleteListener;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/collector/common/mining/AbsMiningExtractor;->isValid()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/mining/AbsMiningExtractor;->mCompleteListener:Lcom/samsung/android/support/senl/nt/model/collector/common/mining/ICompleteListener;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, p2}, Lcom/samsung/android/support/senl/nt/model/collector/common/mining/ICompleteListener;->onCompleted(Ljava/util/ArrayList;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/DeviceInfo;->isEngMode()Z

    move-result p2

    if-eqz p2, :cond_1

    sget-object p2, Lcom/samsung/android/support/senl/nt/model/collector/common/mining/AbsMiningExtractor;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "extract : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/mining/AbsMiningExtractor;->mExtractOptions:Lcom/samsung/android/sdk/scs/ai/text/phrase/KeyPhraseExtractor$ExtractOptions;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/mining/AbsMiningExtractor;->mExtra:Ljava/util/Map;

    invoke-virtual {p2, v0}, Lcom/samsung/android/sdk/scs/ai/text/phrase/KeyPhraseExtractor$ExtractOptions;->setExtraInfo(Ljava/util/Map;)Lcom/samsung/android/sdk/scs/ai/text/phrase/KeyPhraseExtractor$ExtractOptions;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/mining/AbsMiningExtractor;->mKeyPhraseExtractor:Lcom/samsung/android/sdk/scs/ai/text/phrase/KeyPhraseExtractor;

    const-string v0, "\ufffc"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/common/util/UnicodeUtils;->removeUnicodeFromText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/mining/AbsMiningExtractor;->mExtractOptions:Lcom/samsung/android/sdk/scs/ai/text/phrase/KeyPhraseExtractor$ExtractOptions;

    invoke-virtual {p2, p1, v0}, Lcom/samsung/android/sdk/scs/ai/text/phrase/KeyPhraseExtractor;->extract(Ljava/lang/String;Lcom/samsung/android/sdk/scs/ai/text/phrase/KeyPhraseExtractor$ExtractOptions;)Lcom/samsung/android/sdk/scs/base/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/support/senl/nt/model/collector/common/mining/AbsMiningExtractor$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/support/senl/nt/model/collector/common/mining/AbsMiningExtractor$1;-><init>(Lcom/samsung/android/support/senl/nt/model/collector/common/mining/AbsMiningExtractor;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/model/collector/common/mining/AbsMiningExtractor;->getOnCompleteListener()Lcom/samsung/android/sdk/scs/base/tasks/OnCompleteListener;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->addOnCompleteListener(Ljava/util/concurrent/Executor;Lcom/samsung/android/sdk/scs/base/tasks/OnCompleteListener;)Lcom/samsung/android/sdk/scs/base/tasks/Task;

    return-void
.end method

.method public initExtract()V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/scs/ai/AiServices;->getKeyPhraseExtractor(Landroid/content/Context;)Lcom/samsung/android/sdk/scs/ai/text/phrase/KeyPhraseExtractor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/mining/AbsMiningExtractor;->mKeyPhraseExtractor:Lcom/samsung/android/sdk/scs/ai/text/phrase/KeyPhraseExtractor;

    return-void
.end method

.method public abstract initExtractOptions()V
.end method

.method public isValid()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/mining/AbsMiningExtractor;->mExtractOptions:Lcom/samsung/android/sdk/scs/ai/text/phrase/KeyPhraseExtractor$ExtractOptions;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setExtraTitle(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/mining/AbsMiningExtractor;->mExtra:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
