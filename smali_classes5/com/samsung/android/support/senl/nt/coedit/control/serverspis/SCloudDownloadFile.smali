.class public Lcom/samsung/android/support/senl/nt/coedit/control/serverspis/SCloudDownloadFile;
.super Lcom/samsung/android/support/senl/nt/coedit/control/serverspis/SCloudServerAPI;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "NT/SCloudDownloadFile"


# instance fields
.field private final mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/coedit/control/serverspis/SCloudServerAPI;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/serverspis/SCloudDownloadFile;->mUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/coedit/control/serverspis/SCloudServerAPI;->mGroupId:Ljava/lang/String;

    return-void
.end method

.method private getRequestHeaders()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/coedit/control/serverspis/SCloudServerAPI;->addSCloudCommonHeaders(Ljava/util/Map;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/coedit/control/serverspis/SCloudServerAPI;->addNoteCommonHeaders(Ljava/util/Map;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/serverspis/SCloudServerAPI;->mGroupId:Ljava/lang/String;

    const-string v2, "x-sc-group-id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private getTempFilePath()Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "coedit_attachments_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v5, 0x5

    if-le v2, v5, :cond_0

    const-string v0, "NT/SCloudDownloadFile"

    const-string v1, "[CS7-2] temp folder was not created"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, v4

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public perform()Ljava/lang/String;
    .locals 6

    const-string v0, "NT/SCloudDownloadFile"

    const-string v1, "[CS7] perform() start"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/coedit/control/serverspis/SCloudDownloadFile;->getRequestHeaders()Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/coedit/control/serverspis/SCloudDownloadFile;->getTempFilePath()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    return-object v2

    :cond_0
    new-instance v4, Lcom/samsung/android/support/senl/nt/coedit/control/networkutils/SCloudHttpClient;

    invoke-direct {v4}, Lcom/samsung/android/support/senl/nt/coedit/control/networkutils/SCloudHttpClient;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/coedit/control/serverspis/SCloudDownloadFile;->mUrl:Ljava/lang/String;

    invoke-virtual {v4, v5, v2, v1, v3}, Lcom/samsung/android/support/senl/nt/coedit/control/networkutils/SCloudHttpClient;->get(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/coedit/control/networkutils/SCloudHttpResponse;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "[CS7-2] perform : fail to download!"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_1
    iget v3, v1, Lcom/samsung/android/support/senl/nt/coedit/control/networkutils/SCloudHttpResponse;->statusCode:I

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/coedit/control/networkutils/HttpRequestUtil;->isFailedResponse(I)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CS7-2] perform : fail to download, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/coedit/control/networkutils/SCloudHttpResponse;->responseStr:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_2
    iget-object v3, v1, Lcom/samsung/android/support/senl/nt/coedit/control/networkutils/SCloudHttpResponse;->responseStr:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v0, v1, Lcom/samsung/android/support/senl/nt/coedit/control/networkutils/SCloudHttpResponse;->responseStr:Ljava/lang/String;

    return-object v0

    :cond_3
    const-string v1, "[CS7-2] perform : filePath is empty!"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CS7-2] perform : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v1, "[CS7-2] perform() fail"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method
