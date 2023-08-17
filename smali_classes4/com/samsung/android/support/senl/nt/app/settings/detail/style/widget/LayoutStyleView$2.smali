.class Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutStyleView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutStyleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutStyleView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutStyleView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutStyleView$2;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutStyleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string v0, "Settings"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const-string v1, "settings_preferred_note_style"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutStyleView$2;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutStyleView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutStyleView;->b(Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutStyleView;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutStyleView$2;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutStyleView;

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutStyleView;->a(Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutStyleView;I)V

    return-void
.end method
