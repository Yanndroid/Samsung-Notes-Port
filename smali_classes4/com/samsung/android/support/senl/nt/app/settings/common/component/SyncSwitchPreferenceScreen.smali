.class public Lcom/samsung/android/support/senl/nt/app/settings/common/component/SyncSwitchPreferenceScreen;
.super Landroidx/preference/SeslSwitchPreferenceScreen;
.source "SourceFile"


# instance fields
.field private mIsShowSwitch:Z

.field private mPreferenceColorHandler:Lcom/samsung/android/support/senl/nt/app/settings/common/handler/PreferenceColorHandler;

.field private mSecondarySummary:Ljava/lang/String;

.field private mSecondarySummaryColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/preference/SeslSwitchPreferenceScreen;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/common/component/SyncSwitchPreferenceScreen;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/preference/SeslSwitchPreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/common/component/SyncSwitchPreferenceScreen;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/SeslSwitchPreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/common/component/SyncSwitchPreferenceScreen;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/SeslSwitchPreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/common/component/SyncSwitchPreferenceScreen;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/settings/common/handler/PreferenceColorHandler;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/app/settings/common/handler/PreferenceColorHandler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/SyncSwitchPreferenceScreen;->mPreferenceColorHandler:Lcom/samsung/android/support/senl/nt/app/settings/common/handler/PreferenceColorHandler;

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 5

    invoke-super {p0, p1}, Landroidx/preference/SeslSwitchPreferenceScreen;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x1020018

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/SyncSwitchPreferenceScreen;->mIsShowSwitch:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/SyncSwitchPreferenceScreen;->mSecondarySummary:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/text/SpannableString;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/SyncSwitchPreferenceScreen;->mSecondarySummary:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    iget v3, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/SyncSwitchPreferenceScreen;->mSecondarySummaryColor:I

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/SyncSwitchPreferenceScreen;->mSecondarySummary:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v0, v4

    const/16 v4, 0x21

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    sget-object v0, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p1, v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;I)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Landroidx/preference/SwitchPreferenceCompat;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;I)V

    iget-boolean p2, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/SyncSwitchPreferenceScreen;->mIsShowSwitch:Z

    if-nez p2, :cond_0

    const p2, 0x1020018

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$id;->widget_frame:I

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/SyncSwitchPreferenceScreen;->mPreferenceColorHandler:Lcom/samsung/android/support/senl/nt/app/settings/common/handler/PreferenceColorHandler;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/app/settings/common/handler/PreferenceColorHandler;->getSummaryColor(Landroid/content/Context;Z)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->seslSetSummaryColor(I)V

    invoke-super {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method public setSecondarySummary(Ljava/lang/String;Z)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/SyncSwitchPreferenceScreen;->mSecondarySummary:Ljava/lang/String;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/SyncSwitchPreferenceScreen;->mPreferenceColorHandler:Lcom/samsung/android/support/senl/nt/app/settings/common/handler/PreferenceColorHandler;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/samsung/android/support/senl/nt/app/settings/common/handler/PreferenceColorHandler;->getSummaryColor(Landroid/content/Context;Z)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/SyncSwitchPreferenceScreen;->mSecondarySummaryColor:I

    return-void
.end method

.method public setShowSwitch(Z)V
    .locals 3

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/SyncSwitchPreferenceScreen;->mPreferenceColorHandler:Lcom/samsung/android/support/senl/nt/app/settings/common/handler/PreferenceColorHandler;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/settings/common/handler/PreferenceColorHandler;->getSummaryColor(Landroid/content/Context;Z)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->seslSetSummaryColor(I)V

    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/SyncSwitchPreferenceScreen;->mIsShowSwitch:Z

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method
