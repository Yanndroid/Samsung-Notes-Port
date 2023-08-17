.class Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/TemplateStyleView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/TemplateStyleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/TemplateStyleView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/TemplateStyleView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/TemplateStyleView$1;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/TemplateStyleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    const-string p1, "settings_page_size"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio;->getPageRatioTypeFromSettings()Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio$PageRatioType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio$PageRatioType;->getPageRatio()F

    move-result p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/TemplateStyleView$1;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/TemplateStyleView;

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/TemplateStyleView;->updateItemsPageRatio(F)V

    :cond_0
    return-void
.end method
