.class Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/guide/GuidePresenter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPreTouchListenerImpl$PreTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/guide/GuidePresenter;->makePreTouchListener()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPreTouchListenerImpl$PreTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/guide/GuidePresenter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/guide/GuidePresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/guide/GuidePresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/guide/GuidePresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/guide/GuidePresenter;->b()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onTouch#"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result p2

    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/guide/GuidePresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/guide/GuidePresenter;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/guide/GuidePresenter;->a(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/guide/GuidePresenter;)Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/guide/GuideContract$IView;

    move-result-object p2

    const/16 v0, 0x8

    invoke-interface {p2, v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/guide/GuideContract$IView;->updateVisibility(I)V

    :cond_1
    return p1
.end method
