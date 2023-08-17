.class public Lcom/samsung/android/support/senl/nt/model/utils/VoiceDataUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final RECORDING_MIN_TIME:I = 0x4b0

.field private static final TAG:Ljava/lang/String; = "VoiceDataUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static applyVoiceData(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/support/senl/nt/model/documents/data/VoiceRecordingDataSource;IZ)V
    .locals 7

    invoke-virtual {p0, p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getVoiceData(I)Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyVoiceData# contentIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " voiceData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;->getAttachedFile()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;->getRecordingTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VoiceDataUtil"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/model/documents/data/VoiceRecordingDataSource;->getFilePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/data/common/utils/VoiceTimeDataUtils;->getPlayTime(Ljava/lang/String;)I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "applyVoiceData#  cachePath: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", playTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v5, 0x4b0

    if-le v1, v5, :cond_1

    if-eqz p3, :cond_0

    const-string p3, "applyVoiceData# isCoeditNote is true"

    invoke-static {v2, p3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    div-int/lit16 p3, v1, 0x3e8

    invoke-static {p3, v4}, Lcom/samsung/android/support/senl/nt/data/common/utils/VoiceTimeDataUtils;->createTimeString(IZ)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;->setPlayTime(Ljava/lang/String;)V

    int-to-long v5, v1

    invoke-virtual {v0, v5, v6}, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;->setRecordingTime(J)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;->attachFile(Ljava/lang/String;)V

    move v3, v4

    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    const-string p3, "applyVoiceData# removeVoiceData is true."

    invoke-static {v2, p3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->removeVoiceData(I)V

    :cond_2
    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->deleteFile(Ljava/lang/String;)Z

    return-void
.end method

.method public static setCachedVoiceRecordingPath(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;)V
    .locals 8

    if-eqz p0, :cond_8

    if-nez p1, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-interface {p0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;->getVoiceRecordingInfo()Lcom/samsung/android/support/senl/nt/model/documents/data/VoiceRecordingDataSource;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCachedVoiceRecordingPath, vInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", currentPid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VoiceDataUtil"

    invoke-static {v3, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_8

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/model/documents/data/VoiceRecordingDataSource;->isValid()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/model/documents/data/VoiceRecordingDataSource;->getProcessId()I

    move-result v2

    if-eq v2, v1, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->getContentCount()I

    move-result v1

    if-gtz v1, :cond_2

    invoke-interface {p0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;->clearVoiceRecordingInfo()V

    return-void

    :cond_2
    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/model/documents/data/VoiceRecordingDataSource;->getContentIndex()I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->getContentCount()I

    move-result v2

    if-ltz v1, :cond_7

    if-lt v1, v2, :cond_3

    goto/16 :goto_1

    :cond_3
    invoke-virtual {p1, v1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->getContent(I)Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;

    move-result-object v2

    instance-of v4, v2, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentVoice;

    if-nez v4, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setCachedVoiceRecordingPath# contentBase is wrong. contentIndex:"

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;->clearVoiceRecordingInfo()V

    return-void

    :cond_4
    check-cast v2, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentVoice;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/model/documents/data/VoiceRecordingDataSource;->getFilePath()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setCachedVoiceRecordingPath# contentIndex:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " voiceData: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentVoice;->getAttachedFile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentVoice;->getPlayTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " cachePath: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/model/documents/data/VoiceRecordingDataSource;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->exists(Ljava/lang/String;)Z

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_5

    invoke-static {v4}, Lcom/samsung/android/support/senl/nt/data/common/utils/VoiceTimeDataUtils;->getPlayTime(Ljava/lang/String;)I

    move-result v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setCachedVoiceRecordingPath, playTime: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x4b0

    if-le v0, v3, :cond_5

    div-int/lit16 v0, v0, 0x3e8

    invoke-static {v0, v5}, Lcom/samsung/android/support/senl/nt/data/common/utils/VoiceTimeDataUtils;->createTimeString(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentVoice;->setPlayTime(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentVoice;->attachFile(Ljava/lang/String;)V

    move v1, v5

    :cond_5
    if-eqz v1, :cond_6

    invoke-virtual {p1, v2}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->removeContent(Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;)V

    :cond_6
    invoke-interface {p0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;->clearVoiceRecordingInfo()V

    return-void

    :cond_7
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setCachedVoiceRecordingPath# contentIndex is wrong. size:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", contentIndex:"

    goto/16 :goto_0

    :cond_8
    :goto_2
    return-void
.end method

.method public static setCachedVoiceRecordingPath(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Z)V
    .locals 5

    if-eqz p0, :cond_8

    if-nez p1, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-interface {p0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;->getVoiceRecordingInfo()Lcom/samsung/android/support/senl/nt/model/documents/data/VoiceRecordingDataSource;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCachedVoiceRecordingPath# vInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VoiceDataUtil"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_8

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/model/documents/data/VoiceRecordingDataSource;->isValid()Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_5

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getVoiceDataList()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getVoiceDataList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_4

    :cond_2
    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/model/documents/data/VoiceRecordingDataSource;->getContentIndex()I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getVoiceDataList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ltz v1, :cond_6

    if-lt v1, v3, :cond_3

    goto :goto_3

    :cond_3
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/model/documents/data/VoiceRecordingDataSource;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->exists(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/model/documents/data/VoiceRecordingDataSource;->getProcessId()I

    move-result v4

    if-ne v4, v3, :cond_4

    goto :goto_1

    :cond_4
    invoke-static {p1, v0, v1, p2}, Lcom/samsung/android/support/senl/nt/model/utils/VoiceDataUtil;->applyVoiceData(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/support/senl/nt/model/documents/data/VoiceRecordingDataSource;IZ)V

    :goto_0
    invoke-interface {p0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;->clearVoiceRecordingInfo()V

    return-void

    :cond_5
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setCachedVoiceRecordingPath# vInfo is wrong. filePath:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/model/documents/data/VoiceRecordingDataSource;->getFilePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", currentPid:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setCachedVoiceRecordingPath# contentIndex is wrong. size:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", contentIndex:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_7
    :goto_4
    invoke-interface {p0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;->clearVoiceRecordingInfo()V

    :cond_8
    :goto_5
    return-void
.end method
