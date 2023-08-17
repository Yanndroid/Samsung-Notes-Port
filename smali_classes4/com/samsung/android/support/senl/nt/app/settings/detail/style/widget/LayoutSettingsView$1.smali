.class Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutSettingsView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutSettingsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutSettingsView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutSettingsView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutSettingsView$1;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutSettingsView;

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

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutSettingsView$1;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutSettingsView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutSettingsView;->b(Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutSettingsView;)V

    goto :goto_0

    :cond_0
    const-string p1, "settings_page_scroll_direction"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "settings_page_layout_column"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutSettingsView$1;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutSettingsView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutSettingsView;->a(Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutSettingsView;)V

    :cond_2
    :goto_0
    return-void
.end method
