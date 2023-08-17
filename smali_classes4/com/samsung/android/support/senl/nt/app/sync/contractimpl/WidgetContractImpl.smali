.class public Lcom/samsung/android/support/senl/nt/app/sync/contractimpl/WidgetContractImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh0/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNoteList(Landroid/content/Context;I)Ljava/lang/String;
    .locals 0

    invoke-static {p2}, Lcom/samsung/android/app/notes/widget/preference/WidgetPreferenceManager;->getNoteList(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getWidgetBackgroundColor(Landroid/content/Context;I)I
    .locals 0

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/base/widget/preference/BaseWidgetPreferenceManager;->getBackgroundColor(I)I

    move-result p1

    return p1
.end method

.method public getWidgetDarkMode(Landroid/content/Context;I)I
    .locals 0

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/base/widget/preference/BaseWidgetPreferenceManager;->getDarkMode(I)I

    move-result p1

    return p1
.end method

.method public getWidgetInfoList(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/app/notes/widget/AppWidgetUtils;->getWidgetInfoList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/widget/util/BaseWidgetUtils;->getWidgetToolbarInfoList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public getWidgetTransparency(Landroid/content/Context;I)I
    .locals 0

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/base/widget/preference/BaseWidgetPreferenceManager;->getTransparency(I)I

    move-result p1

    return p1
.end method

.method public getWidgetTransparencyReverse(Landroid/content/Context;I)Z
    .locals 0

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/base/widget/preference/BaseWidgetPreferenceManager;->isReverseTransparency(I)Z

    move-result p1

    return p1
.end method
