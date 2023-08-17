.class public Lcom/samsung/android/support/senl/nt/app/settings/common/component/SwitchPreference;
.super Landroidx/preference/SwitchPreferenceCompat;
.source "SourceFile"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mSwitchCompat:Landroidx/appcompat/widget/SwitchCompat;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/preference/SwitchPreferenceCompat;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/common/component/SwitchPreference;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/preference/SwitchPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/common/component/SwitchPreference;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/SwitchPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/common/component/SwitchPreference;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/SwitchPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/common/component/SwitchPreference;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/SwitchPreference;->mContext:Landroid/content/Context;

    sget p1, Lcom/samsung/android/support/senl/nt/app/R$layout;->settings_switch_preference_layout:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/preference/SwitchPreferenceCompat;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->title:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_sync_on:I

    goto :goto_0

    :cond_0
    sget v2, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_sync_off:I

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/SwitchPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$color;->settings_main_switch_on_text_color:I

    goto :goto_1

    :cond_1
    sget v2, Lcom/samsung/android/support/senl/nt/app/R$color;->settings_main_switch_off_text_color:I

    :goto_1
    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/SwitchPreference;->mSwitchCompat:Landroidx/appcompat/widget/SwitchCompat;

    if-nez v0, :cond_2

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->switch_widget:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/SwitchPreference;->mSwitchCompat:Landroidx/appcompat/widget/SwitchCompat;

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/SwitchPreference;->mSwitchCompat:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/SwitchPreference;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/SwitchPreference;->mSwitchCompat:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_3
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/SwitchPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_4

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$drawable;->settings_main_switch_on_bg:I

    goto :goto_2

    :cond_4
    sget v1, Lcom/samsung/android/support/senl/nt/app/R$drawable;->settings_main_switch_off_bg:I

    :goto_2
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public postDelayed(Ljava/lang/Runnable;I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/SwitchPreference;->mSwitchCompat:Landroidx/appcompat/widget/SwitchCompat;

    if-eqz v0, :cond_0

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/widget/CompoundButton;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public setClickable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/SwitchPreference;->mSwitchCompat:Landroidx/appcompat/widget/SwitchCompat;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setClickable(Z)V

    :cond_0
    return-void
.end method

.method public setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/SwitchPreference;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method
