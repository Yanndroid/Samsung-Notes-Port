.class public Lcom/microsoft/identity/common/internal/platform/AndroidDeviceMetadata;
.super Lcom/microsoft/identity/common/java/platform/AbstractDeviceMetadata;
.source "SourceFile"


# static fields
.field private static final ANDROID_DEVICE_TYPE:Ljava/lang/String; = "Android"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/microsoft/identity/common/java/platform/AbstractDeviceMetadata;-><init>()V

    return-void
.end method


# virtual methods
.method public getCpu()Ljava/lang/String;
    .locals 2
    .annotation build Llombok/NonNull;
    .end annotation

    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    const-string v0, "UNKNOWN"

    return-object v0
.end method

.method public getDeviceModel()Ljava/lang/String;
    .locals 1
    .annotation build Llombok/NonNull;
    .end annotation

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceType()Ljava/lang/String;
    .locals 1
    .annotation build Llombok/NonNull;
    .end annotation

    const-string v0, "Android"

    return-object v0
.end method

.method public getManufacturer()Ljava/lang/String;
    .locals 1
    .annotation build Llombok/NonNull;
    .end annotation

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method public getOsForDrs()Ljava/lang/String;
    .locals 1
    .annotation build Llombok/NonNull;
    .end annotation

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public getOsForEsts()Ljava/lang/String;
    .locals 1
    .annotation build Llombok/NonNull;
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOsForMats()Ljava/lang/String;
    .locals 1
    .annotation build Llombok/NonNull;
    .end annotation

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method
