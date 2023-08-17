.class public Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mPenManager:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPensManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPensManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPensManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewHelper;->mPenManager:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPensManager;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewHelper;->mPenManager:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPensManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPensManager;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewHelper;->mPenManager:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPensManager;

    :cond_0
    return-void
.end method

.method public getMaxSettingValue(Ljava/lang/String;)F
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewHelper;->getPreviewObject(Ljava/lang/String;)Lcom/samsung/android/sdk/pen/pen/SpenPen;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->getMaxSettingValue()F

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getMinSettingValue(Ljava/lang/String;)F
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewHelper;->getPreviewObject(Ljava/lang/String;)Lcom/samsung/android/sdk/pen/pen/SpenPen;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->getMinSettingValue()F

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getPreviewObject(Ljava/lang/String;)Lcom/samsung/android/sdk/pen/pen/SpenPen;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewHelper;->mPenManager:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPensManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPensManager;->getPenIndexByPenName(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-le v0, v2, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewHelper;->mPenManager:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPensManager;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPensManager;->loadPenObject(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewHelper;->mPenManager:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPensManager;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPensManager;->getPenInfoList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;->getPreviewPenObject()Lcom/samsung/android/sdk/pen/pen/SpenPen;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v1
.end method
