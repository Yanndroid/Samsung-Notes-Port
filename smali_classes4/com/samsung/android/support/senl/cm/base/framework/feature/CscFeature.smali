.class public Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static mInstance:Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;


# instance fields
.field private mEnabledSamsungCloudMenu:Lcom/samsung/android/support/senl/cm/base/framework/support/BOOLEAN;

.field private mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/feature/AbsCscFeatureImplFactory$ICscFeatureCompatImpl;

.field private mSamsungCloudBrandType:Ljava/lang/String;

.field private mSamsungCloudDefaultSyncOn:Lcom/samsung/android/support/senl/cm/base/framework/support/BOOLEAN;


# direct methods
.method private constructor <init>(Lcom/samsung/android/support/senl/cm/base/framework/sem/feature/AbsCscFeatureImplFactory$ICscFeatureCompatImpl;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->mEnabledSamsungCloudMenu:Lcom/samsung/android/support/senl/cm/base/framework/support/BOOLEAN;

    iput-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->mSamsungCloudDefaultSyncOn:Lcom/samsung/android/support/senl/cm/base/framework/support/BOOLEAN;

    iput-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->mSamsungCloudBrandType:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/feature/AbsCscFeatureImplFactory$ICscFeatureCompatImpl;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;
    .locals 4

    const-class v0, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->mInstance:Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;

    new-instance v2, Lcom/samsung/android/support/senl/cm/base/framework/sem/feature/CscFeatureImplFactory;

    invoke-direct {v2}, Lcom/samsung/android/support/senl/cm/base/framework/sem/feature/CscFeatureImplFactory;-><init>()V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/DeviceInfo;->getDeviceType()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/sem/feature/CscFeatureImplFactory;->create(I)Lcom/samsung/android/support/senl/cm/base/framework/sem/feature/AbsCscFeatureImplFactory$ICscFeatureCompatImpl;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;-><init>(Lcom/samsung/android/support/senl/cm/base/framework/sem/feature/AbsCscFeatureImplFactory$ICscFeatureCompatImpl;)V

    sput-object v1, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->mInstance:Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;

    :cond_0
    sget-object v1, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->mInstance:Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getSamsungCloudVariation()V
    .locals 13

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->mEnabledSamsungCloudMenu:Lcom/samsung/android/support/senl/cm/base/framework/support/BOOLEAN;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/support/senl/cm/base/framework/support/BOOLEAN;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/BOOLEAN;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->mEnabledSamsungCloudMenu:Lcom/samsung/android/support/senl/cm/base/framework/support/BOOLEAN;

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/framework/support/BOOLEAN;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/BOOLEAN;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->mSamsungCloudDefaultSyncOn:Lcom/samsung/android/support/senl/cm/base/framework/support/BOOLEAN;

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/feature/AbsCscFeatureImplFactory$ICscFeatureCompatImpl;

    const/4 v2, 0x0

    const-string v3, "CscFeature_Common_ConfigSamsungCloudVariation"

    invoke-interface {v0, v3, v2}, Lcom/samsung/android/support/senl/cm/base/framework/sem/feature/AbsCscFeatureImplFactory$ICscFeatureCompatImpl;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v5, v0, v4

    const-string v6, "DisablingSamsungCloudMenu"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    const-string v8, "true"

    const/4 v9, 0x2

    const-string v10, "boolean"

    const-string v11, ":"

    if-eqz v7, :cond_1

    invoke-virtual {v5, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v12, v7, v3

    invoke-virtual {v12, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_1

    aget-object v6, v7, v1

    invoke-virtual {v6, v10}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_1

    aget-object v6, v7, v9

    invoke-virtual {v6, v8}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->mEnabledSamsungCloudMenu:Lcom/samsung/android/support/senl/cm/base/framework/support/BOOLEAN;

    invoke-virtual {v6, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/BOOLEAN;->setValue(Z)V

    :cond_1
    const-string v6, "DisablingDefaultSyncOn"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v5, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v7, v5, v3

    invoke-virtual {v7, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_2

    aget-object v6, v5, v1

    invoke-virtual {v6, v10}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_2

    aget-object v5, v5, v9

    invoke-virtual {v5, v8}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->mSamsungCloudDefaultSyncOn:Lcom/samsung/android/support/senl/cm/base/framework/support/BOOLEAN;

    invoke-virtual {v5, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/BOOLEAN;->setValue(Z)V

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/feature/AbsCscFeatureImplFactory$ICscFeatureCompatImpl;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/feature/AbsCscFeatureImplFactory$ICscFeatureCompatImpl;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/feature/AbsCscFeatureImplFactory$ICscFeatureCompatImpl;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/sem/feature/AbsCscFeatureImplFactory$ICscFeatureCompatImpl;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/feature/AbsCscFeatureImplFactory$ICscFeatureCompatImpl;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/feature/AbsCscFeatureImplFactory$ICscFeatureCompatImpl;->getInt(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/feature/AbsCscFeatureImplFactory$ICscFeatureCompatImpl;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/sem/feature/AbsCscFeatureImplFactory$ICscFeatureCompatImpl;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getSamsungCloudBrandType()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->mSamsungCloudBrandType:Ljava/lang/String;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    const-string v1, "CscFeature_Common_ConfigSamsungCloudVariation"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    const-string v5, "SamsungCloudBrandType"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v0, ":"

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v1, v0, v2

    invoke-virtual {v1, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    aget-object v1, v0, v1

    const-string v2, "String"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x2

    aget-object v2, v0, v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->mSamsungCloudBrandType:Ljava/lang/String;

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->mSamsungCloudBrandType:Ljava/lang/String;

    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/feature/AbsCscFeatureImplFactory$ICscFeatureCompatImpl;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/feature/AbsCscFeatureImplFactory$ICscFeatureCompatImpl;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/feature/AbsCscFeatureImplFactory$ICscFeatureCompatImpl;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/sem/feature/AbsCscFeatureImplFactory$ICscFeatureCompatImpl;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isEnabledSamsungCloudMenu()Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->getSamsungCloudVariation()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->mEnabledSamsungCloudMenu:Lcom/samsung/android/support/senl/cm/base/framework/support/BOOLEAN;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/BOOLEAN;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isSamsungCloudDefaultSyncOn()Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->getSamsungCloudVariation()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->mSamsungCloudDefaultSyncOn:Lcom/samsung/android/support/senl/cm/base/framework/support/BOOLEAN;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/BOOLEAN;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isSecBrandAsGalaxy()Z
    .locals 2

    const-string v0, "CscFeature_Common_ReplaceSecBrandAsGalaxy"

    const-string v1, "false"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
