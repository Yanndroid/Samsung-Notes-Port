.class Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$JapanModel;
.super Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Feature;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JapanModel"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Feature;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Feature;->mDefaultViewModeGridMedium:Z

    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Feature;
    .locals 1

    const-string v0, "42A"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "02M"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$JapanModel;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$JapanModel;-><init>()V

    return-object p0

    :cond_1
    :goto_0
    new-instance p0, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$LowEndModel;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$LowEndModel;-><init>()V

    return-object p0
.end method
