.class public Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertedDocumentUpdater;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ConvertedDocumentUpdater"

.field private static sColorModel:Lcom/samsung/android/support/senl/nt/app/converter/task/service/category/CategoryColorConverter;


# instance fields
.field private final mAppContext:Landroid/content/Context;

.field private mCategoryToFolderConverter:Lcom/samsung/android/support/senl/nt/app/converter/task/service/category/CategoryToFolderConverter;

.field private final mConvertedDocument:Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument<",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;",
            ">;"
        }
    .end annotation
.end field

.field private mConvertedEntity:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

.field private final mConvertedNoteUuid:Ljava/lang/String;

.field private final mInfo:Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;

.field private final mIsConvertedFromOutside:Z

.field private final mOriginNoteUuid:Ljava/lang/String;

.field private final mSaveConvertedNoteAsNewNote:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/app/converter/task/service/WConvertQueueItem;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertedDocumentUpdater;->mAppContext:Landroid/content/Context;

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertedDocumentUpdater;->sColorModel:Lcom/samsung/android/support/senl/nt/app/converter/task/service/category/CategoryColorConverter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/category/CategoryColorConverter;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/category/CategoryColorConverter;-><init>(Landroid/content/res/Resources;)V

    sput-object v0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertedDocumentUpdater;->sColorModel:Lcom/samsung/android/support/senl/nt/app/converter/task/service/category/CategoryColorConverter;

    :cond_0
    new-instance v0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/category/CategoryToFolderConverter;

    sget-object v1, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertedDocumentUpdater;->sColorModel:Lcom/samsung/android/support/senl/nt/app/converter/task/service/category/CategoryColorConverter;

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/category/CategoryToFolderConverter;-><init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/app/converter/task/service/category/CategoryColorConverter;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertedDocumentUpdater;->setCategoryToFolderConverter(Lcom/samsung/android/support/senl/nt/app/converter/task/service/category/CategoryToFolderConverter;)V

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/WConvertQueueItem;->getState()Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertedDocumentUpdater;->mConvertedDocument:Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDocumentEntityContainer()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;->getEntity()Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertedDocumentUpdater;->mConvertedEntity:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/WConvertQueueItem;->getInfo()Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertedDocumentUpdater;->mInfo:Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;->getUuid()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertedDocumentUpdater;->mOriginNoteUuid:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertedDocumentUpdater;->mConvertedEntity:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getUuid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertedDocumentUpdater;->mConvertedNoteUuid:Ljava/lang/String;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;->getDstUuid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertedDocumentUpdater;->mSaveConvertedNoteAsNewNote:Z

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertedDocumentUpdater;->mIsConvertedFromOutside:Z

    return-void
.end method

.method private setConvertedFolderData()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateFolderData, originalCategory : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertedDocumentUpdater;->mConvertedEntity:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getCategoryUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConvertedDocumentUpdater"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertedDocumentUpdater;->mConvertedEntity:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getCategoryUuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertedDocumentUpdater;->mConvertedEntity:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    sget-object v1, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->UNCATEGORIZED:Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setCategoryUuid(Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->SHARED_NOTE_BOOK:Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->getUuid()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertedDocumentUpdater;->mConvertedEntity:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getCategoryUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertedDocumentUpdater;->mCategoryToFolderConverter:Lcom/samsung/android/support/senl/nt/app/converter/task/service/category/CategoryToFolderConverter;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertedDocumentUpdater;->mConvertedEntity:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getCategoryUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/category/CategoryToFolderConverter;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertedDocumentUpdater;->mConvertedEntity:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setCategoryUuid(Ljava/lang/String;)V

    return-void
.end method

