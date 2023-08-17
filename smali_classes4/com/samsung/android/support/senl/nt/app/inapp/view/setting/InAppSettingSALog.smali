.class public Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingSALog;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingSALog;
.source "SourceFile"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/data/SettingPenInfoData;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingSALog;-><init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/data/SettingPenInfoData;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingSALog;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingSALog;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingSALog;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static getSADetailPenType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "com.samsung.android.sdk.pen.pen.preload.FountainPen"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_1
    const-string v0, "com.samsung.android.sdk.pen.pen.preload.Pencil2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_2
    const-string v0, "com.samsung.android.sdk.pen.pen.preload.ObliquePen"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v0, "com.samsung.android.sdk.pen.pen.preload.InkPen2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_4
    const-string v0, "com.samsung.android.sdk.pen.pen.preload.BrushPen"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    const-string p0, "0"

    return-object p0

    :pswitch_0
    const-string p0, "1"

    return-object p0

    :pswitch_1
    const-string p0, "4"

    return-object p0

    :pswitch_2
    const-string p0, "2"

    return-object p0

    :pswitch_3
    const-string p0, "3"

    return-object p0

    :pswitch_4
    const-string p0, "5"

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x595b991e -> :sswitch_4
        -0x2469a484 -> :sswitch_3
        0xc15bfcb -> :sswitch_2
        0x3eb95502 -> :sswitch_1
        0x5cf7edc2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getHighlighterLoggingListener()Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout$LoggingListener;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingSALog$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingSALog$2;-><init>(Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingSALog;)V

    return-object v0
.end method

.method public getPenLoggingListener(ZZ)Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout$LoggingListener;
    .locals 0

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingSALog$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingSALog$1;-><init>(Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingSALog;)V

    return-object p1
.end method

.method public insertAddFavorite(Z)V
    .locals 1

    const-string p1, "671"

    const-string v0, "6656"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public insertEyedropperClose()V
    .locals 0

    return-void
.end method
