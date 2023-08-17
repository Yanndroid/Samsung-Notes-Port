.class public Lcom/samsung/android/support/senl/cm/base/framework/sem/support/DeviceInfoImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static SEM_INT:Ljava/lang/Integer; = null

.field private static SEM_PLATFORM_INT:Ljava/lang/Integer; = null

.field private static final TAG:Ljava/lang/String; = "DeviceInfoImpl"

.field private static mIsSdlDevice:I = -0x1


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    :try_start_0
    const-class v0, Landroid/os/Build$VERSION;

    const-string v1, "SEM_INT"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const-class v1, Landroid/os/Build$VERSION;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/cm/base/framework/sem/support/DeviceInfoImpl;->SEM_INT:Ljava/lang/Integer;

    const-class v0, Landroid/os/Build$VERSION;

    const-string v1, "SEM_PLATFORM_INT"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const-class v1, Landroid/os/Build$VERSION;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/cm/base/framework/sem/support/DeviceInfoImpl;->SEM_PLATFORM_INT:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeviceInfo, e : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceInfoImpl"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeviceType()I
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/sem/support/DeviceInfoImpl;->isSemDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    return v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/sem/support/DeviceInfoImpl;->isSdlDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static getSemAPIVersionInt(I)I
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/sem/support/DeviceInfoImpl;->isSemDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/samsung/android/support/senl/cm/base/framework/sem/support/DeviceInfoImpl;->SEM_INT:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :cond_0
    return p0
.end method

.method public static getSemPlatformVersionInt(I)I
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/cm/base/framework/sem/support/DeviceInfoImpl;->SEM_PLATFORM_INT:Ljava/lang/Integer;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0, p0}, Lz3/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static isSdlDevice()Z
    .locals 4

    sget v0, Lcom/samsung/android/support/senl/cm/base/framework/sem/support/DeviceInfoImpl;->mIsSdlDevice:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-ne v0, v3, :cond_0

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v3, "samsung"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput v0, Lcom/samsung/android/support/senl/cm/base/framework/sem/support/DeviceInfoImpl;->mIsSdlDevice:I

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v0, "com.sec.android.secmediarecorder.SecMediaRecorder"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    sput v2, Lcom/samsung/android/support/senl/cm/base/framework/sem/support/DeviceInfoImpl;->mIsSdlDevice:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sput v1, Lcom/samsung/android/support/senl/cm/base/framework/sem/support/DeviceInfoImpl;->mIsSdlDevice:I

    :cond_1
    :goto_0
    sget v0, Lcom/samsung/android/support/senl/cm/base/framework/sem/support/DeviceInfoImpl;->mIsSdlDevice:I

    if-ne v0, v2, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public static isSemDevice()Z
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/cm/base/framework/sem/support/DeviceInfoImpl;->SEM_INT:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public static isVSTModel()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
