.class public final Lcom/samsung/android/penup/internal/Url;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/penup/internal/Url$ServerType;
    }
.end annotation


# static fields
.field public static BASE:Ljava/lang/String; = "https://apis.penup.com"

.field private static BASE_DEV_URL:Ljava/lang/String; = "dev-apis.penup.com"

.field private static BASE_PRD_URL:Ljava/lang/String; = "apis.penup.com"

.field private static BASE_STG_URL:Ljava/lang/String; = "stg-apis.penup.com"

.field public static BASE_URL:Ljava/lang/String; = "apis.penup.com"

.field private static HTTPS:Ljava/lang/String; = "https://"

.field private static META_DATA_KEY:Ljava/lang/String; = "server_type"

.field private static META_DATA_VALUE_DEV:Ljava/lang/String; = "dev"

.field private static META_DATA_VALUE_STG:Ljava/lang/String; = "stg"


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

.method private static getTestServerCode(Landroid/content/Context;)Lcom/samsung/android/penup/internal/Url$ServerType;
    .locals 3

    sget-object v0, Lcom/samsung/android/penup/internal/Url$ServerType;->PRD:Lcom/samsung/android/penup/internal/Url$ServerType;

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x80

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz p0, :cond_1

    sget-object v1, Lcom/samsung/android/penup/internal/Url;->META_DATA_KEY:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lcom/samsung/android/penup/internal/Url;->META_DATA_VALUE_DEV:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p0, Lcom/samsung/android/penup/internal/Url$ServerType;->DEV:Lcom/samsung/android/penup/internal/Url$ServerType;

    :goto_0
    move-object v0, p0

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/samsung/android/penup/internal/Url;->META_DATA_VALUE_STG:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/samsung/android/penup/internal/Url$ServerType;->STG:Lcom/samsung/android/penup/internal/Url$ServerType;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_1
    :goto_1
    return-object v0
.end method

.method public static initBaseUrl(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/penup/internal/Url;->getTestServerCode(Landroid/content/Context;)Lcom/samsung/android/penup/internal/Url$ServerType;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/penup/internal/Url$1;->$SwitchMap$com$samsung$android$penup$internal$Url$ServerType:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    sget-object p0, Lcom/samsung/android/penup/internal/Url;->BASE_PRD_URL:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/samsung/android/penup/internal/Url;->BASE_STG_URL:Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/penup/internal/Url;->BASE_DEV_URL:Ljava/lang/String;

    :goto_0
    sput-object p0, Lcom/samsung/android/penup/internal/Url;->BASE_URL:Ljava/lang/String;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/samsung/android/penup/internal/Url;->HTTPS:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/samsung/android/penup/internal/Url;->BASE_URL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/samsung/android/penup/internal/Url;->BASE:Ljava/lang/String;

    return-void
.end method
