.class Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfigFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfigFactory$ConfigType;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createBrushGuideConfig(Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfigFactory$ConfigType;IF)Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfig;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfigFactory$1;->$SwitchMap$com$samsung$android$sdk$pen$setting$SpenBrushGuideConfigFactory$ConfigType:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideMarginConfig;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideMarginConfig;-><init>(IF)V

    return-object p0

    :cond_1
    new-instance p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideColorConfig;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideColorConfig;-><init>(I)V

    return-object p0

    :cond_2
    new-instance p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuidePenConfig;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuidePenConfig;-><init>(I)V

    return-object p0
.end method
