.class Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppPaletteCreator$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteContainerView$PaletteViewContract;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppPaletteCreator;->initPaletteContainerViewList(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppPaletteCreator;

.field public final synthetic val$paletteIndex:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppPaletteCreator;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppPaletteCreator$1;->this$0:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppPaletteCreator;

    iput p2, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppPaletteCreator$1;->val$paletteIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPaletteClicked(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppPaletteCreator$1;->this$0:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppPaletteCreator;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppPaletteCreator;->mItemActionListener:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppPaletteCreator$OnItemActionListener;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppPaletteCreator$1;->val$paletteIndex:I

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppPaletteCreator$OnItemActionListener;->onPaletteClicked(II)V

    return-void
.end method
