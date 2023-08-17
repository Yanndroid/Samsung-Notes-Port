.class Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->inflateCheckBox()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->a(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_0
    return-void
.end method
