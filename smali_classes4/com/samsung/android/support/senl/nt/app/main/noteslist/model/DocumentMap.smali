.class public Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMapContract$Note;
.implements Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMapContract$Folder;


# static fields
.field private static final TAG:Ljava/lang/String; = "DocumentMap"


# instance fields
.field private mCommonDisplayList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;",
            ">;"
        }
    .end annotation
.end field

.field private final mFolderMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/FolderMap;

.field private mFolderRepository:Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;

.field private final mHolderInfoMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/HolderInfoMap;

.field private mMainListRepository:Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;

.field private final mNoteMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NoteMap;

.field private mNotesConvertedDocumentRepository:Lcom/samsung/android/support/senl/nt/data/repository/converted/NotesConvertedDocumentRepository;

.field private mNotesDocumentRepository:Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;

.field private mNotesOldDocumentRepository:Lcom/samsung/android/support/senl/nt/data/repository/document/NotesOldDocumentRepository;

.field private mNotesRecycleBinRepository:Lcom/samsung/android/support/senl/nt/data/repository/document/NotesRecycleBinRepository;

.field private mNotesSearchRepository:Lcom/samsung/android/support/senl/nt/data/repository/search/NotesSearchRepository;

.field private final mStateInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

.field private mTagRepository:Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mStateInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NoteMap;

    invoke-direct {v0, p1, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NoteMap;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMapContract$Note;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mNoteMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NoteMap;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/FolderMap;

    invoke-direct {v0, p1, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/FolderMap;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMapContract$Folder;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mFolderMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/FolderMap;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/HolderInfoMap;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/HolderInfoMap;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mHolderInfoMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/HolderInfoMap;

    return-void
.end method

.method private equalsCoeditNote(Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;)Z
    .locals 4

    iget-object v0, p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;->notes:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

    iget-object v1, p2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;->notes:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->equalsNote(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;->notes:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getDisplayContent()[B

    move-result-object v0

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;->notes:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getDisplayContent()[B

    move-result-object v1

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;->notes:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getDisplayContent()[B

    move-result-object v0

    iget-object v1, p2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;->notes:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getDisplayContent()[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;->coeditNotes:Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMainListEntry;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMainListEntry;->isSnapShotUpdateRequired()Z

    move-result v0

    iget-object v1, p2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;->coeditNotes:Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMainListEntry;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMainListEntry;->isSnapShotUpdateRequired()Z

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;->coeditNotes:Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMainListEntry;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMainListEntry;->getClientSavedChangePoint()J

    move-result-wide v0

    iget-object v2, p2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;->coeditNotes:Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMainListEntry;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMainListEntry;->getClientSavedChangePoint()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;->coeditNotes:Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMainListEntry;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMainListEntry;->getMainListEntry()Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getFirstOpendAt()J

    move-result-wide v0

    iget-object p1, p2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;->coeditNotes:Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMainListEntry;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMainListEntry;->getMainListEntry()Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getFirstOpendAt()J

    move-result-wide p1

    cmp-long p1, v0, p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private equalsNote(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;)Z
    .locals 4

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getIsDeleted()I

    move-result v0

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getIsDeleted()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getCorrupted()I

    move-result v0

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getCorrupted()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getLastModifiedAt()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getLastModifiedAt()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getIsFavorite()I

    move-result v0

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getIsFavorite()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getIsLock()I

    move-result v0

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getIsLock()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getBackgroundColor()I

    move-result v0

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getBackgroundColor()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getBackgroundColorInverted()I

    move-result v0

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getBackgroundColorInverted()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getContentUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getContentUuid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getCategoryUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getCategoryUuid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getVrUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getVrUuid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getStrokeUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getStrokeUuid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getStrokeRatio()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getStrokeRatio()Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getRecommendedTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getRecommendedTitle()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private equalsSpace(Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SpaceEntry;Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SpaceEntry;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SpaceEntry;->getMemberCount()I

    move-result v0

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SpaceEntry;->getMemberCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SpaceEntry;->getUnReadCount()I

    move-result v0

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SpaceEntry;->getUnReadCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SpaceEntry;->getGroupId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SpaceEntry;->getGroupId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SpaceEntry;->getSpaceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SpaceEntry;->getSpaceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SpaceEntry;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SpaceEntry;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SpaceEntry;->getThumbnailIds()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SpaceEntry;->getThumbnailIds()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private equalsStandalone(Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->equalsCoeditNote(Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;->coeditNotes:Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMainListEntry;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMainListEntry;->getMemberCount()I

    move-result p1

    iget-object p2, p2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;->coeditNotes:Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMainListEntry;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMainListEntry;->getMemberCount()I

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private getSubFolderLineCount(I)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mStateInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->getSubFoldersSpan()I

    move-result v0

    div-int v1, p1, v0

    rem-int/2addr p1, v0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    add-int/2addr v1, p1

    return v1
.end method

.method private initSearchDisplayList(I)Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mStateInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->getFolderUuid()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mStateInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->getCaller()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initSearchDisplayList# ModeIndex : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mStateInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->getModeIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", FolderUuid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", HashTagNames : "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mStateInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->getSelectedTags()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", SpaceId : "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mStateInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->getSpaceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", Caller : "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DocumentMap"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mCommonDisplayList:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mCommonDisplayList:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mCommonDisplayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mHolderInfoMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/HolderInfoMap;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/HolderInfoMap;->initHolderInfoMap()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mCommonDisplayList:Ljava/util/List;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mNoteMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NoteMap;

    invoke-virtual {v2, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NoteMap;->getSearchDisplayListAsMode(I)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "initSearchDisplayList# commonDisplayList size "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mCommonDisplayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method private isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-eqz p1, :cond_13

    if-nez p2, :cond_0

    goto/16 :goto_3

    :cond_0
    check-cast p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;

    check-cast p2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;

    iget v1, p2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;->type:I

    iget v2, p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;->type:I

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    const/16 v2, 0x20

    if-ne v1, v2, :cond_6

    iget-object v1, p2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;->notes:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

    if-eqz v1, :cond_5

    iget-object v1, p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;->notes:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mStateInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->isCoeditMode()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p2, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->equalsStandalone(Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;)Z

    move-result p1

    return p1

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mStateInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->isCoeditSpaceMode()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p2, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->equalsCoeditNote(Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;)Z

    move-result p1

    return p1

    :cond_4
    iget-object p2, p2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;->notes:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;->notes:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

    invoke-direct {p0, p2, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->equalsNote(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;)Z

    move-result p1

    return p1

    :cond_5
    :goto_0
    return v0

    :cond_6
    const/16 v2, 0x80

    const/4 v3, 0x1

    if-ne v1, v2, :cond_8

    iget v1, p2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;->sortType:I

    iget v2, p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;->sortType:I

    if-ne v1, v2, :cond_7

    iget v1, p2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;->orderType:I

    iget v2, p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;->orderType:I

    if-ne v1, v2, :cond_7

    iget-boolean p2, p2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;->isPinToFavorites:Z

    iget-boolean p1, p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;->isPinToFavorites:Z

    if-ne p2, p1, :cond_7

    move v0, v3

    :cond_7
    return v0

    :cond_8
    const/16 v2, 0x800

    if-ne v1, v2, :cond_a

    iget-object p2, p2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;->selectedTags:Ljava/util/Set;

    if-eqz p2, :cond_9

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;->selectedTags:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    move v0, v3

    :cond_9
    return v0

    :cond_a
    const/16 v2, 0x40

    if-ne v1, v2, :cond_c

    iget-wide v1, p2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;->id:J

    iget-wide p1, p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;->id:J

    cmp-long p1, v1, p1

    if-nez p1, :cond_b

    move v0, v3

    :cond_b
    return v0

    :cond_c
    const/16 v2, 0x100

    if-ne v1, v2, :cond_d

    iget-object p2, p2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;->space:Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SpaceEntry;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;->space:Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SpaceEntry;

    invoke-direct {p0, p2, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->equalsSpace(Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SpaceEntry;Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SpaceEntry;)Z

    move-result p1

    return p1

    :cond_d
    const/16 v2, 0x1000

    if-ne v1, v2, :cond_e

    iget-object p2, p2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;->invitation:Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupInvitationListResult$GroupInvitation;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupInvitationListResult$GroupInvitation;->getGroupId()Ljava/lang/String;

    move-result-object p2

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;->invitation:Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupInvitationListResult$GroupInvitation;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupInvitationListResult$GroupInvitation;->getGroupId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_e
    iget-object v1, p2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;->folders:[Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    if-eqz v1, :cond_13

    iget-object v2, p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;->folders:[Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    if-eqz v2, :cond_13

    array-length v1, v1

    array-length v2, v2

    if-eq v1, v2, :cond_f

    return v0

    :cond_f
    move v1, v0

    :goto_1
    iget-object v2, p2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;->folders:[Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    array-length v4, v2

    if-ge v1, v4, :cond_12

    aget-object v4, v2, v1

    if-eqz v4, :cond_12

    iget-object v4, p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;->folders:[Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    aget-object v5, v4, v1

    if-nez v5, :cond_10

    goto :goto_2

    :cond_10
    aget-object v2, v2, v1

    aget-object v4, v4, v1

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    return v0

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_12
    :goto_2
    return v3

    :cond_13
    :goto_3
    return v0
.end method

.method private setTopHolderInfoMap()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mHolderInfoMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/HolderInfoMap;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mCommonDisplayList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/HolderInfoMap;->sortTopHolderDisplayList(Ljava/util/List;I)I

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mHolderInfoMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/HolderInfoMap;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mCommonDisplayList:Ljava/util/List;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/HolderInfoMap;->sortTopHolderDisplayList(Ljava/util/List;I)I

    return-void
.end method


# virtual methods
.method public addCommonDisplayList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mCommonDisplayList:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mCommonDisplayList:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mCommonDisplayList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public clearCommonDisplayList()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mCommonDisplayList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public getBackFolderHistory()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mFolderMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/FolderMap;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/FolderMap;->getBackFolderHistory()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChildDeletableList(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel$ChildDeletableList;
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mFolderMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/FolderMap;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/FolderMap;->get(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel$ChildDeletableList;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel$ChildDeletableList;-><init>()V

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel$ChildDeletableList;->addTotalFolders()V

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->getChildDeletableList(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel$ChildDeletableList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel$ChildDeletableList;->addAll(Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel$ChildDeletableList;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mNoteMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NoteMap;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NoteMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getCategoryUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel$ChildDeletableList;->addTotalNotes()V

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel$ChildDeletableList;->addFilePath(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getIsLock()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->isDeletableWithoutVerify(I)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel$ChildDeletableList;->addDeletableWithVerifyCount()V

    goto :goto_1

    :cond_4
    return-object v1
.end method

.method public getCoeditNoteCount()I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->getNoteDataCount()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mNoteMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NoteMap;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NoteMap;->getSpaceCount()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mNoteMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NoteMap;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NoteMap;->getInvitationCount()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getCoeditNoteData(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMainListEntry;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mNoteMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NoteMap;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NoteMap;->getCoeditNote(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMainListEntry;

    move-result-object p1

    return-object p1
.end method

.method public getCoeditSpaceCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mNoteMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NoteMap;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NoteMap;->getSpaceCount()I

    move-result v0

    return v0
.end method

.method public getCommonDisplayData(I)Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->getCommonDisplayList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCommonDisplayList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mCommonDisplayList:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->initCommonDisplayList()Z

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mCommonDisplayList:Ljava/util/List;

    return-object v0
.end method

.method public varargs getCommonDisplayListSize([Ljava/lang/String;)I
    .locals 11

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mStateInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->getFolderUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->getCommonDisplayList()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mHolderInfoMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/HolderInfoMap;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mCommonDisplayList:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/HolderInfoMap;->getHolderInfoDisplayedCount(Ljava/util/List;)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mStateInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->getModeIndex()I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/app/common/util/FeatureUtils;->isCoeditMode(I)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mNoteMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NoteMap;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NoteMap;->getSpaceCount()I

    move-result v3

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mNoteMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NoteMap;

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NoteMap;->getInvitationCount()I

    move-result v5

    add-int/2addr v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mStateInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->getModeIndex()I

    move-result v5

    invoke-static {v5, v0}, Lcom/samsung/android/support/senl/nt/app/common/util/FeatureUtils;->isSubFolderExist(ILjava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v2

    sub-int/2addr p1, v3

    return p1

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mFolderMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/FolderMap;

    invoke-virtual {v3, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/FolderMap;->get(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->getChildren()Ljava/util/List;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    sub-int v7, v3, v5

    array-length v8, p1

    if-ne v7, v8, :cond_4

    goto :goto_3

    :cond_4
    array-length v7, p1

    move v8, v4

    :goto_2
    if-ge v8, v7, :cond_3

    aget-object v9, p1, v8

    invoke-virtual {v6}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    sub-int/2addr v5, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    invoke-direct {p0, v5}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->getSubFolderLineCount(I)I

    move-result v4

    goto :goto_4

    :cond_6
    move v5, v4

    :goto_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v4

    add-int/2addr p1, v5

    sub-int/2addr p1, v2

    return p1
.end method

.method public getConvertedNoteRepository()Lcom/samsung/android/support/senl/nt/data/repository/converted/NotesConvertedDocumentRepository;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mNotesConvertedDocumentRepository:Lcom/samsung/android/support/senl/nt/data/repository/converted/NotesConvertedDocumentRepository;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createNotesConvertedDocumentRepository()Lcom/samsung/android/support/senl/nt/data/repository/converted/NotesConvertedDocumentRepository;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mNotesConvertedDocumentRepository:Lcom/samsung/android/support/senl/nt/data/repository/converted/NotesConvertedDocumentRepository;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mNotesConvertedDocumentRepository:Lcom/samsung/android/support/senl/nt/data/repository/converted/NotesConvertedDocumentRepository;

    return-object v0
.end method

.method public getDocumentCount(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mNoteMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NoteMap;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NoteMap;->getDocumentCount(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getFolderCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mFolderMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/FolderMap;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/FolderMap;->getFolderCount()I

    move-result v0

    return v0
.end method

.method public getFolderData(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mFolderMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/FolderMap;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/FolderMap;->get(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object p1

    return-object p1
.end method

.method public getFolderDepth(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mFolderMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/FolderMap;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/FolderMap;->getFolderDepth(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getFolderMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mFolderMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/FolderMap;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/FolderMap;->getMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getFolderRepository()Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mFolderRepository:Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createDocumentCategoryTreeRepository()Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mFolderRepository:Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mFolderRepository:Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;

    return-object v0
.end method

.method public getHashTagRepository()Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mTagRepository:Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createDocumentTagRepository()Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mTagRepository:Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mTagRepository:Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;

    return-object v0
.end method

.method public getHolderInfoDisplayedCount()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mHolderInfoMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/HolderInfoMap;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mCommonDisplayList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/HolderInfoMap;->getHolderInfoDisplayedCount(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public getMainListRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mMainListRepository:Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createMainListRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mMainListRepository:Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mMainListRepository:Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;

    return-object v0
.end method

.method public getNoteData(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mNoteMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NoteMap;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NoteMap;->get(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

    move-result-object p1

    return-object p1
.end method

.method public getNoteDataCount()I
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mHolderInfoMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/HolderInfoMap;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mCommonDisplayList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/HolderInfoMap;->getHolderInfoDisplayedCount(Ljava/util/List;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mFolderMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/FolderMap;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/FolderMap;->getFolderCount()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->getSubFolderLineCount(I)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mStateInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->getModeIndex()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mStateInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->getFolderUuid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/nt/app/common/util/FeatureUtils;->isSubFolderExist(ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->getCommonDisplayList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->getCommonDisplayList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    sub-int/2addr v2, v0

    return v2
.end method

.method public getNoteMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mNoteMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NoteMap;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NoteMap;->getMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getNoteRecycleBinRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/NotesRecycleBinRepository;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mNotesRecycleBinRepository:Lcom/samsung/android/support/senl/nt/data/repository/document/NotesRecycleBinRepository;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createNotesRecycleBinRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/NotesRecycleBinRepository;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mNotesRecycleBinRepository:Lcom/samsung/android/support/senl/nt/data/repository/document/NotesRecycleBinRepository;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mNotesRecycleBinRepository:Lcom/samsung/android/support/senl/nt/data/repository/document/NotesRecycleBinRepository;

    return-object v0
.end method

.method public getNoteRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mNotesDocumentRepository:Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createDocumentDataRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mNotesDocumentRepository:Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mNotesDocumentRepository:Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;

    return-object v0
.end method

.method public getNoteSearchRepository()Lcom/samsung/android/support/senl/nt/data/repository/search/NotesSearchRepository;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mNotesSearchRepository:Lcom/samsung/android/support/senl/nt/data/repository/search/NotesSearchRepository;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createSearchRepository()Lcom/samsung/android/support/senl/nt/data/repository/search/NotesSearchRepository;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mNotesSearchRepository:Lcom/samsung/android/support/senl/nt/data/repository/search/NotesSearchRepository;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mNotesSearchRepository:Lcom/samsung/android/support/senl/nt/data/repository/search/NotesSearchRepository;

    return-object v0
.end method

.method public getOldNoteRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/NotesOldDocumentRepository;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mNotesOldDocumentRepository:Lcom/samsung/android/support/senl/nt/data/repository/document/NotesOldDocumentRepository;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createNotesOldDocumentRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/NotesOldDocumentRepository;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mNotesOldDocumentRepository:Lcom/samsung/android/support/senl/nt/data/repository/document/NotesOldDocumentRepository;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mNotesOldDocumentRepository:Lcom/samsung/android/support/senl/nt/data/repository/document/NotesOldDocumentRepository;

    return-object v0
.end method

.method public getSelectableDataCount()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mStateInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->getModeIndex()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/common/util/FeatureUtils;->isPickEditMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->getNoteDataCount()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->getCommonDisplayListSize([Ljava/lang/String;)I

    move-result v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$ScreenOffMemo;->UUID:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->hasChildFolder(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, -0x1

    :cond_1
    return v0
.end method

.method public getSubHeaderUuidList(Z)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mNoteMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NoteMap;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NoteMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->isSdoc()Z

    move-result v3

    if-ne p1, v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getMdeSpaceId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mStateInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->getSpaceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public hasChildFolder(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mFolderMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/FolderMap;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/FolderMap;->hasChildFolder(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public hasHolderInfo(I)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mHolderInfoMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/HolderInfoMap;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/HolderInfoMap;->hasHolderInfo(I)Z

    move-result p1

    return p1
.end method

.method public indexOfDefaultDisplayData(I)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mHolderInfoMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/HolderInfoMap;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mCommonDisplayList:Ljava/util/List;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/HolderInfoMap;->indexOfHolderInfoMap(Ljava/util/List;I)I

    move-result p1

    return p1
.end method

.method public indexOfDisplayData(J)I
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mCommonDisplayList:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->initCommonDisplayList()Z

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mCommonDisplayList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mCommonDisplayList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;

    iget-wide v2, v2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;->id:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public indexOfDisplayData(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mCommonDisplayList:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->initCommonDisplayList()Z

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mCommonDisplayList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mCommonDisplayList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;

    iget-object v2, v2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;->uuid:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public initCoeditGroupMap(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMainListEntry;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mNoteMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NoteMap;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NoteMap;->initCoeditMap(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->initCommonDisplayList()Z

    move-result p1

    return p1
.end method

.method public initCoeditInvitationMap(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupInvitationListResult$GroupInvitation;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mNoteMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NoteMap;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NoteMap;->initCoeditInvitationMap(Ljava/util/List;)V

    return-void
.end method

.method public initCommonDisplayList()Z
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mStateInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->getFolderUuid()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mStateInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->getCaller()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initCommonDisplayList# ModeIndex : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mStateInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->getModeIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", FolderUuid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", HashTagNames : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mStateInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->getSelectedTags()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", SpaceId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mStateInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->getSpaceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", Caller : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DocumentMap"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mCommonDisplayList:Ljava/util/List;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mCommonDisplayList:Ljava/util/List;

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mHolderInfoMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/HolderInfoMap;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/HolderInfoMap;->initHolderInfoMap()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mFolderMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/FolderMap;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/FolderMap;->getFolderDisplayData()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mStateInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->isCoeditMode()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mNoteMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NoteMap;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NoteMap;->getCoeditInvitationDisplayData()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mNoteMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NoteMap;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NoteMap;->getCoeditSpaceDisplayData()Ljava/util/List;

    move-result-object v3

    :goto_0
    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mStateInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->isHashTagMode()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mHolderInfoMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/HolderInfoMap;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/HolderInfoMap;->getRelatedTagDisplayData()Ljava/util/List;

    move-result-object v3

    goto :goto_0

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mNoteMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NoteMap;

    invoke-virtual {v4, v1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NoteMap;->addNoteMap(Ljava/util/List;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mHolderInfoMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/HolderInfoMap;

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/HolderInfoMap;->setSortBarCommonDisplayList(ILjava/util/List;)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->isEquals(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->setTopHolderInfoMap()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initCommonDisplayList# new displayData and old displayData are same, commonDisplayList size : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mCommonDisplayList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mCommonDisplayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->setTopHolderInfoMap()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mCommonDisplayList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initCommonDisplayList# commonDisplayList size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mCommonDisplayList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public initConvertedNoteMap(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mNoteMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NoteMap;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NoteMap;->initConvertedNoteMap(Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public initFolderDataMap()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mFolderMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/FolderMap;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/FolderMap;->initFolderDataMap()V

    return-void
.end method

.method public initNoteMap(Ljava/util/List;)Z
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mNoteMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NoteMap;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NoteMap;->initNoteMap(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->initCommonDisplayList()Z

    move-result p1

    return p1
.end method

.method public initNoteMapWithoutFolder(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mNoteMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NoteMap;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NoteMap;->initNoteMapWithoutFolder(Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public initOldCommonDisplayData(Z)Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mStateInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->getCategoryUuid()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initOldCommonDisplayData# isConverted : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", categoryUuid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DocumentMap"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mNoteMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NoteMap;

    invoke-virtual {v3, v1, p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NoteMap;->addOldNoteMap(Ljava/util/List;ZLjava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mHolderInfoMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/HolderInfoMap;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/HolderInfoMap;->setSortBarCommonDisplayList(ILjava/util/List;)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->isEquals(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "initOldCommonDisplayData# new displayData and old displayData are same"

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->setTopHolderInfoMap()V

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->clearCommonDisplayList()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->setTopHolderInfoMap()V

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->addCommonDisplayList(Ljava/util/List;)V

    const/4 p1, 0x1

    return p1
.end method

.method public initOldNoteMap(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mNoteMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NoteMap;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NoteMap;->initOldNoteMap(Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public initSearchMap(Ljava/util/List;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;",
            ">;I)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mNoteMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NoteMap;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NoteMap;->initSearchMap(Ljava/util/List;)V

    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->initSearchDisplayList(I)Z

    move-result p1

    return p1
.end method

.method public isDeletedFolder(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mFolderMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/FolderMap;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/FolderMap;->isDeletedFolder(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isDisplayedData(Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mCommonDisplayList:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-lez v0, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_3

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mCommonDisplayList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;

    iget-object v3, v3, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;->uuid:Ljava/lang/String;

    if-eqz v3, :cond_2

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return v1
.end method

.method public isEquals(Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mCommonDisplayList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/NotesConstants;->getTopHolderInfoMapOrder()[I

    move-result-object v0

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget v4, v0, v3

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mHolderInfoMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/HolderInfoMap;

    invoke-virtual {v5, v4}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/HolderInfoMap;->hasHolderInfo(I)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mHolderInfoMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/HolderInfoMap;

    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mCommonDisplayList:Ljava/util/List;

    invoke-virtual {v5, v6, v4}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/HolderInfoMap;->indexOfHolderInfoMap(Ljava/util/List;I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mCommonDisplayList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mStateInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->isGcsSpaceMode()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mCommonDisplayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-eq v2, v0, :cond_4

    return v1

    :cond_4
    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_7

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mCommonDisplayList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v3, v0, :cond_5

    return v1

    :cond_5
    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mCommonDisplayList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    return v1

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    const/4 p1, 0x1

    return p1

    :cond_8
    :goto_2
    return v1
.end method

.method public isIgnoreFolder(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mFolderMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/FolderMap;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/FolderMap;->isIgnoreFolder(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public nonNullDocumentCountMap()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mNoteMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NoteMap;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NoteMap;->nonNullDocumentCountMap()Z

    move-result v0

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "DocumentMap"

    const-string v1, "onRestoreInstanceState# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "key_has_ssm_progress_bar"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mHolderInfoMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/HolderInfoMap;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/HolderInfoMap;->putHolderInfoMap(IZ)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mNoteMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NoteMap;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NoteMap;->initNoteMap(Ljava/util/List;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mFolderMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/FolderMap;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/FolderMap;->initFolderDataMap()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->initCommonDisplayList()Z

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mHolderInfoMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/HolderInfoMap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/HolderInfoMap;->hasHolderInfo(I)Z

    move-result v0

    const-string v1, "key_has_ssm_progress_bar"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public putHolderInfoMap(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mHolderInfoMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/HolderInfoMap;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/HolderInfoMap;->putHolderInfoMap(IZ)V

    return-void
.end method

.method public removeCoeditInvitationMap(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mNoteMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NoteMap;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NoteMap;->removeCoeditInvitationMap(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public removeHolderInfoMap(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mHolderInfoMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/HolderInfoMap;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/HolderInfoMap;->removeHolderInfoMap(I)V

    return-void
.end method

.method public setFolderUuid(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mStateInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->getFolderUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mStateInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->isBackFolder()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mStateInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->getFolderBackHistory()Ljava/util/Stack;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mStateInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->setBackFolder(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mStateInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->setFolderUuid(Ljava/lang/String;)V

    return-void
.end method

.method public sortTopHolderDisplayList(I)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mHolderInfoMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/HolderInfoMap;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mCommonDisplayList:Ljava/util/List;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/HolderInfoMap;->sortTopHolderDisplayList(Ljava/util/List;I)I

    move-result p1

    return p1
.end method

.method public updateDocumentCountMap(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->mNoteMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NoteMap;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NoteMap;->updateDocumentCountMap(Ljava/util/Map;)V

    return-void
.end method
