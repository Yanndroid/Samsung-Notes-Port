.class public Lcom/samsung/android/support/senl/nt/base/framework/support/DeveloperMode;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEBUG_FILE:Ljava/lang/String; = "debug.dat"

.field public static final IS_ENG_BUILD:Z

.field private static final MIN_DEBUG_CLICKCOUNT:J = 0x5L

.field private static final MIN_DEBUG_CLICKTIME:J = 0x12cL

.field private static final TAG:Ljava/lang/String; = "DeveloperMode"

.field private static mDebugClickCount:I

.field private static mFilesDir:Ljava/lang/String;

.field private static mOnDeveloperMode:Z

.field private static mPreviousTime:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/support/senl/nt/base/framework/support/DeveloperMode;->IS_ENG_BUILD:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/support/senl/nt/base/framework/support/DeveloperMode;->mFilesDir:Ljava/lang/String;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/samsung/android/support/senl/nt/base/framework/support/DeveloperMode;->mPreviousTime:J

    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/support/senl/nt/base/framework/support/DeveloperMode;->mDebugClickCount:I

    sput-boolean v0, Lcom/samsung/android/support/senl/nt/base/framework/support/DeveloperMode;->mOnDeveloperMode:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkOnDeveloperMode()V
    .locals 6

    sget-boolean v0, Lcom/samsung/android/support/senl/nt/base/framework/support/DeveloperMode;->IS_ENG_BUILD:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/framework/support/DeveloperMode;->mFilesDir:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/samsung/android/support/senl/nt/base/framework/support/DeveloperMode;->mPreviousTime:J

    sub-long v2, v0, v2

    sput-wide v0, Lcom/samsung/android/support/senl/nt/base/framework/support/DeveloperMode;->mPreviousTime:J

    const-wide/16 v0, 0x12c

    cmp-long v0, v2, v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    sget v0, Lcom/samsung/android/support/senl/nt/base/framework/support/DeveloperMode;->mDebugClickCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/samsung/android/support/senl/nt/base/framework/support/DeveloperMode;->mDebugClickCount:I

    int-to-long v2, v0

    const-wide/16 v4, 0x5

    cmp-long v0, v2, v4

    if-ltz v0, :cond_1

    sget-boolean v0, Lcom/samsung/android/support/senl/nt/base/framework/support/DeveloperMode;->mOnDeveloperMode:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/framework/support/DeveloperMode;->setOnDeveloperMode(Z)V

    :cond_0
    sput v1, Lcom/samsung/android/support/senl/nt/base/framework/support/DeveloperMode;->mDebugClickCount:I

    :cond_1
    return-void
.end method

.method public static initFilesDirForDeveloperMode(Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/samsung/android/support/senl/nt/base/framework/support/DeveloperMode;->IS_ENG_BUILD:Z

    if-eqz v0, :cond_0

    sput-object p0, Lcom/samsung/android/support/senl/nt/base/framework/support/DeveloperMode;->mFilesDir:Ljava/lang/String;

    new-instance p0, Ljava/io/File;

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/framework/support/DeveloperMode;->mFilesDir:Ljava/lang/String;

    const-string v1, "debug.dat"

    invoke-direct {p0, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    sput-boolean p0, Lcom/samsung/android/support/senl/nt/base/framework/support/DeveloperMode;->mOnDeveloperMode:Z

    const-string p0, "DeveloperMode"

    const-string v0, "setOnDeveloperMode On "

    invoke-static {p0, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static isOnDeveloperMode()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/support/senl/nt/base/framework/support/DeveloperMode;->mOnDeveloperMode:Z

    return v0
.end method

.method private static setOnDeveloperMode(Z)V
    .locals 3

    sget-boolean p0, Lcom/samsung/android/support/senl/nt/base/framework/support/DeveloperMode;->IS_ENG_BUILD:Z

    if-eqz p0, :cond_2

    sget-object p0, Lcom/samsung/android/support/senl/nt/base/framework/support/DeveloperMode;->mFilesDir:Ljava/lang/String;

    if-eqz p0, :cond_2

    new-instance p0, Ljava/io/File;

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/framework/support/DeveloperMode;->mFilesDir:Ljava/lang/String;

    const-string v1, "debug.dat"

    invoke-direct {p0, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/samsung/android/support/senl/nt/base/framework/support/DeveloperMode;->mOnDeveloperMode:Z

    const-string v1, "DeveloperMode"

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/support/senl/nt/base/framework/support/DeveloperMode;->mOnDeveloperMode:Z

    const-string v0, "setOnDeveloperMode Off "

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "setOnDeveloperMode file delete fail"

    invoke-static {v1, p0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "setOnDeveloperMode createNewFile fail"

    invoke-static {v1, p0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 p0, 0x1

    sput-boolean p0, Lcom/samsung/android/support/senl/nt/base/framework/support/DeveloperMode;->mOnDeveloperMode:Z

    const-string p0, "setOnDeveloperMode On "

    invoke-static {v1, p0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOnDeveloperMode, e : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
