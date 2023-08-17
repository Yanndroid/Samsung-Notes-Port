.class public Lcom/samsung/android/support/senl/nt/app/main/noteslist/util/NotesHolderUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "NotesHolderUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addTextAlignSpan(ZLandroid/text/Editable;II)V
    .locals 2

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    add-int/lit8 p3, p3, -0x1

    :goto_0
    const/16 v0, 0xa

    invoke-virtual {p0, v0, p3}, Ljava/lang/String;->lastIndexOf(II)I

    move-result p3

    const-string v0, "\u200f"

    if-ge p3, p2, :cond_0

    invoke-interface {p1, p2, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_1

    :cond_0
    add-int/lit8 v1, p3, 0x1

    invoke-interface {p1, v1, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_1
    const-string p0, "\u200e"

    invoke-interface {p1, p2, p0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    :goto_1
    return-void
.end method

.method private static addTrimTextContent(Ljava/lang/CharSequence;)Landroid/text/SpannableString;
    .locals 3

    :goto_0
    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_1

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    :cond_2
    :goto_1
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private static applyDimAlphaMaskColor(Landroid/content/Context;Landroid/text/Editable;IIZIZ)V
    .locals 8

    const/4 v0, 0x0

    if-nez p6, :cond_2

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget p6, Lcom/samsung/android/support/senl/nt/app/R$color;->composer_main_background_dark:I

    invoke-virtual {p4, p6, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-ne p5, p4, :cond_1

    sget p4, Lcom/samsung/android/support/senl/nt/app/R$color;->noteslist_item_text_content_color_black_bg_note:I

    goto :goto_1

    :cond_1
    sget p4, Lcom/samsung/android/support/senl/nt/app/R$color;->noteslist_item_text_content_color_has_bg_note:I

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p4, Lcom/samsung/android/support/senl/nt/app/R$color;->noteslist_item_text_content_color:I

    :goto_1
    invoke-virtual {p0, p4, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    const/16 p4, 0x66

    invoke-static {p0, p4}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p0

    const-class p5, Landroid/text/style/ForegroundColorSpan;

    invoke-interface {p1, p2, p3, p5}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p5

    check-cast p5, [Landroid/text/style/ForegroundColorSpan;

    array-length p6, p5

    const/16 v0, 0x200

    if-le p6, v0, :cond_3

    return-void

    :cond_3
    new-instance p6, Lcom/samsung/android/support/senl/nt/app/main/noteslist/util/NotesHolderUtil$1;

    invoke-direct {p6, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/util/NotesHolderUtil$1;-><init>(Landroid/text/Editable;)V

    invoke-static {p5, p6}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    :try_start_0
    array-length p6, p5

    const/4 v0, 0x0

    move v1, p2

    :goto_2
    const/16 v2, 0x21

    if-ge v0, p6, :cond_8

    aget-object v3, p5, v0

    invoke-interface {p1, v3}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    invoke-interface {p1, v3}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    if-ne v4, v5, :cond_4

    if-gt v4, p2, :cond_4

    goto :goto_3

    :cond_4
    if-ge v4, p2, :cond_5

    move v4, p2

    :cond_5
    if-le v5, p3, :cond_6

    move v5, p3

    :cond_6
    invoke-virtual {v3}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v6

    invoke-static {v6}, Landroid/graphics/Color;->red(I)I

    move-result v6

    invoke-virtual {v3}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v7

    invoke-static {v7}, Landroid/graphics/Color;->green(I)I

    move-result v7

    invoke-virtual {v3}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v3

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {p4, v6, v7, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v6, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {p1, v6, v4, v5, v2}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    if-ge v1, v4, :cond_7

    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v3, p0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {p1, v3, v1, v4, v2}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    :cond_7
    move v1, v5

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_8
    if-ge v1, p3, :cond_9

    new-instance p2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {p2, p0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {p1, p2, v1, p3, v2}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "applyDimAlphaMaskColor Exception "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NotesHolderUtil"

    invoke-static {p1, p0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_4
    return-void
.end method

.method private static applyInverseColorSpan(Landroid/content/Context;Landroid/text/Editable;)V
    .locals 10

    const-string v0, "NotesHolderUtil"

    const-string v1, "applyInverseColorSpan# inverse applied"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    const-class v1, Landroid/text/style/ForegroundColorSpan;

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v1}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ForegroundColorSpan;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    const-class v3, Landroid/text/style/BackgroundColorSpan;

    invoke-interface {p1, v2, v1, v3}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/BackgroundColorSpan;

    array-length v3, v0

    if-gtz v3, :cond_0

    array-length v3, v1

    if-gtz v3, :cond_0

    return-void

    :cond_0
    new-instance v3, Lcom/samsung/android/sdk/pen/setting/color/SpenColorThemeUtil;

    invoke-direct {v3, p0}, Lcom/samsung/android/sdk/pen/setting/color/SpenColorThemeUtil;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x1

    invoke-virtual {v3, p0}, Lcom/samsung/android/sdk/pen/util/color/SpenColorThemeUtil;->setColorTheme(I)V

    array-length p0, v0

    move v4, v2

    :goto_0
    const/16 v5, 0x21

    if-ge v4, p0, :cond_1

    aget-object v6, v0, v4

    invoke-interface {p1, v6}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    invoke-interface {p1, v6}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v6}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/samsung/android/sdk/pen/util/color/SpenColorThemeUtil;->getColor(I)I

    move-result v6

    new-instance v9, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v9, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {p1, v9, v7, v8, v5}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    array-length p0, v1

    :goto_1
    if-ge v2, p0, :cond_2

    aget-object v0, v1, v2

    invoke-interface {p1, v0}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    invoke-interface {p1, v0}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v0}, Landroid/text/style/BackgroundColorSpan;->getBackgroundColor()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/samsung/android/sdk/pen/util/color/SpenColorThemeUtil;->getColor(I)I

    move-result v0

    new-instance v7, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {v7, v0}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-interface {p1, v7, v4, v6, v5}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/setting/color/SpenColorThemeUtil;->close()V

    return-void
.end method

.method private static applyRTL(ZLandroid/text/Editable;I)V
    .locals 0

    if-eqz p0, :cond_0

    const-string p0, "\u200f"

    goto :goto_0

    :cond_0
    const-string p0, "\u200e"

    :goto_0
    invoke-interface {p1, p2, p0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    return-void
.end method

.method private static applyTaskEmpty(Landroid/content/Context;Landroid/text/Editable;Lcom/samsung/android/support/senl/nt/base/common/displaydata/TaskSpan;)V
    .locals 10

    invoke-interface {p1, p2}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {p1, p2}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result p2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$drawable;->note_ic_image:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const-class v2, Lcom/samsung/android/support/senl/nt/base/common/displaydata/TaskSpan;

    invoke-interface {p1, v0, p2, v2}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/samsung/android/support/senl/nt/base/common/displaydata/TaskSpan;

    array-length v4, v2

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_2

    aget-object v7, v2, v6

    invoke-virtual {v7}, Lcom/samsung/android/support/senl/nt/base/common/displaydata/TaskSpan;->getTaskStatus()I

    move-result v8

    const/4 v9, 0x2

    if-eq v8, v9, :cond_1

    invoke-virtual {v7}, Lcom/samsung/android/support/senl/nt/base/common/displaydata/TaskSpan;->getTaskStatus()I

    move-result v7

    const/4 v8, 0x6

    if-ne v7, v8, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v5, 0x1

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v5, :cond_3

    sget v4, Lcom/samsung/android/support/senl/nt/app/R$color;->noteslist_display_content_task_done_empty_color:I

    goto :goto_2

    :cond_3
    sget v4, Lcom/samsung/android/support/senl/nt/app/R$color;->noteslist_display_content_empty_color:I

    :goto_2
    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/main/common/view/CustomImageSpan;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$dimen;->noteslist_display_content_checkbox_size:I

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    invoke-direct {v2, v1, p0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/CustomImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    const/16 p0, 0x21

    invoke-interface {p1, v2, v0, p2, p0}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method private static getColorBulletPoint(Landroid/content/Context;Landroid/text/Editable;IIZIZ)I
    .locals 6

    const-class v0, Landroid/text/style/ForegroundColorSpan;

    invoke-interface {p1, p2, p3, v0}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Landroid/text/style/ForegroundColorSpan;

    array-length v0, p3

    const/4 v1, 0x0

    const/16 v2, 0x200

    if-le v0, v2, :cond_0

    return v1

    :cond_0
    array-length v0, p3

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v3, p3, v1

    invoke-interface {p1, v3}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    invoke-interface {p1, v3}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    if-gt v4, p2, :cond_2

    if-ne v4, v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-nez v2, :cond_7

    const/4 p1, 0x0

    if-nez p6, :cond_6

    if-eqz p4, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/samsung/android/support/senl/nt/app/R$color;->composer_main_background_dark:I

    invoke-virtual {p2, p3, p1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-ne p5, p2, :cond_5

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$color;->noteslist_item_text_content_color_black_bg_note:I

    goto :goto_3

    :cond_5
    sget p2, Lcom/samsung/android/support/senl/nt/app/R$color;->noteslist_item_text_content_color_has_bg_note:I

    goto :goto_3

    :cond_6
    :goto_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$color;->noteslist_item_text_content_color:I

    :goto_3
    invoke-virtual {p0, p2, p1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    :cond_7
    return v2
.end method

.method public static getDisplayContent([B)Ljava/lang/CharSequence;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/base/common/displaydata/DisplayData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p0, v1}, Lcom/samsung/android/support/senl/nt/base/common/displaydata/DisplayDataHelper;->unmarshall([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/support/senl/nt/base/common/displaydata/DisplayData;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/common/displaydata/DisplayData;->getContent()Ljava/lang/CharSequence;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x12c

    if-le v0, v1, :cond_2

    const-string v0, "NotesHolderUtil"

    const-string v2, "getDisplayContent# displayContent subSequence"

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    :cond_2
    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/util/NotesHolderUtil;->addTrimTextContent(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/common/exception/DisplayDataException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    const-string p0, ""

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/common/exception/DisplayDataException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getDisplayContentAndExtra(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;)Ljava/lang/CharSequence;
    .locals 5

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x12c

    if-le v1, v3, :cond_0

    const-string v1, "NotesHolderUtil"

    const-string v4, "getDisplayContentAndExtra# Content subSequence"

    invoke-static {v1, v4}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getIsFavorite()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/CharSequence;

    aput-object v0, p1, v2

    const-string v0, ","

    aput-object v0, p1, v1

    const/4 v0, 0x2

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->notes_icon_favorite:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v0

    invoke-static {p1}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public static getDisplaySpan(Landroid/content/Context;Ljava/lang/CharSequence;ZIZZ)Landroid/text/Spannable;
    .locals 20

    move-object/from16 v9, p0

    move-object/from16 v0, p1

    const/4 v10, 0x0

    if-nez v0, :cond_0

    return-object v10

    :cond_0
    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v11

    :cond_1
    invoke-interface {v11}, Landroid/text/Editable;->length()I

    move-result v0

    const-class v1, Lcom/samsung/android/support/senl/nt/base/common/displaydata/TaskSpan;

    const/4 v12, 0x0

    invoke-interface {v11, v12, v0, v1}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, [Lcom/samsung/android/support/senl/nt/base/common/displaydata/TaskSpan;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/util/NotesHolderUtil$2;

    invoke-direct {v0, v11}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/util/NotesHolderUtil$2;-><init>(Landroid/text/Editable;)V

    invoke-static {v13, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    if-eqz p5, :cond_2

    if-eqz p4, :cond_2

    invoke-static {v9, v11}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/util/NotesHolderUtil;->applyInverseColorSpan(Landroid/content/Context;Landroid/text/Editable;)V

    :cond_2
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/util/LocaleUtils;->isRTLMode()Z

    move-result v14

    array-length v15, v13

    move v8, v12

    :goto_0
    const/16 v7, 0x21

    if-ge v8, v15, :cond_c

    aget-object v6, v13, v8

    invoke-interface {v11, v6}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {v11, v6}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    const/16 v16, 0xff

    invoke-virtual {v6}, Lcom/samsung/android/support/senl/nt/base/common/displaydata/TaskSpan;->getTaskStatus()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    const/4 v1, 0x2

    if-eq v0, v1, :cond_9

    const/4 v1, 0x4

    if-eq v0, v1, :cond_8

    const/4 v1, 0x6

    if-eq v0, v1, :cond_7

    const/16 v1, 0x8

    if-eq v0, v1, :cond_6

    const/16 v1, 0xa

    if-eq v0, v1, :cond_5

    const/16 v1, 0x14

    if-eq v0, v1, :cond_4

    const/16 v1, 0x28

    if-eq v0, v1, :cond_3

    :goto_1
    move/from16 v17, v4

    move v12, v5

    goto/16 :goto_3

    :cond_3
    invoke-static {v14, v11, v5, v4}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/util/NotesHolderUtil;->addTextAlignSpan(ZLandroid/text/Editable;II)V

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    move-object v1, v11

    move v2, v5

    move v3, v4

    move v6, v4

    move/from16 v4, p2

    move v12, v5

    move/from16 v5, p3

    move/from16 p4, v6

    move/from16 v6, p5

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/util/NotesHolderUtil;->getColorBulletPoint(Landroid/content/Context;Landroid/text/Editable;IIZIZ)I

    move-result v0

    invoke-static {v14, v11, v12}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/util/NotesHolderUtil;->applyRTL(ZLandroid/text/Editable;I)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$drawable;->ic_text_bullet:I

    invoke-virtual {v1, v2, v10}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    move/from16 v17, p4

    move-object v2, v1

    move/from16 v19, v8

    goto/16 :goto_4

    :cond_5
    move/from16 p4, v4

    move v12, v5

    move-object/from16 v0, p0

    move-object v1, v11

    move v2, v12

    move/from16 v3, p4

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v17, v6

    move/from16 v6, p5

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/util/NotesHolderUtil;->getColorBulletPoint(Landroid/content/Context;Landroid/text/Editable;IIZIZ)I

    move-result v0

    invoke-static {v14, v11, v12}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/util/NotesHolderUtil;->applyRTL(ZLandroid/text/Editable;I)V

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/common/view/CustomNumberingSpan;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$dimen;->noteslist_display_content_numbering_gap_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/samsung/android/support/senl/nt/app/R$dimen;->noteslist_display_content_numbering_lead_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/support/senl/nt/base/common/displaydata/TaskSpan;->getNumber()I

    move-result v4

    invoke-static {v4}, Lcom/samsung/android/support/senl/nt/base/common/displaydata/ContentUtils;->convertToArabicNumber(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/CustomNumberingSpan;-><init>(IILjava/lang/String;I)V

    move/from16 v6, p4

    invoke-interface {v11, v1, v12, v6, v7}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    :cond_6
    move v12, v5

    move-object v0, v6

    move v6, v4

    invoke-static {v9, v11, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/util/NotesHolderUtil;->applyTaskEmpty(Landroid/content/Context;Landroid/text/Editable;Lcom/samsung/android/support/senl/nt/base/common/displaydata/TaskSpan;)V

    :goto_2
    move/from16 v17, v6

    goto :goto_3

    :cond_7
    move v6, v4

    move v12, v5

    move-object/from16 v0, p0

    move-object v1, v11

    move v2, v12

    move v3, v6

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v17, v6

    move/from16 v6, p5

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/util/NotesHolderUtil;->applyDimAlphaMaskColor(Landroid/content/Context;Landroid/text/Editable;IIZIZ)V

    :goto_3
    move/from16 v19, v8

    move-object v2, v10

    :goto_4
    move/from16 v0, v16

    goto/16 :goto_6

    :cond_8
    move/from16 v17, v4

    move v12, v5

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$drawable;->ic_text_bullet:I

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v2, v0

    move/from16 v19, v8

    const/4 v0, 0x0

    goto/16 :goto_6

    :cond_9
    move/from16 v17, v4

    move v12, v5

    move-object v0, v6

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$drawable;->ic_text_check_on:I

    invoke-virtual {v1, v2, v10}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/displaydata/TaskSpan;->getTaskStatus()I

    move-result v5

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object v2, v11

    move v3, v12

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v19, v8

    move/from16 v8, p5

    invoke-static/range {v0 .. v8}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/util/NotesHolderUtil;->setTintCheckBox(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/text/Editable;IIIZIZ)V

    move-object v1, v11

    move v2, v12

    move/from16 v3, v17

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p5

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/util/NotesHolderUtil;->applyDimAlphaMaskColor(Landroid/content/Context;Landroid/text/Editable;IIZIZ)V

    goto :goto_5

    :cond_a
    move/from16 v17, v4

    move v12, v5

    move-object v0, v6

    move/from16 v19, v8

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$drawable;->ic_text_check_off:I

    invoke-virtual {v1, v2, v10}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/displaydata/TaskSpan;->getTaskStatus()I

    move-result v5

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object v2, v11

    move v3, v12

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p5

    invoke-static/range {v0 .. v8}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/util/NotesHolderUtil;->setTintCheckBox(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/text/Editable;IIIZIZ)V

    :goto_5
    move/from16 v0, v16

    move-object/from16 v2, v18

    :goto_6
    if-eqz v2, :cond_b

    invoke-static {v14, v11, v12}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/util/NotesHolderUtil;->applyRTL(ZLandroid/text/Editable;I)V

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    new-instance v6, Lcom/samsung/android/support/senl/nt/app/main/common/view/CustomImageMarginSpan;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$dimen;->noteslist_display_content_task_todo_padding_right:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v3, v0

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$dimen;->noteslist_display_content_checkbox_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v4, v0

    const/4 v5, 0x1

    move-object v0, v6

    move v1, v12

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/support/senl/nt/app/main/common/view/CustomImageMarginSpan;-><init>(ILandroid/graphics/drawable/Drawable;IIZ)V

    add-int/lit8 v4, v17, 0x1

    const/16 v0, 0x21

    invoke-interface {v11, v6, v12, v4, v0}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    :cond_b
    add-int/lit8 v8, v19, 0x1

    const/4 v12, 0x0

    goto/16 :goto_0

    :cond_c
    move v0, v7

    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$dimen;->notes_grid_item_text_content_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-interface {v11}, Landroid/text/Editable;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v11, v1, v3, v2, v0}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, v11}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static removeStrikethroughSpan(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 4

    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result p0

    const-class v1, Landroid/text/style/StrikethroughSpan;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p0, v1}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/text/style/StrikethroughSpan;

    array-length v1, p0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    invoke-virtual {v0, v3}, Landroid/text/SpannableString;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static removeZeroWidthSpace(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 4

    const-string v0, "\u200b"

    const/16 v1, 0x40

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static setHighlightText(Landroid/widget/TextView;Landroid/text/SpannableString;Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 3

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$color;->search_highlight_color:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    invoke-static {p1, p2, p0, v0}, Lcom/samsung/android/support/senl/nt/base/common/util/HighlightTextUtils;->setHighlightText(Landroid/text/SpannableString;Ljava/lang/String;Landroid/text/TextPaint;I)Landroid/text/SpannableString;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method private static setTintCheckBox(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/text/Editable;IIIZIZ)V
    .locals 6

    const-class v0, Landroid/text/style/ForegroundColorSpan;

    invoke-interface {p2, p3, p4, v0}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [Landroid/text/style/ForegroundColorSpan;

    array-length v0, p4

    const/16 v1, 0x200

    if-le v0, v1, :cond_0

    return-void

    :cond_0
    array-length v0, p4

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v3, p4, v1

    invoke-interface {p2, v3}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    invoke-interface {p2, v3}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    if-gt v4, p3, :cond_2

    if-ne v4, v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-nez p6, :cond_4

    if-eqz v2, :cond_4

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto :goto_4

    :cond_4
    const/4 p2, 0x0

    if-nez p8, :cond_7

    if-eqz p6, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/samsung/android/support/senl/nt/app/R$color;->composer_main_background_dark:I

    invoke-virtual {p3, p4, p2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-ne p7, p3, :cond_6

    sget p3, Lcom/samsung/android/support/senl/nt/app/R$color;->noteslist_item_text_content_color_black_bg_note:I

    goto :goto_3

    :cond_6
    sget p3, Lcom/samsung/android/support/senl/nt/app/R$color;->noteslist_display_content_task_done_color_has_bg:I

    goto :goto_3

    :cond_7
    :goto_2
    const/4 p3, 0x2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-ne p5, p3, :cond_8

    sget p3, Lcom/samsung/android/support/senl/nt/app/R$color;->noteslist_display_content_task_done_color:I

    goto :goto_3

    :cond_8
    sget p3, Lcom/samsung/android/support/senl/nt/app/R$color;->noteslist_display_content_task_todo_color:I

    :goto_3
    invoke-virtual {p0, p3, p2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :goto_4
    return-void
.end method
