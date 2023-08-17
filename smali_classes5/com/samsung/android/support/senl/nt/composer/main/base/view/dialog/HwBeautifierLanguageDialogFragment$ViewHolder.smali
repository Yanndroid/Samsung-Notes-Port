.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HwBeautifierLanguageDialogFragment$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HwBeautifierLanguageDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field public mAdapterContract:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HwBeautifierLanguageDialogFragment$AdapterContract;

.field public mLanguageRadioButton:Landroid/widget/RadioButton;

.field public mLocale:Ljava/lang/String;

.field public mPosition:I


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HwBeautifierLanguageDialogFragment$AdapterContract;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HwBeautifierLanguageDialogFragment$ViewHolder;->mAdapterContract:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HwBeautifierLanguageDialogFragment$AdapterContract;

    sget p2, Lcom/samsung/android/support/senl/nt/composer/R$id;->radio_item:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioButton;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HwBeautifierLanguageDialogFragment$ViewHolder;->mLanguageRadioButton:Landroid/widget/RadioButton;

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HwBeautifierLanguageDialogFragment$ViewHolder$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HwBeautifierLanguageDialogFragment$ViewHolder$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HwBeautifierLanguageDialogFragment$ViewHolder;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
