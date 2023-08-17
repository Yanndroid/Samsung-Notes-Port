.class Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IEditDialogResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditDialogDismiss()V
    .locals 0

    return-void
.end method

.method public onEditDialogResult(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;

    if-nez p2, :cond_0

    invoke-static {p1, p3}, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;->l(Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;->r(Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
