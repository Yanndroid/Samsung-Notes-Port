.class Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/ToolbarItem$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/ToolbarItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/ToolbarItem;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/ToolbarItem;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/ToolbarItem$1;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/ToolbarItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onClick# "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/ToolbarItem$1;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/ToolbarItem;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarItem;->mType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ToolbarItem"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/ToolbarItem$1;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/ToolbarItem;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/ToolbarItem;->c(Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/ToolbarItem;)V

    return-void
.end method
