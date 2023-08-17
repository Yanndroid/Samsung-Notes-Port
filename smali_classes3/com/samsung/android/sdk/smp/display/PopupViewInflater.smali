.class public Lcom/samsung/android/sdk/smp/display/PopupViewInflater;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/smp/display/PopupViewInflater$BackgroundBlurHandler;,
        Lcom/samsung/android/sdk/smp/display/PopupViewInflater$OnResultHandler;,
        Lcom/samsung/android/sdk/smp/display/PopupViewInflater$OnClickButtonListener;
    }
.end annotation


# static fields
.field private static final CENTER_ALIGN:I = 0x2

.field private static final LEFT_ALIGN:I = 0x3

.field private static final RIGHT_ALIGN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PopupViewInflater"

.field private static final VERTICAL_ALIGN:I = 0x4


# instance fields
.field private final mBackgroundHandler:Lcom/samsung/android/sdk/smp/display/PopupViewInflater$BackgroundBlurHandler;

.field private final mButtonListener:Lcom/samsung/android/sdk/smp/display/PopupViewInflater$OnClickButtonListener;

.field private final mMid:Ljava/lang/String;

.field private mPopupLayout:Landroid/widget/FrameLayout;

.field private mPopupMarginBottom:Landroid/view/View;

.field private mPopupMarginTop:Landroid/view/View;

.field private final mResultHandler:Lcom/samsung/android/sdk/smp/display/PopupViewInflater$OnResultHandler;

.field private final mType:I

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Landroid/view/WindowManager;Lcom/samsung/android/sdk/smp/display/PopupViewInflater$OnClickButtonListener;Lcom/samsung/android/sdk/smp/display/PopupViewInflater$OnResultHandler;Lcom/samsung/android/sdk/smp/display/PopupViewInflater$BackgroundBlurHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/sdk/smp/display/PopupViewInflater;->mType:I

    iput-object p2, p0, Lcom/samsung/android/sdk/smp/display/PopupViewInflater;->mMid:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/sdk/smp/display/PopupViewInflater;->mWindowManager:Landroid/view/WindowManager;

    iput-object p4, p0, Lcom/samsung/android/sdk/smp/display/PopupViewInflater;->mButtonListener:Lcom/samsung/android/sdk/smp/display/PopupViewInflater$OnClickButtonListener;

    iput-object p5, p0, Lcom/samsung/android/sdk/smp/display/PopupViewInflater;->mResultHandler:Lcom/samsung/android/sdk/smp/display/PopupViewInflater$OnResultHandler;

    iput-object p6, p0, Lcom/samsung/android/sdk/smp/display/PopupViewInflater;->mBackgroundHandler:Lcom/samsung/android/sdk/smp/display/PopupViewInflater$BackgroundBlurHandler;

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/smp/display/PopupViewInflater;)Lcom/samsung/android/sdk/smp/display/PopupViewInflater$OnClickButtonListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/smp/display/PopupViewInflater;->mButtonListener:Lcom/samsung/android/sdk/smp/display/PopupViewInflater$OnClickButtonListener;

    return-object p0
.end method

.method public static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/smp/display/PopupViewInflater;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$200(Lcom/samsung/android/sdk/smp/display/PopupViewInflater;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/smp/display/PopupViewInflater;->mMid:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/samsung/android/sdk/smp/display/PopupViewInflater;)Lcom/samsung/android/sdk/smp/display/PopupViewInflater$OnResultHandler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/smp/display/PopupViewInflater;->mResultHandler:Lcom/samsung/android/sdk/smp/display/PopupViewInflater$OnResultHandler;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/samsung/android/sdk/smp/display/PopupViewInflater;)Lcom/samsung/android/sdk/smp/display/PopupViewInflater$BackgroundBlurHandler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/smp/display/PopupViewInflater;->mBackgroundHandler:Lcom/samsung/android/sdk/smp/display/PopupViewInflater$BackgroundBlurHandler;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/samsung/android/sdk/smp/display/PopupViewInflater;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/smp/display/PopupViewInflater;->mPopupLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method private getPopupHorizontalMarginByType(I)I
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    const/4 v0, 0x2

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, p1, :cond_1

    return v1

    :cond_1
    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/display/PopupViewInflater;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 p1, p1, 0xf

    div-int/lit8 p1, p1, 0x64

    return p1

    :cond_2
    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    goto :goto_0
