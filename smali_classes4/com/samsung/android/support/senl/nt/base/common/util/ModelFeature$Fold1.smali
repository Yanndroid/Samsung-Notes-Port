.class Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Fold1;
.super Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$FoldableSeries;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Fold1"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$FoldableSeries;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Feature;->mWinnerDevice:Z

    return-void
.end method
