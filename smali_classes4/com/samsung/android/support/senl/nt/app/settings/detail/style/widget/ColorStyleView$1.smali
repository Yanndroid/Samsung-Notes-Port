.class Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/ColorStyleView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/ColorStyleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/ColorStyleView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/ColorStyleView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/ColorStyleView$1;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/ColorStyleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    const-string p1, "settings_page_color_adjust_in_dark_mode"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/ColorStyleView$1;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/ColorStyleView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/ColorStyleView;->b(Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/ColorStyleView;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/BackgroundColorUtil;->getDefaultBackgroundInvert()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "0"

    :goto_0
    const-string p2, "510"

    const-string v0, "5818"

    invoke-static {p2, v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
