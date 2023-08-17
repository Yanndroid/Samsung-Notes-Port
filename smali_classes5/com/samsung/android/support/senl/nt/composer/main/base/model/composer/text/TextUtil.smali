.class public Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/TextUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "TextUtil"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/TextUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createLineFeed(I)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCursor(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;)[I
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getCursorPosition()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getSelectedStart()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getSelectedEnd()I

    move-result p0

    if-le v0, p0, :cond_1

    move v3, v0

    move v0, p0

    move p0, v3

    goto :goto_0

    :cond_0
    move p0, v0

    :cond_1
    :goto_0
    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    sget-object p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/TextUtil;->TAG:Ljava/lang/String;

    const-string v0, "getCursor# position is -1"

    invoke-static {p0, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    move p0, v2

    move v0, p0

    :cond_2
    const/4 v1, 0x2

    new-array v1, v1, [I

    aput v0, v1, v2

    const/4 v0, 0x1

    aput p0, v1, v0

    return-object v1
.end method

.method public static getParagraphIndex(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;[I)[I
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aget v2, p1, v1

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Lcom/samsung/android/sdk/pen/text/SpenTextUtils;->getEnterCount(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;IZ)I

    move-result v2

    aput v2, v0, v1

    aget v2, v0, v1

    add-int/2addr v2, v3

    aput v2, v0, v3

    aget v1, p1, v1

    aget v2, p1, v3

    if-eq v1, v2, :cond_0

    aget p1, p1, v3

    invoke-static {p0, p1, v3}, Lcom/samsung/android/sdk/pen/text/SpenTextUtils;->getEnterCount(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;IZ)I

    move-result p0

    add-int/2addr p0, v3

    aput p0, v0, v3

    :cond_0
    return-object v0
.end method

.method public static insertLineFeed(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getText()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/TextUtil;->createLineFeed(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->insertText(Ljava/lang/String;IZ)V

    return-void
.end method

.method public static subString(Ljava/lang/String;IIZ)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/DeviceInfo;->isUserMode()Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    sget-object p2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/TextUtil;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "subString# : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_1

    move-object p0, v1

    :cond_1
    return-object p0

    :cond_2
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
