.class Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/LayoutStylePagerAdapter$1;
.super Landroid/os/Handler;
.source "SourceFile"


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
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/LayoutStylePagerAdapter;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/LayoutStylePagerAdapter$1;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/LayoutStylePagerAdapter;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/LayoutStylePagerAdapter$1;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/LayoutStylePagerAdapter;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/LayoutStylePagerAdapter;->c(Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/LayoutStylePagerAdapter;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/LayoutStylePagerAdapter$1;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/LayoutStylePagerAdapter;

    invoke-virtual {p1}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/LayoutStylePagerAdapter$1;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/LayoutStylePagerAdapter;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/LayoutStylePagerAdapter;->a(Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/LayoutStylePagerAdapter;)Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/LayoutStylePagerAdapter$Contract;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/LayoutStylePagerAdapter$1;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/LayoutStylePagerAdapter;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/LayoutStylePagerAdapter;->a(Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/LayoutStylePagerAdapter;)Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/LayoutStylePagerAdapter$Contract;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/LayoutStylePagerAdapter$Contract;->updateLayout()V

    :cond_0
    return-void
.end method
