.class public Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdocx/SPDToSDocXConverterWrapper;
.super Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdocx/AbsSDocXConverterWrapper;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ISPDConverter;
.implements Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/common/ISDocXConverter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdocx/AbsSDocXConverterWrapper<",
        "Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ISPDConverter$ConverterParams;",
        ">;",
        "Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ISPDConverter;",
        "Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/common/ISDocXConverter;"
    }
.end annotation


# static fields
.field public static final ENABLED:Z = true

.field private static final TAG:Ljava/lang/String; = "SPDToSDocXConverterWrapper"


# instance fields
.field private mConvertVoiceDataThread:Ljava/lang/Thread;

.field private mConverter:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/SPDToSDocXConverter;

.field private mNoteDocManager:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notedoc/SpenNoteDocManager;

.field private final mResourceGetter:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notedoc/ResourceGetter;

.field private mSPDConverter:Lcom/samsung/android/support/senl/document/memoconverter/SPDConverter;

.field private mVoiceConverter:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/converters/VoiceConverter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdocx/AbsSDocXConverterWrapper;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notedoc/ResourceGetter;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notedoc/ResourceGetter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdocx/SPDToSDocXConverterWrapper;->mResourceGetter:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notedoc/ResourceGetter;

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/SPDToSDocXConverter;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/SPDToSDocXConverter;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdocx/SPDToSDocXConverterWrapper;->mConverter:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/SPDToSDocXConverter;

    invoke-static {p1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/constructor/DocumentConstructor;->makeSPDConverter(Landroid/content/Context;)Lcom/samsung/android/support/senl/document/memoconverter/SPDConverter;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdocx/SPDToSDocXConverterWrapper;->mSPDConverter:Lcom/samsung/android/support/senl/document/memoconverter/SPDConverter;

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdocx/SPDToSDocXConverterWrapper;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdocx/SPDToSDocXConverterWrapper;->lambda$convert$0(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    return-void
.end method

.method private synthetic lambda$convert$0(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdocx/SPDToSDocXConverterWrapper;->mNoteDocManager:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notedoc/SpenNoteDocManager;

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notedoc/SpenNoteDocManager;->getVoiceCreateTimeMap()Landroid/util/ArrayMap;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdocx/SPDToSDocXConverterWrapper;->mNoteDocManager:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notedoc/SpenNoteDocManager;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notedoc/SpenNoteDocManager;->getVoicePathMap()Landroid/util/ArrayMap;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdocx/SPDToSDocXConverterWrapper;->mNoteDocManager:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notedoc/SpenNoteDocManager;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notedoc/SpenNoteDocManager;->getVoiceMemoTable()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    new-instance v3, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/converters/VoiceConverter;

    invoke-direct {v3}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/converters/VoiceConverter;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdocx/SPDToSDocXConverterWrapper;->mVoiceConverter:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/converters/VoiceConverter;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-nez v4, :cond_1

    const-wide/16 v4, -0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    :cond_1
    iget-object v5, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdocx/SPDToSDocXConverterWrapper;->mVoiceConverter:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/converters/VoiceConverter;

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, p1, v3, v6, v7}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/converters/VoiceConverter;->runConverterVoiceData(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;J)Z

    goto :goto_0

    :cond_2
    const-string p1, "SPDToSDocXConverterWrapper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "voice map null: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private postProcess()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdocx/SPDToSDocXConverterWrapper;->mNoteDocManager:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notedoc/SpenNoteDocManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notedoc/SpenNoteDocManager;->closeSpenNoteDoc()Z

    :cond_0
    return-void
.end method

.method private releaseThread()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdocx/SPDToSDocXConverterWrapper;->mConvertVoiceDataThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdocx/SPDToSDocXConverterWrapper;->mConvertVoiceDataThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdocx/SPDToSDocXConverterWrapper;->mConvertVoiceDataThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdocx/SPDToSDocXConverterWrapper;->mConvertVoiceDataThread:Ljava/lang/Thread;

    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    const-string v0, "SPDToSDocXConverterWrapper"

    const-string v1, "requested cancel!"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdocx/SPDToSDocXConverterWrapper;->releaseThread()V

    return-void
.end method

.method public bridge synthetic convert(Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/AbsPathConvertParams;)Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ConverterResult;
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/AbsPathConvertParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdocx/AbsSDocXConverterWrapper;->convert(Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/AbsPathConvertParams;)Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ConverterResult;

    move-result-object p1

    return-object p1
.end method

.method public convert(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V
    .locals 3
    .param p3    # Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdocx/AbsSDocXConverterWrapper;->verifySourcePath(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "SPDToSDocXConverterWrapper"

    if-nez v0, :cond_0

    const-string p1, "spd file path  is null or not true"

    :goto_0
    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notedoc/SpenNoteDocManager;

    iget-object v2, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdocx/SPDToSDocXConverterWrapper;->mResourceGetter:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notedoc/ResourceGetter;

    invoke-direct {v0, p1, p2, v2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notedoc/SpenNoteDocManager;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/converters/IResourceGetter;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdocx/SPDToSDocXConverterWrapper;->mNoteDocManager:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notedoc/SpenNoteDocManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notedoc/SpenNoteDocManager;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " : is not a spd file"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdocx/SPDToSDocXConverterWrapper;->mNoteDocManager:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notedoc/SpenNoteDocManager;

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdocx/AbsSDocXConverterWrapper;->mPassWord:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageDefaultWidth()I

    move-result v2

    invoke-virtual {p2, v0, v2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notedoc/SpenNoteDocManager;->createSpenNoteDoc(Ljava/lang/String;I)Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;

    move-result-object p2

    if-nez p2, :cond_2

    const-string p1, "can\'t create spd file!"

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdocx/SPDToSDocXConverterWrapper;->mNoteDocManager:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notedoc/SpenNoteDocManager;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notedoc/SpenNoteDocManager;->extractVoice()Z

    new-instance p2, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    invoke-direct {p2, v1}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdocx/a;

    invoke-direct {v0, p0, p3}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdocx/a;-><init>(Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdocx/SPDToSDocXConverterWrapper;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    invoke-virtual {p2, v0}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdocx/SPDToSDocXConverterWrapper;->mConvertVoiceDataThread:Ljava/lang/Thread;

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    iget-object p2, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdocx/SPDToSDocXConverterWrapper;->mConverter:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/SPDToSDocXConverter;

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdocx/SPDToSDocXConverterWrapper;->mNoteDocManager:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notedoc/SpenNoteDocManager;

    iget-object v2, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdocx/SPDToSDocXConverterWrapper;->mResourceGetter:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notedoc/ResourceGetter;

    invoke-virtual {p2, p1, v0, p3, v2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/SPDToSDocXConverter;->convert(Landroid/content/Context;Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/converters/ISpenNoteDocManager;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/converters/IResourceGetter;)V

    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdocx/SPDToSDocXConverterWrapper;->mConvertVoiceDataThread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "convertVoiceDataTask, e: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdocx/SPDToSDocXConverterWrapper;->postProcess()V

    return-void
.end method

.method public getLastModifiedTime(Ljava/lang/String;)J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdocx/SPDToSDocXConverterWrapper;->mSPDConverter:Lcom/samsung/android/support/senl/document/memoconverter/SPDConverter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/SPDConverter;->getLastModifiedTime(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getResultType()I
    .locals 1

    const/16 v0, 0x9

    return v0
.end method

.method public getStatus(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdocx/SPDToSDocXConverterWrapper;->mSPDConverter:Lcom/samsung/android/support/senl/document/memoconverter/SPDConverter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/SPDConverter;->isLocked(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/AbsConverterWrapper;->getStatus(Ljava/lang/String;)I

    move-result p1

    :goto_0
    return p1
.end method

.method public isAlreadyConverted(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdocx/SPDToSDocXConverterWrapper;->mSPDConverter:Lcom/samsung/android/support/senl/document/memoconverter/SPDConverter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/SPDConverter;->isAlreadyConverted(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic makeParams(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ISDocConvertParams;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdocx/SPDToSDocXConverterWrapper;->makeParams(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ISPDConverter$ConverterParams;

    move-result-object p1

    return-object p1
.end method

.method public makeParams(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ISPDConverter$ConverterParams;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ISPDConverter$ConverterParams;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ISPDConverter$ConverterParams;-><init>()V

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/AbsPathConvertParams;->setFilePath(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ISPDConverter$ConverterParams;

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/AbsPathConvertParams;->setPassword(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ISPDConverter$ConverterParams;

    return-object p1
.end method

.method public declared-synchronized release()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdocx/SPDToSDocXConverterWrapper;->mConverter:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/SPDToSDocXConverter;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/SPDToSDocXConverter;->release()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdocx/SPDToSDocXConverterWrapper;->mConverter:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/SPDToSDocXConverter;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdocx/SPDToSDocXConverterWrapper;->mNoteDocManager:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notedoc/SpenNoteDocManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notedoc/SpenNoteDocManager;->release()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdocx/SPDToSDocXConverterWrapper;->mNoteDocManager:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notedoc/SpenNoteDocManager;

    :cond_1
    iput-object v1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdocx/SPDToSDocXConverterWrapper;->mVoiceConverter:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/converters/VoiceConverter;

    iput-object v1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdocx/SPDToSDocXConverterWrapper;->mSPDConverter:Lcom/samsung/android/support/senl/document/memoconverter/SPDConverter;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdocx/SPDToSDocXConverterWrapper;->releaseThread()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
