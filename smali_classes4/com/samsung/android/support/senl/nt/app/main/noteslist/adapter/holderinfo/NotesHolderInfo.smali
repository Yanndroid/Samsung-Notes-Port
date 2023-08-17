.class public Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;
.super Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;
.source "SourceFile"


# instance fields
.field private mBackgroundColor:I

.field private mBackgroundColorInverted:I

.field private mForceUpdate:Z

.field private mHasBackgroundColor:Z

.field private mHasOnlyHandwritingSdoc:Z

.field private mHasTextOnly:Z

.field private mHoverThumbnailFilePath:Ljava/lang/String;

.field private mIsDarkMode:Z

.field private mIsSdoc:Z

.field private mIsSupportInvertedBGColor:Z

.field private mLockType:I

.field private final mNoteViewInfoController:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NoteViewInfoController;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NoteViewInfoController;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NoteViewInfoController;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;->mNoteViewInfoController:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NoteViewInfoController;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;->mHasBackgroundColor:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;->mHasOnlyHandwritingSdoc:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;->mIsSupportInvertedBGColor:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;->mIsDarkMode:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;->mIsSdoc:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;->mHasTextOnly:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;->mForceUpdate:Z

    return-void
.end method


# virtual methods
.method public getBackgroundColor()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;->mBackgroundColor:I

    return v0
.end method

.method public getBackgroundColorInverted()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;->mBackgroundColorInverted:I

    return v0
.end method

.method public getHoverThumbnailFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;->mHoverThumbnailFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getLockType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;->mLockType:I

    return v0
.end method

.method public hasBackgroundColor()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;->mHasBackgroundColor:Z

    return v0
.end method

.method public hasOnlyHandwritingSdoc()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;->mHasOnlyHandwritingSdoc:Z

    return v0
.end method

.method public hasTextOnly()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;->mHasTextOnly:Z

    return v0
.end method

.method public initInfoViews()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;->mNoteViewInfoController:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NoteViewInfoController;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->getRootCardView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NoteViewInfoController;->init(Landroid/view/View;)V

    return-void
.end method

.method public isDarkMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;->mIsDarkMode:Z

    return v0
.end method

.method public isForceUpdate()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;->mForceUpdate:Z

    return v0
.end method

.method public isSdoc()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;->mIsSdoc:Z

    return v0
.end method

.method public isSupportInvertedBGColor()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;->mIsSupportInvertedBGColor:Z

    return v0
.end method

.method public setBackgroundColor(I)Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;->mBackgroundColor:I

    return-object p0
.end method

.method public setBackgroundColorInverted(I)Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;->mBackgroundColorInverted:I

    return-object p0
.end method

.method public setCoeditExtraVisible(ZZ)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;->mNoteViewInfoController:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NoteViewInfoController;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->getRootCardView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NoteViewInfoController;->setCoeditExtraVisible(Landroid/view/View;ZZ)V

    return-void
.end method

.method public setCoeditLoadProgressVisible(ZZ)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;->mNoteViewInfoController:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NoteViewInfoController;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->getRootCardView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NoteViewInfoController;->setCoeditLoadProgressVisible(Landroid/view/View;ZZ)V

    return-void
.end method

.method public setCoeditSpaceExtraVisible(Ljava/lang/String;Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;->mNoteViewInfoController:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NoteViewInfoController;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->getRootCardView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NoteViewInfoController;->setCoeditSpaceExtraVisible(Landroid/view/View;Ljava/lang/String;Z)V

    return-void
.end method

.method public setDueDateViewVisible(J)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;->mNoteViewInfoController:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NoteViewInfoController;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->getRootCardView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NoteViewInfoController;->setDueDateViewVisible(Landroid/view/View;J)V

    return-void
.end method

.method public setForceUpdate(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;->mForceUpdate:Z

    return-void
.end method

.method public setGcsExtraVisible(ZZZ)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;->mNoteViewInfoController:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NoteViewInfoController;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->getRootCardView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NoteViewInfoController;->setGcsExtraVisible(Landroid/view/View;ZZZ)V

    return-void
.end method

.method public setHasBackgroundColor(Z)Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;->mHasBackgroundColor:Z

    return-object p0
.end method

.method public setHasOnlyHandwritingSdoc(Z)Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;->mHasOnlyHandwritingSdoc:Z

    return-object p0
.end method

.method public setHasTextOnly(Z)Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;->mHasTextOnly:Z

    return-object p0
.end method

.method public setHoverThumbnailFilePath(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;->mHoverThumbnailFilePath:Ljava/lang/String;

    return-object p0
.end method

.method public setIsDarkMode(Z)Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;->mIsDarkMode:Z

    return-object p0
.end method

.method public setIsSdoc(Z)Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;->mIsSdoc:Z

    return-object p0
.end method

.method public setIsSupportInvertedBGColor(Z)Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;->mIsSupportInvertedBGColor:Z

    return-object p0
.end method

.method public setLockType(I)Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;->mLockType:I

    return-object p0
.end method
