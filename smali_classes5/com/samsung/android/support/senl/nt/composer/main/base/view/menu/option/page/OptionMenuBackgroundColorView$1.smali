.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator$OnItemActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;->initPalette(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPaletteClicked(II)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;->g(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;II)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView$Presenter;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView$Presenter;->isCoeditNote()Z

    move-result p1

    const-string p2, "3521"

    if-eqz p1, :cond_0

    const-string p1, "683"

    goto :goto_0

    :cond_0
    const-string p1, "401"

    :goto_0
    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
