.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuTextBgColor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuTextBgColor;-><init>(Landroid/app/Activity;Landroid/view/View;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuTextBgColor;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuTextBgColor;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuTextBgColor$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuTextBgColor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuTextBgColor$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuTextBgColor;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuColor;->showPopup()V

    return-void
.end method