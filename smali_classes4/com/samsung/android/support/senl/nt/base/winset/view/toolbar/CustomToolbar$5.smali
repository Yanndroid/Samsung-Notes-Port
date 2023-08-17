.class Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar$5;
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


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar$5;->this$0:Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar$5;->this$0:Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;

    new-instance v1, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar$5$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar$5$1;-><init>(Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar$5;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
