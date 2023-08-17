.class public Lcom/samsung/android/support/senl/cm/base/framework/support/DeviceInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static BinaryMode:Ljava/lang/Integer; = null

.field private static BinaryModeExt:Ljava/lang/Integer; = null

.field public static final DEVICE_TYPE_PURE:I = 0x1

.field public static final DEVICE_TYPE_SDL:I = 0x3

.field public static final DEVICE_TYPE_SEM:I = 0x2

.field private static ModelName:Ljava/lang/String; = null

.field private static ProductName:Ljava/lang/String; = null

.field public static final SEP_11_5:I = 0x1afa4

.field public static final SEP_14_0:I = 0x222e0

.field public static final VERSION_CODES_TIRAMISU:I = 0x21

.field public static final VERSION_CODES_UPSIDE_DOWN_CAKE:I = 0x22

.field private static misOtherCorpDevice:I = -0x1


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

.method private static checkBinaryMode()V
    .locals 2

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-object v0, Lcom/samsung/android/support/senl/cm/base/framework/support/DeviceInfo;->BinaryMode:Ljava/lang/Integer;

    :goto_1
    sput-object v0, Lcom/samsung/android/support/senl/cm/base/framework/support/DeviceInfo;->BinaryModeExt:Ljava/lang/Integer;

    goto :goto_3

    :cond_0
    const-string v1, "user"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/support/senl/cm/base/framework/support/DeviceInfo;->BinaryMode:Ljava/lang/Integer;

    const-string v1, "userdebug"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/samsung/android/support/senl/cm/base/framework/support/DeviceInfo;->BinaryMode:Ljava/lang/Integer;

    goto :goto_1

    :goto_3
    return-void
.end method

.method public static getDeviceType()I
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/sem/support/DeviceInfoImpl;->getDeviceType()I

    move-result v0

    return v0
.end method

.method public static getModelName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/cm/base/framework/support/DeviceInfo;->ModelName:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/support/senl/cm/base/framework/support/DeviceInfo;->ModelName:Ljava/lang/String;

    return-object v0
.end method

.method public static getProductName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/cm/base/framework/support/DeviceInfo;->ProductName:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/support/senl/cm/base/framework/support/DeviceInfo;->ProductName:Ljava/lang/String;

    return-object v0
.end method

.method public static getSemAPIVersionInt(I)I
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/support/DeviceInfoImpl;->getSemAPIVersionInt(I)I

    move-result p0

    return p0
.end method

.method public static getSemPlatformVersionInt(I)I
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/support/DeviceInfoImpl;->getSemPlatformVersionInt(I)I

    move-result p0

    return p0
.end method

.method public static isEngMode()Z
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/cm/base/framework/support/DeviceInfo;->BinaryMode:Ljava/lang/Integer;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/DeviceInfo;->checkBinaryMode()V

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/cm/base/framework/support/DeviceInfo;->BinaryMode:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isOtherCorpDevice()Z
    .locals 4

    sget v0, Lcom/samsung/android/support/senl/cm/base/framework/support/DeviceInfo;->misOtherCorpDevice:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/DeviceInfo;->isSemDevice()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/DeviceInfo;->isSdlDevice()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/DeviceInfo;->isVSTModel()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sput v2, Lcom/samsung/android/support/senl/cm/base/framework/support/DeviceInfo;->misOtherCorpDevice:I

    goto :goto_1

    :cond_1
    :goto_0
    sput v1, Lcom/samsung/android/support/senl/cm/base/framework/support/DeviceInfo;->misOtherCorpDevice:I

    :cond_2
    :goto_1
    sget v0, Lcom/samsung/android/support/senl/cm/base/framework/support/DeviceInfo;->misOtherCorpDevice:I

    if-ne v0, v2, :cond_3

    move v1, v2

    :cond_3
    return v1
.end method

.method public static isSdlDevice()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/sem/support/DeviceInfoImpl;->isSdlDevice()Z

    move-result v0

    return v0
.end method

.method public static isSemDevice()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/sem/support/DeviceInfoImpl;->isSemDevice()Z

    move-result v0

    return v0
.end method

.method public static isUserDebugMode()Z
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/cm/base/framework/support/DeviceInfo;->BinaryModeExt:Ljava/lang/Integer;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/DeviceInfo;->checkBinaryMode()V

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/cm/base/framework/support/DeviceInfo;->BinaryModeExt:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isUserMode()Z
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/cm/base/framework/support/DeviceInfo;->BinaryMode:Ljava/lang/Integer;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/DeviceInfo;->checkBinaryMode()V

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/cm/base/framework/support/DeviceInfo;->BinaryMode:Ljava/lang/Integer;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isVSTModel()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/sem/support/DeviceInfoImpl;->isVSTModel()Z

    move-result v0

    return v0
.end method
