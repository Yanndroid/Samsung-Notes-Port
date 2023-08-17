.class public Lcom/samsung/android/support/senl/nt/word/base/utils/ItemUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final HEIGHT_VOICE:F = 0.185f

.field public static final HEIGHT_WEB:F = 0.245f

.field public static final MARGIN_BOTTOM_VOICE:F = 0.45f

.field public static final MARGIN_LEFT_RIGHT_PLAYICON_VOICE:I = 0x6

.field public static final MARGIN_LEFT_VOICE:F = 1.875f

.field public static final MARGIN_LEFT_WEB:F = 1.25f

.field public static final MARGIN_TITLE_RIGHT_MARGIN:I = 0x14

.field public static final MARGIN_TOP_BOTTOM_PLAYICON_VOICE:I = 0x4

.field public static final PADDING_LEFT_BOTTOM_TEXT_WEB:I = 0xa

.field public static final PADDING_TOP_RIGHT_TEXT_WEB:I = 0x5

.field public static final RADIUS_ROUNDED_CORNER_WEB:I = 0x32

.field public static final SIZE_BODY:F = 1.25f

.field public static final SIZE_TIME:F = 1.25f

.field public static final SIZE_TITLE:F = 1.65f

.field public static final WIDTH_IMAGE:F = 2.25f

