.class public Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_STATE:Ljava/lang/String; = "composer_state_key"

.field public static final REQUEST_CODE_INVALID:I = -0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mFoldState:I

.field private mIsBackgroundColorInverted:Z

.field private mIsBlockedSip:Z

.field private mIsDeleteOnlyMode:Z

.field private mIsEditable:Z

.field private mIsFinishAfterSave:Z

.field private mIsFullScreenMode:Z

.field private mIsInAppCollaborationMode:Z

.field private mIsLastStateLockCanvas:Z

.field private mIsRunningDrawing:Z

.field private mIsSaved:Z

.field private mIsSecured:Z

.field private mLastRequestCode:I

.field private mMode:Ljava/lang/String;

.field private mPrevMode:Ljava/lang/String;

.field private mTitleMaxLength:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "ComposerState"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState$1;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState$1;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->mIsEditable:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->mIsBackgroundColorInverted:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->mIsFinishAfterSave:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->mLastRequestCode:I

    const/16 v1, 0x32

    iput v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->mTitleMaxLength:I

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->mFoldState:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->mIsEditable:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->mMode:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->mPrevMode:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->mIsEditable:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_1

    move v1, v0

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->mIsSecured:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_2

    move v1, v0

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->mIsBlockedSip:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_3

    move v1, v0

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->mIsRunningDrawing:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_4

    move v1, v0

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->mIsBackgroundColorInverted:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_5

    move v1, v0

    goto :goto_5

    :cond_5
    move v1, v2

    :goto_5
    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->mIsLastStateLockCanvas:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_6

    move v1, v0

    goto :goto_6

    :cond_6
    move v1, v2

    :goto_6
    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->mIsFullScreenMode:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_7

    move v1, v0

    goto :goto_7

    :cond_7
    move v1, v2

    :goto_7
    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->mIsInAppCollaborationMode:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_8

    move v1, v0

    goto :goto_8

    :cond_8
    move v1, v2

    :goto_8
    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->mIsFinishAfterSave:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->mLastRequestCode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_9

    move v1, v0

    goto :goto_9

    :cond_9
    move v1, v2

    :goto_9
    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->mIsDeleteOnlyMode:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->mTitleMaxLength:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->mFoldState:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_a

    :cond_a
    move v0, v2

    :goto_a
    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->mIsSaved:Z

    return-void
.end method


# virtual methods
.method public blockSip(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->mIsBlockedSip:Z

    return-void
.end method

.method public clearLastRequestCode()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->mLastRequestCode:I

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFoldState()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->mFoldState:I

    return v0
.end method

.method public getLastRequestCode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->mLastRequestCode:I

    return v0
.end method

.method public getMode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->mMode:Ljava/lang/String;

    return-object v0
.end method

.method public getPrevMode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->mPrevMode:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleMaxLength()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->mTitleMaxLength:I

    return v0
.end method

.method public isBackgroundColorInverted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->mIsBackgroundColorInverted:Z

    return v0
.end method

.method public isBlockedSip()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->mIsBlockedSip:Z

    return v0
.end method

.method public isDeleteOnlyMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->mIsDeleteOnlyMode:Z

    return v0
.end method

.method public isEditable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->mIsEditable:Z

    return v0
.end method

.method public isFinishAfterSave()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->mIsFinishAfterSave:Z

    return v0
.end method

.method public isFullScreenMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->mIsFullScreenMode:Z

    return v0
.end method

.method public isInAppCollaborationMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->mIsInAppCollaborationMode:Z

    return v0
.end method

.method public isLastStateLockCanvas()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->mIsLastStateLockCanvas:Z

    return v0
.end method

.method public isRunningDrawing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->mIsRunningDrawing:Z

    return v0
.end method

.method public isSaved()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->mIsSaved:Z

    return v0
.end method

.method public isSecured()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->mIsSecured:Z

    return v0
.end method

.method public restoreState(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "composer_state_key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->getMode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->mMode:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->getPrevMode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->mPrevMode:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->isEditable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->mIsEditable:Z

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->isSecured()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->mIsSecured:Z

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->isBlockedSip()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->mIsBlockedSip:Z

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->isRunningDrawing()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->mIsRunningDrawing:Z

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->isBackgroundColorInverted()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->mIsBackgroundColorInverted:Z

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->isLastStateLockCanvas()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->mIsLastStateLockCanvas:Z

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->isFullScreenMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->mIsFullScreenMode:Z

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->isInAppCollaborationMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->mIsInAppCollaborationMode:Z

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->isFinishAfterSave()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->mIsFinishAfterSave:Z

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->getLastRequestCode()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->mLastRequestCode:I

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->isDeleteOnlyMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->mIsDeleteOnlyMode:Z

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->getTitleMaxLength()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->mTitleMaxLength:I

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->getFoldState()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->mFoldState:I

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->isSaved()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->mIsSaved:Z

    return-void
.end method

.method public setBackgroundColorInverted(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->mIsBackgroundColorInverted:Z

    return-void
.end method

.method public setDeleteOnlyMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->mIsDeleteOnlyMode:Z

    return-void
.end method

.method public setEditable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->mIsEditable:Z

    return-void
.end method

.method public setFinishAfterSave(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->mIsFinishAfterSave:Z

    return-void
.end method

.method public setFoldState(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->mFoldState:I

    return-void
.end method

.method public setIsFullScreenMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->mIsFullScreenMode:Z

    return-void
.end method

.method public setIsInAppCollaborationMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->mIsInAppCollaborationMode:Z

    return-void
.end method

.method public setIsSaved(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->mIsSaved:Z

    return-void
.end method

.method public setLastRequestCode(I)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLastRequestCode# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->mLastRequestCode:I

    return-void
.end method

.method public setLastStateLockCanvas(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->mIsLastStateLockCanvas:Z

    return-void
.end method

.method public setMode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->mMode:Ljava/lang/String;

    return-void
.end method

.method public setPrevMode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->mPrevMode:Ljava/lang/String;

    return-void
.end method

.method public setRunningDrawing(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->mIsRunningDrawing:Z

    return-void
.end method

.method public setSecured(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->mIsSecured:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->setEditable(Z)V

    return-void
.end method

.method public setTitleMaxLength(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->mTitleMaxLength:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->mMode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->mPrevMode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->mIsEditable:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->mIsSecured:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->mIsBlockedSip:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->mIsRunningDrawing:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->mIsBackgroundColorInverted:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->mIsLastStateLockCanvas:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->mIsFullScreenMode:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->mIsInAppCollaborationMode:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->mIsFinishAfterSave:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->mLastRequestCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->mIsDeleteOnlyMode:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->mTitleMaxLength:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->mFoldState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->mIsSaved:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
