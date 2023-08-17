.class public Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout$Item;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenRadioListLayout"


# instance fields
.field private mCheckedChangeListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field private mControlColor:I

.field private mIsVisibilityCheck:Z

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout$Item;",
            ">;"
        }
    .end annotation
.end field

.field private final mRadioBtnListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field private mRadioGroup:Landroid/widget/RadioGroup;

.field private final mRippleLayoutClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;->mCheckedChangeListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;->mItems:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;->mIsVisibilityCheck:Z

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout$1;-><init>(Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;->mRadioBtnListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout$2;-><init>(Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;->mRippleLayoutClickListener:Landroid/view/View$OnClickListener;

    sget v0, Lcom/samsung/android/spen/R$color;->handwriting_primary_color:I

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;->mControlColor:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;->mCheckedChangeListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;->mItems:Ljava/util/ArrayList;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;->mIsVisibilityCheck:Z

    new-instance p2, Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout$1;-><init>(Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;)V

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;->mRadioBtnListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    new-instance p2, Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout$2;-><init>(Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;)V

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;->mRippleLayoutClickListener:Landroid/view/View$OnClickListener;

    sget p2, Lcom/samsung/android/spen/R$color;->handwriting_primary_color:I

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;->mControlColor:I

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;)Landroid/widget/RadioGroup;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;->mRadioGroup:Landroid/widget/RadioGroup;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;)Landroid/widget/RadioGroup$OnCheckedChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;->mCheckedChangeListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;->updateContentDescription(I)V

    return-void
.end method

.method public static synthetic access$300(Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;Landroid/view/View;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;->updateChecked(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method private initRadioButton(Landroid/widget/RadioButton;Landroid/content/res/ColorStateList;ILandroid/widget/RelativeLayout;)V
    .locals 3

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setImportantForAccessibility(I)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setFocusable(Z)V

    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setSoundEffectsEnabled(Z)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setSingleLine(Z)V

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {p1, p3}, Landroid/widget/RadioButton;->setText(I)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    sget-object v1, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText$FontName;->REGULAR:Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText$FontName;

    new-array v2, v0, [Landroid/widget/TextView;

    aput-object p1, v2, p2

    invoke-static {p3, v1, v2}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText;->setTypeFace(Landroid/content/Context;Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText$FontName;[Landroid/widget/TextView;)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/samsung/android/spen/R$drawable;->drawing_ripple_rect_pressed:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p3

    invoke-static {p1, p2, p3}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p4, v0}, Landroid/widget/RelativeLayout;->setFocusable(Z)V

    return-void
.end method

.method private setItem(Landroid/widget/RadioButton;Landroid/widget/RelativeLayout;I)V
    .locals 7

    new-instance v0, Landroid/content/res/ColorStateList;

    const/4 v1, 0x2

    new-array v2, v1, [[I

    const/4 v3, 0x1

    new-array v4, v3, [I

    const v5, -0x10100a0

    const/4 v6, 0x0

    aput v5, v4, v6

    aput-object v4, v2, v6

    new-array v4, v3, [I

    const v5, 0x10100a0

    aput v5, v4, v6

    aput-object v4, v2, v3

    new-array v1, v1, [I

    const v4, -0x33707071    # -7.5267192E7f

    aput v4, v1, v6

    iget v4, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;->mControlColor:I

    aput v4, v1, v3

    invoke-direct {v0, v2, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-direct {p0, p1, v0, p3, p2}, Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;->initRadioButton(Landroid/widget/RadioButton;Landroid/content/res/ColorStateList;ILandroid/widget/RelativeLayout;)V

    return-void
.end method

.method private updateChecked(Landroid/view/View;)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, -0x1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout$Item;

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout$Item;->updateChecked(Landroid/view/View;)I

    move-result v1

    if-le v1, v2, :cond_0

    move v2, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v2
.end method

.method private updateContentDescription(I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout$Item;

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout$Item;->isOwn(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout$Item;->updateContentDescription(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;->mCheckedChangeListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;->mItems:Ljava/util/ArrayList;

    return-void
.end method

.method public getCheckedId()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    return v0
.end method

.method public getRadioGroup()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;->mRadioGroup:Landroid/widget/RadioGroup;

    return-object v0
.end method

.method public initLayout(ILandroid/widget/RadioGroup$OnCheckedChangeListener;)Z
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioGroup;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;->mRadioGroup:Landroid/widget/RadioGroup;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;->mCheckedChangeListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;->mRadioBtnListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->setSoundEffectsEnabled(Z)V

    const/4 p1, 0x1

    return p1
.end method

.method public setInfo(I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout$Item;

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout$Item;->updateChecked(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;->updateContentDescription(I)V

    return-void
.end method

.method public setItem(III)Z
    .locals 2

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;->mItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout$Item;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout$Item;-><init>(Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;Landroid/widget/RadioButton;Landroid/widget/RelativeLayout;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;->setItem(Landroid/widget/RadioButton;Landroid/widget/RelativeLayout;I)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;->mRippleLayoutClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public setItem(IIILandroid/graphics/drawable/Drawable;I)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;->setItem(III)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p2

    const/4 p3, 0x0

    if-nez p2, :cond_0

    invoke-virtual {p1, p4, p3, p3, p3}, Landroid/widget/RadioButton;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p3, p3, p4, p3}, Landroid/widget/RadioButton;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_0
    invoke-virtual {p1, p5}, Landroid/widget/RadioButton;->setCompoundDrawablePadding(I)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public setVisibility(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;->mIsVisibilityCheck:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;->mRadioGroup:Landroid/widget/RadioGroup;

    if-nez p1, :cond_0

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->jumpDrawablesToCurrentState()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;->mRadioGroup:Landroid/widget/RadioGroup;

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setVisibility(I)V

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public setVisibilityCheck(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;->mIsVisibilityCheck:Z

    return-void
.end method
