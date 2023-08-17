.class public Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthMiniLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthLayoutInterface;


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenPenWidthMiniView"


# instance fields
.field private mDataChangedListener:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthLayoutInterface$OnDataChangedListener;

.field private mIcon:Landroid/widget/ImageView;

.field private mIsFixedWidth:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthMiniLayout;->mIsFixedWidth:Z

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthMiniLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthMiniLayout;->mIsFixedWidth:Z

    return p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthMiniLayout;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthMiniLayout;->setFixedWidth(ZZ)V

    return-void
.end method

.method public static synthetic access$200(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthMiniLayout;)Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthLayoutInterface$OnDataChangedListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthMiniLayout;->mDataChangedListener:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthLayoutInterface$OnDataChangedListener;

    return-object p0
.end method

.method private initView(Landroid/content/Context;I)V
    .locals 1

    if-eqz p2, :cond_0

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    :cond_0
    sget p1, Lcom/samsung/android/spen/R$id;->width_view:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthMiniLayout;->mIcon:Landroid/widget/ImageView;

    iget-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthMiniLayout;->mIsFixedWidth:Z

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthMiniLayout;->setFixedWidth(ZZ)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthMiniLayout;->mIcon:Landroid/widget/ImageView;

    new-instance p2, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthMiniLayout$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthMiniLayout$1;-><init>(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthMiniLayout;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setFixedWidth(ZZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPenWidth() isFixedWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " needAnimation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "SpenPenWidthMiniView"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthMiniLayout;->mIsFixedWidth:Z

    if-eqz p1, :cond_0

    sget p1, Lcom/samsung/android/spen/R$drawable;->pressure_off:I

    sget p2, Lcom/samsung/android/spen/R$string;->pen_string_fixed_thickness:I

    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthMiniLayout;->setIconInfo(II)V

    return-void

    :cond_0
    sget p1, Lcom/samsung/android/spen/R$drawable;->pressure_on:I

    sget p2, Lcom/samsung/android/spen/R$string;->pen_string_variable_thickness:I

    goto :goto_0
.end method

.method private setIconInfo(II)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthMiniLayout;->mIcon:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthMiniLayout;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthMiniLayout;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthMiniLayout;->mIcon:Landroid/widget/ImageView;

    invoke-static {p2, p1}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilHover;->setHoverText(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthMiniLayout;->mIcon:Landroid/widget/ImageView;

    return-void
.end method

.method public onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    sget v1, Lcom/samsung/android/spen/R$layout;->setting_pen_width_mini_layout:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthMiniLayout;->initView(Landroid/content/Context;I)V

    return-void
.end method

.method public setDataChangedListener(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthLayoutInterface$OnDataChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthMiniLayout;->mDataChangedListener:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthLayoutInterface$OnDataChangedListener;

    return-void
.end method

.method public setPenInfo(Ljava/lang/String;II)V
    .locals 0

    return-void
.end method

.method public setPenWidth(ZZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPenWidth() isFixedWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " needAnimation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenPenWidthMiniView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthMiniLayout;->mIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthMiniLayout;->mIsFixedWidth:Z

    if-eq v0, p1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthMiniLayout;->setFixedWidth(ZZ)V

    :cond_0
    return-void
.end method
