.class public Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# instance fields
.field private mPostLaunchToken:Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager$Token;

.field private mPostResumeToken:Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostResumeManager$Token;

.field private mPostStartToken:Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostStartManager$Token;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;->mPostLaunchToken:Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager$Token;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;->mPostResumeToken:Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostResumeManager$Token;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;->mPostStartToken:Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostStartManager$Token;

    return-void
.end method


# virtual methods
.method public filteredInvalidateOptionsMenu()V
    .locals 0

    return-void
.end method

.method public getPostLaunchToken()Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager$Token;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;->mPostLaunchToken:Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager$Token;

    return-object v0
.end method

.method public getPostResumeToken()Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostResumeManager$Token;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;->mPostResumeToken:Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostResumeManager$Token;

    return-object v0
.end method

.method public getPostStartToken()Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostStartManager$Token;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;->mPostStartToken:Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostStartManager$Token;

    return-object v0
.end method

.method public isRunningAnimator()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onFolderDeleteVerifySuccess()V
    .locals 0

    return-void
.end method

.method public setPostToken(Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager$Token;Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostResumeManager$Token;Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostStartManager$Token;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;->mPostLaunchToken:Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager$Token;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;->mPostResumeToken:Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostResumeManager$Token;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;->mPostStartToken:Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostStartManager$Token;

    return-void
.end method
