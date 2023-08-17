.class Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportView;->initializeToolbar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportView$2;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportView$2;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportView;

    iget-object v0, p1, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportView;->mSelectAll:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportView;->setAllItemChecked(Z)V

    return-void
.end method
