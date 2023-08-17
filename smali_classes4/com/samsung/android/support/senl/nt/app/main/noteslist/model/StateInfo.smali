.class public Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEY_BACK_HISTORY:Ljava/lang/String; = "key_back_history"


# instance fields
.field private mCaller:I

.field private mCategoryUuid:Ljava/lang/String;

.field private mFolderBackHistory:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFolderUuid:Ljava/lang/String;

.field private mGroupId:Ljava/lang/String;

.field private mGroupName:Ljava/lang/String;

.field private mIsBackFolder:Z

.field private mModeIndex:I

.field private mNotesSpan:I
    .annotation build Lcom/samsung/android/support/senl/nt/app/common/NotesConstants$NoteSpan;
    .end annotation
.end field

.field private mPrevModeIndex:I

.field private mSavedSearchText:Ljava/lang/String;

.field private mSearchCallerMode:I

.field private mSelectedTags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSpaceId:Ljava/lang/String;

.field private mSubFoldersSpan:I
    .annotation build Lcom/samsung/android/support/senl/nt/app/common/NotesConstants$FolderSpan;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$AllNotes;->UUID:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->mFolderUuid:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->mCategoryUuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->mGroupId:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->mSpaceId:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->mGroupName:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->mSavedSearchText:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->mSelectedTags:Ljava/util/Set;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->mCaller:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->mModeIndex:I

    iput v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->mPrevModeIndex:I

    iput v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->mSearchCallerMode:I

    const/4 v2, 0x4

    iput v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->mSubFoldersSpan:I

    iput v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->mNotesSpan:I

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->mIsBackFolder:Z

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->mFolderBackHistory:Ljava/util/Stack;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p1, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$AllNotes;->UUID:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->mFolderUuid:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->mCategoryUuid:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->mGroupId:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->mSpaceId:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->mGroupName:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->mSavedSearchText:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->mSelectedTags:Ljava/util/Set;

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->mCaller:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->mModeIndex:I

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->mPrevModeIndex:I

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->mSearchCallerMode:I

    const/4 v1, 0x4

    iput v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->mSubFoldersSpan:I

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->mNotesSpan:I

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->mIsBackFolder:Z

    return-void
.end method

.method private loadBackHistory(Landroid/os/Bundle;)Ljava/util/Stack;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/Stack<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_1

    const-string v0, "key_back_history"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    instance-of v1, v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/Stack;

    return-object p1

    :cond_1
    :goto_0
    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    return-object p1
.end method

