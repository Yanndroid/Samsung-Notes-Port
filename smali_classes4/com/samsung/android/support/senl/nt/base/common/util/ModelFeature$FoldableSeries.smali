.class Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$FoldableSeries;
.super Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Feature;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FoldableSeries"
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

    const-string v0, "F7"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$FlipModel;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$FlipModel;-><init>()V

    return-object p0

    :cond_0
    const-string v0, "F90"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p0, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Fold1;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Fold1;-><init>()V

    return-object p0

    :cond_1
    const-string v0, "F91"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p0, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Fold2;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Fold2;-><init>()V

    return-object p0

    :cond_2
    const-string v0, "F92"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance p0, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Fold3;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Fold3;-><init>()V

    return-object p0

    :cond_3
    const-string v0, "F93"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance p0, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Fold4;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Fold4;-><init>()V

    return-object p0

    :cond_4
    const-string v0, "F94"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    new-instance p0, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Fold5;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Fold5;-><init>()V

    return-object p0

    :cond_5
    new-instance p0, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$FoldableSeries;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$FoldableSeries;-><init>()V

    return-object p0
.end method