.method private setPreviousFolderData()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertedDocumentUpdater;->mInfo:Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;->getFolderName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertedDocumentUpdater;->mCategoryToFolderConverter:Lcom/samsung/android/support/senl/nt/app/converter/task/service/category/CategoryToFolderConverter;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertedDocumentUpdater;->mInfo:Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;->getFolderName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertedDocumentUpdater;->sColorModel:Lcom/samsung/android/support/senl/nt/app/converter/task/service/category/CategoryColorConverter;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/category/CategoryColorConverter;->getDefaultColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/category/CategoryToFolderConverter;->createNewFolder(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertedDocumentUpdater;->mConvertedEntity:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setCategoryUuid(Ljava/lang/String;)V

    return-void
.end method

.method private updateConvertedEntity()V
    .locals 5

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertedDocumentUpdater;->mSaveConvertedNoteAsNewNote:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertedDocumentUpdater;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createDocumentDataRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertedDocumentUpdater;->mOriginNoteUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;->get(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateConvertedEntity, originalEntity : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mConvertedEntity : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertedDocumentUpdater;->mConvertedEntity:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ConvertedDocumentUpdater"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertedDocumentUpdater;->mConvertedEntity:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setId(Ljava/lang/Long;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertedDocumentUpdater;->mConvertedEntity:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setUuid(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertedDocumentUpdater;->mConvertedEntity:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getOriginUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setOriginUuid(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertedDocumentUpdater;->mConvertedEntity:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setFilePath(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setIsDeleted(I)V

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setMdeItemId(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getTimeSaveParam()Lcom/samsung/android/support/senl/nt/data/common/constants/TimeSaveParam;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getCreatedAt()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getLastModifiedAt()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/support/senl/nt/data/common/constants/TimeSaveParam;->setTime(Ljava/lang/Long;Ljava/lang/Long;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertedDocumentUpdater;->mConvertedDocument:Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDocumentEntityContainer()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;->setEntity(Landroid/os/Parcelable;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertedDocumentUpdater;->mConvertedEntity:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    :cond_1
    return-void
.end method


# virtual methods
.method public setCategoryToFolderConverter(Lcom/samsung/android/support/senl/nt/app/converter/task/service/category/CategoryToFolderConverter;)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/nt/app/converter/task/service/category/CategoryToFolderConverter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertedDocumentUpdater;->mCategoryToFolderConverter:Lcom/samsung/android/support/senl/nt/app/converter/task/service/category/CategoryToFolderConverter;

    return-void
.end method

.method public updateDocumentMappingData()V
    .locals 4

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertedDocumentUpdater;->mIsConvertedFromOutside:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertedDocumentUpdater;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createMappedDocumentRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/NotesMappedDocumentRepository;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertedDocumentUpdater;->mOriginNoteUuid:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertedDocumentUpdater;->mConvertedNoteUuid:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesMappedDocumentRepository;->insert(Ljava/lang/String;Ljava/lang/String;Z)Landroid/util/Pair;

    return-void
.end method

.method public updateEntity()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertedDocumentUpdater;->updateConvertedEntity()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertedDocumentUpdater;->updateFolderData()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertedDocumentUpdater;->updateImportData()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertedDocumentUpdater;->updateLockData()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertedDocumentUpdater;->updateDocumentMappingData()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertedDocumentUpdater;->updateTagData()V

    return-void
.end method

.method public updateFolderData()V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertedDocumentUpdater;->mSaveConvertedNoteAsNewNote:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertedDocumentUpdater;->mIsConvertedFromOutside:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertedDocumentUpdater;->setPreviousFolderData()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertedDocumentUpdater;->setConvertedFolderData()V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateImportData()V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertedDocumentUpdater;->mSaveConvertedNoteAsNewNote:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertedDocumentUpdater;->mInfo:Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;->isImported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertedDocumentUpdater;->mConvertedEntity:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setImported(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertedDocumentUpdater;->mConvertedEntity:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setImportedAt(J)V

    :cond_0
    return-void
.end method

.method public updateLockData()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertedDocumentUpdater;->mInfo:Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;->getLockType()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertedDocumentUpdater;->mConvertedDocument:Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDocumentRepository()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object v1

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertedDocumentUpdater;->mAppContext:Landroid/content/Context;

    invoke-static {v2}, Lf/a;->m(Landroid/content/Context;)Lf/a;

    move-result-object v2

    invoke-virtual {v2}, Lf/a;->o()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->setLockAccountGuid(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertedDocumentUpdater;->mConvertedEntity:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setIsLock(I)V

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/LockUtils;->isLockedOtherDocType(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertedDocumentUpdater;->mConvertedDocument:Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDoc()Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;

    sget-object v1, Lcom/samsung/android/support/senl/cm/base/common/constants/Constants$SNote;->WNOTE_LOCKED_FILE_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->hasAttachedFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/samsung/android/support/senl/cm/base/common/constants/Constants$SNote;->WNOTE_LOCKED_FILE_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->detachFile(Ljava/lang/String;)V

    const-string v0, "ConvertedDocumentUpdater"

    const-string v1, "updateLockData, detachFile"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public updateTagData()V
    .locals 4

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertedDocumentUpdater;->mIsConvertedFromOutside:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertedDocumentUpdater;->mAppContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertedDocumentUpdater;->mOriginNoteUuid:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/app/notes/sync/db/j;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/samsung/android/support/senl/nt/data/repository/converter/HashtagDataConverter;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/data/repository/converter/HashtagDataConverter;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertedDocumentUpdater;->mAppContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertedDocumentUpdater;->mConvertedNoteUuid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcom/samsung/android/support/senl/nt/data/repository/converter/HashtagDataConverter;->updateHashtag(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    :cond_1
    return-void
.end method
