.class public Lcom/samsung/android/support/senl/nt/app/settings/common/component/ImageViewPreference;
.super Landroidx/preference/Preference;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageViewPreference"


# instance fields
.field private mColorFilterResId:I
    .annotation build Landroidx/annotation/ColorRes;
    .end annotation
.end field

.field private mContentDescriptionResId:I
    .annotation build Landroidx/annotation/StringRes;
    .end annotation
.end field

.field private mHeight:I

.field private mImageResId:I
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation
.end field

.field private mImageView:Landroid/widget/ImageView;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/ImageViewPreference;->mColorFilterResId:I

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/ImageViewPreference;->mHeight:I

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/ImageViewPreference;->mWidth:I

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/common/component/ImageViewPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/ImageViewPreference;->mColorFilterResId:I

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/ImageViewPreference;->mHeight:I

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/ImageViewPreference;->mWidth:I

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/common/component/ImageViewPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/ImageViewPreference;->mColorFilterResId:I

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/ImageViewPreference;->mHeight:I

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/ImageViewPreference;->mWidth:I

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/common/component/ImageViewPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/ImageViewPreference;->mColorFilterResId:I

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/ImageViewPreference;->mHeight:I

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/ImageViewPreference;->mWidth:I

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/common/component/ImageViewPreference;->init()V

    return-void
.end method

.method private applyColorFilter()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceType"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/ImageViewPreference;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/ImageViewPreference;->mColorFilterResId:I

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->OVERLAY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private applyContentDescription()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceType"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/ImageViewPreference;->mImageView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/ImageViewPreference;->mContentDescriptionResId:I

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/ImageViewPreference;->mContentDescriptionResId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$string;->base_string_image:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/ImageViewPreference;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private applyImageResource()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceType"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/ImageViewPreference;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/ImageViewPreference;->mImageResId:I

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private applySize()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/ImageViewPreference;->mImageView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/ImageViewPreference;->mWidth:I

    if-nez v1, :cond_1

    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    :cond_1
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/ImageViewPreference;->mHeight:I

    if-nez v1, :cond_2

    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    :cond_2
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/ImageViewPreference;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private init()V
    .locals 1

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$layout;->settings_imageview_preference_layout:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    const-string v0, "ImageViewPreference"

    const-string v1, "onBindViewHolder"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->settings_imageview:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/ImageViewPreference;->mImageView:Landroid/widget/ImageView;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$color;->settings_list_background_color:I

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->getAntiGreenisFilteredColor(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/common/component/ImageViewPreference;->applyImageResource()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/common/component/ImageViewPreference;->applyContentDescription()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/common/component/ImageViewPreference;->applyColorFilter()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/common/component/ImageViewPreference;->applySize()V

    return-void
.end method

.method public setColorFilter(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/ImageViewPreference;->mColorFilterResId:I

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/common/component/ImageViewPreference;->applyColorFilter()V

    return-void
.end method

.method public setContentDescription(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/ImageViewPreference;->mContentDescriptionResId:I

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/common/component/ImageViewPreference;->applyContentDescription()V

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/ImageViewPreference;->mHeight:I

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/common/component/ImageViewPreference;->applySize()V

    return-void
.end method

.method public setImageResource(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/ImageViewPreference;->mImageResId:I

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/common/component/ImageViewPreference;->applyImageResource()V

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/ImageViewPreference;->mWidth:I

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/common/component/ImageViewPreference;->applySize()V

    return-void
.end method
