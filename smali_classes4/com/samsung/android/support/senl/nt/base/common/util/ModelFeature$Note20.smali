.class Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Note20;
.super Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$NoteSeries;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Note20"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$NoteSeries;-><init>(Lcom/samsung/android/support/senl/nt/base/common/util/a;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Feature;->mSupportDocumentScan:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Feature;->mSupportInAppClient:Z

    return-void
.end method
