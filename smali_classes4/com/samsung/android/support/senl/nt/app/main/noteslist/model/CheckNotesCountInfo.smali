.class public Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckNotesCountInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mFavoriteNotesCount:I

.field private mImportLockedNotesCount:I

.field private mLockedNotesCount:I

.field private mOldNotesCount:I

.field private mUnsupportedNotesCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private init()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckNotesCountInfo;->mImportLockedNotesCount:I

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckNotesCountInfo;->mOldNotesCount:I

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckNotesCountInfo;->mLockedNotesCount:I

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckNotesCountInfo;->mUnsupportedNotesCount:I

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckNotesCountInfo;->mFavoriteNotesCount:I

    return-void
.end method


# virtual methods
.method public getCheckNotesCountInfo(Ljava/util/HashMap;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckNotesCountInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;",
            ">;)",
            "Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckNotesCountInfo;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckNotesCountInfo;->init()V

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;->isSdoc()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckNotesCountInfo;->mOldNotesCount:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckNotesCountInfo;->mOldNotesCount:I

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;->isLock()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;->getLockType()I

    move-result v1

    const/4 v3, -0x1

    if-gt v1, v3, :cond_2

    iget v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckNotesCountInfo;->mUnsupportedNotesCount:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckNotesCountInfo;->mUnsupportedNotesCount:I

    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;->isLock()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;->getLockType()I

    move-result v1

    if-le v1, v2, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;->getLockType()I

    move-result v1

    const/4 v3, 0x5

    if-ge v1, v3, :cond_3

    iget v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckNotesCountInfo;->mImportLockedNotesCount:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckNotesCountInfo;->mImportLockedNotesCount:I

    :cond_3
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;->isLock()Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckNotesCountInfo;->mLockedNotesCount:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckNotesCountInfo;->mLockedNotesCount:I

    :cond_4
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;->isFavorite()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckNotesCountInfo;->mFavoriteNotesCount:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckNotesCountInfo;->mFavoriteNotesCount:I

    goto :goto_0

    :cond_5
    return-object p0
.end method

.method public getDeletableCheckedLockNotesCount()I
    .locals 2

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckNotesCountInfo;->mLockedNotesCount:I

    iget v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckNotesCountInfo;->mImportLockedNotesCount:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getFavoriteNotesCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckNotesCountInfo;->mFavoriteNotesCount:I

    return v0
.end method

.method public getImportLockedNotesCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckNotesCountInfo;->mImportLockedNotesCount:I

    return v0
.end method

.method public getLockedNotesCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckNotesCountInfo;->mLockedNotesCount:I

    return v0
.end method

.method public getOldNotesCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckNotesCountInfo;->mOldNotesCount:I

    return v0
.end method

.method public getUnsupportedNotesCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckNotesCountInfo;->mUnsupportedNotesCount:I

    return v0
.end method
