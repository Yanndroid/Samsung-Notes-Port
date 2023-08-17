.class Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/scroll/Scroll$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/scroll/Scroll;->init(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/scroll/Scroll;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/scroll/Scroll;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/scroll/Scroll$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/scroll/Scroll;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/sa/SAManager;->INSTANCE:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/sa/SAManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/sa/SAManager;->onScrollDownClicked()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/scroll/Scroll$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/scroll/Scroll;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/scroll/Scroll;->a(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/scroll/Scroll;)Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/scroll/ScrollPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/scroll/ScrollPresenter;->onScrollDown()V

    return-void
.end method
