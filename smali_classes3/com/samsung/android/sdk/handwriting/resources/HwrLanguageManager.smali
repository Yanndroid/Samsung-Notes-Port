.class public Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager$OnUpdateListener;
    }
.end annotation


# static fields
.field public static APK_VERSION:[I = null

.field public static final RESULT_FAILURE:I = -0x1

.field public static final RESULT_FAILURE_NO_SPACE_LEFT:I = -0x2

.field public static final RESULT_SUCCESS:I = 0x0

.field public static final TAG:Ljava/lang/String; = "HwrLanguageManager"

.field private static mIsSdkAvailable:Z = false


# instance fields
.field private mLanguageManager:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager;->APK_VERSION:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager;->mLanguageManager:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    sget-object v0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager;->TAG:Ljava/lang/String;

    const-string v1, "Initialize HwrLanguageManager"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager;->initialize(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "There is no text recognition platform"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager;->isExternalStorageWritable()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager;->isExternalStorageReadable()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const-string v1, "Cannot read and write external storage"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager;->mLanguageManager:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    if-eqz p1, :cond_3

    sget-object v0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager;->APK_VERSION:[I

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->setApkVersion([I)V

    :cond_3
    return-void
.end method

.method private getHandwritingServiceVersion(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager;->TAG:Ljava/lang/String;

    const-string p2, "package info is null!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "APK Version = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    sget-object p1, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object p1

    sget-object p2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v0, "No authority to handwriting provider"

    invoke-virtual {p1, p2, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    sget-object p1, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager;->TAG:Ljava/lang/String;

    const-string p2, "No SDK apis"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string p1, ""

    return-object p1
.end method

.method private initialize(Landroid/content/Context;)Z
    .locals 6

    const-string v0, "com.samsung.android.sdk.handwriting"

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager;->getHandwritingServiceVersion(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    sput-boolean v0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager;->mIsSdkAvailable:Z

    if-eqz v0, :cond_3

    const-string v0, "\\."

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x4

    new-array v2, v0, [I

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_2

    array-length v5, p1

    if-gt v5, v4, :cond_0

    aput v3, v2, v4

    goto :goto_1

    :cond_0
    aget-object v5, p1, v4

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    aput v3, v2, v4

    goto :goto_1

    :cond_1
    aget-object v5, p1, v4

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v2, v4

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager;->APK_VERSION:[I

    aget v0, v2, v3

    aput v0, p1, v3

    aget v0, v2, v1

    aput v0, p1, v1

    const/4 v0, 0x2

    aget v1, v2, v0

    aput v1, p1, v0

    :cond_3
    sget-boolean p1, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager;->mIsSdkAvailable:Z

    return p1
.end method

.method private isExternalStorageReadable()Z
    .locals 2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "mounted_ro"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method private isExternalStorageWritable()Z
    .locals 2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isSDKAvailable()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager;->mIsSdkAvailable:Z

    return v0
.end method

.method public static isSDLAvailable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager;->mLanguageManager:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->close()V

    return-void
.end method

.method public get(Ljava/lang/String;)Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager;->mLanguageManager:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->get(Ljava/lang/String;)Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;

    move-result-object p1

    return-object p1
.end method

.method public getAvailableLanguage()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager;->mLanguageManager:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->getAvailableLanguage()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager$OnUpdateListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager;->update(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager$OnUpdateListener;Z)V

    return-void
.end method

.method public update(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager$OnUpdateListener;Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager;->mLanguageManager:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    new-instance v1, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager$1;-><init>(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager;Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager$OnUpdateListener;)V

    invoke-virtual {v0, v1, p2}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->update(Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface$OnUpdateListener;Z)V

    return-void
.end method
