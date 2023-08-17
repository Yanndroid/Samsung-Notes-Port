.class public interface abstract Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<SpenDocument::",
        "Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;",
        "Entity:",
        "Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer<",
        "*>;>",
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# virtual methods
.method public abstract clearChangedPageIdList()V
.end method

.method public abstract clearVoiceRecordingInfo()V
.end method

.method public abstract cloneDocument(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;
    .param p1    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;",
            "Landroid/content/Context;",
            ")",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource<",
            "TSpenDocument;TEntity;>;"
        }
    .end annotation
.end method

.method public abstract copy(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource<",
            "**>;)V"
        }
    .end annotation
.end method

.method public abstract createThumbnail(Landroid/content/Context;)V
.end method

.method public abstract getChangedPageIdList()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDoc()Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TSpenDocument;"
        }
    .end annotation
.end method

.method public abstract getDocumentEntityContainer()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TEntity;"
        }
    .end annotation
.end method

.method public abstract getDocumentRepository()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository<",
            "TSpenDocument;+TEntity;>;"
        }
    .end annotation
.end method

.method public abstract getLoadPath()Ljava/lang/String;
.end method

.method public abstract getLockConfirm()Ljava/lang/String;
.end method

.method public abstract getMdeDataSource()Lcom/samsung/android/support/senl/nt/model/documents/data/MdeDataSource;
.end method

.method public abstract getPath()Ljava/lang/String;
.end method

.method public abstract getScheduler()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSchedulerDataSource;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getSubscriptionId()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getTagDataSource()Lcom/samsung/android/support/senl/nt/model/documents/data/TagDataSource;
.end method

.method public abstract getUuid()Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getVoiceRecordingInfo()Lcom/samsung/android/support/senl/nt/model/documents/data/VoiceRecordingDataSource;
.end method

.method public abstract getWritingMode()I
    .annotation build Lcom/samsung/android/support/senl/cm/base/spenwrapper/constants/WritingMode;
    .end annotation
.end method

.method public abstract isChangedOnlyThumbnail()Z
.end method

.method public abstract isContentChanged()Z
.end method

.method public abstract isContentEmpty()Z
.end method

.method public abstract isDiscarded()Z
.end method

.method public abstract isEntityChanged()Z
.end method

.method public abstract isNew()Z
.end method

.method public abstract isSaveCache()Z
.end method

.method public abstract isTagChanged()Z
.end method

.method public abstract reserveDiscard(Z)V
.end method

.method public abstract save(Landroid/content/Context;)Z
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract saveAutoTitle(Landroid/content/Context;)Z
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract saveCache(Landroid/content/Context;)Z
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract saveCacheSpenDocument(Landroid/content/Context;)Z
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract saveSpenDocument(Landroid/content/Context;)Z
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract saveTagDataSource(Landroid/content/Context;)Z
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract saveToDatabase(Landroid/content/Context;Z)Z
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setAllPageIdList()V
.end method

.method public abstract setDirty(Z)V
.end method

.method public abstract setDoc(Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSpenDocument;)V"
        }
    .end annotation
.end method

.method public abstract setMdeDataSource(Lcom/samsung/android/support/senl/nt/model/documents/data/MdeDataSource;)V
.end method

.method public abstract setNewDocument(Z)V
.end method

.method public abstract setScheduler(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSchedulerDataSource;)V
.end method

.method public abstract setVoiceRecordingInfo(Ljava/lang/String;I)V
.end method

.method public abstract snapSave(Landroid/content/Context;)Z
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract snapSaveSpenDocument(Landroid/content/Context;)Z
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
