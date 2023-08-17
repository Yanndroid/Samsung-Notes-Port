.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/FunctionFlags;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mHashTagEnabled:Z

.field private mInitializeLoadingProgressEnabled:Z

.field private mLiveSharingEnabled:Z

.field private mPostLaunchEnabled:Z

.field private mRestoreEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/FunctionFlags;->mHashTagEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/FunctionFlags;->mRestoreEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/FunctionFlags;->mPostLaunchEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/FunctionFlags;->mInitializeLoadingProgressEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/FunctionFlags;->mLiveSharingEnabled:Z

    return-void
.end method


# virtual methods
.method public isHashTagEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/FunctionFlags;->mHashTagEnabled:Z

    return v0
.end method

.method public isInitializeLoadingProgressEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/FunctionFlags;->mInitializeLoadingProgressEnabled:Z

    return v0
.end method

.method public isLiveSharingEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/FunctionFlags;->mLiveSharingEnabled:Z

    return v0
.end method

.method public isPostLaunchEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/FunctionFlags;->mPostLaunchEnabled:Z

    return v0
.end method

.method public isRestoreEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/FunctionFlags;->mRestoreEnabled:Z

    return v0
.end method

.method public setHashTagEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/FunctionFlags;->mHashTagEnabled:Z

    return-void
.end method

.method public setInitializeLoadingProgressEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/FunctionFlags;->mInitializeLoadingProgressEnabled:Z

    return-void
.end method

.method public setLiveSharingEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/FunctionFlags;->mLiveSharingEnabled:Z

    return-void
.end method

.method public setPostLaunchEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/FunctionFlags;->mPostLaunchEnabled:Z

    return-void
.end method

.method public setRestoreEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/FunctionFlags;->mRestoreEnabled:Z

    return-void
.end method
