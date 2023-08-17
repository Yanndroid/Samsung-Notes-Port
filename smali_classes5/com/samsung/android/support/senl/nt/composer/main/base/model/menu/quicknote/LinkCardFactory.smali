.class public Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/quicknote/LinkCardFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FILE_PREFIX:Ljava/lang/String; = "quickNote"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createMessageCard(Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/MessageSuggestionInfo;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$LinkCard;
    .locals 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/quicknote/ExtraDataHelper;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/quicknote/ExtraDataHelper;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/MessageSuggestionInfo;->getRecipientList()Ljava/lang/String;

    move-result-object v2

    const-string v3, "smsto"

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.SENDTO"

    invoke-virtual {v1, v0, v3, v2, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/quicknote/ExtraDataHelper;->createJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/quicknote/MsgPermissionAction;

    invoke-direct {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/quicknote/MsgPermissionAction;-><init>()V

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/quicknote/MsgPermissionAction;->getAndroidId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/quicknote/ExtraDataHelper;->putDeviceId(Lorg/json/JSONObject;Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/quicknote/ExtraDataHelper$ExtraPutter;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/quicknote/ExtraDataHelper$ExtraPutter;-><init>(I)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/MessageSuggestionInfo;->getIntentExtraBooleanValues()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/quicknote/ExtraDataHelper$ExtraPutter;->put(Lorg/json/JSONObject;Ljava/util/List;)V

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/quicknote/ExtraDataHelper$ExtraPutter;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/quicknote/ExtraDataHelper$ExtraPutter;-><init>(I)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/MessageSuggestionInfo;->getIntentExtraLongValues()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/quicknote/ExtraDataHelper$ExtraPutter;->put(Lorg/json/JSONObject;Ljava/util/List;)V

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/quicknote/ExtraDataHelper$ExtraPutter;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/quicknote/ExtraDataHelper$ExtraPutter;-><init>(I)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/MessageSuggestionInfo;->getIntentExtraStringValues()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/quicknote/ExtraDataHelper$ExtraPutter;->put(Lorg/json/JSONObject;Ljava/util/List;)V

    :cond_0
    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$LinkCard;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/MessageSuggestionInfo;->getQueriedTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, ""

    invoke-direct {v1, v2, v4, v3, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$LinkCard;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "quickNote"

    const-string v2, "png"

    invoke-static {p1, v2}, Lcom/samsung/android/support/senl/nt/base/common/util/FileExtensions;->getFileNameByTime(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ImageUtil;->convertDrawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p0

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x5f

    invoke-static {p0, p1, v0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ImageUtil;->saveBitmapToFileCache(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;I)Z

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$DownloadAble;->setPath(Ljava/lang/String;)V

    return-object v1
.end method
