.class public Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat$DeviceType;
    }
.end annotation


# static fields
.field public static final ONE_UI_4_1:I = 0x9ca4

.field public static final ONE_UI_5_1:I = 0xc3b4

.field public static final ONE_UI_5_1_1:I = 0xc3b5

.field private static final TAG:Ljava/lang/String; = "SystemPropertiesCompat"

.field private static mInstance:Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;


# instance fields
.field private CountryCode:Ljava/lang/String;

.field private CountryIsoCode:Ljava/lang/String;

.field private FactoryName:Ljava/lang/String;

.field private ProductCode:Ljava/lang/String;

.field private mDeviceColorCode:Ljava/lang/String;

.field private mDeviceType:Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat$DeviceType;

.field private final mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsSystemPropertiesCompatImplFactory$ISystemPropertiesCompatImpl;

.field private mIsTestBuild:Ljava/lang/Boolean;

.field private mOneUIVersion:I

.field private mSalesCode:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsSystemPropertiesCompatImplFactory$ISystemPropertiesCompatImpl;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->mDeviceType:Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat$DeviceType;

    iput-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->mSalesCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->CountryCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->CountryIsoCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->ProductCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->FactoryName:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->mIsTestBuild:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->mDeviceColorCode:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->mOneUIVersion:I

    iput-object p1, p0, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsSystemPropertiesCompatImplFactory$ISystemPropertiesCompatImpl;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;
    .locals 4

    const-class v0, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->mInstance:Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;

    new-instance v2, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/SystemPropertiesCompatImplFactory;

    invoke-direct {v2}, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/SystemPropertiesCompatImplFactory;-><init>()V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/DeviceInfo;->getDeviceType()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/SystemPropertiesCompatImplFactory;->create(I)Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsSystemPropertiesCompatImplFactory$ISystemPropertiesCompatImpl;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;-><init>(Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsSystemPropertiesCompatImplFactory$ISystemPropertiesCompatImpl;)V

    sput-object v1, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->mInstance:Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;

    :cond_0
    sget-object v1, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->mInstance:Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getCountryCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->CountryCode:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsSystemPropertiesCompatImplFactory$ISystemPropertiesCompatImpl;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsSystemPropertiesCompatImplFactory$ISystemPropertiesCompatImpl;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->CountryCode:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->CountryCode:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->CountryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryIsoCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->CountryIsoCode:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsSystemPropertiesCompatImplFactory$ISystemPropertiesCompatImpl;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsSystemPropertiesCompatImplFactory$ISystemPropertiesCompatImpl;->getCountryIsoCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->CountryIsoCode:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->CountryIsoCode:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->CountryIsoCode:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceColorCode()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->mDeviceColorCode:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->getProductCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xa

    if-le v1, v2, :cond_1

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->mDeviceColorCode:Ljava/lang/String;

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDeviceColorCode# productCode has problem."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SystemPropertiesCompat"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->mDeviceColorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceType()Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat$DeviceType;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->mDeviceType:Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat$DeviceType;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat$DeviceType;->other:Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat$DeviceType;

    iput-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->mDeviceType:Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat$DeviceType;

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsSystemPropertiesCompatImplFactory$ISystemPropertiesCompatImpl;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsSystemPropertiesCompatImplFactory$ISystemPropertiesCompatImpl;->getBuildCharacteristics()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDeviceType, deviceType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SystemPropertiesCompat"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat$DeviceType;->tablet:Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat$DeviceType;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat$DeviceType;->phone:Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat$DeviceType;

    :goto_0
    iput-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->mDeviceType:Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat$DeviceType;

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->mDeviceType:Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat$DeviceType;

    return-object v0
.end method

.method public getFactoryName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->FactoryName:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsSystemPropertiesCompatImplFactory$ISystemPropertiesCompatImpl;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsSystemPropertiesCompatImplFactory$ISystemPropertiesCompatImpl;->getFactoryModelName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->FactoryName:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFactoryName : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->FactoryName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SystemPropertiesCompat"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->FactoryName:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->FactoryName:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->FactoryName:Ljava/lang/String;

    return-object v0
.end method

.method public getOneUIVersion()I
    .locals 2

    iget v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->mOneUIVersion:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsSystemPropertiesCompatImplFactory$ISystemPropertiesCompatImpl;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsSystemPropertiesCompatImplFactory$ISystemPropertiesCompatImpl;->getOneUIVersion()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->mOneUIVersion:I

    if-nez v0, :cond_1

    const-string v0, "SystemPropertiesCompat"

    const-string v1, "fail to retrieve oneUIVersion. oneUIVersion is none"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->mOneUIVersion:I

    return v0
.end method

.method public getProductCode()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->ProductCode:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsSystemPropertiesCompatImplFactory$ISystemPropertiesCompatImpl;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsSystemPropertiesCompatImplFactory$ISystemPropertiesCompatImpl;->getProductCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->ProductCode:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getProductCode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->ProductCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SystemPropertiesCompat"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->ProductCode:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->ProductCode:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->ProductCode:Ljava/lang/String;

    return-object v0
.end method

.method public getSalesCode()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->mSalesCode:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsSystemPropertiesCompatImplFactory$ISystemPropertiesCompatImpl;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsSystemPropertiesCompatImplFactory$ISystemPropertiesCompatImpl;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->mSalesCode:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "SystemPropertiesCompat"

    const-string v1, "fail to retrieve salesCode. salesCode is null"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->mSalesCode:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->mSalesCode:Ljava/lang/String;

    return-object v0
.end method

.method public isChinaLDU()Z
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CHINA"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "PAP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isChinaModel()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->getCountryIsoCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isJapanModel()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->getCountryIsoCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JAPAN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "JP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public isKoreaModel()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->getCountryIsoCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KOREA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "KR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public isLDUModel()Z
    .locals 5

    const-string v0, "ril.product_code"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsSystemPropertiesCompatImplFactory;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xb

    if-ge v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x9

    if-ne v0, v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method public isNationalDisasterNet()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "K06"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isOmcByod()Z
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.os.SystemProperties"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getBoolean"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "persist.sys.omc_byod"

    aput-object v4, v3, v0

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail to retrieve OmcByod#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SystemPropertiesCompat"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    return v0
.end method

.method public isSystemTestBuild()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->mIsTestBuild:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const-string v0, "sysperf.bvt.activate"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsSystemPropertiesCompatImplFactory;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->mIsTestBuild:Ljava/lang/Boolean;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->mIsTestBuild:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isUSAModel()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->getCountryIsoCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "US"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isVZWModel()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VZW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
