.class Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteContainerView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteContainerView;->setPaletteItemInfo(IIIF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteContainerView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteContainerView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteContainerView$1;->this$0:Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteContainerView$1;->this$0:Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteContainerView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteContainerView;->a(Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteContainerView;)Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteContainerView$PaletteViewContract;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteContainerView$1;->this$0:Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteContainerView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteContainerView;->a(Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteContainerView;)Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteContainerView$PaletteViewContract;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteContainerView$PaletteViewContract;->onPaletteClicked(I)V

    :cond_0
    return-void
.end method
