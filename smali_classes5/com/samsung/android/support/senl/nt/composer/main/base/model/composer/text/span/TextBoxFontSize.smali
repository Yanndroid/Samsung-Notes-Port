.class public Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/TextBoxFontSize;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontSize;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final TEXT_BOX_FONT_SIZE_PREF_KEY:Ljava/lang/String; = "Text_box_default_font_size"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "TextBoxFontSize"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/TextBoxFontSize;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const-string v0, "Text_box_default_font_size"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontSize;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const-string v0, "Text_box_default_font_size"

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontSize;-><init>(Ljava/lang/String;II)V

    return-void
.end method


# virtual methods
.method public applySPenSpan([ILcom/samsung/android/sdk/pen/document/SpenObjectShape;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/TextBoxFontSize;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applySPenSpan fontSize "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontSize;->getValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontSize;->applySPenSpan([ILcom/samsung/android/sdk/pen/document/SpenObjectShape;)V

    return-void
.end method
