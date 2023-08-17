.class Lcom/samsung/android/support/senl/nt/app/ftu/coedit/CoeditFTUActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/ftu/coedit/CoeditFTUActivity;->initLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/ftu/coedit/CoeditFTUActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/ftu/coedit/CoeditFTUActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/ftu/coedit/CoeditFTUActivity$2;->this$0:Lcom/samsung/android/support/senl/nt/app/ftu/coedit/CoeditFTUActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/constants/FTUConstants;->setCoeditFTUUsed()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/ftu/coedit/CoeditFTUActivity$2;->this$0:Lcom/samsung/android/support/senl/nt/app/ftu/coedit/CoeditFTUActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/app/ftu/coedit/CoeditFTUActivity;->e(Lcom/samsung/android/support/senl/nt/app/ftu/coedit/CoeditFTUActivity;Z)V

    return-void
.end method
