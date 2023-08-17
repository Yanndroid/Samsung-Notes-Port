.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleImage;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "HandleImage"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleImage;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleImageType(Landroid/content/Context;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/net/Uri;",
            "Ljava/lang/CharSequence;",
            "I)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    if-eqz p3, :cond_0

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p2, Landroid/text/SpannableString;

    const-string v0, " \n\n"

    invoke-direct {p2, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/text/style/ImageSpan;

    invoke-static {p3, p5}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareUtils;->attachUserIdToAuthority(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object p3

    invoke-direct {v0, p1, p3}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    const/16 p1, 0x21

    const/4 p3, 0x0

    const/4 p5, 0x1

    invoke-virtual {p2, v0, p3, p5, p1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/CharSequence;

    aput-object p4, p1, p3

    aput-object p2, p1, p5

    invoke-static {p1}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p4

    :cond_0
    return-object p4
.end method

.method public saveAsImage(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const-string v0, ""

    if-nez p1, :cond_0

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleImage;->TAG:Ljava/lang/String;

    const-string p2, "saveAsImage# imageObject is null"

    :goto_0
    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    instance-of v1, p1, Lcom/samsung/android/sdk/pen/document/SpenObjectImage;

    if-eqz v1, :cond_1

    check-cast p1, Lcom/samsung/android/sdk/pen/document/SpenObjectImage;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectImage;->getImagePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectImage;->getImage()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectImage;->getCropRect()Landroid/graphics/Rect;

    move-result-object p1

    goto :goto_1

    :cond_1
    instance-of v1, p1, Lcom/samsung/android/sdk/pen/document/SpenObjectPainting;

    if-eqz v1, :cond_2

    check-cast p1, Lcom/samsung/android/sdk/pen/document/SpenObjectPainting;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectPainting;->getThumbnailPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectPainting;->getCropRect()Landroid/graphics/Rect;

    move-result-object p1

    goto :goto_1

    :cond_2
    move-object v1, v0

    move-object p1, v3

    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleImage;->TAG:Ljava/lang/String;

    const-string p2, "saveAsImage# path is empty"

    goto :goto_0

    :cond_3
    if-nez v3, :cond_4

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleImage;->TAG:Ljava/lang/String;

    const-string p2, "saveAsImage# bitmap is null"

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    add-int/2addr v2, v4

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-gt v2, v4, :cond_5

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    add-int/2addr v2, v4

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-gt v2, v4, :cond_5

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v4, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-static {v3, v2, v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_2

    :cond_5
    sget-object v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleImage;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saveAsImage# cropRect is wrong. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_2
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x2e

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    if-ltz v4, :cond_7

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_7
    move-object v4, v0

    :goto_3
    const-string v5, "gif"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "png"

    if-eqz v6, :cond_8

    move-object v7, v5

    goto :goto_5

    :cond_8
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_4

    :cond_9
    const-string v7, "jpg"

    goto :goto_5

    :cond_a
    :goto_4
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    :goto_5
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareUtils;->getDocumentTimeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :cond_b
    invoke-static {p2, p3, v7}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->generateUniqueFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c

    :try_start_0
    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->copyFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception p2

    sget-object p3, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleImage;->TAG:Ljava/lang/String;

    const-string v0, "saveAsImage"

    invoke-static {p3, v0, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_c
    const/16 p2, 0x5f

    invoke-static {v3, p1, v2, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ImageUtil;->saveBitmapToFileCache(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;I)Z

    :goto_6
    return-object p1
.end method
