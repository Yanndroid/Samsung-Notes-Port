.class Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteContainerView$PaletteViewContract;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator;->create(IIFZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator;

.field public final synthetic val$paletteIndex:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator$1;->this$0:Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator;

    iput p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator$1;->val$paletteIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPaletteClicked(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator$1;->this$0:Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator;->a(Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator;)Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator$OnItemActionListener;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator$1;->val$paletteIndex:I

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator$OnItemActionListener;->onPaletteClicked(II)V

    return-void
.end method
