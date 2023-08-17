.class public Lcom/samsung/android/sdk/handwriting/text/impl/LanguageManagerContract;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/handwriting/text/impl/LanguageManagerContract$Resource;,
        Lcom/samsung/android/sdk/handwriting/text/impl/LanguageManagerContract$Mode;,
        Lcom/samsung/android/sdk/handwriting/text/impl/LanguageManagerContract$Langs;,
        Lcom/samsung/android/sdk/handwriting/text/impl/LanguageManagerContract$Downloading;,
        Lcom/samsung/android/sdk/handwriting/text/impl/LanguageManagerContract$Updates;,
        Lcom/samsung/android/sdk/handwriting/text/impl/LanguageManagerContract$Refresh;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.samsung.android.sdk.handwriting.resourcemanager"

.field public static final PATH_LANG:Ljava/lang/String; = "lang"

.field public static final PATH_LATEST:Ljava/lang/String; = "latest"

.field public static final PATH_MODE:Ljava/lang/String; = "mode"

.field public static final PATH_PRELOADED:Ljava/lang/String; = "preloaded"

.field public static final PATH_RESOURCE:Ljava/lang/String; = "resource"

.field public static final PATH_VERSION:Ljava/lang/String; = "version"

.field public static final RM_PERMISSION:Ljava/lang/String; = "com.samsung.android.sdk.handwriting.permission.RESOURCE_LANGUAGE_UPDATE"

.field public static final RM_PERMISSION_COMMAND:Ljava/lang/String; = "com.samsung.android.sdk.handwriting.permission.RESOURCE_LANGUAGE_UPDATE_COMMAND"

.field public static final RM_RESOURCE_LIST_KEY:Ljava/lang/String; = "resList"

.field public static final RM_ROOT_DIR_NAME:Ljava/lang/String; = "HWRDB"

.field public static final URI_PATH_DOWNLOADING:Ljava/lang/String; = "downloading"

.field public static final URI_PATH_LANGS:Ljava/lang/String; = "langs"

.field public static final URI_PATH_REFRESH:Ljava/lang/String; = "refresh"

.field public static final URI_PATH_UPDATES:Ljava/lang/String; = "updates"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
