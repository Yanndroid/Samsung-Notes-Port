.class Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify$CustomLinkifyFrameworkImpl;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify$CustomLinkifyCommonImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomLinkifyFrameworkImpl"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify$CustomLinkifyCommonImpl;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private gatherLinksByFramework(Ljava/util/List;Ljava/lang/String;II)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkSpec;",
            ">;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    :try_start_0
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v0, p3}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result p2

    const-class v1, Landroid/text/style/URLSpan;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p2, v1}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/text/style/URLSpan;

    :goto_0
    array-length v1, p2

    if-ge v2, v1, :cond_0

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkSpec;

    aget-object v3, p2, v2

    invoke-virtual {v0, v3}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    aget-object v4, p2, v2

    invoke-virtual {v0, v4}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    invoke-direct {v1, p4, v3, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkSpec;-><init>(III)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify;->a()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gatherLinksByFramework error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "/"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " ex ="

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addLinks(Ljava/util/ArrayList;Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkSpec;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify$CustomLinkifyFrameworkImpl;->gatherLinksByFramework(Ljava/util/List;Ljava/lang/String;II)V

    :cond_0
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify$CustomLinkifyFrameworkImpl;->gatherLinksByFramework(Ljava/util/List;Ljava/lang/String;II)V

    :cond_1
    and-int/lit8 v0, p3, 0x8

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_2

    const/4 v0, 0x5

    const/16 v1, 0x8

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify$CustomLinkifyFrameworkImpl;->gatherLinksByFramework(Ljava/util/List;Ljava/lang/String;II)V

    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify$CustomLinkifyCommonImpl;->addLinks(Ljava/util/ArrayList;Ljava/lang/String;I)V

    return-void
.end method
