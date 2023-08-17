.class public Lcom/samsung/android/support/senl/nt/app/settings/common/component/RadioButtonPreference;
.super Landroidx/preference/Preference;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "RadioButtonPreference"


# instance fields
.field private mChecked:Z

.field private mDivider:Landroid/view/View;

.field private mIsDividerVisible:Z

.field private mRadioButton:Landroid/widget/RadioButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/samsung/android/support/senl/nt/app/settings/common/component/RadioButtonPreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/samsung/android/support/senl/nt/app/settings/common/component/RadioButtonPreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/support/senl/nt/app/settings/common/component/RadioButtonPreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/app/settings/common/component/RadioButtonPreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$layout;->settings_radio_button:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/R$styleable;->Preference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    :try_start_0
    sget p2, Lcom/samsung/android/support/senl/nt/app/R$styleable;->Preference_allowCustomDivider:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/RadioButtonPreference;->mIsDividerVisible:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
.end method

.method private updateDivider()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/RadioButtonPreference;->mDivider:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/RadioButtonPreference;->mIsDividerVisible:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private updateRadioButton()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/RadioButtonPreference;->mRadioButton:Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/RadioButtonPreference;->mChecked:Z

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    const-string v0, "RadioButtonPreference"

    const-string v1, "onBindViewHolder"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x1020016

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/RadioButtonPreference;->mRadioButton:Landroid/widget/RadioButton;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->divider:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/RadioButtonPreference;->mDivider:Landroid/view/View;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/common/component/RadioButtonPreference;->updateRadioButton()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/common/component/RadioButtonPreference;->updateDivider()V

    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/RadioButtonPreference;->mChecked:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/RadioButtonPreference;->mChecked:Z

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/common/component/RadioButtonPreference;->updateRadioButton()V

    :cond_0
    return-void
.end method
