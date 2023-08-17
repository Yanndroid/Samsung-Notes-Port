.class public Lcom/samsung/android/support/senl/nt/app/addons/stub/StubRequest;
.super Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskWithActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskWithActivity<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/samsung/android/support/senl/nt/app/addons/stub/StubData;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "StubManager$StubRequest"


# instance fields
.field private listener:Lcom/samsung/android/support/senl/nt/app/addons/stub/StubListener;

.field private stubData:Lcom/samsung/android/support/senl/nt/app/addons/stub/StubData;

.field private type:I

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getAsyncTaskManager()Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskWithActivity;-><init>(Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager;Landroid/app/Activity;)V

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/addons/stub/StubRequest$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/app/addons/stub/StubRequest$1;-><init>(Lcom/samsung/android/support/senl/nt/app/addons/stub/StubRequest;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/addons/stub/StubRequest;->stubData:Lcom/samsung/android/support/senl/nt/app/addons/stub/StubData;

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/addons/stub/StubData;
    .locals 7

    const-string v0, "StubManager$StubRequest"

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    aget-object p1, p1, v1

    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestUrl : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const-string v4, "Connection"

    const-string v5, "close"

    invoke-virtual {p1, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget v4, p0, Lcom/samsung/android/support/senl/nt/app/addons/stub/StubRequest;->type:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/AppUpdateUtil;->isQaServerEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "x-vas-auth-appId"

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/CommonUtils;->getAppServiceId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v4, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "x-vas-auth-token"

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/AppUpdateUtil;->getAccountToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v4, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "x-vas-auth-url"

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/AppUpdateUtil;->getAccountUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v4, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v4, "https"

    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    new-instance v4, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;

    invoke-direct {v4}, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;-><init>()V

    invoke-virtual {v1, v4}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    :cond_1
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v4, 0xc8

    if-ne v4, v1, :cond_12

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, p1, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance p1, Ljava/io/BufferedReader;

    invoke-direct {p1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :goto_0
    :try_start_2
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_2
    :try_start_3
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object p1

    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object p1

    new-instance v4, Ljava/io/StringReader;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    :goto_1
    if-eq v1, v3, :cond_11

    if-eq v1, v5, :cond_3

    goto/16 :goto_2

    :cond_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "appId"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/addons/stub/StubRequest;->stubData:Lcom/samsung/android/support/senl/nt/app/addons/stub/StubData;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/samsung/android/support/senl/nt/app/addons/stub/StubData;->setAppId(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_4
    const-string v4, "resultCode"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/addons/stub/StubRequest;->stubData:Lcom/samsung/android/support/senl/nt/app/addons/stub/StubData;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/samsung/android/support/senl/nt/app/addons/stub/StubData;->setResultCode(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_5
    const-string v4, "resultMsg"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/addons/stub/StubRequest;->stubData:Lcom/samsung/android/support/senl/nt/app/addons/stub/StubData;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/samsung/android/support/senl/nt/app/addons/stub/StubData;->setResultMsg(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_6
    const-string v4, "versionCode"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/addons/stub/StubRequest;->stubData:Lcom/samsung/android/support/senl/nt/app/addons/stub/StubData;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/samsung/android/support/senl/nt/app/addons/stub/StubData;->setVersionCode(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_7
    const-string v4, "versionName"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/addons/stub/StubRequest;->stubData:Lcom/samsung/android/support/senl/nt/app/addons/stub/StubData;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/samsung/android/support/senl/nt/app/addons/stub/StubData;->setVersionName(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_8
    const-string v4, "contentSize"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/addons/stub/StubRequest;->stubData:Lcom/samsung/android/support/senl/nt/app/addons/stub/StubData;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/samsung/android/support/senl/nt/app/addons/stub/StubData;->setContentSize(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_9
    const-string v4, "downloadURI"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/addons/stub/StubRequest;->stubData:Lcom/samsung/android/support/senl/nt/app/addons/stub/StubData;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/samsung/android/support/senl/nt/app/addons/stub/StubData;->setDownloadURI(Ljava/lang/String;)V

    goto :goto_2

    :cond_a
    const-string v4, "deltaDownloadURI"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/addons/stub/StubRequest;->stubData:Lcom/samsung/android/support/senl/nt/app/addons/stub/StubData;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/samsung/android/support/senl/nt/app/addons/stub/StubData;->setDeltaDownloadURI(Ljava/lang/String;)V

    goto :goto_2

    :cond_b
    const-string v4, "deltaContentSize"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/addons/stub/StubRequest;->stubData:Lcom/samsung/android/support/senl/nt/app/addons/stub/StubData;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/samsung/android/support/senl/nt/app/addons/stub/StubData;->setDeltaContentSize(Ljava/lang/String;)V

    goto :goto_2

    :cond_c
    const-string v4, "signature"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/addons/stub/StubRequest;->stubData:Lcom/samsung/android/support/senl/nt/app/addons/stub/StubData;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/samsung/android/support/senl/nt/app/addons/stub/StubData;->setSignature(Ljava/lang/String;)V

    goto :goto_2

    :cond_d
    const-string v4, "gSignatureDownloadURL"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/addons/stub/StubRequest;->stubData:Lcom/samsung/android/support/senl/nt/app/addons/stub/StubData;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/samsung/android/support/senl/nt/app/addons/stub/StubData;->setgSignatureDownloadURL(Ljava/lang/String;)V

    goto :goto_2

    :cond_e
    const-string v4, "productId"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/addons/stub/StubRequest;->stubData:Lcom/samsung/android/support/senl/nt/app/addons/stub/StubData;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/samsung/android/support/senl/nt/app/addons/stub/StubData;->setProductId(Ljava/lang/String;)V

    goto :goto_2

    :cond_f
    const-string v4, "productName"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/addons/stub/StubRequest;->stubData:Lcom/samsung/android/support/senl/nt/app/addons/stub/StubData;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/samsung/android/support/senl/nt/app/addons/stub/StubData;->setProductName(Ljava/lang/String;)V

    :cond_10
    :goto_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto/16 :goto_1

    :cond_11
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/addons/stub/StubRequest;->stubData:Lcom/samsung/android/support/senl/nt/app/addons/stub/StubData;
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    return-object p1

    :catchall_0
    move-exception v1

    :try_start_5
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    :try_start_6
    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v1

    :try_start_8
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p1

    :cond_12
    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "status code "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " != "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    :goto_5
    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_5
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager$TaskResult;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/addons/stub/StubRequest;->doInBackground([Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/addons/stub/StubData;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/addons/stub/StubRequest;->doInBackground([Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/addons/stub/StubData;

    move-result-object p1

    return-object p1
.end method

.method public onPostExecute(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/app/addons/stub/StubData;)V
    .locals 1

    iget p1, p0, Lcom/samsung/android/support/senl/nt/app/addons/stub/StubRequest;->type:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    if-eqz p2, :cond_3

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/app/addons/stub/StubUtil;->isError(Lcom/samsung/android/support/senl/nt/app/addons/stub/StubData;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/app/addons/stub/StubUtil;->isNoMatchingApplication(Lcom/samsung/android/support/senl/nt/app/addons/stub/StubData;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/addons/stub/StubRequest;->listener:Lcom/samsung/android/support/senl/nt/app/addons/stub/StubListener;

    invoke-interface {p1, p2}, Lcom/samsung/android/support/senl/nt/app/addons/stub/StubListener;->onNoMatchingApplication(Lcom/samsung/android/support/senl/nt/app/addons/stub/StubData;)V

    goto :goto_1

    :cond_1
    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/app/addons/stub/StubUtil;->isUpdateNotNecessary(Lcom/samsung/android/support/senl/nt/app/addons/stub/StubData;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/addons/stub/StubRequest;->listener:Lcom/samsung/android/support/senl/nt/app/addons/stub/StubListener;

    invoke-interface {p1, p2}, Lcom/samsung/android/support/senl/nt/app/addons/stub/StubListener;->onUpdateNotNecessary(Lcom/samsung/android/support/senl/nt/app/addons/stub/StubData;)V

    goto :goto_1

    :cond_2
    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/app/addons/stub/StubUtil;->isUpdateAvailable(Lcom/samsung/android/support/senl/nt/app/addons/stub/StubData;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/addons/stub/StubRequest;->listener:Lcom/samsung/android/support/senl/nt/app/addons/stub/StubListener;

    invoke-interface {p1, p2}, Lcom/samsung/android/support/senl/nt/app/addons/stub/StubListener;->onUpdateAvailable(Lcom/samsung/android/support/senl/nt/app/addons/stub/StubData;)V

    goto :goto_1

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/addons/stub/StubRequest;->listener:Lcom/samsung/android/support/senl/nt/app/addons/stub/StubListener;

    invoke-interface {p1, p2}, Lcom/samsung/android/support/senl/nt/app/addons/stub/StubListener;->onUpdateCheckFail(Lcom/samsung/android/support/senl/nt/app/addons/stub/StubData;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public bridge synthetic onPostExecute(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager$TaskResult;)V
    .locals 0

    check-cast p2, Lcom/samsung/android/support/senl/nt/app/addons/stub/StubData;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/addons/stub/StubRequest;->onPostExecute(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/app/addons/stub/StubData;)V

    return-void
.end method

.method public run()V
    .locals 4

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/addons/stub/StubRequest;->url:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public setListener(Lcom/samsung/android/support/senl/nt/app/addons/stub/StubListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/addons/stub/StubRequest;->listener:Lcom/samsung/android/support/senl/nt/app/addons/stub/StubListener;

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/addons/stub/StubRequest;->type:I

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/addons/stub/StubRequest;->url:Ljava/lang/String;

    return-void
.end method