.method private loadSelectedTags(Landroid/os/Bundle;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    return-object p1

    :cond_0
    const-string v0, "key_selected_tags"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    if-nez p1, :cond_1

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    :cond_1
    return-object p1
.end method


# virtual methods
.method public clearFolderBackHistory()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->mFolderBackHistory:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCaller()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->mCaller:I

    return v0
.end method

.method public getCategoryUuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->mCategoryUuid:Ljava/lang/String;

    return-object v0
.end method

.method public getFolderBackHistory()Ljava/util/Stack;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Stack<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->mFolderBackHistory:Ljava/util/Stack;

    return-object v0
.end method

.method public getFolderUuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->mFolderUuid:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->getLastSelectedFolder()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->mFolderUuid:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->mFolderUuid:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->mGroupId:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->mGroupName:Ljava/lang/String;

    return-object v0
.end method

.method public getModeIndex()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->mModeIndex:I

    return v0
.end method

.method public getNotesSpan()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->mNotesSpan:I

    return v0
.end method

.method public getPrevModeIndex()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->mPrevModeIndex:I

    return v0
.end method

.method public getSavedSearchText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->mSavedSearchText:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchCallerMode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->mSearchCallerMode:I

    return v0
.end method

.method public getSelectedTags()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->mSelectedTags:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->mSelectedTags:Ljava/util/Set;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->mSelectedTags:Ljava/util/Set;

    return-object v0
.end method

.method public getSpaceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->mSpaceId:Ljava/lang/String;

    return-object v0
.end method

.method public getSubFoldersSpan()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->mSubFoldersSpan:I

    return v0
.end method

.method public initFolderBackHistory()V
    .locals 4

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->getLastSelectedFolder()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$AllNotes;->UUID:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$MyFolders;->UUID:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->isOpenedTrashByOtherApps()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/common/util/FeatureUtils;->isPreDefinedFolderUuid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->mFolderBackHistory:Ljava/util/Stack;

    invoke-virtual {v0, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->mFolderBackHistory:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public isBackFolder()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->mIsBackFolder:Z

    return v0
.end method

.method public isCoeditMode()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->mModeIndex:I

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/common/util/FeatureUtils;->isCoeditMode(I)Z

    move-result v0

    return v0
.end method

.method public isCoeditSpaceMode()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->mModeIndex:I

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/common/util/FeatureUtils;->isCoeditSpaceMode(I)Z

    move-result v0

    return v0
.end method

.method public isGcsSpaceMode()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->mModeIndex:I

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/common/util/FeatureUtils;->isGcsSpaceMode(I)Z

    move-result v0

    return v0
.end method

.method public isHashTagMode()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->mModeIndex:I

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/common/util/FeatureUtils;->isHashTagMode(I)Z

    move-result v0

    return v0
.end method

.method public isOldMode()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->mModeIndex:I

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/common/util/FeatureUtils;->isOldMode(I)Z

    move-result v0

    return v0
.end method

.method public isPickMode()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->mModeIndex:I

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/common/util/FeatureUtils;->isPickMode(I)Z

    move-result v0

    return v0
.end method

.method public isRecyclebinMode()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->mModeIndex:I

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/common/util/FeatureUtils;->isRecyclebinMode(I)Z

    move-result v0

    return v0
.end method

.method public isSearchMode()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->mModeIndex:I

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/common/util/FeatureUtils;->isSearchMode(I)Z

    move-result v0

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->loadBackHistory(Landroid/os/Bundle;)Ljava/util/Stack;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->mFolderBackHistory:Ljava/util/Stack;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->getLastSelectedFolder()Ljava/lang/String;

    move-result-object v0

    const-string v1, "folderUuid"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->mFolderUuid:Ljava/lang/String;

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/main/common/GcsConstants;->SES_GROUP_NAME:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->mGroupName:Ljava/lang/String;

    const-string v0, "key_group_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->mGroupId:Ljava/lang/String;

    const-string v0, "key_space_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->mSpaceId:Ljava/lang/String;

    const-string v0, "key_category_uuid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->mCategoryUuid:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->loadSelectedTags(Landroid/os/Bundle;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->mSelectedTags:Ljava/util/Set;

    const-string v0, "memo_fragment_key_search"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->mSavedSearchText:Ljava/lang/String;

    const-string v0, "caller"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->mCaller:I

    const-string v0, "mode"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->mModeIndex:I

    const-string v0, "prev_mode"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->mPrevModeIndex:I

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->mFolderBackHistory:Ljava/util/Stack;

    const-string v1, "key_back_history"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->mFolderUuid:Ljava/lang/String;

    const-string v1, "folderUuid"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/main/common/GcsConstants;->SES_GROUP_NAME:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->mGroupName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->mGroupId:Ljava/lang/String;

    const-string v1, "key_group_id"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->mSpaceId:Ljava/lang/String;

    const-string v1, "key_space_id"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->mCategoryUuid:Ljava/lang/String;

    const-string v1, "key_category_uuid"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->mSelectedTags:Ljava/util/Set;

    check-cast v0, Ljava/io/Serializable;

    const-string v1, "key_selected_tags"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->mCaller:I

    const-string v1, "caller"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->mModeIndex:I

    const-string v1, "mode"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->mPrevModeIndex:I

    const-string v1, "prev_mode"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public saveArguments(Landroid/os/Bundle;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->getLastSelectedFolder()Ljava/lang/String;

    move-result-object v0

    const-string v1, "folderUuid"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->mFolderUuid:Ljava/lang/String;

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/main/common/GcsConstants;->SES_GROUP_NAME:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->mGroupName:Ljava/lang/String;

    const-string v0, "key_group_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->mGroupId:Ljava/lang/String;

    const-string v0, "key_space_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->mSpaceId:Ljava/lang/String;

    const-string v0, "key_category_uuid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->mCategoryUuid:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->loadSelectedTags(Landroid/os/Bundle;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->mSelectedTags:Ljava/util/Set;

    const-string v0, "memo_fragment_key_search"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->mSavedSearchText:Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "caller"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->mCaller:I

    const-string v0, "mode"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->mModeIndex:I

    const-string v0, "prev_mode"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->mPrevModeIndex:I

    return-void
.end method

.method public setBackFolder(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->mIsBackFolder:Z

    return-void
.end method

.method public setCaller(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->mCaller:I

    return-void
.end method

.method public setCategoryUuid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->mCategoryUuid:Ljava/lang/String;

    return-void
.end method

.method public setFolderUuid(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFolderUuid# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StateInfo"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->mFolderUuid:Ljava/lang/String;

    return-void
.end method

.method public setGroupId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->mGroupId:Ljava/lang/String;

    return-void
.end method

.method public setGroupName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->mGroupName:Ljava/lang/String;

    return-void
.end method

.method public setModeIndex(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->mModeIndex:I

    return-void
.end method

.method public setNotesSpan(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->mNotesSpan:I

    return-void
.end method

.method public setPrevModeIndex(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->mPrevModeIndex:I

    return-void
.end method

.method public setSavedSearchText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->mSavedSearchText:Ljava/lang/String;

    return-void
.end method

.method public setSearchCallerMode(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->mSearchCallerMode:I

    return-void
.end method

.method public setSelectedTags(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->mSelectedTags:Ljava/util/Set;

    return-void
.end method

.method public setSpaceId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->mSpaceId:Ljava/lang/String;

    return-void
.end method

.method public setSubFoldersSpan(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->mSubFoldersSpan:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    return-void
.end method
