.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/GoToTop$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/GoToTop;->init(Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/GoToTop;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/GoToTop;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/GoToTop$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/GoToTop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/GoToTop$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/GoToTop;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/GoToTop;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/GoToTop;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method
