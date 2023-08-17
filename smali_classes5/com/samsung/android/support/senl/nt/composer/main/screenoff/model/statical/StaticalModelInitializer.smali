.class public Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/StaticalModelInitializer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "StaticalModelInitializer"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/SOLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/StaticalModelInitializer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/StaticalModelInitializer;->TAG:Ljava/lang/String;

    const-string v1, "initialize#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/NotifyExecutionModel;->isPreInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/NotifyExecutionModel;->init()V

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/ConfigurationModel;->isPreInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/ConfigurationModel;->init(Landroid/content/Context;)V

    :cond_1
    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenPairedColorModel;->isPreInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenPairedColorModel;->init(Landroid/content/Context;)V

    :cond_2
    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenConvertingColorModel;->isPreInitialized()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenConvertingColorModel;->init()V

    :cond_3
    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenColorPaletteModel;->isPreInitialized()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenColorPaletteModel;->init(Landroid/content/Context;)V

    :cond_4
    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel;->isPreInitialized()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel;->init(Landroid/content/Context;)V

    :cond_5
    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/LottieAnimationModel;->isPreInitialized()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/LottieAnimationModel;->init(Landroid/content/Context;)V

    :cond_6
    return-void
.end method

.method public static release()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/StaticalModelInitializer;->TAG:Ljava/lang/String;

    const-string v1, "release#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/NotifyExecutionModel;->release()V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/ConfigurationModel;->release()V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenPairedColorModel;->release()V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenConvertingColorModel;->release()V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenColorPaletteModel;->release()V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel;->release()V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/LottieAnimationModel;->release()V

    return-void
.end method
