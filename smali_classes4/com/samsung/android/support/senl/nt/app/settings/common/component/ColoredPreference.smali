.class public Lcom/samsung/android/support/senl/nt/app/settings/common/component/ColoredPreference;
.super Landroidx/preference/Preference;
.source "SourceFile"


# instance fields
.field private mPreferenceColorHandler:Lcom/samsung/android/support/senl/nt/app/settings/common/handler/PreferenceColorHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/common/component/ColoredPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/common/component/ColoredPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/common/component/ColoredPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/common/component/ColoredPreference;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/settings/common/handler/PreferenceColorHandler;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/app/settings/common/handler/PreferenceColorHandler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/ColoredPreference;->mPreferenceColorHandler:Lcom/samsung/android/support/senl/nt/app/settings/common/handler/PreferenceColorHandler;

    return-void
.end method


# virtual methods
.method public setSummaryColor(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/ColoredPreference;->mPreferenceColorHandler:Lcom/samsung/android/support/senl/nt/app/settings/common/handler/PreferenceColorHandler;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/app/settings/common/handler/PreferenceColorHandler;->getSummaryColor(Landroid/content/Context;Z)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->seslSetSummaryColor(I)V

    return-void
.end method
