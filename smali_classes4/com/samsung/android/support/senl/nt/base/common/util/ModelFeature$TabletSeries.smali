.class Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$TabletSeries;
.super Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Feature;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabletSeries"
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

    const-string v0, "T87"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "T73"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "T97"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p0, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$TabS7;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$TabS7;-><init>()V

    return-object p0

    :cond_1
    const-string v0, "X90"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "X80"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "X70"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$TabletSeries;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$TabletSeries;-><init>()V

    return-object p0

    :cond_3
    :goto_0
    new-instance p0, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$TabS8;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$TabS8;-><init>(Lcom/samsung/android/support/senl/nt/base/common/util/c;)V

    return-object p0

    :cond_4
    :goto_1
    new-instance p0, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$FlagshipTablet;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$FlagshipTablet;-><init>()V

    return-object p0
.end method
