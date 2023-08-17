.class public Lcom/samsung/android/support/senl/nt/coedit/control/ExternalSnapState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/coedit/control/ExternalSnapState$ExternalSnapContract;
    }
.end annotation


# instance fields
.field private mExternalSnapContract:Lcom/samsung/android/support/senl/nt/coedit/control/ExternalSnapState$ExternalSnapContract;

.field private mIsDownload:Z

.field private mUuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/control/ExternalSnapState$ExternalSnapContract;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/ExternalSnapState;->mUuid:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/coedit/control/ExternalSnapState;->mExternalSnapContract:Lcom/samsung/android/support/senl/nt/coedit/control/ExternalSnapState$ExternalSnapContract;

    iput-boolean p3, p0, Lcom/samsung/android/support/senl/nt/coedit/control/ExternalSnapState;->mIsDownload:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/ExternalSnapState;->mUuid:Ljava/lang/String;

    check-cast p1, Lcom/samsung/android/support/senl/nt/coedit/control/ExternalSnapState;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/coedit/control/ExternalSnapState;->getUuid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/ExternalSnapState;->mUuid:Ljava/lang/String;

    return-object v0
.end method

.method public isDownload()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/ExternalSnapState;->mIsDownload:Z

    return v0
.end method

.method public isExceedExternalSnap()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/ExternalSnapState;->mExternalSnapContract:Lcom/samsung/android/support/senl/nt/coedit/control/ExternalSnapState$ExternalSnapContract;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/ExternalSnapState$ExternalSnapContract;->isExceedExternalSnap()Z

    move-result v0

    return v0
.end method

.method public wakeExternalSnap()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/ExternalSnapState;->mExternalSnapContract:Lcom/samsung/android/support/senl/nt/coedit/control/ExternalSnapState$ExternalSnapContract;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/ExternalSnapState$ExternalSnapContract;->wakeExternalSnap()V

    return-void
.end method
