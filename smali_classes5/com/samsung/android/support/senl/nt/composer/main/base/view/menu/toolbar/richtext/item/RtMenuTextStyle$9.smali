.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuTextStyle$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuTextStyle;->initAlignButtons(Landroid/view/View;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuTextStyle;

.field public final synthetic val$container:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuTextStyle;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuTextStyle$9;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuTextStyle;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuTextStyle$9;->val$container:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuTextStyle$9;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuTextStyle;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuTextStyle$9;->val$container:Landroid/view/View;

    const/4 v2, 0x2

    new-array v3, v2, [I

    sget v4, Lcom/samsung/android/support/senl/nt/composer/R$id;->comp_rt_btn_align_left:I

    const/4 v5, 0x0

    aput v4, v3, v5

    sget v4, Lcom/samsung/android/support/senl/nt/composer/R$id;->comp_rt_btn_align_right:I

    const/4 v5, 0x1

    aput v4, v3, v5

    invoke-static {v0, v1, p1, v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuTextStyle;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuTextStyle;Landroid/view/View;Landroid/view/View;I[I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuTextStyle$9;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuTextStyle;

    const-string v0, "b"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuTextStyle;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuTextStyle;Ljava/lang/String;)V

    return-void
.end method