.end method

.method private initBottomLayout(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 12

    const-string v1, "bottom_visible"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "btn1_text"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "btn1_link"

    invoke-static {p2, v1}, Lcom/samsung/android/sdk/smp/display/DisplayManager;->getLinkList(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    const-string v1, "btn2_text"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v1, "btn2_link"

    invoke-static {p2, v1}, Lcom/samsung/android/sdk/smp/display/DisplayManager;->getLinkList(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    const/4 v1, 0x1

    const-string v2, "btn_align"

    invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    :cond_0
    sget v1, Lcom/samsung/android/sdk/smp/R$id;->ppmt_pop_bottom1:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const/4 v2, 0x4

    if-ne v10, v2, :cond_1

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    sget v2, Lcom/samsung/android/sdk/smp/R$id;->ppmt_pop_bottom2:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p2

    move v7, v10

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/sdk/smp/display/PopupViewInflater;->initBottomLayout(Landroid/widget/LinearLayout;Landroid/os/Bundle;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;I)V

    move-object v1, v11

    move-object v3, v8

    move-object v4, v9

    goto :goto_1

    :cond_1
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    move v7, v0

    goto :goto_0

    :cond_2
    move v7, v10

    :goto_0
    move-object v0, p0

    move-object v2, p2

    move-object v5, v8

    move-object v6, v9

    :goto_1
    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/sdk/smp/display/PopupViewInflater;->initBottomLayout(Landroid/widget/LinearLayout;Landroid/os/Bundle;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;I)V

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/samsung/android/sdk/smp/display/PopupViewInflater;->TAG:Ljava/lang/String;

    const-string v1, "fail to display. invalid links"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidArgumentException;

    invoke-direct {v0}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidArgumentException;-><init>()V

    throw v0

    :cond_4
    :goto_2
    return-void
.end method

.method private initBottomLayout(Landroid/widget/LinearLayout;Landroid/os/Bundle;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/LinearLayout;",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "color_bottom"

    const v1, -0xa0a0b

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "color_line"

    const v2, -0x19191a

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "color_btn_text"

    const/high16 v3, -0x22000000

    invoke-virtual {p2, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    sget v0, Lcom/samsung/android/sdk/smp/R$id;->ppmt_pop_line:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-static {}, Lcom/samsung/android/sdk/smp/common/util/DeviceInfoUtil;->isArabicStyleLanguage()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/samsung/android/sdk/smp/R$id;->ppmt_pop_button2_text:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v4, Lcom/samsung/android/sdk/smp/R$id;->ppmt_pop_button2:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/samsung/android/sdk/smp/R$id;->ppmt_pop_button1_text:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v4, Lcom/samsung/android/sdk/smp/R$id;->ppmt_pop_button1:I

    :goto_0
    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    new-instance p3, Lcom/samsung/android/sdk/smp/display/PopupViewInflater$3;

    invoke-direct {p3, p0, p4}, Lcom/samsung/android/sdk/smp/display/PopupViewInflater$3;-><init>(Lcom/samsung/android/sdk/smp/display/PopupViewInflater;Ljava/util/ArrayList;)V

    invoke-virtual {v4, p3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/high16 p3, 0x3f800000    # 1.0f

    const/4 p4, 0x2

    const/4 v0, -0x1

    if-eq p7, p4, :cond_1

    const/4 v5, 0x4

    if-ne p7, v5, :cond_2

    :cond_1
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v0, v0, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-nez p5, :cond_7

    invoke-static {}, Lcom/samsung/android/sdk/smp/common/util/DeviceInfoUtil;->isArabicStyleLanguage()Z

    move-result p5

    if-eqz p5, :cond_3

    sget p5, Lcom/samsung/android/sdk/smp/R$id;->ppmt_pop_button1_text:I

    invoke-virtual {p1, p5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/TextView;

    sget v4, Lcom/samsung/android/sdk/smp/R$id;->ppmt_pop_button1:I

    goto :goto_1

    :cond_3
    sget p5, Lcom/samsung/android/sdk/smp/R$id;->ppmt_pop_button2_text:I

    invoke-virtual {p1, p5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/TextView;

    sget v4, Lcom/samsung/android/sdk/smp/R$id;->ppmt_pop_button2:I

    :goto_1
    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    const-string v5, "btn2_text"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p5, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p5, v2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    new-instance p2, Lcom/samsung/android/sdk/smp/display/PopupViewInflater$4;

    invoke-direct {p2, p0, p6}, Lcom/samsung/android/sdk/smp/display/PopupViewInflater$4;-><init>(Lcom/samsung/android/sdk/smp/display/PopupViewInflater;Ljava/util/ArrayList;)V

    invoke-virtual {v4, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p2, Lcom/samsung/android/sdk/smp/R$id;->ppmt_pop_button_layout:I

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    const/4 p5, 0x1

    if-eq p7, p5, :cond_5

    if-eq p7, p4, :cond_4

    const/4 p3, 0x3

    if-eq p7, p3, :cond_6

    goto :goto_2

    :cond_4
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p2, v0, v0, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, p2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget p2, Lcom/samsung/android/sdk/smp/R$id;->ppmt_pop_line_for_centeralign:I

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_2

    :cond_5
    const/4 p3, 0x5

    :cond_6
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setGravity(I)V

    sget p2, Lcom/samsung/android/sdk/smp/R$id;->ppmt_pop_button_margin1:I

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    sget p2, Lcom/samsung/android/sdk/smp/R$id;->ppmt_pop_button_margin2:I

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    sget p2, Lcom/samsung/android/sdk/smp/R$id;->ppmt_pop_button_margin3:I

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    :goto_2
    return-void
.end method

.method private initializeBodyText(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "body_text"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const/high16 v1, -0x22000000

    const-string v2, "color_body"

    invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    invoke-static {}, Lcom/samsung/android/sdk/smp/common/util/DeviceInfoUtil;->isArabicStyleLanguage()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/samsung/android/sdk/smp/R$id;->ppmt_pop_body_message_for_rtl:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/samsung/android/sdk/smp/R$id;->ppmt_pop_body_message:I

    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    :cond_1
    sget-object p1, Lcom/samsung/android/sdk/smp/display/PopupViewInflater;->TAG:Ljava/lang/String;

    iget-object p2, p0, Lcom/samsung/android/sdk/smp/display/PopupViewInflater;->mMid:Ljava/lang/String;

    const-string v0, "fail to display. body text not found"

    invoke-static {p1, p2, v0}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidArgumentException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidArgumentException;-><init>()V

    throw p1
.end method

.method private initializeMainImage(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "img_main"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/samsung/android/sdk/smp/display/DisplayManager;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    sget v0, Lcom/samsung/android/sdk/smp/R$id;->ppmt_pop_main_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    :cond_0
    sget-object p1, Lcom/samsung/android/sdk/smp/display/PopupViewInflater;->TAG:Ljava/lang/String;

    iget-object p2, p0, Lcom/samsung/android/sdk/smp/display/PopupViewInflater;->mMid:Ljava/lang/String;

    const-string v0, "fail to display. main image not found"

    invoke-static {p1, p2, v0}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidArgumentException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidArgumentException;-><init>()V

    throw p1
.end method

.method private initializeWebView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/display/PopupViewInflater;->mBackgroundHandler:Lcom/samsung/android/sdk/smp/display/PopupViewInflater$BackgroundBlurHandler;

    invoke-interface {v0}, Lcom/samsung/android/sdk/smp/display/PopupViewInflater$BackgroundBlurHandler;->bgOff()V

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/display/PopupViewInflater;->mPopupLayout:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const-string/jumbo v0, "web"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget v1, Lcom/samsung/android/sdk/smp/R$id;->ppmt_pop_webview:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    new-instance v1, Lcom/samsung/android/sdk/smp/display/PopupViewInflater$2;

    invoke-direct {v1, p0, p2}, Lcom/samsung/android/sdk/smp/display/PopupViewInflater$2;-><init>(Lcom/samsung/android/sdk/smp/display/PopupViewInflater;Landroid/os/Bundle;)V

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    return-void

    :cond_0
    sget-object p1, Lcom/samsung/android/sdk/smp/display/PopupViewInflater;->TAG:Ljava/lang/String;

    iget-object p2, p0, Lcom/samsung/android/sdk/smp/display/PopupViewInflater;->mMid:Ljava/lang/String;

    const-string v0, "fail to display. url not found"

    invoke-static {p1, p2, v0}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidArgumentException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidArgumentException;-><init>()V

    throw p1
.end method


# virtual methods
.method public inflateView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    sget v0, Lcom/samsung/android/sdk/smp/R$id;->ppmt_pop_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/samsung/android/sdk/smp/display/PopupViewInflater;->mPopupLayout:Landroid/widget/FrameLayout;

    const-string v1, "color_bg"

    const v2, -0x50506

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    iget v0, p0, Lcom/samsung/android/sdk/smp/display/PopupViewInflater;->mType:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/smp/display/PopupViewInflater;->getPopupHorizontalMarginByType(I)I

    move-result v0

    sget v1, Lcom/samsung/android/sdk/smp/R$id;->ppmt_pop_layout_margin_top:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sdk/smp/display/PopupViewInflater;->mPopupMarginTop:Landroid/view/View;

    sget v1, Lcom/samsung/android/sdk/smp/R$id;->ppmt_pop_layout_margin_bottom:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sdk/smp/display/PopupViewInflater;->mPopupMarginBottom:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/sdk/smp/display/PopupViewInflater;->mPopupMarginTop:Landroid/view/View;

    new-instance v2, Landroid/widget/TableRow$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v0}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/smp/display/PopupViewInflater;->mPopupMarginBottom:Landroid/view/View;

    new-instance v2, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v2, v3, v0}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget v0, Lcom/samsung/android/sdk/smp/R$id;->ppmt_pop_close_btn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    const-string v1, "close_visible"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/smp/common/util/DeviceInfoUtil;->isArabicStyleLanguage()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x33

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    new-instance v1, Lcom/samsung/android/sdk/smp/display/PopupViewInflater$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/smp/display/PopupViewInflater$1;-><init>(Lcom/samsung/android/sdk/smp/display/PopupViewInflater;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/smp/display/PopupViewInflater;->initBottomLayout(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 v0, 0x4

    iget v1, p0, Lcom/samsung/android/sdk/smp/display/PopupViewInflater;->mType:I

    if-ne v0, v1, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/smp/display/PopupViewInflater;->initializeWebView(Landroid/view/View;Landroid/os/Bundle;)V

    goto :goto_2

    :cond_2
    const/4 v0, 0x1

    if-eq v1, v0, :cond_5

    const/4 v0, 0x2

    if-eq v1, v0, :cond_4

    const/4 v0, 0x3

    if-eq v1, v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/smp/display/PopupViewInflater;->initializeBodyText(Landroid/view/View;Landroid/os/Bundle;)V

    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/smp/display/PopupViewInflater;->initializeMainImage(Landroid/view/View;Landroid/os/Bundle;)V

    goto :goto_1

    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/smp/display/PopupViewInflater;->initializeBodyText(Landroid/view/View;Landroid/os/Bundle;)V

    :goto_1
    iget-object p1, p0, Lcom/samsung/android/sdk/smp/display/PopupViewInflater;->mBackgroundHandler:Lcom/samsung/android/sdk/smp/display/PopupViewInflater$BackgroundBlurHandler;

    invoke-interface {p1}, Lcom/samsung/android/sdk/smp/display/PopupViewInflater$BackgroundBlurHandler;->bgOn()V

    iget-object p1, p0, Lcom/samsung/android/sdk/smp/display/PopupViewInflater;->mResultHandler:Lcom/samsung/android/sdk/smp/display/PopupViewInflater$OnResultHandler;

    invoke-interface {p1, p2}, Lcom/samsung/android/sdk/smp/display/PopupViewInflater$OnResultHandler;->displaySuccess(Landroid/os/Bundle;)V

    :goto_2
    return-void
.end method

.method public onConfigurationChnaged()V
    .locals 4

    iget v0, p0, Lcom/samsung/android/sdk/smp/display/PopupViewInflater;->mType:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/smp/display/PopupViewInflater;->getPopupHorizontalMarginByType(I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/sdk/smp/display/PopupViewInflater;->mPopupMarginTop:Landroid/view/View;

    new-instance v2, Landroid/widget/TableRow$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v0}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/smp/display/PopupViewInflater;->mPopupMarginBottom:Landroid/view/View;

    new-instance v2, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v2, v3, v0}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
