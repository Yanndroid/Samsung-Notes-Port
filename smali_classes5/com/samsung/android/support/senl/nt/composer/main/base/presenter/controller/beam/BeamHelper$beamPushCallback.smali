.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper$beamPushCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "beamPushCallback"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;


# direct methods
.method private constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper$beamPushCallback;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper$beamPushCallback;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;)V

    return-void
.end method

.method private getFileList([Ljava/io/File;)Lorg/json/JSONArray;
    .locals 9

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p1, v3

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "fileName"

    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v7

    const-string v4, "fileLen"

    invoke-virtual {v6, v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v4, "filepath"

    invoke-virtual {v6, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, ""

    invoke-virtual {v5, v0, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "subPath"

    invoke-virtual {v6, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private getJSONObject([Ljava/io/File;)[B
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "mac"

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper$beamPushCallback;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mimeType"

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper$beamPushCallback;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "list"

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper$beamPushCallback;->getFileList([Ljava/io/File;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->k()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "beamPushCallback$getJSONObject() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper$beamPushCallback;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    return-object p1
.end method

.method private getMacAddress()Ljava/lang/String;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WifiManagerLeak"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper$beamPushCallback;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->k()Ljava/lang/String;

    move-result-object v0

    const-string v1, "beamPushCallback$getMacAddress(), Invalid wifiInfo"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v4, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v5, 0x10

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    or-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    or-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public createNdefMessage(Landroid/nfc/NfcEvent;)Landroid/nfc/NdefMessage;
    .locals 4

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->k()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "beamPushCallback$createNdefMessage(), event : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper$beamPushCallback;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->i(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper$beamPushCallback;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper$OnCreateNdefMessageListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper$beamPushCallback;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper$OnCreateNdefMessageListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper$OnCreateNdefMessageListener;->onCreateNdefMessage()V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper$beamPushCallback;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->j(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper$beamPushCallback;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->h(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;)[Ljava/io/File;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper$beamPushCallback;->createRecord([Ljava/io/File;)Landroid/nfc/NdefRecord;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->k()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "beamPushCallback$createNdefMessage(), fail to crate["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper$beamPushCallback;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->f(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper$beamPushCallback;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->g(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;I)V

    new-instance v0, Landroid/nfc/NdefMessage;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/nfc/NdefRecord;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "com.sec.android.directshare"

    invoke-static {p1}, Landroid/nfc/NdefRecord;->createApplicationRecord(Ljava/lang/String;)Landroid/nfc/NdefRecord;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-direct {v0, v2}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V

    return-object v0
.end method

.method public createRecord([Ljava/io/File;)Landroid/nfc/NdefRecord;
    .locals 8

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->k()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "beamPushCallback$createRecord(), mNdefStatus : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper$beamPushCallback;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->f(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper$beamPushCallback;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->f(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;)I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "beamPushCallback$createRecord(), ActivityNotFoundException : "

    const-string v4, "POPUP_MODE"

    const-string v5, "com.sec.android.directshare.DirectSharePopUp"

    const/4 v6, 0x0

    if-ne v1, v0, :cond_0

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "no_file_selected"

    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper$beamPushCallback;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->k()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper$beamPushCallback;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;

    invoke-static {p1, v6}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->g(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;I)V

    return-object v2

    :cond_0
    const/4 v0, 0x3

    iget-object v7, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper$beamPushCallback;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;

    invoke-static {v7}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->f(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;)I

    move-result v7

    if-ne v0, v7, :cond_1

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "from_cloud_file"

    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper$beamPushCallback;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->k()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper$beamPushCallback;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;

    invoke-static {p1, v6}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->g(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;I)V

    return-object v2

    :cond_1
    const/4 v0, 0x4

    iget-object v7, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper$beamPushCallback;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;

    invoke-static {v7}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->f(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;)I

    move-result v7

    if-ne v0, v7, :cond_2

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "from_drm_file"

    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper$beamPushCallback;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->k()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper$beamPushCallback;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;

    invoke-static {p1, v6}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->g(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;I)V

    return-object v2

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper$beamPushCallback;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper$beamPushCallback;->getJSONObject([Ljava/io/File;)[B

    move-result-object p1

    new-instance v2, Landroid/nfc/NdefRecord;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    new-array v3, v6, [B

    invoke-direct {v2, v1, v0, v3, p1}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    return-object v2
.end method
