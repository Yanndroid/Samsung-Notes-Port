.class public Lcom/samsung/android/support/senl/nt/coedit/control/serverspis/SCloudUploadFile;
.super Lcom/samsung/android/support/senl/nt/coedit/control/serverspis/SCloudServerAPI;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "NT/SCloudUploadFile"


# instance fields
.field private final mContentType:Ljava/lang/String;

.field private final mFilePath:Ljava/lang/String;

.field private final mFileSize:J

.field private final mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/coedit/control/serverspis/SCloudServerAPI;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/serverspis/SCloudServerAPI;->mAuthorization:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/coedit/control/serverspis/SCloudUploadFile;->mUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/coedit/control/serverspis/SCloudUploadFile;->mFilePath:Ljava/lang/String;

    iput-wide p4, p0, Lcom/samsung/android/support/senl/nt/coedit/control/serverspis/SCloudUploadFile;->mFileSize:J

    iput-object p6, p0, Lcom/samsung/android/support/senl/nt/coedit/control/serverspis/SCloudUploadFile;->mContentType:Ljava/lang/String;

    iput-object p7, p0, Lcom/samsung/android/support/senl/nt/coedit/control/serverspis/SCloudServerAPI;->mGroupId:Ljava/lang/String;

    return-void
.end method

.method private getRequestHeaders()Ljava/util/Map;
    .locals 6
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

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/serverspis/SCloudUploadFile;->mContentType:Ljava/lang/String;

    const-string v2, "Content-Type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bytes=0-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/samsung/android/support/senl/nt/coedit/control/serverspis/SCloudUploadFile;->mFileSize:J

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Range"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/serverspis/SCloudUploadFile;->mFileSize:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Content-Length"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/serverspis/SCloudServerAPI;->mGroupId:Ljava/lang/String;

    const-string v2, "x-sc-group-id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public perform()I
    .locals 8

    const-string v0, "[CS5-2] perform : fail to upload a file!"

    const-string v1, "NT/SCloudUploadFile"

    const-string v2, "[CS5] perform() start"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/coedit/control/serverspis/SCloudUploadFile;->getRequestHeaders()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/coedit/control/serverspis/SCloudUploadFile;->mFilePath:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_0

    const-string v0, "[CS5-2] perform : Empty file path!"

    :goto_0
    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_0
    :try_start_0
    new-instance v3, Lcom/samsung/android/support/senl/nt/coedit/control/networkutils/SCloudHttpClient;

    invoke-direct {v3}, Lcom/samsung/android/support/senl/nt/coedit/control/networkutils/SCloudHttpClient;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/coedit/control/serverspis/SCloudUploadFile;->mUrl:Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/samsung/android/support/senl/nt/coedit/control/serverspis/SCloudUploadFile;->mFilePath:Ljava/lang/String;

    invoke-virtual {v3, v5, v6, v2, v7}, Lcom/samsung/android/support/senl/nt/coedit/control/networkutils/SCloudHttpClient;->put(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/coedit/control/networkutils/SCloudHttpResponse;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_1
    iget v3, v2, Lcom/samsung/android/support/senl/nt/coedit/control/networkutils/SCloudHttpResponse;->statusCode:I

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/coedit/control/networkutils/HttpRequestUtil;->isFailedResponse(I)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CS5-2] perform : fail to upload a file, "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/samsung/android/support/senl/nt/coedit/control/networkutils/SCloudHttpResponse;->responseStr:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CS5-1] perform : succeed to upload a file : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/samsung/android/support/senl/nt/coedit/control/networkutils/SCloudHttpResponse;->responseStr:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CS5-2] perform : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
