.class public Lcom/samsung/android/support/senl/nt/data/repository/document/content/ContentDataCreator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/data/repository/document/content/ContentDataCreator$VoiceContentInfo;
    }
.end annotation


# static fields
.field private static final DEFAULT_AUDIO_CONTENT_TITLE:Ljava/lang/String; = "Audio"

.field private static final DEFAULT_VOICE_CONTENT_TITLE:Ljava/lang/String; = "Voice"


# instance fields
.field private final mAppContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/repository/document/content/ContentDataCreator;->mAppContext:Landroid/content/Context;

    return-void
.end method

.method private createVoiceContentEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/data/repository/document/content/ContentDataCreator;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/util/UUIDUtils;->newUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;->setUuid(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;->setSdocUuid(Ljava/lang/String;)V

    const-string p1, "content/voice"

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;->setMimeType(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;->setDisplayName(Ljava/lang/String;)V

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;->setMediaData(Ljava/lang/String;)V

    invoke-static {p4}, Lcom/samsung/android/support/senl/nt/data/common/legacy/ProviderUtil;->filePathParser(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;->setFilePath(Ljava/lang/String;)V

    return-object v0
.end method

.method private getAudioContents(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)Ljava/util/List;
    .locals 5
    .param p1    # Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/repository/document/content/ContentDataCreator$VoiceContentInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/samsung/android/support/senl/nt/data/common/utils/SpenWNoteObjectHelper;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/data/common/utils/SpenWNoteObjectHelper;-><init>()V

    const/16 v2, 0x200

    invoke-virtual {v1, p1, v2}, Lcom/samsung/android/support/senl/nt/data/common/utils/SpenWNoteObjectHelper;->getSortedObjectList(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;->getTitle()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;->getTitle()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_0
    const-string v2, "Audio"

    :goto_1
    new-instance v3, Lcom/samsung/android/support/senl/nt/data/repository/document/content/ContentDataCreator$VoiceContentInfo;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;->getPlayTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;->getAttachedFile()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v2, v4, v1}, Lcom/samsung/android/support/senl/nt/data/repository/document/content/ContentDataCreator$VoiceContentInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getVoiceContents(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)Ljava/util/List;
    .locals 5
    .param p1    # Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/repository/document/content/ContentDataCreator$VoiceContentInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getVoiceDataList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_0
    const-string v2, "Voice"

    :goto_1
    new-instance v3, Lcom/samsung/android/support/senl/nt/data/repository/document/content/ContentDataCreator$VoiceContentInfo;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;->getPlayTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;->getAttachedFile()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v2, v4, v1}, Lcom/samsung/android/support/senl/nt/data/repository/document/content/ContentDataCreator$VoiceContentInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public createThumbnailEntities(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/data/repository/document/content/ContentDataCreator;->mAppContext:Landroid/content/Context;

    const-string v3, "mainlist"

    invoke-static {v2, p1, v3}, Lcom/samsung/android/support/senl/nt/base/common/util/PageCacheUtils;->getCacheDirectory(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    new-instance v5, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;

    invoke-direct {v5}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;-><init>()V

    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/data/repository/document/content/ContentDataCreator;->mAppContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/samsung/android/support/senl/nt/base/common/util/UUIDUtils;->newUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;->setUuid(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;->setSdocUuid(Ljava/lang/String;)V

    const-string v6, "content/image"

    invoke-virtual {v5, v6}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;->setMimeType(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;->setMediaData(Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public createVoiceEntities(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1    # Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/data/repository/document/content/ContentDataCreator;->getAudioContents(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/data/repository/document/content/ContentDataCreator;->getVoiceContents(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/data/repository/document/content/ContentDataCreator$VoiceContentInfo;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/data/repository/document/content/ContentDataCreator$VoiceContentInfo;->b(Lcom/samsung/android/support/senl/nt/data/repository/document/content/ContentDataCreator$VoiceContentInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/data/common/utils/VoiceTimeDataUtils;->convertPlayTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/data/repository/document/content/ContentDataCreator$VoiceContentInfo;->c(Lcom/samsung/android/support/senl/nt/data/repository/document/content/ContentDataCreator$VoiceContentInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/data/repository/document/content/ContentDataCreator$VoiceContentInfo;->a(Lcom/samsung/android/support/senl/nt/data/repository/document/content/ContentDataCreator$VoiceContentInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2, v3, v2, v1}, Lcom/samsung/android/support/senl/nt/data/repository/document/content/ContentDataCreator;->createVoiceContentEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method
