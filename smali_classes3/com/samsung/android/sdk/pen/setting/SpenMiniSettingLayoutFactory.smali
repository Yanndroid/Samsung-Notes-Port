.class Lcom/samsung/android/sdk/pen/setting/SpenMiniSettingLayoutFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createPopupLayoutHelper(I)Lcom/samsung/android/sdk/pen/setting/SpenMiniPopupLayoutInterface;
    .locals 0

    if-nez p0, :cond_0

    new-instance p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPopupHorizontalHelper;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPopupHorizontalHelper;-><init>()V

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPopupVerticalHelper;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPopupVerticalHelper;-><init>()V

    :goto_0
    return-object p0
.end method

.method public static createSettingLayoutHelper(I)Lcom/samsung/android/sdk/pen/setting/SpenMiniPenSettingLayoutInterface;
    .locals 0

    if-nez p0, :cond_0

    new-instance p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenSettingHorizontalHelper;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenSettingHorizontalHelper;-><init>()V

    return-object p0

    :cond_0
    new-instance p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenSettingVerticalHelper;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenSettingVerticalHelper;-><init>()V

    return-object p0
.end method
