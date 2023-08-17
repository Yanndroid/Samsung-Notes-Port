.class Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$NoteSeries;
.super Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Feature;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NoteSeries"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Feature;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/base/common/util/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$NoteSeries;-><init>()V

    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Feature;
    .locals 1

    const-string v0, "N97"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Note10;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Note10;-><init>()V

    return-object p0

    :cond_0
    const-string v0, "N98"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Note20;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Note20;-><init>()V

    return-object p0

    :cond_1
    new-instance p0, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$NoteSeries;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$NoteSeries;-><init>()V

    return-object p0
.end method
