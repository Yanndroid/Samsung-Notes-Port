.class public Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$LowEndModel;,
        Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$JapanModel;,
        Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$ChinaModel;,
        Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Fold5;,
        Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Fold4;,
        Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Fold3;,
        Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Fold2;,
        Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Fold1;,
        Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$FlipModel;,
        Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$FoldableSeries;,
        Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$TabS8;,
        Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$TabS7;,
        Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$FlagshipTablet;,
        Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$TabletSeries;,
        Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Note20;,
        Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Note10;,
        Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$NoteSeries;,
        Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$S23;,
        Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$S21S22;,
        Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$S10S20;,
        Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$SSeries;,
        Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$ASeries;,
        Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$MSeries;,
        Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Feature;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ModelFeature"

.field private static mFeature:Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Feature;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static Factory()Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Feature;
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->getSubModelName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFeature# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ModelFeature"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature;->Factory(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Feature;

    move-result-object v0

    return-object v0
.end method

.method public static Factory(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Feature;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_7

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x41

    if-eq v0, v1, :cond_6

    const/16 v1, 0x4a

    if-eq v0, v1, :cond_5

    const/16 v1, 0x46

    if-eq v0, v1, :cond_4

    const/16 v1, 0x47

    if-eq v0, v1, :cond_3

    const/16 v1, 0x4d

    if-eq v0, v1, :cond_5

    const/16 v1, 0x4e

    if-eq v0, v1, :cond_2

    const/16 v1, 0x53

    if-eq v0, v1, :cond_3

    const/16 v1, 0x54

    if-eq v0, v1, :cond_1

    const/16 v1, 0x57

    if-eq v0, v1, :cond_0

    const/16 v1, 0x58

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$ChinaModel;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Feature;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$TabletSeries;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Feature;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$NoteSeries;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Feature;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$SSeries;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Feature;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$FoldableSeries;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Feature;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$MSeries;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Feature;

    move-result-object p0

    return-object p0

    :cond_6
    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$ASeries;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Feature;

    move-result-object p0

    return-object p0

    :cond_7
    const/4 v1, 0x3

    if-ne v0, v1, :cond_8

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$JapanModel;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Feature;

    move-result-object p0

    return-object p0

    :cond_8
    :goto_0
    new-instance p0, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Feature;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Feature;-><init>()V

    return-object p0
.end method

.method public static declared-synchronized getFeature()Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Feature;
    .locals 3

    const-class v0, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature;->mFeature:Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Feature;

    if-nez v1, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature;->Factory()Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Feature;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature;->mFeature:Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Feature;

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->isSepLiteModel(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->isRamSizeBelowOf(I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature;->mFeature:Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Feature;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Feature;->mNeedNoThumbnailSimpleList:Z

    const-string v1, "ModelFeature"

    const-string v2, "getFeature# SepLightModel Below 3G"

    :goto_0
    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string v1, "ModelFeature"

    const-string v2, "getFeature# SepLightModel"

    goto :goto_0

    :cond_1
    :goto_1
    sget-object v1, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature;->mFeature:Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Feature;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
