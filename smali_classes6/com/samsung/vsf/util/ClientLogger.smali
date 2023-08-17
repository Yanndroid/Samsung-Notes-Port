.class public Lcom/samsung/vsf/util/ClientLogger;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final KEY_CLIENT_TYPE:Ljava/lang/String; = "CLIENTLOG_CLIENT_TYPE"

.field public static final KEY_MODEL:Ljava/lang/String; = "CLIENTLOG_MODEL"

.field public static final KEY_OPEN_LATENCY:Ljava/lang/String; = "CLIENTLOG_OPEN_LATENCY"

.field public static final KEY_OS:Ljava/lang/String; = "CLIENTLOG_OS"

.field public static final KEY_SDK_VERSION:Ljava/lang/String; = "CLIENTLOG_APP_VERSION"

.field private static open_log:Lorg/json/JSONObject;

.field private static prepare_log:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOpenLogger(Lcom/samsung/vsf/SpeechRecognizer$Config;)Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/samsung/vsf/util/ClientLogger;->open_log:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lcom/samsung/vsf/util/ClientLogger;->open_log:Lorg/json/JSONObject;

    :try_start_0
    const-string v1, "CLIENTLOG_MODEL"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v0, Lcom/samsung/vsf/util/ClientLogger;->open_log:Lorg/json/JSONObject;

    const-string v1, "CLIENTLOG_OS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Android_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v0, Lcom/samsung/vsf/util/ClientLogger;->open_log:Lorg/json/JSONObject;

    const-string v1, "CLIENTLOG_APP_VERSION"

    const-string v2, "20191001.1.35"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v0, Lcom/samsung/vsf/util/ClientLogger;->open_log:Lorg/json/JSONObject;

    const-string v1, "CLIENTLOG_CLIENT_TYPE"

    invoke-virtual {p0}, Lcom/samsung/vsf/SpeechRecognizer$Config;->getSDKClient()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    sget-object p0, Lcom/samsung/vsf/util/ClientLogger;->open_log:Lorg/json/JSONObject;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPrepareLogger(J)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/samsung/vsf/util/ClientLogger;->prepare_log:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lcom/samsung/vsf/util/ClientLogger;->prepare_log:Lorg/json/JSONObject;

    :cond_0
    :try_start_0
    sget-object v0, Lcom/samsung/vsf/util/ClientLogger;->prepare_log:Lorg/json/JSONObject;

    const-string v1, "CLIENTLOG_OPEN_LATENCY"

    invoke-virtual {v0, v1, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    sget-object p0, Lcom/samsung/vsf/util/ClientLogger;->prepare_log:Lorg/json/JSONObject;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
