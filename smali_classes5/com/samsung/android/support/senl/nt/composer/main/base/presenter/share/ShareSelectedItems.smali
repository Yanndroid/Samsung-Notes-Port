.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems$HandleResult;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems$ObjectSpanConverterImpl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public mShareToOtherAppHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareToOtherAppHandler;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "ShareSelectedItems"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareToOtherAppHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems;->mShareToOtherAppHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareToOtherAppHandler;

    return-void
.end method

.method public static bridge synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private convertOverSizeStringToFile(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems$HandleResult;Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const v0, 0x249f0

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems;->TAG:Ljava/lang/String;

    const-string v0, "createIntentToShare#convertOverSizeStringToFile#"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems;->mShareToOtherAppHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareToOtherAppHandler;

    invoke-virtual {p1, p3, p4, p5}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareToOtherAppHandler;->createTextFileUri(Landroid/content/Context;Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p2, p2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems$HandleResult;->contentUris:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private createIntentForEmail(Ljava/util/ArrayList;Landroid/content/ClipData;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/content/ClipData;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    const-string v0, "<p"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/16 v0, 0x3e

    const/4 v3, 0x2

    invoke-virtual {p3, v0, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p3, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    const/16 v0, 0x3c

    invoke-virtual {p3, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    invoke-virtual {p3, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "<img src="

    const-string v3, "<img style=\"max-width: 100%;\" src="

    invoke-virtual {p3, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    :cond_1
    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareIntentCreationHelper;->getBaseIntentWithActionSend()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "text/html"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareComponents;->getEmailComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string p3, ""

    :cond_2
    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v0, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_3

    const-string p3, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    const-string p3, "android.intent.extra.STREAM"

    if-le p2, v2, :cond_4

    const-string p2, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, p3, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ne p2, v2, :cond_5

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Parcelable;

    invoke-virtual {v0, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_5
    :goto_0
    return-object v0
.end method

.method private getShareType(Ljava/util/List;Z)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareUtils;->getShareType(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_1

    const-string p2, "text/plain"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "text/html"

    goto :goto_0

    :cond_0
    const-string p1, "*/*"

    :cond_1
    :goto_0
    return-object p1
.end method

.method private handleMultiType(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;Ljava/util/List;Z)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems$HandleResult;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;Z)",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems$HandleResult;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move/from16 v8, p4

    new-instance v9, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleImage;

    invoke-direct {v9}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleImage;-><init>()V

    new-instance v10, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleWebCard;

    invoke-direct {v10}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleWebCard;-><init>()V

    new-instance v11, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleLinkCard;

    invoke-direct {v11}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleLinkCard;-><init>()V

    new-instance v12, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleVoice;

    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems;->mShareToOtherAppHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareToOtherAppHandler;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareToOtherAppHandler;->getShareUriHelper()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareUriHelper;

    move-result-object v1

    invoke-direct {v12, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleVoice;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareUriHelper;)V

    new-instance v13, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems$HandleResult;

    invoke-direct {v13}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems$HandleResult;-><init>()V

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v16, v15

    :cond_0
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    const/4 v6, 0x3

    if-eq v2, v6, :cond_3

    const/16 v4, 0xa

    if-eq v2, v4, :cond_6

    const/16 v4, 0x11

    if-eq v2, v4, :cond_5

    const/16 v4, 0xd

    if-eq v2, v4, :cond_4

    const/16 v4, 0xe

    if-eq v2, v4, :cond_3

    if-eqz v16, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->getSelectedObjectBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems;->mShareToOtherAppHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareToOtherAppHandler;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareToOtherAppHandler;->getShareUriHelper()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareUriHelper;

    move-result-object v1

    invoke-virtual {v1, v8, v7, v5, v15}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareUriHelper;->getContextShareUri(ZLandroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/os/UserHandleCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/os/UserHandleCompat;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/samsung/android/support/senl/cm/base/framework/os/UserHandleCompat;->getUserId(I)I

    move-result v16

    iget-object v3, v13, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems$HandleResult;->contentUris:Ljava/util/ArrayList;

    iget-object v2, v13, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems$HandleResult;->charSequence:Ljava/lang/CharSequence;

    move-object v1, v9

    move-object/from16 v17, v2

    move-object/from16 v2, p1

    move-object/from16 v18, v5

    move-object/from16 v5, v17

    move/from16 v17, v6

    move/from16 v6, v16

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleImage;->handleImageType(Landroid/content/Context;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v13, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems$HandleResult;->charSequence:Ljava/lang/CharSequence;

    iget-object v1, v13, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems$HandleResult;->typeList:Ljava/util/List;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object/from16 v18, v5

    :goto_1
    move-object/from16 v16, v18

    goto :goto_0

    :cond_3
    move/from16 v17, v6

    goto :goto_5

    :cond_4
    check-cast v1, Lcom/samsung/android/sdk/pen/document/SpenObjectWeb;

    iget-object v2, v13, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems$HandleResult;->textSb:Ljava/lang/StringBuilder;

    iget-object v3, v13, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems$HandleResult;->charSequence:Ljava/lang/CharSequence;

    invoke-virtual {v10, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleWebCard;->handleWeb(Lcom/samsung/android/sdk/pen/document/SpenObjectWeb;Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    :goto_2
    iput-object v1, v13, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems$HandleResult;->charSequence:Ljava/lang/CharSequence;

    goto :goto_3

    :cond_5
    check-cast v1, Lcom/samsung/android/sdk/pen/document/SpenObjectLink;

    iget-object v2, v13, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems$HandleResult;->textSb:Ljava/lang/StringBuilder;

    iget-object v3, v13, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems$HandleResult;->charSequence:Ljava/lang/CharSequence;

    invoke-virtual {v11, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleLinkCard;->handleLink(Lcom/samsung/android/sdk/pen/document/SpenObjectLink;Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_2

    :cond_6
    iget-object v2, v13, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems$HandleResult;->contentUris:Ljava/util/ArrayList;

    check-cast v1, Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;

    invoke-virtual {v12, v7, v2, v1, v8}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleVoice;->handleVoiceContent(Landroid/content/Context;Ljava/util/ArrayList;Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;Z)V

    :goto_3
    iget-object v1, v13, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems$HandleResult;->typeList:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_4
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :goto_5
    iget-object v2, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems;->mShareToOtherAppHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareToOtherAppHandler;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareToOtherAppHandler;->getShareCacheHelper()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCacheHelper;

    move-result-object v2

    invoke-virtual {v2, v7, v8}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCacheHelper;->getContextShareDir(Landroid/content/Context;Z)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCacheHelper$ReturnValueForShareDir;

    move-result-object v2

    if-eqz v2, :cond_a

    iget-object v4, v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCacheHelper$ReturnValueForShareDir;->mDir:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_7

    :cond_7
    iget-object v4, v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCacheHelper$ReturnValueForShareDir;->mDir:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v9, v1, v4, v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleImage;->saveAsImage(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_6

    :cond_8
    sget-object v4, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createIntentToShare#handleMultiType# ImageContent, path: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems;->mShareToOtherAppHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareToOtherAppHandler;

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareToOtherAppHandler;->getShareUriHelper()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareUriHelper;

    move-result-object v4

    iget-boolean v2, v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCacheHelper$ReturnValueForShareDir;->mUseFileProvider:Z

    const-string v5, "image/*"

    invoke-virtual {v4, v7, v1, v2, v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareUriHelper;->getContextShareUri(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/os/UserHandleCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/os/UserHandleCompat;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/samsung/android/support/senl/cm/base/framework/os/UserHandleCompat;->getUserId(I)I

    move-result v6

    iget-object v3, v13, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems$HandleResult;->contentUris:Ljava/util/ArrayList;

    iget-object v5, v13, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems$HandleResult;->charSequence:Ljava/lang/CharSequence;

    move-object v1, v9

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleImage;->handleImageType(Landroid/content/Context;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v13, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems$HandleResult;->charSequence:Ljava/lang/CharSequence;

    iget-object v1, v13, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems$HandleResult;->typeList:Ljava/util/List;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_4

    :cond_9
    :goto_6
    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems;->TAG:Ljava/lang/String;

    const-string v2, "createIntentToShare#handleMultiType# failed to saveAsImage"

    goto :goto_8

    :cond_a
    :goto_7
    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems;->TAG:Ljava/lang/String;

    const-string v2, "createIntentToShare#handleMultiType# failed to getPathForShare"

    :goto_8
    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    return-object v13
.end method

.method private handlePdfImage(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;Z)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems$HandleResult;
    .locals 11

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems$HandleResult;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems$HandleResult;-><init>()V

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;->getSelectedImageRect()Landroid/graphics/RectF;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    const/4 v4, 0x0

    if-lez v2, :cond_1

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v2

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    float-to-int v1, v1

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v4

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {p2, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;->getSelectedImage(Landroid/graphics/Bitmap;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems;->mShareToOtherAppHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareToOtherAppHandler;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareToOtherAppHandler;->getShareUriHelper()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareUriHelper;

    move-result-object p2

    invoke-virtual {p2, p3, p1, v1, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareUriHelper;->getContextShareUri(ZLandroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/os/UserHandleCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/os/UserHandleCompat;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/samsung/android/support/senl/cm/base/framework/os/UserHandleCompat;->getUserId(I)I

    move-result v10

    new-instance v5, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleImage;

    invoke-direct {v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleImage;-><init>()V

    iget-object v7, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems$HandleResult;->contentUris:Ljava/util/ArrayList;

    const-string v9, ""

    move-object v6, p1

    invoke-virtual/range {v5 .. v10}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleImage;->handleImageType(Landroid/content/Context;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems$HandleResult;->charSequence:Ljava/lang/CharSequence;

    iget-object p1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems$HandleResult;->typeList:Ljava/util/List;

    const/4 p2, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method

.method private handlePdfText(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems$HandleResult;
    .locals 4

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems$HandleResult;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems$HandleResult;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;->getSelectedText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems;->TAG:Ljava/lang/String;

    const-string v1, "createIntentToShare#handlePdfText# PDF Text is IndexOutOfBounds"

    invoke-static {p1, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createIntentToShare#handlePdfText# "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\r\n"

    const-string v2, "\n"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems$HandleResult;->charSequence:Ljava/lang/CharSequence;

    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems$HandleResult;->textSb:Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    iget-object p1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems$HandleResult;->typeList:Ljava/util/List;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private handleTextBox(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;Ljava/util/List;Z)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems$HandleResult;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;Z)",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems$HandleResult;"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems$HandleResult;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems$HandleResult;-><init>()V

    const/4 v1, 0x0

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->isFocusedTextBox()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p3}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getSelectedStart()I

    move-result p2

    invoke-virtual {p3}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getSelectedEnd()I

    move-result v1

    invoke-virtual {p3}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sget-object v3, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createIntentToShare#handleTextBox#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", start : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", end : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-lt v1, p2, :cond_1

    if-gt p2, v2, :cond_1

    if-gt v1, v2, :cond_1

    if-ltz p2, :cond_1

    if-ltz v1, :cond_1

    if-ne p2, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getSelectedStart()I

    move-result p2

    invoke-virtual {p3}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getSelectedEnd()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p3, p2, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectTextFactory;->copyText(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;II)Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    move-result-object p3

    goto :goto_1

    :cond_1
    :goto_0
    const-string p1, "createIntentToShare#handleTextBox# Text Box is IndexOutOfBounds"

    invoke-static {v3, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_2
    :goto_1
    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleTextBox$InputBuilder;

    invoke-direct {p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleTextBox$InputBuilder;-><init>(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;)V

    iget-object p3, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems$HandleResult;->charSequence:Ljava/lang/CharSequence;

    invoke-virtual {p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleTextBox$InputBuilder;->setCharSequence(Ljava/lang/CharSequence;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleTextBox$InputBuilder;

    move-result-object p2

    iget-object p3, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems$HandleResult;->textSb:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleTextBox$InputBuilder;->setTextSb(Ljava/lang/StringBuilder;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleTextBox$InputBuilder;

    move-result-object p2

    new-instance p3, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems$ObjectSpanConverterImpl;

    invoke-direct {p3, p1, v0, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems$ObjectSpanConverterImpl;-><init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems$HandleResult;Z)V

    invoke-virtual {p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleTextBox$InputBuilder;->setConverter(Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$IObjectSpanConverter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleTextBox$InputBuilder;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleTextBox;

    invoke-direct {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleTextBox;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleTextBox$InputBuilder;->done()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleTextBox$InputValues;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleTextBox;->handleText(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleTextBox$InputValues;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems$HandleResult;->charSequence:Ljava/lang/CharSequence;

    iget-object p1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems$HandleResult;->typeList:Ljava/util/List;

    const/4 p2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private insertUriListToIntent(Landroid/content/Intent;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems;->mShareToOtherAppHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareToOtherAppHandler;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareToOtherAppHandler;->getShareUriHelper()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareUriHelper;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareUriHelper;->cutOverMaxUriCount(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, "android.intent.extra.STREAM"

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    const-string v0, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    if-ne v0, v2, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Parcelable;

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_1
    :goto_0
    sget-object p2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "insertUriListToIntent# action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-void
.end method

.method private makeBaseIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 5

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareIntentCreationHelper;->getBaseIntentWithActionSend()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "android.intent.extra.SUBJECT"

    if-nez v1, :cond_0

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {v0, p3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "*/*"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "image/*"

    if-eqz v1, :cond_1

    const-string v1, "audio/mp4"

    filled-new-array {v3, v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v3, "android.intent.extra.MIME_TYPES"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "ocf_resource_type"

    const-string v3, "x.com.samsung.contents.renderer.memo"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    :goto_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shareParagraph, type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "android.intent.extra.TEXT"

    if-nez p4, :cond_4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_3

    const-string p4, ""

    goto :goto_1

    :cond_3
    move-object p4, p1

    :goto_1
    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    const-string p4, "text/plain"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {v0, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_5
    return-object v0
.end method


# virtual methods
.method public createIntentToShare(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;Ljava/util/List;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCallbackReceiver$ShareCaller;)Landroid/content/Intent;
    .locals 6
    .param p5    # Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCallbackReceiver$ShareCaller;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCallbackReceiver$ShareCaller;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;->hasSelectedPDF()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->getNote()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/LockUtils;->isLocked(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)Z

    move-result v0

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;->hasSelectedText()Z

    move-result v1

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;->hasSelectedImage()Z

    move-result v2

    sget-object v3, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createIntentToShare#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_1

    invoke-direct {p0, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems;->handlePdfText(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems$HandleResult;

    move-result-object p2

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->isSelectedTextBox()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, p1, p2, p4, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems;->handleTextBox(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;Ljava/util/List;Z)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems$HandleResult;

    move-result-object p2

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    invoke-direct {p0, p1, p3, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems;->handlePdfImage(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;Z)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems$HandleResult;

    move-result-object p2

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1, p2, p4, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems;->handleMultiType(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;Ljava/util/List;Z)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems$HandleResult;

    move-result-object p2

    :goto_0
    invoke-virtual {p0, p1, p2, v0, p5}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems;->createIntentToShare(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems$HandleResult;ZLcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCallbackReceiver$ShareCaller;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public createIntentToShare(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems$HandleResult;ZLcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCallbackReceiver$ShareCaller;)Landroid/content/Intent;
    .locals 8
    .param p4    # Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCallbackReceiver$ShareCaller;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems$HandleResult;->textSb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems$HandleResult;->charSequence:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HtmlUtils;->toHtml(Landroid/text/Spanned;)Ljava/lang/String;

    move-result-object v7

    move-object v1, p0

    move-object v2, v7

    move-object v3, p2

    move-object v4, p1

    move-object v5, v0

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems;->convertOverSizeStringToFile(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems$HandleResult;Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p3

    iget-object v1, p2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems$HandleResult;->typeList:Ljava/util/List;

    invoke-direct {p0, v1, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems;->getShareType(Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-direct {p0, v0, v2, v1, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems;->makeBaseIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems$HandleResult;->contentUris:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems;->makeClipData(Ljava/util/ArrayList;)Landroid/content/ClipData;

    move-result-object v1

    iget-object v3, p2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems$HandleResult;->contentUris:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems;->insertUriListToIntent(Landroid/content/Intent;Ljava/util/ArrayList;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-nez p3, :cond_0

    iget-object p2, p2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems$HandleResult;->contentUris:Ljava/util/ArrayList;

    invoke-direct {p0, p2, v1, v7, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems;->createIntentForEmail(Ljava/util/ArrayList;Landroid/content/ClipData;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 p2, 0x1

    const-string p3, "exit_on_sent"

    invoke-virtual {v0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {p1, v0, v3, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareIntentCreationHelper;->createChooserIntentCompat(Landroid/content/Context;Landroid/content/Intent;Ljava/util/List;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCallbackReceiver$ShareCaller;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public makeClipData(Ljava/util/ArrayList;)Landroid/content/ClipData;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;)",
            "Landroid/content/ClipData;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-static {v1, v0}, Landroid/content/ClipData;->newRawUri(Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    new-instance v4, Landroid/content/ClipData$Item;

    invoke-direct {v4, v3}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v0, v4}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method
