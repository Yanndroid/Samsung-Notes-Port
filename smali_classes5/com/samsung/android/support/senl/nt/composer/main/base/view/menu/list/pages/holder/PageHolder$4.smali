.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolder$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolder;->initMoreBtn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolder;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolder$4;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolder$4;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolder;

    iget-object p2, p2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolder;->mMoreBtn:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method
