.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field public mSavedTypeButton:Landroid/widget/RadioButton;

.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment$ViewHolder;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    sget p1, Lcom/samsung/android/support/senl/nt/composer/R$id;->radio_item:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ConvertSettingDialogFragment$ViewHolder;->mSavedTypeButton:Landroid/widget/RadioButton;

    return-void
.end method
