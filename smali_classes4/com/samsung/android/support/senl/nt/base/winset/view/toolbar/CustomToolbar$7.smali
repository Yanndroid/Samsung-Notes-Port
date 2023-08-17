.class Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->setScreenOnPopupVisibility(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;

.field public final synthetic val$visibility:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar$7;->this$0:Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;

    iput p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar$7;->val$visibility:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar$7;->this$0:Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->f(Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar$7;->val$visibility:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
