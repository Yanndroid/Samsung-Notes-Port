.class Lcom/samsung/android/support/senl/nt/app/addons/PlatformUtilImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/addons/base/utils/IPlatformDelegate;


# instance fields
.field private mBaseContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/addons/PlatformUtilImpl;->mBaseContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public applyTextSizeUntilLargeSize(Landroid/widget/TextView;F)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/PlatformUtilImpl;->mBaseContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/util/CharUtils;->applyTextSizeUntilLargeSize(Landroid/content/Context;Landroid/widget/TextView;F)V

    return-void
.end method

.method public changeCustomButtonBackgroundUnchangedTextColor(Landroid/view/View;II)V
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/samsung/android/support/senl/nt/base/winset/util/ButtonShapeUtil;->changeCustomButtonBackgroundUnchangedTextColor(Landroid/view/View;II)V

    return-void
.end method

.method public convertPixelToSp(F)F
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/PlatformUtilImpl;->mBaseContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/common/util/ResourceUtils;->convertPixelToSp(Landroid/content/Context;F)F

    move-result p1

    return p1
.end method

.method public executeBaseLogic()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->getInstance()Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->executeBaseLogic(I)V

    return-void
.end method

.method public getBrushFileExtension()Ljava/lang/String;
    .locals 1

    const-string v0, "spp"

    return-object v0
.end method

.method public getColorPrimary()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/PlatformUtilImpl;->mBaseContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/common/util/ResourceUtils;->getPrimaryColor(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public getCoverType()I
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/SViewManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/SViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/SViewManager;->getCoverType()I

    move-result v0

    return v0
.end method

.method public getFileNameByTime(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/util/FileExtensions;->getFileNameByTime(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMaxTextureSize()I
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/ImageUtils;->getMaxTextureSize()I

    move-result v0

    return v0
.end method

.method public getScreenOrientation()I
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/DisplayUtils;->getScreenOrientation()I

    move-result v0

    return v0
.end method

.method public getSmartTipsPreference(Ljava/lang/String;I)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/PlatformUtilImpl;->mBaseContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/base/winset/smarttip/SmartTipsPreferenceManager;->getSmartTipsPreference(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getThumbnailExtension()Ljava/lang/String;
    .locals 1

    const-string v0, "jpg"

    return-object v0
.end method

.method public initializePenLibrary()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/PlatformUtilImpl;->mBaseContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/sdk/util/SpenSdkInitializer;->initialize(Landroid/content/Context;)Z

    return-void
.end method

.method public insertLog(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;)V

    return-void
.end method

.method public insertLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public insertLog(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public isActivityRunning(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getActivityTracker()Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker;->isActivityRunning(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isAvailableMemoryForNewDocument()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/StorageUtils;->isAvailableMemoryForNewMemo()Z

    move-result v0

    return v0
.end method

.method public isAvailableMinimumMemory()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/StorageUtils;->isAvailableMinimumMemory()Z

    move-result v0

    return v0
.end method

.method public isCoverClosed(Landroid/content/Context;Z)Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/SViewManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/SViewManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/SViewManager;->isCoverClosed(Landroid/content/Context;Z)Z

    move-result p1

    return p1
.end method

.method public isNewSepLightModel()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->isNewSepLiteModel()Z

    move-result v0

    return v0
.end method

.method public isOnMainUIThread()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/CommonUtils;->isOnMainUIThread()Z

    move-result v0

    return v0
.end method

.method public isPackageInstalledAndEnabled(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/PlatformUtilImpl;->mBaseContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/util/CommonUtils;->isPackageInstalledAndEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isRTLMode()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/util/LocaleUtils;->isRTLMode()Z

    move-result v0

    return v0
.end method

.method public isSepLightModel()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/PlatformUtilImpl;->mBaseContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->isSepLiteModel(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isShopDemoDevice()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/PlatformUtilImpl;->mBaseContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->isShopDemoDevice(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isShowButtonShapeEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/PlatformUtilImpl;->mBaseContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/ButtonBackgroundUtils;->isShowButtonShapeEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isSpenModel()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->isSpenModel()Z

    move-result v0

    return v0
.end method

.method public isTabletModel()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->isTabletModel()Z

    move-result v0

    return v0
.end method

.method public isVoiceAssistantEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/PlatformUtilImpl;->mBaseContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/winset/accessibility/VoiceAssistantTTS;->isVoiceAssistantEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public makeJpg(Landroid/graphics/Bitmap;Ljava/lang/String;Z)Z
    .locals 1

    const/16 v0, 0x64

    invoke-static {p1, p2, v0, p3}, Lcom/samsung/android/support/senl/nt/base/common/util/ImageUtils;->makeJpg(Landroid/graphics/Bitmap;Ljava/lang/String;IZ)Z

    move-result p1

    return p1
.end method

.method public setButtonShapeEnabledWithTextColor(Landroid/view/View;I)V
    .locals 0

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/base/winset/util/ButtonShapeUtil;->setButtonShapeEnabledWithTextColor(Landroid/view/View;I)V

    return-void
.end method

.method public setFont(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/util/FontUtils;->setFont(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method

.method public setSmartTipsPreference(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/PlatformUtilImpl;->mBaseContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/base/winset/smarttip/SmartTipsPreferenceManager;->setSmartTipsPreference(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public showToast(Landroid/content/Context;II)V
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;II)V

    return-void
.end method

.method public showToast(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method
