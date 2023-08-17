.class public Lcom/samsung/android/app/notes/widget/theme/ThemeManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static mInstance:Lcom/samsung/android/app/notes/widget/theme/ThemeManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private applyFontColor(Landroid/content/Context;Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;Lcom/samsung/android/app/notes/widget/theme/ThemeInfo;)V
    .locals 6

    sget v0, Lcom/samsung/android/support/senl/nt/homewidget/R$color;->widget_white_theme_text_color:I

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/common/util/ResourceUtils;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getTextSpan()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    check-cast v3, Lcom/samsung/android/sdk/pen/document/textspan/SpenForegroundColorSpan;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/document/textspan/SpenForegroundColorSpan;->getColor()I

    move-result v4

    if-ne v4, v0, :cond_0

    invoke-virtual {p3}, Lcom/samsung/android/app/notes/widget/theme/ThemeInfo;->getTextColor()I

    move-result v4

    invoke-static {p1, v4}, Lcom/samsung/android/support/senl/cm/base/common/util/ResourceUtils;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/pen/document/textspan/SpenForegroundColorSpan;->setColor(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->setTextSpan(Ljava/util/ArrayList;)V

    :cond_2
    return-void
.end method

.method public static getInstance()Lcom/samsung/android/app/notes/widget/theme/ThemeManager;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/notes/widget/theme/ThemeManager;->mInstance:Lcom/samsung/android/app/notes/widget/theme/ThemeManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/app/notes/widget/theme/ThemeManager;

    invoke-direct {v0}, Lcom/samsung/android/app/notes/widget/theme/ThemeManager;-><init>()V

    sput-object v0, Lcom/samsung/android/app/notes/widget/theme/ThemeManager;->mInstance:Lcom/samsung/android/app/notes/widget/theme/ThemeManager;

    :cond_0
    sget-object v0, Lcom/samsung/android/app/notes/widget/theme/ThemeManager;->mInstance:Lcom/samsung/android/app/notes/widget/theme/ThemeManager;

    return-object v0
.end method


# virtual methods
.method public applyThemeToBodyText(Landroid/content/Context;Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;Lcom/samsung/android/app/notes/widget/theme/ThemeInfo;)Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/notes/widget/theme/ThemeManager;->applyFontColor(Landroid/content/Context;Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;Lcom/samsung/android/app/notes/widget/theme/ThemeInfo;)V

    return-object p2
.end method

.method public applyThemeToPage(Landroid/content/Context;Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lcom/samsung/android/app/notes/widget/theme/ThemeInfo;)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->setBackgroundColor(I)V

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getObjectList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast v1, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    invoke-direct {p0, p1, v1, p3}, Lcom/samsung/android/app/notes/widget/theme/ThemeManager;->applyFontColor(Landroid/content/Context;Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;Lcom/samsung/android/app/notes/widget/theme/ThemeInfo;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p3}, Lcom/samsung/android/app/notes/widget/theme/ThemeInfo;->getStrokeColor()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    check-cast v1, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;

    invoke-static {p1, v2}, Lcom/samsung/android/support/senl/cm/base/common/util/ResourceUtils;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->setColor(I)V

    goto :goto_0

    :cond_3
    return-object p2
.end method
