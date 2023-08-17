.class final Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/constants/DefaultPens$ObliquePen;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/constants/AbsSPenExtraInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/constants/DefaultPens;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ObliquePen"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/constants/AbsSPenExtraInfo;-><init>()V

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$drawable;->comp_hw_toolbar_ic_calligraphy_pen:I

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/constants/AbsSPenExtraInfo;->penDrawableId:I

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$drawable;->comp_hw_toolbar_ic_calligraphy_pen_color:I

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/constants/AbsSPenExtraInfo;->penDrawableColorId:I

    const-string v0, "com.samsung.android.sdk.pen.pen.preload.ObliquePen"

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    const/high16 v0, 0x41800000    # 16.0f

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->size:F

    const/16 v0, 0x1e

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    const v0, -0xdadadb

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    return-void
.end method
