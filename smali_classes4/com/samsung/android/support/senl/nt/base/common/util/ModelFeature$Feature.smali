.class public Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Feature;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Feature"
.end annotation


# instance fields
.field public mDefaultViewModeGridMedium:Z

.field public mDefaultViewModeSimpleList:Z

.field public mNeedAntiGreenish:Z

.field public mNeedNoThumbnailSimpleList:Z

.field public mQ2Device:Z

.field public mQ4Device:Z

.field public mQ5Device:Z

.field public mSupportDocumentScan:Z

.field public mSupportInAppClient:Z

.field public mSupportInAppServer:Z

.field public mTopDevice:Z

.field public mWinnerDevice:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Feature;->mWinnerDevice:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Feature;->mTopDevice:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Feature;->mQ2Device:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Feature;->mQ4Device:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Feature;->mQ5Device:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Feature;->mDefaultViewModeSimpleList:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Feature;->mDefaultViewModeGridMedium:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Feature;->mSupportDocumentScan:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Feature;->mSupportInAppServer:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Feature;->mSupportInAppClient:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Feature;->mNeedAntiGreenish:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Feature;->mNeedNoThumbnailSimpleList:Z

    return-void
.end method


# virtual methods
.method public isDefaultViewModeGridMedium()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Feature;->mDefaultViewModeGridMedium:Z

    return v0
.end method

.method public isDefaultViewModeSimpleList()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Feature;->mDefaultViewModeSimpleList:Z

    return v0
.end method

.method public isFoldableModel()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Feature;->mWinnerDevice:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Feature;->mTopDevice:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Feature;->mQ2Device:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Feature;->mQ4Device:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Feature;->mQ5Device:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isQ2Device()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Feature;->mQ2Device:Z

    return v0
.end method

.method public isQ4Device()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Feature;->mQ4Device:Z

    return v0
.end method

.method public isQ5Device()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Feature;->mQ5Device:Z

    return v0
.end method

.method public isSupportDocumentScan()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Feature;->mSupportDocumentScan:Z

    return v0
.end method

.method public isSupportInAppClient()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Feature;->mSupportInAppClient:Z

    return v0
.end method

.method public isSupportInAppServer()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Feature;->mSupportInAppServer:Z

    return v0
.end method

.method public isTopDevice()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Feature;->mTopDevice:Z

    return v0
.end method

.method public isWinnerDevice()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Feature;->mWinnerDevice:Z

    return v0
.end method

.method public needAntiGreenish()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Feature;->mNeedAntiGreenish:Z

    return v0
.end method

.method public needNoThumbnailSimpleList()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Feature;->mNeedNoThumbnailSimpleList:Z

    return v0
.end method
