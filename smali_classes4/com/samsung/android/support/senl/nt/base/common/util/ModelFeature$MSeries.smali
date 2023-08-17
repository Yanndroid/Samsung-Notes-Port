.class Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$MSeries;
.super Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Feature;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MSeries"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Feature;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Feature;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$LowEndModel;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$LowEndModel;-><init>()V

    return-object v0
.end method
