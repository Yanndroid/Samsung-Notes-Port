.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuTextStyle$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuTextStyle;->initButtons(Landroid/view/View;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuTextStyle;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuTextStyle;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuTextStyle$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuTextStyle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuTextStyle$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuTextStyle;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuTextStyle;->hidePopup()Z

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuTextStyle$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuTextStyle;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuItem;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/richtext/RtToolbarPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/richtext/RtToolbarPresenter;->isCoeditNote()Z

    move-result p1

    const-string v0, "3407"

    if-eqz p1, :cond_0

    const-string p1, "683"

    goto :goto_0

    :cond_0
    const-string p1, "401"

    :goto_0
    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
