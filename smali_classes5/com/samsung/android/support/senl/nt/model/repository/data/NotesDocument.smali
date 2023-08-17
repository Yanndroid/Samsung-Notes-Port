.class public Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument$SavingLocker;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<SpenDocument::",
        "Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource<",
        "TSpenDocument;",
        "Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer<",
        "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "NotesDocument"


# instance fields
.field private final mDocumentRepository:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository<",
            "TSpenDocument;+",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;",
            ">;>;"
        }
    .end annotation
.end field

.field private mIsContentChanged:Z

.field private mIsNew:Z

.field private mIsReservedDiscard:Z

.field private mLoadTime:J

.field private mMdeDataSource:Lcom/samsung/android/support/senl/nt/model/documents/data/MdeDataSource;

.field private mSchedulerDataSource:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSchedulerDataSource;

.field private mTagDataSource:Lcom/samsung/android/support/senl/nt/model/documents/data/TagDataSource;

.field private mTemporaryCacheSaved:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mTemporaryChangedPageIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVoiceRecordingInfo:Lcom/samsung/android/support/senl/nt/model/documents/data/VoiceRecordingDataSource;

.field private mWritingMode:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument$1;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument$1;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository<",
            "TSpenDocument;+",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;-><init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;Z)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository<",
            "TSpenDocument;+",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;",
            ">;>;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->mTemporaryChangedPageIdList:Ljava/util/List;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->mDocumentRepository:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getWritingMode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->mWritingMode:I

    new-instance v0, Lcom/samsung/android/support/senl/nt/model/repository/data/tag/DocumentTagRepository;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/model/repository/data/tag/DocumentTagRepository;-><init>()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->setTagDataSource(Lcom/samsung/android/support/senl/nt/model/documents/data/TagDataSource;)V

    if-eqz p3, :cond_1

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->loadDatabase(Landroid/content/Context;)V

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "NotesDocument, "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getHashCode()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NotesDocument"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->mTemporaryChangedPageIdList:Ljava/util/List;

    const-string v0, "NotesDocument"

    const-string v1, "@--- DOCUMENT read parcelable start"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-class v1, Lcom/samsung/android/support/senl/nt/model/documents/data/VoiceRecordingDataSource;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/model/documents/data/VoiceRecordingDataSource;

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->mVoiceRecordingInfo:Lcom/samsung/android/support/senl/nt/model/documents/data/VoiceRecordingDataSource;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->mIsNew:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v3, :cond_1

    move v2, v3

    :cond_1
    iput-boolean v2, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->mIsContentChanged:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->mLoadTime:J

    const-class v1, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->mDocumentRepository:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    const-class v1, Lcom/samsung/android/support/senl/nt/model/documents/data/TagDataSource;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/model/documents/data/TagDataSource;

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->mTagDataSource:Lcom/samsung/android/support/senl/nt/model/documents/data/TagDataSource;

    const-class v1, Lcom/samsung/android/support/senl/nt/model/documents/data/MdeDataSource;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/model/documents/data/MdeDataSource;

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->mMdeDataSource:Lcom/samsung/android/support/senl/nt/model/documents/data/MdeDataSource;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v3, :cond_2

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->mTemporaryCacheSaved:Ljava/lang/Boolean;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->mWritingMode:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTemporaryCacheSaved : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->mTemporaryCacheSaved:Ljava/lang/Boolean;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "@--- DOCUMENT read parcelable end"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/support/senl/nt/model/repository/data/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private applyDatabase(Landroid/content/Context;ZZZ)Z
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p3, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDocumentEntityContainer()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;

    move-result-object p3

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;->getEntity()Landroid/os/Parcelable;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getTimeSaveParam()Lcom/samsung/android/support/senl/nt/data/common/constants/TimeSaveParam;

    move-result-object p3

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/data/common/constants/TimeSaveParam;->getForceUpdate()Z

    move-result p3

    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getUuid()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/base/common/util/UUIDUtils;->isCoeditUuid(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    if-eqz p3, :cond_1

    :cond_0
    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    move p2, v0

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->saveToDatabase(Landroid/content/Context;Z)Z

    move-result p4

    :cond_2
    if-eqz p4, :cond_3

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->setDirty(Z)V

    :cond_3
    return p4
.end method

.method private clearTemporaryChangedPageIdList()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->mTemporaryChangedPageIdList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private convertToDocumentExtension(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentType;)Ljava/lang/String;
    .locals 1
    .param p1    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/samsung/android/support/senl/nt/data/common/constants/DocumentExtension;
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentType;->SPEN_SDOC:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentType;

    if-ne p1, v0, :cond_0

    const-string p1, ".sdoc"

    return-object p1

    :cond_0
    const-string p1, ".sdocx"

    return-object p1
.end method

.method private deleteDatabase(Landroid/content/Context;)Z
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "deleteDatabase - end"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteDatabase, documentEntity Container : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDocumentRepository()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getDocumentEntity()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NotesDocument"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v1, "deleteDatabase - start"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->p(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDocumentRepository()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->deleteDocumentEntity(Landroid/content/Context;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->p(Ljava/lang/String;Ljava/lang/String;)V

    return p1

    :catchall_0
    move-exception p1

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->p(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method private getChangedPageIdListForCollector()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getTemporaryChangedPageIdList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->setChangedPageIdListForCollector(Ljava/util/List;)V

    :cond_0
    return-object v0
.end method

.method private getHashCode()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#hashCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTemporaryChangedPageIdList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->mTemporaryChangedPageIdList:Ljava/util/List;

    return-object v0
.end method

.method private isNeedToUpdateWidget(ZZZZ)Z
    .locals 0

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    if-nez p3, :cond_0

    if-nez p4, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private notUpdateDatabase()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDocumentRepository()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->checkSaveStrategy(I)Z

    move-result v0

    return v0
.end method

.method private requestSaveSpenDocument(Landroid/content/Context;Z)Landroid/util/Pair;
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->saveSpenDocument(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->isNew()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->deleteDatabase(Landroid/content/Context;)Z

    :cond_0
    move p2, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    new-instance p1, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method private setChangedPageIdListForCollector(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getChangedPageIdList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method private setTemporaryChangedPageIdList()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getTemporaryChangedPageIdList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->setChangedPageIdListForCollector(Ljava/util/List;)V

    return-void
.end method

.method private updateDatabaseAfterFileSave()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDocumentRepository()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->checkSaveStrategy(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public clearChangedPageIdList()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDoc()Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;->clearChangedPageIdList()V

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->clearTemporaryChangedPageIdList()V

    return-void
.end method

.method public clearVoiceRecordingInfo()V
    .locals 2

    const-string v0, "NotesDocument"

    const-string v1, "clearVoiceRecordingInfo"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->mVoiceRecordingInfo:Lcom/samsung/android/support/senl/nt/model/documents/data/VoiceRecordingDataSource;

    return-void
.end method

.method public cloneDocument(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;
    .locals 4
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
            "TSpenDocument;",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;",
            ">;>;"
        }
    .end annotation

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/base/common/util/UUIDUtils;->newUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDocumentRepository()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getDocumentType()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentType;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->convertToDocumentExtension(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentType;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p2, v0, v3, v2}, Lcom/samsung/android/support/senl/nt/data/common/utils/NotesDocumentFileUtils;->createSavedPath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDocumentRepository()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->clone()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->setUuid(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->loadPath(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->savePath(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getLockConfirm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->lockConfirm(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->clearSaveStrategy()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->documentSubscriptionId(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object p1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getDocumentSubscriptionId()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;->getUser()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->caller(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getDocumentEntity()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;->getEntity()Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-virtual {v2, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setUuid(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getSavePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setFilePath(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setIsDirty(I)V

    new-instance v2, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    const/4 v3, 0x0

    invoke-direct {v2, p2, p1, v3}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;-><init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;Z)V

    invoke-virtual {v2, v0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->setNewDocument(Z)V

    invoke-virtual {v2, v0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->setDirty(Z)V

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getSpenDocument()Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->setDoc(Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getVoiceRecordingInfo()Lcom/samsung/android/support/senl/nt/model/documents/data/VoiceRecordingDataSource;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/model/documents/data/VoiceRecordingDataSource;->getFilePath()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/model/documents/data/VoiceRecordingDataSource;->getContentIndex()I

    move-result p1

    invoke-virtual {v2, p2, p1}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->setVoiceRecordingInfo(Ljava/lang/String;I)V

    :cond_0
    return-object v2
.end method

.method public copy(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;)V
    .locals 1

    check-cast p1, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->mVoiceRecordingInfo:Lcom/samsung/android/support/senl/nt/model/documents/data/VoiceRecordingDataSource;

    iput-object v0, p1, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->mVoiceRecordingInfo:Lcom/samsung/android/support/senl/nt/model/documents/data/VoiceRecordingDataSource;

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->mIsNew:Z

    iput-boolean v0, p1, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->mIsNew:Z

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->mIsContentChanged:Z

    iput-boolean v0, p1, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->mIsContentChanged:Z

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->mTagDataSource:Lcom/samsung/android/support/senl/nt/model/documents/data/TagDataSource;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->setTagDataSource(Lcom/samsung/android/support/senl/nt/model/documents/data/TagDataSource;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->mMdeDataSource:Lcom/samsung/android/support/senl/nt/model/documents/data/MdeDataSource;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->setMdeDataSource(Lcom/samsung/android/support/senl/nt/model/documents/data/MdeDataSource;)V

    iget v0, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->mWritingMode:I

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->setMode(I)V

    return-void
.end method

.method public createThumbnail(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDocumentRepository()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->createThumbnail(Landroid/content/Context;)V

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getChangedPageIdList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDoc()Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;->getChangedPageIdList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getDoc()Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TSpenDocument;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->mDocumentRepository:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getSpenDocument()Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getDocumentEntityContainer()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDocumentRepository()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getDocumentEntity()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;

    move-result-object v0

    return-object v0
.end method

.method public getDocumentRepository()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository<",
            "TSpenDocument;+",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->mDocumentRepository:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDocumentRepository()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getUuid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLoadPath()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDocumentRepository()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getLoadPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLoadTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->mLoadTime:J

    return-wide v0
.end method

.method public getLockConfirm()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDocumentRepository()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getLockConfirm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMdeDataSource()Lcom/samsung/android/support/senl/nt/model/documents/data/MdeDataSource;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getMdeDataSource() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->mMdeDataSource:Lcom/samsung/android/support/senl/nt/model/documents/data/MdeDataSource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotesDocument"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->mMdeDataSource:Lcom/samsung/android/support/senl/nt/model/documents/data/MdeDataSource;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDocumentRepository()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getSavePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScheduler()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSchedulerDataSource;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->mSchedulerDataSource:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSchedulerDataSource;

    return-object v0
.end method

.method public getSubscriptionId()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSubscriptionId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDocumentRepository()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getDocumentSubscriptionId()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotesDocument"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDocumentRepository()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getDocumentSubscriptionId()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    move-result-object v0

    return-object v0
.end method

.method public getTagDataSource()Lcom/samsung/android/support/senl/nt/model/documents/data/TagDataSource;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->mTagDataSource:Lcom/samsung/android/support/senl/nt/model/documents/data/TagDataSource;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDocumentRepository()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getUuid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceRecordingInfo()Lcom/samsung/android/support/senl/nt/model/documents/data/VoiceRecordingDataSource;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->mVoiceRecordingInfo:Lcom/samsung/android/support/senl/nt/model/documents/data/VoiceRecordingDataSource;

    return-object v0
.end method

.method public getWritingMode()I
    .locals 1
    .annotation build Lcom/samsung/android/support/senl/cm/base/spenwrapper/constants/WritingMode;
    .end annotation

    iget v0, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->mWritingMode:I

    return v0
.end method

.method public isChangedOnlyThumbnail()Z
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDoc()Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "NotesDocument"

    if-nez v0, :cond_0

    const-string v0, "isChangedOnlyThumbnail, getDoc is null"

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isChangedOnlyThumbnail, getDoc().isChangedOnlyThumbnail() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;->isChangedOnlyThumbnail()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->mIsContentChanged:Z

    if-nez v2, :cond_1

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;->isChangedOnlyThumbnail()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isContentChanged()Z
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDoc()Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "NotesDocument"

    if-nez v0, :cond_0

    const-string v0, "isContentChanged, getDoc is null"

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isContentChanged, mIsContentChanged : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->mIsContentChanged:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", getDoc().isContentChanged() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;->isContentChanged()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->mIsContentChanged:Z

    if-nez v2, :cond_1

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;->isContentChanged()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public isContentEmpty()Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isContentEmpty, doc : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDoc()Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotesDocument"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDoc()Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDoc()Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDoc()Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;->isContentEmpty()Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const-string v0, "isContentEmpty, already closed"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public isDiscarded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->mIsReservedDiscard:Z

    return v0
.end method

.method public isEntityChanged()Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDocumentEntityContainer()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;->isChanged()Z

    move-result v0

    return v0
.end method

.method public isNew()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->mIsNew:Z

    return v0
.end method

.method public isSaveCache()Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDoc()Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDoc()Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;->isSaveCache()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTagChanged()Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getTagDataSource()Lcom/samsung/android/support/senl/nt/model/documents/data/TagDataSource;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getTagDataSource()Lcom/samsung/android/support/senl/nt/model/documents/data/TagDataSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/model/documents/data/TagDataSource;->isChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public reserveDiscard(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->mIsReservedDiscard:Z

    return-void
.end method

.method public save(Landroid/content/Context;)Z
    .locals 18
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "save, try to save, document hashCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", isContentChanged : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->isContentChanged()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isChangedOnlyThumbnail : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->isChangedOnlyThumbnail()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", DO_NOT_UPDATE_DATABASE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDocumentRepository()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object v3

    const/16 v4, 0x400

    invoke-virtual {v3, v4}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->checkSaveStrategy(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v8, "NotesDocument"

    invoke-static {v8, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, v1, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->mWritingMode:I

    const-string v9, "save, result : "

    if-nez v2, :cond_a

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getChangedPageIdListForCollector()Ljava/util/ArrayList;

    move-result-object v10

    new-instance v11, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument$SavingLocker;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-direct {v11, v0, v2, v3}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument$SavingLocker;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDocumentEntityContainer()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;->getEntity()Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setIsSavingByWhichPid(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDocumentEntityContainer()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;->isChanged()Z

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->isChangedOnlyThumbnail()Z

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->isSaveCache()Z

    move-result v4

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->notUpdateDatabase()Z

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->isTagChanged()Z

    move-result v6

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->updateDatabaseAfterFileSave()Z

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDocumentRepository()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object v12

    const v13, 0x8000

    invoke-virtual {v12, v13}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->checkSaveStrategy(I)Z

    move-result v12

    if-eqz v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDocumentRepository()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object v13

    const/high16 v14, 0x10000

    invoke-virtual {v13, v14}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->removeSaveStrategy(I)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    :cond_0
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "save, doNotSaveDatabase: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v14, ", isEntityChanged: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isSaveCache: "

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isChangedOnlyThumbnail: "

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isTagChanged: "

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", doNotUpdateWidget: "

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDocumentRepository()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDocumentRepository()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getAdjustData()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentAdjustData;

    move-result-object v13

    invoke-virtual {v2, v13}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->adjustDocument(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentAdjustData;)V

    if-eqz v3, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDocumentRepository()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object v2

    const/16 v13, 0x1000

    invoke-virtual {v2, v13}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->addSaveStrategy(I)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDocumentRepository()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getDocumentEntity()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;->getEntity()Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/model/utils/NotesDocumentSyncUtils;->setDocumentEntitySyncSkipped(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDocumentEntityContainer()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;->getEntity()Landroid/os/Parcelable;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    const/4 v14, 0x0

    const/4 v2, 0x1

    if-eqz v7, :cond_3

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->requestSaveSpenDocument(Landroid/content/Context;Z)Landroid/util/Pair;

    move-result-object v2

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {v1, v0, v3, v5, v2}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->applyDatabase(Landroid/content/Context;ZZZ)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {v1, v12, v5, v4, v3}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->isNeedToUpdateWidget(ZZZZ)Z

    move-result v4

    move v12, v2

    move v15, v4

    goto :goto_1

    :cond_2
    move v12, v2

    :goto_0
    move v15, v14

    goto :goto_1

    :cond_3
    invoke-direct {v1, v0, v3, v5, v2}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->applyDatabase(Landroid/content/Context;ZZZ)Z

    move-result v2

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->requestSaveSpenDocument(Landroid/content/Context;Z)Landroid/util/Pair;

    move-result-object v2

    iget-object v7, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {v1, v12, v5, v4, v3}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->isNeedToUpdateWidget(ZZZZ)Z

    move-result v4

    move v15, v4

    move v12, v7

    goto :goto_1

    :cond_4
    move v12, v7

    goto :goto_0

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDocumentEntityContainer()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;->getEntity()Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-virtual {v2, v14}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setIsSavingByWhichPid(I)V

    if-eqz v12, :cond_8

    if-nez v5, :cond_8

    if-eqz v3, :cond_5

    if-eqz v6, :cond_8

    :cond_5
    new-instance v7, Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy;

    const/16 v2, 0x7c

    invoke-direct {v7, v2}, Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy;-><init>(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDocumentRepository()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object v2

    const/high16 v3, 0x40000

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->checkSaveStrategy(I)Z

    move-result v2

    if-eqz v2, :cond_6

    const/16 v2, 0x8

    invoke-virtual {v7, v2}, Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy;->remove(I)V

    :cond_6
    sget-object v2, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;->COMPOSER_SERVICE_ID:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;->getUser()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getSubscriptionId()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;->getUser()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    move/from16 v16, v14

    goto :goto_2

    :cond_7
    const/4 v2, -0x1

    move/from16 v16, v2

    :goto_2
    new-instance v6, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/DocumentPostSaveOperation;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->isNew()Z

    move-result v4

    move-object v2, v6

    move-object/from16 v3, p1

    move-object v5, v13

    move-object v13, v6

    move-object v6, v10

    move-object/from16 v17, v7

    move/from16 v7, v16

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/DocumentPostSaveOperation;-><init>(Landroid/content/Context;ZLcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;Ljava/util/List;I)V

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy;->get()I

    move-result v2

    invoke-virtual {v13, v2}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/DocumentPostSaveOperation;->setStrategy(I)Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/DocumentPostSaveOperation;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/DataRepositoryScheduler;->callable(Ljava/lang/Runnable;)Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/DataRepositoryScheduler$RequestBuilder;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/data/database/core/executor/NotesDataTaskExecutor;->getIOThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/DataRepositoryScheduler$RequestBuilder;->executeOn(Ljava/util/concurrent/Executor;)Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/DataRepositoryScheduler$RequestBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/DataRepositoryScheduler$RequestBuilder;->execute()V

    invoke-virtual {v1, v14}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->setNewDocument(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_8
    invoke-virtual {v11}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument$SavingLocker;->close()V

    if-eqz v15, :cond_9

    new-instance v2, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/DocumentPostSaveOperation;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDocumentRepository()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->isNewDocument()Z

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDocumentEntityContainer()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;->getEntity()Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-direct {v2, v0, v3, v4, v10}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/DocumentPostSaveOperation;-><init>(Landroid/content/Context;ZLcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;Ljava/util/List;)V

    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/DocumentPostSaveOperation;->setStrategy(I)Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/DocumentPostSaveOperation;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/DataRepositoryScheduler;->callable(Ljava/lang/Runnable;)Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/DataRepositoryScheduler$RequestBuilder;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/data/database/core/executor/NotesDataTaskExecutor;->getIOThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/DataRepositoryScheduler$RequestBuilder;->executeOn(Ljava/util/concurrent/Executor;)Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/DataRepositoryScheduler$RequestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/DataRepositoryScheduler$RequestBuilder;->execute()V

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->clearChangedPageIdList()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", needToUpdateWidget : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v2, v0

    :try_start_1
    invoke-virtual {v11}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument$SavingLocker;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v2

    :cond_a
    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->saveSpenDocument(Landroid/content/Context;)Z

    move-result v12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    :goto_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v12
.end method

.method public saveAutoTitle(Landroid/content/Context;)Z
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDocumentRepository()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->saveAutoTitle(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public saveCache(Landroid/content/Context;)Z
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget v0, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->mWritingMode:I

    const-string v1, ", isContentChanged : "

    const-string v2, "NotesDocument"

    const/16 v3, 0x64

    if-ne v0, v3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveCache, try to save in PDF Writing mode, document hashCode: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->isContentChanged()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->saveCacheSpenDocument(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, p0}, Lcom/samsung/android/support/senl/nt/model/utils/DocumentCacheUtils;->savePDFWriterCacheDat(Landroid/content/Context;Ljava/lang/String;Landroid/os/Parcelable;)Ljava/io/File;

    goto/16 :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->notUpdateDatabase()Z

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->isChangedOnlyThumbnail()Z

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saveCache, try to save, document hashCode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->isContentChanged()Z

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isChangedOnlyThumbnail : "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->isChangedOnlyThumbnail()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", DO_NOT_UPDATE_DATABASE : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDocumentRepository()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object v5

    const/16 v6, 0x400

    invoke-virtual {v5, v6}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->checkSaveStrategy(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument$SavingLocker;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getUuid()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-direct {v4, p1, v5, v6}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument$SavingLocker;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDocumentEntityContainer()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;->getEntity()Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setIsSavingByWhichPid(I)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->setTemporaryChangedPageIdList()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDocumentRepository()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object v5

    const/high16 v6, 0x10000

    invoke-virtual {v5, v6}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->removeSaveStrategy(I)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveCache, doNotSaveDatabase: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDocumentRepository()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object v1

    const/16 v5, 0x1000

    invoke-virtual {v1, v5}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->addSaveStrategy(I)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDocumentRepository()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getDocumentEntity()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;->getEntity()Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/model/utils/NotesDocumentSyncUtils;->setDocumentEntitySyncSkipped(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, p1, v3, v0, v1}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->applyDatabase(Landroid/content/Context;ZZZ)Z

    move-result v1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->saveCacheSpenDocument(Landroid/content/Context;)Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->isNew()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->deleteDatabase(Landroid/content/Context;)Z

    :cond_2
    move v1, v6

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDocumentEntityContainer()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;->getEntity()Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-virtual {v5, v6}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setIsSavingByWhichPid(I)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getUuid()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5, p0}, Lcom/samsung/android/support/senl/nt/model/utils/DocumentCacheUtils;->saveDocumentDat(Landroid/content/Context;Ljava/lang/String;Landroid/os/Parcelable;)Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument$SavingLocker;->close()V

    if-eqz v1, :cond_4

    if-nez v0, :cond_4

    if-nez v3, :cond_4

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/DocumentPostSaveOperation;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->isNew()Z

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDocumentEntityContainer()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;->getEntity()Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    const/4 v5, 0x0

    invoke-direct {v0, p1, v3, v4, v5}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/DocumentPostSaveOperation;-><init>(Landroid/content/Context;ZLcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;Ljava/util/List;)V

    const/16 p1, 0x12

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/DocumentPostSaveOperation;->setStrategy(I)Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/DocumentPostSaveOperation;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/DataRepositoryScheduler;->callable(Ljava/lang/Runnable;)Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/DataRepositoryScheduler$RequestBuilder;

    move-result-object p1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/data/database/core/executor/NotesDataTaskExecutor;->getIOThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/DataRepositoryScheduler$RequestBuilder;->executeOn(Ljava/util/concurrent/Executor;)Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/DataRepositoryScheduler$RequestBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/DataRepositoryScheduler$RequestBuilder;->execute()V

    invoke-virtual {p0, v6}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->setNewDocument(Z)V

    :cond_4
    move v0, v1

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveCache, result : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument$SavingLocker;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1
.end method

.method public saveCacheSpenDocument(Landroid/content/Context;)Z
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string p1, "saveCacheSpenDocument spen document - end"

    const-string v0, "NotesDocument"

    const-string v1, "saveCacheSpenDocument"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v1, "saveCacheSpenDocument spen document - start"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->p(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDocumentRepository()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->saveCacheSpenDocument()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->p(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :catchall_0
    move-exception v1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->p(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

.method public saveSpenDocument(Landroid/content/Context;)Z
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "saveSpenDocument spen document - end"

    const-string v1, "NotesDocument"

    const-string v2, "saveSpenDocument"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v2, "saveSpenDocument spen document - start"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->p(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDocumentRepository()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->saveSpenDocument(Landroid/content/Context;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->p(Ljava/lang/String;Ljava/lang/String;)V

    return p1

    :catchall_0
    move-exception p1

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->p(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method public saveTagDataSource(Landroid/content/Context;)Z
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "saveTagDataSource - end"

    const-string v1, "NotesDocument"

    :try_start_0
    const-string v2, "saveTagDataSource - start"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getTagDataSource()Lcom/samsung/android/support/senl/nt/model/documents/data/TagDataSource;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/model/repository/data/tag/DocumentTagRepository;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/samsung/android/support/senl/nt/model/repository/data/tag/DocumentTagRepository;->save(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p1

    :catchall_0
    move-exception p1

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method public saveToDatabase(Landroid/content/Context;Z)Z
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "NotesDocument"

    const-string v1, "save entity to database - start"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->p(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveToDatabase, documentEntity Container : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDocumentRepository()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getDocumentEntity()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", updateModifiedTime : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDocumentRepository()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object v1

    invoke-virtual {v1, p1, p0, p2}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->saveDocumentEntity(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;Z)Z

    move-result p2

    const-string v1, "save entity to database - end"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->p(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const-string v1, "save tag entity to database - start"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->p(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getTagDataSource()Lcom/samsung/android/support/senl/nt/model/documents/data/TagDataSource;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/samsung/android/support/senl/nt/model/documents/data/TagDataSource;->save(Landroid/content/Context;Ljava/lang/String;)Z

    const-string p1, "save tag entity to database - end"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->p(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->setDirty(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDocumentRepository()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->updateOriginalEntityWithLatest()Z

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveToDatabase, result : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p2
.end method

.method public setAllPageIdList()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDoc()Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;->setAllPageIdList()V

    return-void
.end method

.method public setDirty(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDirty# dirty: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotesDocument"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->mIsContentChanged:Z

    return-void
.end method

.method public setDoc(Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSpenDocument;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDoc, doc hashCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mTemporaryCacheSaved : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->mTemporaryCacheSaved:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotesDocument"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;->dumpSpenDocument()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->mTemporaryCacheSaved:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;->setSaveCache(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->mTemporaryCacheSaved:Ljava/lang/Boolean;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->mDocumentRepository:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->spenDocument(Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    :cond_1
    return-void
.end method

.method public setLoadTime(JLjava/lang/String;)V
    .locals 2
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLoadTime, message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "NotesDocument"

    invoke-static {v0, p3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-wide p1, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->mLoadTime:J

    return-void
.end method

.method public setLockConfirm(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDocumentRepository()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->lockConfirm(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    return-void
.end method

.method public setMdeDataSource(Lcom/samsung/android/support/senl/nt/model/documents/data/MdeDataSource;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMdeDataSource() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotesDocument"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->mMdeDataSource:Lcom/samsung/android/support/senl/nt/model/documents/data/MdeDataSource;

    return-void
.end method

.method public setMode(I)V
    .locals 0
    .param p1    # I
        .annotation build Lcom/samsung/android/support/senl/cm/base/spenwrapper/constants/WritingMode;
        .end annotation
    .end param

    iput p1, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->mWritingMode:I

    return-void
.end method

.method public setNewDocument(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->mIsNew:Z

    return-void
.end method

.method public setScheduler(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSchedulerDataSource;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->mSchedulerDataSource:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSchedulerDataSource;

    return-void
.end method

.method public setTagDataSource(Lcom/samsung/android/support/senl/nt/model/documents/data/TagDataSource;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->mTagDataSource:Lcom/samsung/android/support/senl/nt/model/documents/data/TagDataSource;

    return-void
.end method

.method public setVoiceRecordingInfo(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->setVoiceRecordingInfo(Ljava/lang/String;II)V

    return-void
.end method

.method public setVoiceRecordingInfo(Ljava/lang/String;II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVoiceRecordingInfo# contentIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", voiceRecordingPath: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotesDocument"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->clearVoiceRecordingInfo()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    if-le p2, v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/model/repository/data/voice/VoiceRecordingRepository;

    invoke-direct {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/model/repository/data/voice/VoiceRecordingRepository;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->mVoiceRecordingInfo:Lcom/samsung/android/support/senl/nt/model/documents/data/VoiceRecordingDataSource;

    :cond_0
    return-void
.end method

.method public snapSave(Landroid/content/Context;)Z
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "snapSave, try to save, document hashCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isContentChanged : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->isContentChanged()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isChangedOnlyThumbnail : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->isChangedOnlyThumbnail()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotesDocument"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument$SavingLocker;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-direct {v0, p1, v2, v3}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument$SavingLocker;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDocumentEntityContainer()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;->getEntity()Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setIsSavingByWhichPid(I)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->isChangedOnlyThumbnail()Z

    move-result v2

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->setTemporaryChangedPageIdList()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDocumentRepository()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object v3

    const/high16 v4, 0x10000

    invoke-virtual {v3, v4}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->removeSaveStrategy(I)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "snapSave, isChangedOnlyThumbnail : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->snapSaveSpenDocument(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {p0, v3}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->setDirty(Z)V

    iget v4, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->mWritingMode:I

    const/16 v5, 0x64

    if-ne v4, v5, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4, p0}, Lcom/samsung/android/support/senl/nt/model/utils/DocumentCacheUtils;->savePDFWriterCacheDat(Landroid/content/Context;Ljava/lang/String;Landroid/os/Parcelable;)Ljava/io/File;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4, p0}, Lcom/samsung/android/support/senl/nt/model/utils/DocumentCacheUtils;->saveDocumentDat(Landroid/content/Context;Ljava/lang/String;Landroid/os/Parcelable;)Ljava/io/File;

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDocumentEntityContainer()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;->getEntity()Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-virtual {p1, v3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setIsSavingByWhichPid(I)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "snapSave, result : "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument$SavingLocker;->close()V

    return v2

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument$SavingLocker;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1
.end method

.method public snapSaveSpenDocument(Landroid/content/Context;)Z
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string p1, "snapSaveSpenDocument spen document - end"

    const-string v0, "NotesDocument"

    const-string v1, "snapSaveSpenDocument"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v1, "snapSaveSpenDocument spen document - start"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->p(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDocumentRepository()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->snapSaveSpenDocument()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->p(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :catchall_0
    move-exception v1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->p(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotesDocument - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getHashCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " {mUuid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mIsNew: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->mIsNew:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsContentChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->mIsContentChanged:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mDoc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDoc()Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mDoc.isClosed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDoc()Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDoc()Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;->isClosed()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mPath: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mLoadPath: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getLoadPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mWritingMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->mWritingMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDocumentUser: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getSubscriptionId()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mIsSaveCache : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->isSaveCache()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mLockConfirm: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getLockConfirm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mTagDataSource: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->mTagDataSource:Lcom/samsung/android/support/senl/nt/model/documents/data/TagDataSource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mIsReservedDiscard"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->mIsReservedDiscard:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mMdeDataSource : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->mMdeDataSource:Lcom/samsung/android/support/senl/nt/model/documents/data/MdeDataSource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const-string v0, "NotesDocument"

    const-string v1, "@--- DOCUMENT write parcelable start"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->mVoiceRecordingInfo:Lcom/samsung/android/support/senl/nt/model/documents/data/VoiceRecordingDataSource;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->mIsNew:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->mIsContentChanged:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v1, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->mLoadTime:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->mDocumentRepository:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->mTagDataSource:Lcom/samsung/android/support/senl/nt/model/documents/data/TagDataSource;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->mMdeDataSource:Lcom/samsung/android/support/senl/nt/model/documents/data/MdeDataSource;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->isSaveCache()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->mWritingMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const-string p1, "@--- DOCUMENT write parcelable end"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
