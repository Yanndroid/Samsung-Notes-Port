.class public Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLauncher;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "HWRRMLauncher"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLauncher;->mContext:Landroid/content/Context;

    return-void
.end method

.method private sendBroadcastWithPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object p1, Lcom/samsung/android/sdk/handwriting/resources/impl/api/HWRResourceManagerIntent;->EXTRA_SENDER_PACKAGE_NAME:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLauncher;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object p1, Lcom/samsung/android/sdk/handwriting/resources/impl/api/HWRResourceManagerIntent;->EXTRA_LANG_KEY:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLauncher;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0, p3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public launchCancelByIntent(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLauncher;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "> launchCancelByIntent : language = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID;->getID(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "> launchCancelByIntent : send BR with command permission"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "com.samsung.android.sdk.handwriting.resourcemanager.ACTION_CANCEL_LANG_UPDATE"

    const-string v2, "com.samsung.android.sdk.handwriting.permission.RESOURCE_LANGUAGE_UPDATE_COMMAND"

    invoke-direct {p0, v1, p1, v2}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLauncher;->sendBroadcastWithPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "> launchCancelByIntent : send BR with default permission"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.samsung.android.sdk.handwriting.permission.RESOURCE_LANGUAGE_UPDATE"

    invoke-direct {p0, v1, p1, v0}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLauncher;->sendBroadcastWithPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public launchDeleteByIntent(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLauncher;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "> launchDeleteByIntent : language = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID;->getID(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "> launchDeleteByIntent : send BR with command permission"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "com.samsung.android.sdk.handwriting.resourcemanager.ACTION_DELETE_LANG"

    const-string v2, "com.samsung.android.sdk.handwriting.permission.RESOURCE_LANGUAGE_UPDATE_COMMAND"

    invoke-direct {p0, v1, p1, v2}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLauncher;->sendBroadcastWithPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "> launchDeleteByIntent : send BR with default permission"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.samsung.android.sdk.handwriting.permission.RESOURCE_LANGUAGE_UPDATE"

    invoke-direct {p0, v1, p1, v0}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLauncher;->sendBroadcastWithPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public launchDownloadSizeByIntent(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLauncher;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "> launchDownloadSizeByIntent : language = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID;->getID(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "> launchDownloadSizeByIntent : send BR with command permission"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "com.samsung.android.sdk.handwriting.resourcemanager.ACTION_DOWNLOAD_LANG_SIZE"

    const-string v2, "com.samsung.android.sdk.handwriting.permission.RESOURCE_LANGUAGE_UPDATE_COMMAND"

    invoke-direct {p0, v1, p1, v2}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLauncher;->sendBroadcastWithPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "> launchDownloadSizeByIntent : send BR with default permission"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.samsung.android.sdk.handwriting.permission.RESOURCE_LANGUAGE_UPDATE"

    invoke-direct {p0, v1, p1, v0}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLauncher;->sendBroadcastWithPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public launchUpdateByIntent(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLauncher;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "> launchUpdateByIntent : language = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID;->getID(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "> launchUpdateByIntent : send BR with command permission"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "com.samsung.android.sdk.handwriting.resourcemanager.ACTION_UPDATE_LANG"

    const-string v2, "com.samsung.android.sdk.handwriting.permission.RESOURCE_LANGUAGE_UPDATE_COMMAND"

    invoke-direct {p0, v1, p1, v2}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLauncher;->sendBroadcastWithPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "> launchUpdateByIntent : send BR with default permission"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.samsung.android.sdk.handwriting.permission.RESOURCE_LANGUAGE_UPDATE"

    invoke-direct {p0, v1, p1, v0}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLauncher;->sendBroadcastWithPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