.field public static final WIDTH_LAYOUT:F = 3.75f


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static drawLink(Landroid/content/Context;Lcom/samsung/android/sdk/pen/document/SpenObjectLink;II)Landroid/graphics/Bitmap;
    .locals 10

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectLink;->getThumbnailPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    int-to-float v1, p3

    const v2, 0x3e7ae148    # 0.245f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    int-to-float v5, p2

    const/high16 v6, 0x3fa00000    # 1.25f

    mul-float/2addr v6, v5

    float-to-int v7, v6

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    const/16 v7, 0x10

    iput v7, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 v9, 0x3f800000    # 1.0f

    iput v9, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/util/LocaleUtils;->isRTLMode()Z

    move-result v9

    if-eqz v9, :cond_0

    iput v7, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v4, p2, v8, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    :cond_0
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const p2, 0x3fd33333    # 1.65f

    mul-float/2addr v5, p2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectLink;->getTitle()Ljava/lang/String;

    move-result-object p2

    sget v4, Lcom/samsung/android/support/senl/nt/word/R$color;->web_title:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-static {p0, v5, p2, v4}, Lcom/samsung/android/support/senl/nt/word/base/utils/ItemUtils;->getTextView(Landroid/content/Context;FLjava/lang/String;I)Landroid/widget/TextView;

    move-result-object p2

    const/4 v4, 0x0

    invoke-virtual {p2, v4, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectLink;->getBody()Ljava/lang/String;

    move-result-object p2

    sget v3, Lcom/samsung/android/support/senl/nt/word/R$color;->web_body:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-static {p0, v6, p2, v3}, Lcom/samsung/android/support/senl/nt/word/base/utils/ItemUtils;->getTextView(Landroid/content/Context;FLjava/lang/String;I)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectLink;->getOption()Ljava/lang/String;

    move-result-object p1

    sget p2, Lcom/samsung/android/support/senl/nt/word/R$color;->web_url:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-static {p0, v6, p1, p2}, Lcom/samsung/android/support/senl/nt/word/base/utils/ItemUtils;->getTextView(Landroid/content/Context;FLjava/lang/String;I)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance p1, Landroid/widget/LinearLayout;

    invoke-direct {p1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {p1, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p2, p3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget p2, Lcom/samsung/android/support/senl/nt/word/R$drawable;->background_web:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/util/LocaleUtils;->isRTLMode()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_0
    const/high16 p0, 0x40000000    # 2.0f

    invoke-static {p3, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-static {v1, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    invoke-virtual {p1, p2, p0}, Landroid/widget/LinearLayout;->measure(II)V

    invoke-virtual {p1, v8, v8, p3, v1}, Landroid/widget/LinearLayout;->layout(IIII)V

    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, v1, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    new-instance p2, Landroid/graphics/Canvas;

    invoke-direct {p2, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    const/high16 v2, 0x42480000    # 50.0f

    invoke-virtual {p3, v0, v2, v2, v1}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    invoke-virtual {p2, p3}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    return-object p0
.end method

.method public static drawVoice(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIII)Landroid/graphics/Bitmap;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p6

    int-to-float v2, v1

    const v3, 0x3e3d70a4    # 0.185f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    move/from16 v3, p3

    int-to-float v3, v3

    const/high16 v4, 0x40100000    # 2.25f

    mul-float/2addr v4, v3

    float-to-int v4, v4

    const/high16 v5, 0x40700000    # 3.75f

    mul-float/2addr v5, v3

    float-to-int v5, v5

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x10

    iput v4, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/util/LocaleUtils;->isRTLMode()Z

    move-result v7

    const/high16 v8, 0x3ff00000    # 1.875f

    const/4 v9, 0x0

    if-eqz v7, :cond_0

    mul-float v7, v3, v8

    float-to-int v7, v7

    invoke-virtual {v6, v7, v9, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    :cond_0
    new-instance v7, Landroid/widget/ImageView;

    invoke-direct {v7, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v10, Lcom/samsung/android/support/senl/nt/word/R$drawable;->memo_voice_btn_ic_play:I

    const/4 v11, 0x0

    invoke-static {v6, v10, v11}, Lcom/samsung/android/spr/drawable/Spr;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/high16 v6, -0x1000000

    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setColorFilter(I)V

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v6, 0x6

    const/4 v10, 0x4

    invoke-virtual {v7, v6, v10, v6, v10}, Landroid/widget/ImageView;->setPadding(IIII)V

    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v10, "Roboto_Regular"

    invoke-static {v6, v10}, Lcom/samsung/android/support/senl/nt/base/common/util/FontUtils;->setFont(Landroid/widget/TextView;Ljava/lang/String;)V

    const v11, 0x3fd33333    # 1.65f

    mul-float/2addr v11, v3

    float-to-int v11, v11

    int-to-float v11, v11

    invoke-virtual {v6, v9, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    move/from16 v11, p4

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setTextColor(I)V

    sget-object v11, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 v11, 0x1

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setMaxLines(I)V

    move-object/from16 v12, p1

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v13, -0x2

    invoke-direct {v12, v13, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/util/LocaleUtils;->isRTLMode()Z

    move-result v14

    const/16 v15, 0x14

    const/4 v4, 0x5

    if-eqz v14, :cond_1

    iput v4, v12, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v6, v9, v9, v15, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_1
    const v14, 0x3ee66666    # 0.45f

    mul-float/2addr v14, v3

    float-to-int v14, v14

    invoke-virtual {v12, v9, v9, v9, v14}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v12, Landroid/widget/TextView;

    invoke-direct {v12, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {v12, v10}, Lcom/samsung/android/support/senl/nt/base/common/util/FontUtils;->setFont(Landroid/widget/TextView;Ljava/lang/String;)V

    const/high16 v10, 0x3fa00000    # 1.25f

    mul-float/2addr v10, v3

    float-to-int v10, v10

    int-to-float v10, v10

    invoke-virtual {v12, v9, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    move/from16 v10, p5

    invoke-virtual {v12, v10}, Landroid/widget/TextView;->setTextColor(I)V

    move-object/from16 v10, p2

    invoke-virtual {v12, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/util/LocaleUtils;->isRTLMode()Z

    move-result v10

    if-eqz v10, :cond_2

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v10, v13, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v4, v10, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v12, v10}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v12, v9, v9, v15, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_2
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    sub-int v5, v1, v5

    mul-float/2addr v3, v8

    float-to-int v3, v3

    sub-int/2addr v5, v3

    invoke-direct {v10, v5, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/util/LocaleUtils;->isRTLMode()Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v5, 0x15

    iput v5, v10, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v10, v9, v9, v3, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    const/16 v5, 0x10

    goto :goto_0

    :cond_3
    const/16 v5, 0x10

    iput v5, v10, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v10, v3, v9, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    :goto_0
    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v4, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget v5, Lcom/samsung/android/support/senl/nt/word/R$drawable;->background_voice:I

    invoke-virtual {v0, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    sget v5, Lcom/samsung/android/support/senl/nt/word/R$color;->voice_floating_bg:I

    invoke-virtual {v0, v5}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/util/LocaleUtils;->isRTLMode()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_1
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v3, v4, v0}, Landroid/widget/LinearLayout;->measure(II)V

    invoke-virtual {v3, v9, v9, v1, v2}, Landroid/widget/LinearLayout;->layout(IIII)V

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method public static drawWeb(Landroid/content/Context;Lcom/samsung/android/sdk/pen/document/SpenObjectWeb;II)Landroid/graphics/Bitmap;
    .locals 10

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectWeb;->getThumbnailPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    int-to-float v1, p3

    const v2, 0x3e7ae148    # 0.245f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    int-to-float v5, p2

    const/high16 v6, 0x3fa00000    # 1.25f

    mul-float/2addr v6, v5

    float-to-int v7, v6

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    const/16 v7, 0x10

    iput v7, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 v9, 0x3f800000    # 1.0f

    iput v9, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/util/LocaleUtils;->isRTLMode()Z

    move-result v9

    if-eqz v9, :cond_0

    iput v7, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v4, p2, v8, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    :cond_0
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const p2, 0x3fd33333    # 1.65f

    mul-float/2addr v5, p2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectWeb;->getTitle()Ljava/lang/String;

    move-result-object p2

    sget v4, Lcom/samsung/android/support/senl/nt/word/R$color;->web_title:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-static {p0, v5, p2, v4}, Lcom/samsung/android/support/senl/nt/word/base/utils/ItemUtils;->getTextView(Landroid/content/Context;FLjava/lang/String;I)Landroid/widget/TextView;

    move-result-object p2

    const/4 v4, 0x0

    invoke-virtual {p2, v4, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectWeb;->getBody()Ljava/lang/String;

    move-result-object p2

    sget v3, Lcom/samsung/android/support/senl/nt/word/R$color;->web_body:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-static {p0, v6, p2, v3}, Lcom/samsung/android/support/senl/nt/word/base/utils/ItemUtils;->getTextView(Landroid/content/Context;FLjava/lang/String;I)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectWeb;->getUri()Ljava/lang/String;

    move-result-object p1

    sget p2, Lcom/samsung/android/support/senl/nt/word/R$color;->web_url:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-static {p0, v6, p1, p2}, Lcom/samsung/android/support/senl/nt/word/base/utils/ItemUtils;->getTextView(Landroid/content/Context;FLjava/lang/String;I)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance p1, Landroid/widget/LinearLayout;

    invoke-direct {p1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {p1, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p2, p3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget p2, Lcom/samsung/android/support/senl/nt/word/R$drawable;->background_web:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/util/LocaleUtils;->isRTLMode()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_0
    const/high16 p0, 0x40000000    # 2.0f

    invoke-static {p3, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-static {v1, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    invoke-virtual {p1, p2, p0}, Landroid/widget/LinearLayout;->measure(II)V

    invoke-virtual {p1, v8, v8, p3, v1}, Landroid/widget/LinearLayout;->layout(IIII)V

    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, v1, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    new-instance p2, Landroid/graphics/Canvas;

    invoke-direct {p2, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    const/high16 v2, 0x42200000    # 40.0f

    invoke-virtual {p3, v0, v2, v2, v1}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    invoke-virtual {p2, p3}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    return-object p0
.end method

.method public static getTextView(Landroid/content/Context;FLjava/lang/String;I)Landroid/widget/TextView;
    .locals 2

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string p0, "Roboto_Regular"

    invoke-static {v0, p0}, Lcom/samsung/android/support/senl/nt/base/common/util/FontUtils;->setFont(Landroid/widget/TextView;Ljava/lang/String;)V

    const/16 p0, 0xa

    const/4 v1, 0x5

    invoke-virtual {v0, p0, v1, v1, p0}, Landroid/widget/TextView;->setPadding(IIII)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object p0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setMaxLines(I)V

    return-object v0
.end method

.method public static processBitmap(Landroid/graphics/Bitmap;FLandroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v0

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p2, v1

    invoke-static {p0, v0, v1, v2, p2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    :goto_0
    const/4 p2, 0x0

    cmpl-float p2, p1, p2

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    mul-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    add-int/2addr p2, v0

    int-to-double v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int p2, v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    invoke-static {p2, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    invoke-virtual {v1, p1, v2, v4}, Landroid/graphics/Matrix;->setRotate(FFF)V

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr p1, v2

    int-to-float p1, p1

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v1, p1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setDither(Z)V

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    invoke-virtual {v0, p0, v1, p1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    move-object p0, p2

    :goto_1
    return-object p0
.end method
