.class public Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment$LimitLengthInputFilter;
.super Landroid/text/InputFilter$LengthFilter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LimitLengthInputFilter"
.end annotation


# instance fields
.field public isHashTag:Z

.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;I)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment$LimitLengthInputFilter;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;

    invoke-direct {p0, p2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment$LimitLengthInputFilter;->isHashTag:Z

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$integer;->tag_input_max:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment$LimitLengthInputFilter;->isHashTag:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 7

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment$LimitLengthInputFilter;->isHashTag:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/HashTagHelper;->removeExceptLetterOrDigit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p3

    :cond_0
    move v3, p3

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-super/range {v0 .. v6}, Landroid/text/InputFilter$LengthFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment$LimitLengthInputFilter;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;

    iget p4, p3, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mStringInfoErrorType:I

    const/4 p5, 0x1

    if-eq p4, p5, :cond_2

    iget-boolean p4, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment$LimitLengthInputFilter;->isHashTag:Z

    if-eqz p4, :cond_1

    const/4 p4, 0x4

    goto :goto_0

    :cond_1
    const/4 p4, 0x3

    :goto_0
    iput p4, p3, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mStringInfoErrorType:I

    :cond_2
    iget p4, p3, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mStringInfoErrorType:I

    invoke-virtual {p3, p4}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->setMessageErrorType(I)V

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/nt/base/common/util/CharUtils;->isValidByteSymbol(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, ""

    return-object p1

    :cond_3
    return-object p2
.end method
