.class public Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectTextFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "ObjectTextFactory"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectTextFactory;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copy(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;)Lcom/samsung/android/sdk/pen/document/SpenObjectShape;
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectTextFactory;->newTextObject(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;)Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectShapeBase;->copy(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V

    return-object v0
.end method

.method public static copyText(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;II)Lcom/samsung/android/sdk/pen/document/SpenObjectShape;
    .locals 5

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectTextFactory;->newTextObject(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;)Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    sget-object p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectTextFactory;->TAG:Ljava/lang/String;

    const-string p1, "copyText# text is empty."

    :goto_0
    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    if-ltz p1, :cond_2

    if-gt p2, v1, :cond_2

    if-le p1, p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p0, p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->copyText(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;II)V

    goto :goto_2

    :cond_2
    :goto_1
    sget-object p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectTextFactory;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "copyText# cursor is wrong. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " - "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " lastIndex:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :goto_2
    new-array p0, v2, [B

    const/4 p1, 0x0

    aput-byte v2, p0, p1

    const-string p1, "CopiedText"

    invoke-virtual {v0, p1, p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->setExtraDataByteArray(Ljava/lang/String;[B)V

    return-object v0
.end method

.method public static newBodyText(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectTextBoxData;)Lcom/samsung/android/sdk/pen/document/SpenObjectShape;
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectTextBoxData;->getDefaultAlign()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->setTextAlignment(I)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectTextBoxData;->getDefaultFontSize()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->setFontSize(F)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectTextBoxData;->getDefaultFontColor()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->setTextColor(I)V

    const p0, 0x55730

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->setTextLimit(I)Z

    return-object v0
.end method

.method private static newShape(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;)Lcom/samsung/android/sdk/pen/document/SpenObjectShape;
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getTextLimit()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->setTextLimit(I)Z

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getTextAlignment()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->setTextAlignment(I)V

    return-object v0
.end method

.method private static newTextBox(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;)Lcom/samsung/android/sdk/pen/document/SpenObjectShape;
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getTextLimit()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->setTextLimit(I)Z

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getTextAlignment()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->setTextAlignment(I)V

    instance-of v1, p0, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    if-eqz v1, :cond_0

    check-cast p0, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->getFontSize()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->setFontSize(F)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->getTextColor()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->setTextColor(I)V

    :cond_0
    return-object v0
.end method

.method public static newTextBox(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectTextBoxData;)Lcom/samsung/android/sdk/pen/document/SpenObjectShape;
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->setTextLimit(I)Z

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectTextBoxData;->getDefaultAlign()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->setTextAlignment(I)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectTextBoxData;->getDefaultFontSize()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->setFontSize(F)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectTextBoxData;->getDefaultFontColor()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->setTextColor(I)V

    const/4 p0, 0x2

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->setAutoFitOption(I)V

    const/high16 p0, 0x41000000    # 8.0f

    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {v0, p0, v1, p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->setMargin(FFFF)V

    return-object v0
.end method

.method private static newTextObject(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;)Lcom/samsung/android/sdk/pen/document/SpenObjectShape;
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectTextFactory;->newTextBox(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;)Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectTextFactory;->newShape(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;)Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    move-result-object p0

    return-object p0
.end method
