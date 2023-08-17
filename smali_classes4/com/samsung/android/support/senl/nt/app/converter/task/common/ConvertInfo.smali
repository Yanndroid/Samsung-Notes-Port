.class public Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;


# instance fields
.field private mCallerId:I

.field private mConverter:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/common/ISDocXConverter;

.field private mDstFilePreFix:Ljava/lang/String;

.field private mDstType:I

.field private mDstUuid:Ljava/lang/String;

.field private mFolderName:Ljava/lang/String;

.field private mGroupId:I

.field private mIsAuthenticated:Z

.field private mIsImported:Z

.field private mIsIndividualPage:Z

.field private mIsWidgetMemo:Z

.field private mIsWrappingWhenLocked:Z

.field private mLockType:I

.field private mReqFileSize:J

.field private mSrcPath:Ljava/lang/String;

.field private mSrcType:I

.field private mUuid:Ljava/lang/String;

.field private mWritingMode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;->mSrcType:I

    const/16 v1, 0x9

    iput v1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;->mDstType:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;->mGroupId:I

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;->mLockType:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;->mDstUuid:Ljava/lang/String;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;->mIsImported:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;->mIsAuthenticated:Z

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;->mReqFileSize:J

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;->mIsWidgetMemo:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;->mIsIndividualPage:Z

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;->mConverter:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/common/ISDocXConverter;

    const-string v1, ""

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;->mDstFilePreFix:Ljava/lang/String;

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;->mWritingMode:I

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;->mIsWrappingWhenLocked:Z

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;->mFolderName:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;->mSrcPath:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;->mCallerId:I

    return-void
.end method


# virtual methods
.method public enableIndividualPage(Z)Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;->mIsIndividualPage:Z

    return-object p0
.end method

.method public getCallerId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;->mCallerId:I

    return v0
.end method

.method public getConverter()Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/common/ISDocXConverter;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;->mConverter:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/common/ISDocXConverter;

    return-object v0
.end method

.method public getDstFilePrefix()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;->mDstFilePreFix:Ljava/lang/String;

    return-object v0
.end method

.method public getDstType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;->mDstType:I

    return v0
.end method

.method public getDstUuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;->mDstUuid:Ljava/lang/String;

    return-object v0
.end method

.method public getFolderName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;->mFolderName:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;->mGroupId:I

    return v0
.end method

.method public getIsAuthenticated()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;->mIsAuthenticated:Z

    return v0
.end method

.method public getIsWidgetMemo()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;->mIsWidgetMemo:Z

    return v0
.end method

.method public getLockType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;->mLockType:I

    return v0
.end method

.method public getReqFileSize()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;->mReqFileSize:J

    return-wide v0
.end method

.method public getSrcPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;->mSrcPath:Ljava/lang/String;

    return-object v0
.end method

.method public getSrcType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;->mSrcType:I

    return v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;->mUuid:Ljava/lang/String;

    return-object v0
.end method

.method public getWritingMode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;->mWritingMode:I

    return v0
.end method

.method public isImported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;->mIsImported:Z

    return v0
.end method

.method public isIndividualPage()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;->mIsIndividualPage:Z

    return v0
.end method

.method public isWrappingWhenLocked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;->mIsWrappingWhenLocked:Z

    return v0
.end method

.method public setConverter(Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/common/ISDocXConverter;)Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/common/ISDocXConverter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;->mConverter:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/common/ISDocXConverter;

    return-object p0
.end method

.method public setDstFilePrefix(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;->mDstFilePreFix:Ljava/lang/String;

    return-object p0
.end method

.method public setDstType(I)Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;->mDstType:I

    return-object p0
.end method

.method public setDstUuid(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;->mDstUuid:Ljava/lang/String;

    return-object p0
.end method

.method public setFolderName(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;->mFolderName:Ljava/lang/String;

    return-object p0
.end method

.method public setGroupId(I)Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;->mGroupId:I

    return-object p0
.end method

.method public setIsAuthenticated(Z)Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;->mIsAuthenticated:Z

    return-object p0
.end method

.method public setIsImported(Z)Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;->mIsImported:Z

    return-object p0
.end method

.method public setIsWidgetMemo(Z)Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;->mIsWidgetMemo:Z

    return-object p0
.end method

.method public setIsWrappingWhenLocked(Z)Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;->mIsWrappingWhenLocked:Z

    return-object p0
.end method

.method public setLockType(I)Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;->mLockType:I

    return-object p0
.end method

.method public setReqFileSize(J)Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;->mReqFileSize:J

    return-object p0
.end method

.method public setSrcType(I)Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;->mSrcType:I

    return-object p0
.end method

.method public setUuid(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;->mUuid:Ljava/lang/String;

    return-object p0
.end method

.method public setWriteMode(I)Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;->mWritingMode:I

    return-object p0
.end method
