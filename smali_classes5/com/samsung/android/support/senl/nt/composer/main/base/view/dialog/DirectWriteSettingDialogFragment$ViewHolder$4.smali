.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$ViewHolder$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$ViewHolder;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment;Landroid/view/View;Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$AdapterContract;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$ViewHolder;

.field public final synthetic val$this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$ViewHolder;Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$ViewHolder$4;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$ViewHolder;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$ViewHolder$4;->val$this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$ViewHolder$4;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$ViewHolder;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$ViewHolder;->mLanguageRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {p1}, Landroid/widget/RadioButton;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$ViewHolder$4;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$ViewHolder;

    iget-object v0, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$ViewHolder;->mAdapterContract:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$AdapterContract;

    iget p1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$ViewHolder;->mPosition:I

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$AdapterContract;->onSelectItem(I)V

    :cond_0
    return-void
.end method
