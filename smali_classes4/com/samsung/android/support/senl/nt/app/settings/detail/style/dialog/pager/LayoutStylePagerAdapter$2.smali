.class Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/LayoutStylePagerAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/LayoutStylePagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/LayoutStylePagerAdapter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/LayoutStylePagerAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/LayoutStylePagerAdapter$2;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/LayoutStylePagerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    const-string p1, "settings_preferred_note_style"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/LayoutStylePagerAdapter$2;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/LayoutStylePagerAdapter;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/LayoutStylePagerAdapter;->b(Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/LayoutStylePagerAdapter;)V

    :cond_0
    return-void
.end method
