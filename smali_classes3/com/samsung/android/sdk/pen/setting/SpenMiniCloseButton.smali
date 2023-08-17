.class Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton;
.super Landroid/widget/ImageView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton$Type;
    }
.end annotation


# static fields
.field public static final EXT_DIR_LEFT_RIGHT:I = 0x0

.field public static final EXT_DIR_UP_DOWN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SpenMiniCloseButton"


# instance fields
.field private mButtonType:Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton$Type;

.field private mExtendedDirection:I

.field private final mIsRTL:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton;->mIsRTL:Z

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton;->mExtendedDirection:I

    sget-object p1, Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton$Type;->CLOSE:Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton$Type;

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton;->setButtonType(Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton$Type;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton;->mIsRTL:Z

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton;->setAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object p1, Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton$Type;->CLOSE:Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton$Type;

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton;->setButtonType(Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton$Type;Z)V

    return-void
.end method

.method private getAnimateDrawableId(Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton$Type;)I
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton$Type;->BACK:Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton$Type;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton;->isUpDownDirection()Z

    move-result p1

    if-eqz p1, :cond_0

    sget p1, Lcom/samsung/android/spen/R$drawable;->animated_close_to_back:I

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton;->mIsRTL:Z

    if-eqz p1, :cond_1

    sget p1, Lcom/samsung/android/spen/R$drawable;->animated_close_to_right:I

    goto :goto_0

    :cond_1
    sget p1, Lcom/samsung/android/spen/R$drawable;->animated_close_to_left:I

    :goto_0
    return p1

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton;->isUpDownDirection()Z

    move-result p1

    if-eqz p1, :cond_3

    sget p1, Lcom/samsung/android/spen/R$drawable;->animated_back_to_close:I

    goto :goto_1

    :cond_3
    iget-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton;->mIsRTL:Z

    if-eqz p1, :cond_4

    sget p1, Lcom/samsung/android/spen/R$drawable;->animated_right_to_close:I

    goto :goto_1

    :cond_4
    sget p1, Lcom/samsung/android/spen/R$drawable;->animated_left_to_close:I

    :goto_1
    return p1
.end method

.method private getDrawableId(Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton$Type;)I
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton$Type;->BACK:Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton$Type;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton;->isUpDownDirection()Z

    move-result p1

    if-eqz p1, :cond_0

    sget p1, Lcom/samsung/android/spen/R$drawable;->setting_mini_top:I

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton;->mIsRTL:Z

    if-eqz p1, :cond_1

    sget p1, Lcom/samsung/android/spen/R$drawable;->setting_mini_right:I

    goto :goto_0

    :cond_1
    sget p1, Lcom/samsung/android/spen/R$drawable;->setting_mini_left:I

    :goto_0
    return p1

    :cond_2
    sget p1, Lcom/samsung/android/spen/R$drawable;->setting_mini_close:I

    return p1
.end method

.method private getHoverText(Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton$Type;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton$1;->$SwitchMap$com$samsung$android$sdk$pen$setting$SpenMiniCloseButton$Type:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    sget p1, Lcom/samsung/android/spen/R$string;->pen_string_collapse:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    sget p1, Lcom/samsung/android/spen/R$string;->pen_string_close_any:I

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget v3, Lcom/samsung/android/spen/R$string;->pen_string_close_pen_settings:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private isUpDownDirection()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton;->mExtendedDirection:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private setAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x1

    if-nez p2, :cond_0

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton;->mExtendedDirection:I

    return-void

    :cond_0
    sget-object v1, Lcom/samsung/android/spen/R$styleable;->SpenMiniCloseButton:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/samsung/android/spen/R$styleable;->SpenMiniCloseButton_extendedDirection:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton;->mExtendedDirection:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private setButton(Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton$Type;Z)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton;->getAnimateDrawableId(Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton$Type;)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton;->getDrawableId(Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton$Type;)I

    move-result p1

    :goto_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-nez p2, :cond_1

    return-void

    :cond_1
    check-cast p1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    return-void
.end method

.method private setType(Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton$Type;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton;->mButtonType:Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton$Type;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton;->getHoverText(Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton$Type;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilHover;->setHoverText(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getButtonType()Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton$Type;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton;->mButtonType:Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton$Type;

    return-object v0
.end method

.method public setButtonType(Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton$Type;Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setButtonType() from:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton;->mButtonType:Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton$Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " animation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenMiniCloseButton"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton;->mButtonType:Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton$Type;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton;->setButton(Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton$Type;Z)V

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton;->setType(Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton$Type;)V

    return-void
.end method
